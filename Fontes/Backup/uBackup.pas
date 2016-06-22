unit uBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IBDatabase, DB, IBServices, Mask, ToolEdit,
  ComCtrls, XPMan, MDOServices, Buttons,Inifiles, ImgList,shellapi,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, FocusEdit, funcoes_cte, ExtCtrls;

type
  Tfrm_Backup = class(TForm)
    PageControl1: TPageControl;
    tsBackup: TTabSheet;
    mmBackup: TMemo;
    feBanco: TFilenameEdit;
    Label1: TLabel;
    Label2: TLabel;
    deBackup: TDirectoryEdit;
    Label6: TLabel;
    IBRestoreService1: TMDORestoreService;
    IBBackupService1: TMDOBackupService;
    BitBtn1: TBitBtn;
    bitFechar: TBitBtn;
    ImageList: TImageList;
    Label3: TLabel;
    edSecundario: TDirectoryEdit;
    BitEnviar: TBitBtn;
    Label4: TLabel;
    edEmp: TFocusEdit;
    ftp: TIdFTP;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function CopiaDir(Origen,Destino : String): longint;
    procedure deBackupExit(Sender: TObject);
    procedure bitFecharClick(Sender: TObject);
    procedure BitEnviarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    data :String;
    
  public
    { Public declarations }
    lastFilebkp : String;
    
  end;

var
  frm_Backup: Tfrm_Backup;
  Ini : TIniFile;

implementation

uses Modulo;

{$R *.dfm}

procedure Tfrm_Backup.BitBtn1Click(Sender: TObject);
var ArqBkp, Ip, hora: String;
    h, m, s, ms :word;
