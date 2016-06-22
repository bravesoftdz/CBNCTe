unit uNfes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MDOCustomDataSet, MDOQuery, Provider, DB, DBClient, Grids,
  DBGrids, DBMarcianoZebradoGrid, DBMarcianoGrid, uFramePeriodo2, Modulo,
  StdCtrls, Buttons, ComCtrls, uFrmPer, Funcoes_cte, IniFiles, AppEvnts,
  ExtCtrls;

type
  TfrmNfes = class(TForm)
    GridNFes: TDBMarcianoGrid;
    dsNFes: TDataSource;
    cdsNFes: TClientDataSet;
    dspNFes: TDataSetProvider;
    qryNFes: TMDOQuery;
    btbuscar: TBitBtn;
    Label7: TLabel;
    frmPer1: TfrmPer;
    lbConexao: TStaticText;
    ApplicationEvents1: TApplicationEvents;
    Panel1: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    cdsNFesANTT: TStringField;
    cdsNFesCNPJEMI: TStringField;
    cdsNFesIEEMI: TStringField;
    cdsNFesRAZEMI: TStringField;
    cdsNFesFANTEMI: TStringField;
    cdsNFesCEPEMI: TStringField;
    cdsNFesLOGREMI: TStringField;
    cdsNFesNUMEROEMI: TStringField;
    cdsNFesBAIRRO: TStringField;
    cdsNFesMUNEMI: TStringField;
    cdsNFesUFEMI: TStringField;
    cdsNFesCNPJDEST: TStringField;
    cdsNFesIEDEST: TStringField;
    cdsNFesNOMEDEST: TStringField;
    cdsNFesFONEDEST: TStringField;
    cdsNFesCEPDEST: TStringField;
    cdsNFesLOGRDEST: TStringField;
    cdsNFesNUMERODEST: TStringField;
    cdsNFesBAIRRODEST: TStringField;
    cdsNFesCODMUNDEST: TStringField;
    cdsNFesMUNDEST: TStringField;
    cdsNFesUFDEST: TStringField;
    cdsNFesEMAILDEST: TStringField;
    cdsNFesCODMUNDEST1: TStringField;
    cdsNFesMUNDEST1: TStringField;
    cdsNFesUFDEST1: TStringField;
    cdsNFesPERREDCFRETEICMS: TBCDField;
    cdsNFesPICMSFRETEM: TBCDField;
    cdsNFesVLRICMSFRETEM: TBCDField;
    cdsNFesTOTNF: TBCDField;
    cdsNFesPESOLIQ: TBCDField;
    cdsNFesPLACA: TStringField;
    cdsNFesID: TStringField;
    cdsNFesDTEMI: TDateField;
    cdsNFesCODIGO: TIntegerField;
    cdsNFesDATA: TDateField;
    cdsNFesSTATUS: TIntegerField;
    cdsNFesNRNOTA: TIntegerField;
    cdsNFesSERIE: TStringField;
    cdsNFesIMPORTACAO: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GridNFesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridNFesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btbuscarClick(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);

  private
    Ini :TIniFile;
  public
    { Public declarations }
  end;

var
  frmNfes: TfrmNfes;
  selecionadas :integer;
  destinatario, emitente :string;

implementation

{$R *.dfm}

procedure TfrmNfes.FormActivate(Sender: TObject);
begin
  frmPer1.EdDataIni.Text := DateToStr(Date);
  frmPer1.EdDataFim.Text := DateToStr(Date);
  selecionadas := 0;

  btbuscar.Click;
end;

procedure TfrmNfes.FormCreate(Sender: TObject);
begin
  if trim(dm.Parametro.BDRemoto) <> '' then
    begin
      dm.DBRemoto.DatabaseName := Trim(dm.Parametro.BDRemoto);
      dm.DBRemoto.Connected := true;
      lbConexao.Caption := '  Conectado em >> '+ dm.DBRemoto.DatabaseName;
    end
  else
    lbConexao.Caption := '  Conectado em >> '+ dm.Database.DatabaseName;

  destinatario := '';
  emitente     := '';
end;

