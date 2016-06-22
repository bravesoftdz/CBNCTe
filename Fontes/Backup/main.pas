{**********Exemplo Criado por Helio Carrilho Modesto Junior *******************}
{**Intuito Educacional Parte Integrante do Artigo Backup e Restauração no IB***}
{****************Criado e Postado em www.activedelphi.com.br*******************}
{**Duvidas e Sugestões Helio Carrilho - MSN:::... helio_consultor@hotmail.com* }
unit uBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IBDatabase, DB, IBServices, Mask, ToolEdit,
  ComCtrls, XPMan, MDOServices;

type
  Tfrm_Backup = class(TForm)
    PageControl1: TPageControl;
    tsBackup: TTabSheet;
    tsRestaurar: TTabSheet;
    mmBackup: TMemo;
    Button1: TButton;
    mmRestaurar: TMemo;
    Button2: TButton;
    feBanco: TFilenameEdit;
    feRestaurar: TFilenameEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    feRestBanco: TFilenameEdit;
    deBackup: TDirectoryEdit;
    Label6: TLabel;
    XPManifest1: TXPManifest;
    IBRestoreService1: TMDORestoreService;
    IBBackupService1: TMDOBackupService;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Backup: Tfrm_Backup;

implementation

{$R *.dfm}

procedure Tfrm_Backup.Button1Click(Sender: TObject);
begin
 if febanco.FileName = '' then
 begin
    Showmessage('Indique onde esta seu Banco');
    febanco.SetFocus;
    Abort;
 end;
 if debackup.Text = '' then
 begin
    Showmessage('Indique onde irá Gravar o Backup');
    deBackup.SetFocus;
    Abort;
 end;
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
      Verbose := True;
      Options := [NonTransportable, IgnoreLimbo];
      DatabaseName := feBanco.FileName;
      BackupFile.Add(deBackup.Text+'/'+'Backup.gbk');
      ServiceStart;
      While not Eof do
        mmBackup.Lines.Add(GetNextLine);
    finally
      Active := False;
    end;
  end;
    ShowMessage('Backup Efetuado com Sucesso');
end;

procedure Tfrm_Backup.Button2Click(Sender: TObject);
begin
 if feRestaurar.FileName = '' then
 begin
    Showmessage('Indique onde esta o seu Arquivo de Backup');
    feRestaurar.SetFocus;
    Abort;
 end;
 if feRestBanco.Text = '' then
 begin
    Showmessage('Indique onde irá Restaurar o seu Backup ');
    feRestBanco.SetFocus;
    Abort;
 end;
 with IBRestoreService1 do
  begin
    Params.Clear;
    BackupFile.Clear;
    ServerName := 'localhost';
    LoginPrompt := False;
    Params.Add('user_name=SYSDBA');
    Params.Add('password=masterkey');
    Active := True;
    try
      Verbose := True;
      Options := [Replace, UseAllSpace];
      PageBuffers := 3000;
      PageSize := 4096;
      DatabaseName.Add(feRestBanco.FileName);
      BackupFile.Add(feRestaurar.FileName);
      ServiceStart;
      While not Eof do
        mmRestaurar.Lines.Add(GetNextLine);
    finally
      Active := False;
    end;
  end;
  Showmessage('Restauração Efetuada com Sucesso');
end;

procedure Tfrm_Backup.FormCreate(Sender: TObject);
begin
//Showmessage('Exemplo Criado Para Estudo '#13'Parte Integrante do Artigo'#13'Backup e Restauração no IB'#13'              Criado por:     '#13'     Helio Carrilho - HelioMS'#13'helio_consultor@hotmail.com');
end;

end.