begin
 if febanco.FileName = '' then
 begin
    Avisar('Indique onde esta seu Banco');
    febanco.SetFocus;
    Abort;
 end;
 if debackup.Text = '' then
 begin
    Avisar('Indique onde irá Gravar o Backup');
    deBackup.SetFocus;
    Abort;
 end;
 Try
    dm.Transaction.Commit;
    dm.Database.Connected := false;


    with IBBackupService1 do
    begin
      Params.Clear;
      BackupFile.Clear;
      ServerName := 'localhost';
      LoginPrompt := False;
      Params.Add('user_name=SYSDBA');
      Params.Add('password=masterkey');
      Active := True;
      try
        Aguarda('Aguarde realizando backup...');
        Verbose := True;
        Options := [NonTransportable, IgnoreLimbo];
        DatabaseName := feBanco.FileName;

        DecodeTime(Now, h, m, s, ms);
        hora := '_'+intToStr(h) + intToStr(m) + intToStr(s);

        ArqBkp:= deBackup.Text + 'BKP_'+  data + hora +'.fbk';
        BackupFile.Add(ArqBkp);

        lastFilebkp := ArqBkp;

        Ini.WriteString('BACKUP','LAST_FILE_BKP',lastFilebkp);


        ServiceStart;
        Application.ProcessMessages;
        While not Eof do
        Begin
          Application.ProcessMessages;
          mmBackup.Lines.Add(GetNextLine);
        End;
        BitBtn1.Enabled := false;
        FimAguarda;

        try
         Aguarda('Copiando para destino secundário...');
         CopiaDir(PChar(ArqBkp),PChar(edSecundario.text));
         FimAguarda;
        except
          On E: Exception Do
            begin
             FimAguarda;
             Avisar(E.Message + #13 + 'Cópia para destino secundário inválido!');
            end;
        end;

      finally
        Active := False;
      end;
    end;
      Avisar('Backup Efetuado com Sucesso');
  Except
    On E: Exception Do
      begin
       FimAguarda;
       Avisar(E.Message + #13 + 'Não foi possível Realizar o backup' + #13 +
                                'TENTE NOVAMENTE!');
      end;
  End;

  dm.Database.Connected := true;
  dm.Transaction.Active := false;
  dm.Transaction.StartTransaction;

end;

procedure Tfrm_Backup.FormShow(Sender: TObject);
var dia, mes, ano :word;
begin
  Ini := TIniFile.Create(PathSis+ 'CBNCTe.ini');
  feBanco.Text  :=  Ini.ReadString('BD','CAMINHO','') ;

//  feBanco.Text  :=  Ini.ReadString(TERM,'BASE','');

  deBackup.Text :=  Ini.ReadString('BACKUP','PATH','');

  edSecundario.Text :=  Ini.ReadString('BACKUP_SECUNDARIO','PATH','');

  if  Ini.ReadString('BACKUP','NOME_EMPRESA_BKP_FTP','') = '' then
    Ini.WriteString('BACKUP','NOME_EMPRESA_BKP_FTP','')
  else
    edEmp.Text :=  Ini.ReadString('BACKUP','NOME_EMPRESA_BKP_FTP','');

  PageControl1.ActivePage := tsBackup;

  frm_Backup.Top := (Screen.Height - Height) div 2;
  frm_Backup.Left := (Screen.Width - Width) div 2;

  DecodeDate(Date,ano,mes,dia);
  data := intToStr(dia)+intToStr(mes)+intToStr(ano);

end;

function Tfrm_Backup.CopiaDir(Origen,Destino : String): longint;
var
F: TSHFileOpStruct;
sOrigen, sDestino: String;
begin
 Result := 0;
 sOrigen := Origen + #0;
 sDestino := Destino + #0;
 With F do
  begin
   Wnd := Application.Handle;
   wFunc := FO_COPY;
   pFrom := @sOrigen[1];
   pTo := @sDestino[1];
   fFlags := FOF_ALLOWUNDO or FOF_NOCONFIRMATION
  end;
   Result := ShFileOperation(F);
end;
procedure Tfrm_Backup.deBackupExit(Sender: TObject);
begin
  Ini.WriteString('BACKUP','PATH',deBackup.Text);
end;

procedure Tfrm_Backup.bitFecharClick(Sender: TObject);
begin
  Ini.WriteString('BACKUP_SECUNDARIO','PATH',edSecundario.Text);
  Ini.WriteString('BACKUP','PATH',deBackup.Text);
  Ini.WriteString('BACKUP','NOME_EMPRESA_BKP_FTP',edEmp.Text);

end;

procedure Tfrm_Backup.BitEnviarClick(Sender: TObject);
var FileRar: String;
    cPathIni: String;

begin
 try
   lastFilebkp :=  Ini.ReadString('BACKUP','LAST_FILE_BKP','');
   if not FileExists(lastFilebkp) then
   begin
     Avisar('Arquivo de backup não encontrado!');
     exit;
   end;

   cPathIni := ExtractFileDir(Application.Exename) + '\SGVE.INI';



   Application.ProcessMessages;
   if Ini.ReadString('BACKUP','NOME_EMPRESA_BKP_FTP','')  =  '' then
   begin
     //nao tem nome da empresa
     winexec(PChar('C:\Arquivos de programas\WinRAR\WinRAR.exe a ' + deBackup.Text+ 'BKP_'+ data +'.rar ' + lastFilebkp + ' '+ cPathIni   ),SW_NORMAL);
     FileRar := deBackup.Text +  deBackup.Text+ 'BKP_'+ data +'.rar';
   end
   else
   begin
     winexec(PChar('C:\Arquivos de programas\WinRAR\WinRAR.exe a ' + deBackup.Text +  trim(edEmp.Text) +'_' + data +'.rar ' + lastFilebkp + ' '+ cPathIni  ),SW_NORMAL);
     FileRar := deBackup.Text + Ini.ReadString('BACKUP','NOME_EMPRESA_BKP_FTP','') +'_'+  data +'.rar ';

   end;

   Avisar('Verifique se o processo Winrar foi inicializado...');
   Application.ProcessMessages;

   try
     Aguarda('Conectando ao Ftp...');
     ftp.Disconnect;
     ftp.Host     := 'www.cbninformatica.com.br';
     ftp.Port     := 21;
     ftp.Username := 'cbninforma';
     ftp.Password := 'assvee13';
     ftp.Connect;
     Application.ProcessMessages;

     ftp.ChangeDir('comercial\bkp');
     FimAguarda;

     Aguarda('enviando Arquivo ao Ftp...');
     Application.ProcessMessages;

     ftp.Put(FileRar);

     FimAguarda;
     Application.ProcessMessages;

     Aguarda('desconectando...');
     ftp.Disconnect;

     FimAguarda;
     Avisar('Arquivo Enviado!')

   finally
     FimAguarda;
   end;
 except
   on e: Exception do begin

     Avisar(e.Message);

   end;
 end;

end;

procedure Tfrm_Backup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Ini.WriteString('BACKUP_SECUNDARIO','PATH',edSecundario.Text);
  Ini.WriteString('BACKUP','PATH',deBackup.Text);
  Ini.WriteString('BACKUP','NOME_EMPRESA_BKP_FTP',edEmp.Text);

end;

procedure Tfrm_Backup.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #27 Then
    Close;
end;

end.