procedure TfrmNfes.GridNFesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Space then
    begin

      cdsNFes.Edit;

      if cdsNFesIMPORTACAO.AsString = '' then
       begin
         if selecionadas = 0 then
           begin
             destinatario := cdsNFesNOMEDEST.AsString;
             emitente     := cdsNFesRAZEMI.AsString;
           end
         else if selecionadas > 0 then
           begin
             if Ini.ReadString('CONFIG_CTE','VARIOS_DOC_ORIG','') = 'S' then
              begin
                if (cdsNFesNOMEDEST.AsString <> destinatario) or (cdsNFesRAZEMI.AsString <> emitente) then
                  begin
                    Avisar('Só é possível selecionar mais de uma NF-e se estas forem do mesmo emitente e destinatário.');
                    Exit;
                  end;
              end
             else
              begin
                Avisar('Só é permitido uma NFe por vez');
                exit;
              end;
           end;
         cdsNFesIMPORTACAO.AsString := 'X';        
         selecionadas := selecionadas + 1;
       end
      else
       begin
        cdsNFesIMPORTACAO.AsString := '';
        selecionadas := selecionadas - 1;
       end;

      cdsNFes.Post;
    end;
end;

procedure TfrmNfes.GridNFesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if cdsNFesIMPORTACAO.AsString = 'X' then
    begin
      GridNfes.Canvas.Font.Color := $00FFFDF9;
      GridNFes.Canvas.Brush.Color := $00AD8361;
      GridNfes.DefaultDrawDataCell(Rect, GridNfes.columns[datacol].field, State);
    end;
end;

procedure TfrmNfes.btnConfirmarClick(Sender: TObject);
begin
  if selecionadas <=0 then
    Exit;
    
  cdsNFes.Filtered := false;
  cdsNFes.Filter := 'IMPORTACAO = ''X''';
  cdsNFes.Filtered := true;
  self.ModalResult := mrOk;
end;

procedure TfrmNfes.btnCancelarClick(Sender: TObject);
begin
  self.ModalResult := mrCancel;
end;

procedure TfrmNfes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      if selecionadas > 0 then
        self.btnConfirmar.Click
      else
        Press(VK_TAB);
    end
  else if Key = Vk_Escape then
    self.btnCancelar.Click
  else if Key = VK_F2 then
    Self.btbuscar.Click;
end;

procedure TfrmNfes.btbuscarClick(Sender: TObject);
begin
  self.cdsNFes.Close;
  self.qryNFes.SQL.Text := 'select ANTT, CNPJEMI, IEEMI, RAZEMI, FANTEMI, CEPEMI, LOGREMI, NUMEROEMI, BAIRRO, MUNEMI, UFEMI,        '+
                           '       CNPJDEST, IEDEST, NOMEDEST, FONEDEST, CEPDEST, LOGRDEST, NUMERODEST, BAIRRODEST, CODMUNDEST,     '+
                           '       MUNDEST, UFDEST, EMAILDEST, CODMUNDEST, MUNDEST, UFDEST, PERREDCFRETEICMS, PICMSFRETEM,          '+
                           '       VLRICMSFRETEM, TOTNF, PESOLIQ, PLACA, ID, DTEMI, DATA, STATUS, NRNOTA, SERIE, IMPORTACAO, CODIGO '+
                           '   from nfe                                                                                             '+
                           ' where nfe.ctecriado IS NULL and nfe.ufdest <> ''PR'' and nfe.tpnf = 1 and nfe.status = 100             '+
                           '   and nfe.data between :dti and :dtf                                                                   ';
  self.qryNFes.ParamByName('dti').AsDateTime := StrToDate(frmPer1.EdDataIni.Text);
  self.qryNFes.ParamByName('dtf').AsDateTime := StrToDate(frmPer1.EdDataFim.Text);
  self.cdsNFes.Open;
  GridNFes.SetFocus;
end;

procedure TfrmNfes.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
var  i: SmallInt;
begin
  if Msg.message = WM_MOUSEWHEEL then
  begin

    Msg.message := WM_KEYDOWN;
    Msg.lParam := 0;

    i := HiWord(Msg.wParam) ;

    if i > 0 then
      Msg.wParam := VK_UP
    else
      Msg.wParam := VK_DOWN;

    Handled := False;
   end;
end;

procedure TfrmNfes.FormShow(Sender: TObject);
begin
  Ini := TIniFile.Create(PathSis+ 'CBNCTe.ini');
end;

end.
