unit cadCli;

interface

uses                                                                                  
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolEdit, CurrEdit, FocusCurrEdit, StdCtrls,
  Mask, FocusMaskEdit, ExtCtrls, LabelFocusEdit, ComCtrls, Buttons, Grids,
  DBGrids, DBMarcianoZebradoGrid, DBMarcianoGrid, Provider,
  MDOCustomDataSet, MDOQuery, DB, DBClient, Funcoes_cte, uCliente,
  uFrameCidade2, AppEvnts, ImgList, uDica;

type
  TfrmCadCli = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    pnlDados: TPanel;
    Label1: TLabel;
    el: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label19: TLabel;
    edtCod: TLabelFocusEdit;
    edtFlag: TLabelFocusEdit;
    edtRaz: TLabelFocusEdit;
    edtFan: TLabelFocusEdit;
    memObs: TMemo;
    edtCpf: TLabelFocusEdit;
    edtRg: TLabelFocusEdit;
    edtEnder: TLabelFocusEdit;
    edtCep: TFocusMaskEdit;
    edtPais: TLabelFocusEdit;
    edtFoneRes: TFocusMaskEdit;
    edtFoneCom: TFocusMaskEdit;
    edtCelular: TFocusMaskEdit;
    edtDtNasci: TFocusMaskEdit;
    edtDtCad: TFocusMaskEdit;
    edtEmail: TLabelFocusEdit;
    edNumero: TFocusCurrEdit;
    BtnGravar: TSpeedButton;
    BtnAlterar: TBitBtn;
    btnIncluir: TBitBtn;
    BtnCancelar: TBitBtn;
    btnBloq: TBitBtn;
    gridCliente: TDBMarcianoGrid;
    cdsCli: TClientDataSet;
    dsCli: TDataSource;
    qryCli: TMDOQuery;
    dspCli: TDataSetProvider;
    edtBairro: TLabelFocusEdit;
    cdsCliCODIGO: TIntegerField;
    cdsCliNOME: TStringField;
    cdsCliNOMEFAN: TStringField;
    cdsCliENDER: TStringField;
    cdsCliBAIRRO: TStringField;
    cdsCliESTADO: TStringField;
    cdsCliCEP: TStringField;
    cdsCliCPF: TStringField;
    cdsCliRG: TStringField;
    cdsCliFONE1: TStringField;
    cdsCliFONE2: TStringField;
    cdsCliOBS: TStringField;
    cdsCliFLAG: TStringField;
    cdsCliDTNASCI: TDateField;
    cdsCliDTCAD: TDateField;
    cdsCliPAIS: TStringField;
    cdsCliCELULAR: TStringField;
    cdsCliEMAIL: TStringField;
    cdsCliDTABERT: TDateField;
    cdsCliMOTBLOQ: TStringField;
    cdsCliNUMERO: TIntegerField;
    cdsCliDTALTER: TDateField;
    frameCidadeCli: TFrameCidade2;
    Label16: TLabel;
    Label17: TLabel;
    cdsCliCODCID: TIntegerField;
    ApplicationEvents1: TApplicationEvents;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Label7: TLabel;
    Label20: TLabel;
    procedure gridClienteDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnIncluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure btnBloqClick(Sender: TObject);
    procedure TabSheet1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TabSheet2Exit(Sender: TObject);
    procedure frameCidadeCliedCodigoMunicipioChange(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
  private
    FIncluindo :Boolean;
    FAlterando :Boolean;

    function persistencias :Boolean;
    procedure limpaCampos;
  public
    { Public declarations }
  end;

var
  frmCadCli: TfrmCadCli;

implementation

{$R *.dfm}

procedure TfrmCadCli.gridClienteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  if Column.Field = cdsCliFLAG then begin
    TDBMarcianoGrid(Sender).Canvas.FillRect(Rect);

    if cdsCliFLAG.asString = 'B' then
      ImageList1.Draw(TDBMarcianoGrid(Sender).Canvas, Rect.Left +12, Rect.Top , 1, true)
    else
      ImageList1.Draw(TDBMarcianoGrid(Sender).Canvas, Rect.Left +12, Rect.Top , 0, true);
  end;

end;

procedure TfrmCadCli.btnIncluirClick(Sender: TObject);
begin
  limpaCampos;
  pnlDados.Enabled := true;
  Fincluindo := true;
  PageControl1.ActivePageIndex := 1;
end;

procedure TfrmCadCli.BtnGravarClick(Sender: TObject);
var cliente :TCliente;
begin
  if not persistencias then
    exit;
 try
  cliente := TCliente.Create;

  if FIncluindo then
    cliente.CODIGO   := 0
  else if FAlterando then
    cliente.CODIGO   := strToInt(edtCod.Text);

  cliente.NOME    := trim(edtRaz.Text);
  cliente.NOMEFAN := trim(edtFan.Text);
  cliente.ENDER   := trim(edtEnder.Text);
  cliente.BAIRRO  := trim(edtBairro.Text);
  cliente.CodCid  := strToInt(frameCidadeCli.edCodigoMunicipio.Text);
  cliente.ESTADO  := frameCidadeCli.edestado.Text;
  cliente.CEP     := trim(edtCep.Text);
  cliente.CPF     := trim(edtCpf.Text);
  cliente.RG      := trim(edtRg.Text);
  cliente.FONE1   := trim(edtFoneRes.Text);
  cliente.FONE2   := trim(edtFoneCom.Text);
  cliente.OBS     := trim(memObs.Text);

  if trim(edtFlag.Text) = 'BLOQUEADO' then
    cliente.FLAG     := 'B'
  else
    cliente.FLAG     := 'N';

  if trim(edtDtNAsci.Text) <> '/  /' then
    cliente.DTNASCI := strToDate(edtDtNasci.Text);

  cliente.PAIS    := trim(edtPais.Text);
  cliente.CELULAR := trim(edtCelular.Text);
  cliente.EMAIL   := trim(edtEmail.Text);

  if FIncluindo then
    cliente.DTCAD := Date;

  cliente.NUMERO  := edNumero.asInteger;

  if FAlterando then
    cliente.DTALTER :=  Date;

  cliente.salvar;
  FIncluindo := false;
  FAlterando := false;

  avisar('Operação realizada com sucesso!');
  PageControl1.ActivePageIndex := 0;

  cdsCli.Close;
  cdsCli.Open;
 except
   on e: Exception do begin
        avisar('Erro ao gravar: '+e.Message);
   end;
 end;
end;

function TfrmCadCli.persistencias: Boolean;
begin
  Result := true;

  if trim(edtRaz.Text) = '' then
    begin
      avisar('Nome/Razão social deve ser informado.');
      edtRaz.SetFocus;
      Result := false;
    end
  else if trim(edtCpf.Text) = '' then
    begin
      avisar('CPF deve ser informado.');
      edtCpf.SetFocus;
      Result := false;
    end
  else if trim(edtEnder.Text) = '' then
    begin
      avisar('Endereço deve ser informado.');
      edtEnder.SetFocus;
      Result := false;
    end
  else if trim(edtBairro.Text) = '' then
    begin
      avisar('Bairro deve ser informado.');
      edtBairro.SetFocus;
      Result := false;
    end
  else if edNumero.Value <= 0 then
    begin
      avisar('Número deve ser informado.');
      edNumero.SetFocus;
      Result := false;
    end
  else if trim(frameCidadeCli.edCidade.Text) = '' then
    begin
      avisar('Cidade deve ser informada.');
      frameCidadeCli.edCodigoMunicipio.SetFocus;
      Result := false;
    end
  else if trim(edtRg.Text) = '' then
    begin
      avisar('CEP deve ser informado.');
      edtCep.SetFocus;
      Result := false;
    end;
end;

procedure TfrmCadCli.FormCreate(Sender: TObject);
begin
  FIncluindo := false;
  FAlterando := false;
end;

procedure TfrmCadCli.BtnCancelarClick(Sender: TObject);
begin
  pnlDados.Enabled := false;
  FIncluindo := false;
  FAlterando := false;
  limpaCampos;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadCli.BtnAlterarClick(Sender: TObject);
begin
    if cdsCli.RecNo > 0 then
    begin
      pnlDados.Enabled := true;
      FAlterando := true;
      PageControl1.ActivePageIndex := 1;
    end
  else
    avisar('Primeiramente selecione o cliente desejado.');    
end;

procedure TfrmCadCli.limpaCampos;
begin
  edtCod.Text := '0';
  edtFlag.Clear;
  edtRaz.Clear;
  edtFan.clear;
  edtEnder.clear;
  edtBairro.clear;
  frameCidadeCli.edCidade.Clear;
  frameCidadeCli.edestado.Clear;
  frameCidadeCli.edCodigoMunicipio.Text := '0';
  edtCep.clear;
  edtCpf.clear;
  edtRg.clear;
  edtFoneRes.clear;
  edtFoneCom.clear;
  memObs.Clear;
  edtDtNasci.Clear;
  edtDtCad.Clear;
  edtPais.Clear;
  edtCelular.Clear;
  edtEmail.Clear;
  edNumero.Value := 0;
end;

procedure TfrmCadCli.btnBloqClick(Sender: TObject);
var cliente :Tcliente;
begin
  if cdsCli.IsEmpty then
    exit;
  cliente := TCliente.Create;
  cliente.bloqDesbloq(cdsCliCODIGO.AsInteger);
  cliente.free;
  cliente := nil;
  avisar('Operação realizada com sucesso!');

  cdsCli.Close;
  cdsCli.Open;
end;

procedure TfrmCadCli.TabSheet1Exit(Sender: TObject);
begin

  if FIncluindo then
    exit;
    
  edtCod.Text := cdsCliCODIGO.AsString;
  if cdsCliFLAG.AsString = 'N' then
    edtFlag.Text := 'NORMAL'
  else
    edtFlag.Text := 'BLOQUEADO';
  edtRaz.Text := cdsCliNOME.AsString;
  edtFan.Text := cdsCliNOMEFAN.AsString;
  edtEnder.Text := cdsCliENDER.AsString;
  edtBairro.Text := cdsCliBAIRRO.AsString;
  if trim(cdsCliCODCID.AsString) = '' then
    frameCidadeCli.edCodigoMunicipio.Text  := '0'
  else
    frameCidadeCli.codMun  := cdsCliCODCID.AsString;

  frameCidadeCli.edestado.Text := cdsCliESTADO.AsString;
  edtCep.Text     := cdsCliCEP.AsString;
  edtCpf.Text     := cdsCliCPF.AsString;
  edtRg.Text      := cdsCliRG.AsString;
  edtFoneRes.Text := cdsCliFONE1.AsString;
  edtFoneCom.text := cdsCliFONE2.AsString;
  memObs.Text     := cdsCliOBS.AsString;
  edtDtNasci.Text := cdsCliDTNASCI.AsString;
  edtDtCad.Text   := cdsCliDTCAD.AsString;
  edtPais.Text    := cdsCliPAIS.AsString;
  edtCelular.Text := cdsCliCELULAR.AsString;
  edtEmail.Text   := cdsCliEMAIL.AsString;
  edNumero.Value  := cdsCliNUMERO.AsInteger;

end;

procedure TfrmCadCli.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = Vk_Return then
    press(VK_TAB)
  else if Key = VK_Escape then
    close
  else if key = Vk_F3 then
    btnIncluir.Click
  else if key = Vk_F4 then
    BtnAlterar.Click
  else if key = Vk_F2 then
    BtnGravar.Click
  else if key = Vk_F8 then
    BtnCancelar.Click;
end;

procedure TfrmCadCli.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  cdsCli.Close;
  cdsCli.Open;
  gridCliente.SetFocus;
end;

procedure TfrmCadCli.TabSheet2Exit(Sender: TObject);
begin
  if FIncluindo or Falterando then
    BtnCancelar.Click;
end;

procedure TfrmCadCli.frameCidadeCliedCodigoMunicipioChange(
  Sender: TObject);
begin
  if trim(frameCidadeCli.edCodigoMunicipio.Text) = '' then
    frameCidadeCli.edCodigoMunicipio.Text := '0';
end;

procedure TfrmCadCli.ApplicationEvents1Message(var Msg: tagMSG;
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

end.
