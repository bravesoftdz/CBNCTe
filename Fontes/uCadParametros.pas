unit uCadParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Parametro, DB, MDOCustomDataSet, MDOQuery, uFrameCidade2,
  ToolEdit, CurrEdit, FocusCurrEdit, FocusEdit, Mask, FocusMaskEdit,
  ComCtrls, StdCtrls, DBCtrls, ExtCtrls, Buttons, Printers, Funcoes_cte;

type
  TfrmCadParametros = class(TForm)
    PageControl1: TPageControl;
    Tab1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label32: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    lbNumero: TLabel;
    lbBairro: TLabel;
    lbResponsavel: TLabel;
    edCod: TDBEdit;
    edDataMov: TDateTimePicker;
    edCpfResponsavel: TFocusMaskEdit;
    edSite: TFocusEdit;
    edFax: TFocusEdit;
    edBairro: TFocusEdit;
    edResponsavel: TFocusEdit;
    edNum: TFocusCurrEdit;
    FrameCidade21: TFrameCidade2;
    dsParametro: TDataSource;
    qryParametros: TMDOQuery;
    qryParametrosCODEMP: TMDOStringField;
    qryParametrosFAN: TMDOStringField;
    qryParametrosENDER: TMDOStringField;
    qryParametrosCIDADE: TMDOStringField;
    qryParametrosESTADO: TMDOStringField;
    qryParametrosCEP: TMDOStringField;
    qryParametrosCNPJ: TMDOStringField;
    qryParametrosIE: TMDOStringField;
    qryParametrosFONE: TMDOStringField;
    qryParametrosDTMOV: TDateField;
    qryParametrosQTCLI: TIntegerField;
    qryParametrosQTTIPCLI: TIntegerField;
    qryParametrosQTUSU: TIntegerField;
    qryParametrosQTFOR: TIntegerField;
    qryParametrosQTGRP: TIntegerField;
    qryParametrosQTSGRP: TIntegerField;
    qryParametrosQTPRO: TIntegerField;
    qryParametrosQTFPG: TIntegerField;
    qryParametrosQTNOTA: TIntegerField;
    qryParametrosQTMARCA: TIntegerField;
    qryParametrosQTCOMPCOMIS: TIntegerField;
    qryParametrosQTITNOTA: TIntegerField;
    qryParametrosQTPAG: TIntegerField;
    qryParametrosQTEVE: TIntegerField;
    qryParametrosQTDESCON: TIntegerField;
    qryParametrosQTSUBVEN: TIntegerField;
    qryParametrosQTPED: TLargeintField;
    qryParametrosJUROSATRASO: TMDOBCDField;
    qryParametrosDESCPGTOADIAN: TMDOBCDField;
    qryParametrosTOLERANJUR: TSmallintField;
    qryParametrosCONTCX: TMDOStringField;
    qryParametrosTRABDOM: TMDOStringField;
    qryParametrosPEDVEN: TMDOStringField;
    qryParametrosIMPPERLUC: TMDOStringField;
    qryParametrosIMPDADCLI: TMDOStringField;
    qryParametrosDADCOMCLI: TMDOStringField;
    qryParametrosEMPDIF: TMDOStringField;
    qryParametrosIMP40COL: TMDOStringField;
    qryParametrosIMPCARNET: TMDOStringField;
    qryParametrosQTDAUT: TMDOStringField;
    qryParametrosIMPDUPLIC: TMDOStringField;
    qryParametrosSOMAABCX: TMDOStringField;
    qryParametrosCONPRCUS: TMDOStringField;
    qryParametrosCADCLIBALC: TMDOStringField;
    qryParametrosFPAGBALC: TMDOStringField;
    qryParametrosDEACPRIPRO: TMDOStringField;
    qryParametrosORDPROPED: TMDOStringField;
    qryParametrosEMAIL: TMDOStringField;
    qryParametrosPERCMDB: TMDOBCDField;
    qryParametrosIMPASSPED: TMDOStringField;
    qryParametrosBUSCAPRO: TMDOStringField;
    qryParametrosQTEMP: TSmallintField;
    qryParametrosQTIPCLI: TSmallintField;
    qryParametrosBANCBLOQ: TMDOStringField;
    qryParametrosQTTRANSP: TIntegerField;
    qryParametrosPEDAUT: TMDOStringField;
    qryParametrosQTRECEB: TIntegerField;
    qryParametrosQTDEV: TIntegerField;
    qryParametrosQTCARGA: TMDOBCDField;
    qryParametrosSENHA: TMDOStringField;
    qryParametrosITEMEXTRA: TMDOStringField;
    qryParametrosPRODBLOQ: TMDOStringField;
    qryParametrosVDAPRONEG: TMDOStringField;
    qryParametrosRECCAIXA: TMDOStringField;
    qryParametrosALTPRECO: TMDOStringField;
    qryParametrosDIASCRITICA: TSmallintField;
    qryParametrosDIASCRITICABLOQ: TSmallintField;
    qryParametrosECF: TMDOStringField;
    qryParametrosOS: TMDOStringField;
    qryParametrosUSANRDOC: TMDOStringField;
    qryParametrosMARCAECF: TMDOStringField;
    qryParametrosLIMITE: TMDOStringField;
    qryParametrosLAYOUTPED: TMDOStringField;
    qryParametrosCONTROL: TIntegerField;
    qryParametrosBAIXAORC: TMDOStringField;
    qryParametrosMANUT: TMDOStringField;
    qryParametrosMANUTRESP: TMDOStringField;
    qryParametrosMANUTMOT: TMDOStringField;
    qryParametrosMANUTPREVINI: TTimeField;
    qryParametrosMANUTPREVFIN: TTimeField;
    qryParametrosVERSAO: TIntegerField;
    qryParametrosMANUTTERMIN: TMDOStringField;
    qryParametrosTELAPRO: TIntegerField;
    qryParametrosQTNFECONT: TIntegerField;
    qryParametrosHOST: TMDOStringField;
    qryParametrosUSER: TMDOStringField;
    qryParametrosPASSWORD: TMDOStringField;
    qryParametrosCONFIG_ATIVA: TMDOStringField;
    qryParametrosVERSAODOWN: TIntegerField;
    qryParametrosCPFRESPONSAVEL: TMDOStringField;
    qryParametrosCODMUNICIPIO: TIntegerField;
    qryParametrosFAX: TMDOStringField;
    qryParametrosSITE: TMDOStringField;
    qryParametrosPERPIS: TMDOBCDField;
    qryParametrosPERCOFINS: TMDOBCDField;
    qryParametrosCST_PIS: TMDOStringField;
    qryParametrosCST_COFINS: TMDOStringField;
    qryParametrosSENHA_NIVEIS: TMDOStringField;
    qryParametrosNUMERO: TIntegerField;
    qryParametrosBAIRRO: TMDOStringField;
    qryParametrosRESPONSAVEL: TMDOStringField;
    qryParametrosSERVSMTP: TMDOStringField;
    qryParametrosUSERSMTP: TMDOStringField;
    qryParametrosSENHASMTP: TMDOStringField;
    qryParametrosCORPOMSG: TMDOStringField;
    qryParametrosCERTIFICADO: TMDOStringField;
    qryParametrosTIPO_AMBIENTE: TSmallintField;
    edRaz: TEdit;
    edNomeFan: TEdit;
    edEnd: TEdit;
    OpenDialog: TOpenDialog;
    edUf: TFocusEdit;
    edCnpj: TFocusEdit;
    edIe: TFocusEdit;
    edEmail: TFocusEdit;
    Label5: TLabel;
    edFone: TFocusMaskEdit;
    edCep: TFocusMaskEdit;
    Label13: TLabel;
    qryParametrosCAMINHO_LOGO: TMDOStringField;
    qryParametrosBD_REMOTO: TMDOStringField;
    qryParametrosSENHACERTIF: TMDOStringField;
    qryParametrosRNTRC: TIntegerField;
    Tab2: TTabSheet;
    edtRNTRC: TFocusEdit;
    ComboBox1: TComboBox;
    Label14: TLabel;
    Label12: TLabel;
    Label41: TLabel;
    EdCaminhoLogo: TEdit;
    BitProcurar: TBitBtn;
    Label88: TLabel;
    GroupBox1: TGroupBox;
    Bevel1: TBevel;
    Image1: TImage;
    Label15: TLabel;
    Label16: TLabel;
    btSelecionaBD: TBitBtn;
    OpenDialog1: TOpenDialog;
    Label17: TLabel;
    cbSN: TComboBox;
    mMsgPadrao: TMemo;
    Label18: TLabel;
    qryParametrosRAZ: TMDOStringField;
    qryParametrosIMPPADRAO: TMDOStringField;
    qryParametrosBDPADRAO: TMDOStringField;
    qryParametrosSN: TMDOStringField;
    qryParametrosMSGPADRAO: TMDOStringField;
    Label19: TLabel;
    edtCaracProd: TEdit;
    framecidadeorigem: TFrameCidade2;
    Label20: TLabel;
    Label22: TLabel;
    edCaminhoBD: TEdit;
    edtBDPadrao: TEdit;
    GroupBox2: TGroupBox;
    BitGravar: TSpeedButton;
    bitAlterar: TSpeedButton;
    bitFechar: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure FrameCidade21SpeedButton1Click(Sender: TObject);
    procedure BitAlterarClick(Sender: TObject);
    procedure BitGravarClick(Sender: TObject);
    procedure BitFecharClick(Sender: TObject);
    procedure BitProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btSelecionaBDClick(Sender: TObject);
    procedure edUfEnter(Sender: TObject);
    procedure FrameCidade21spbBuscaClick(Sender: TObject);

  private
    procedure selImpPadrao;
  public
    { Public declarations }
  end;

var
  frmCadParametros: TfrmCadParametros;
  parametro :TParametro;

implementation

uses StrUtils, uDica;

{$R *.dfm}

procedure TfrmCadParametros.FormActivate(Sender: TObject);
begin
  if Trim(edRaz.Text) <> '' then
    BitAlterar.Caption := '<F4> Alterar'
  else
    BitAlterar.Caption := '<F4> Incluir';
end;

procedure TfrmCadParametros.FrameCidade21SpeedButton1Click(
  Sender: TObject);
begin
  FrameCidade21.SpbBuscaClick(Sender);
end;

procedure TfrmCadParametros.BitAlterarClick(Sender: TObject);
begin
  BitGravar.Enabled := true;
  Tab1.Enabled := true;
  Tab2.Enabled := true;

  if PageControl1.ActivePageIndex = 0 then
    edRaz.SetFocus;

end;

procedure TfrmCadParametros.BitGravarClick(Sender: TObject);
begin
 try
   parametro.Raz             := Trim(edRaz.Text);
   parametro.Fan             := Trim(edNomeFan.Text);
   parametro.Ender           := Trim(edEnd.Text);
   parametro.numero          := StrToIntDef(edNum.Text,0);
   parametro.bairro          := Trim(edBairro.Text);
   parametro.responsavel     := Trim(edResponsavel.Text);
   parametro.CodMunicipio    := StrToIntDef(FrameCidade21.edCodigoMunicipio.Text,0);
   parametro.Cidade          := Trim(FrameCidade21.edCidade.Text);
   parametro.Estado          := Trim(edUf.Text);
   parametro.Cep             := Trim(edCep.Text);
   parametro.Cnpj            := Trim(edCnpj.Text);
   parametro.IE              := Trim(edIe.Text);
   parametro.Fone            := Trim(edFone.Text);
   parametro.fax             := Trim(edFax.Text);
   parametro.DataMov         := edDataMov.Date;
   parametro.CpfResponsavel  := Trim(edCpfResponsavel.Text);
   parametro.Email           := Trim(edEmail.Text);
   parametro.site            := Trim(edSite.Text);
   parametro.CaminhoLogo     := Trim(EdCaminhoLogo.Text);
   parametro.BDRemoto        := Trim(edCaminhoBD.Text);
   parametro.RNTRC           := StrToInt(edtRNTRC.Text);
   parametro.ImpPadrao       := Trim(ComboBox1.Text);
   parametro.BDPadrao        := Trim(edtBDPadrao.Text);
   parametro.SN              := Copy(cbSN.Text,1,2);
   parametro.MsgPadrao       := trim(mMsgPadrao.Text);
   parametro.CaracProd       := trim(edtCaracProd.Text);
   parametro.CidadeOrig      := framecidadeorigem.edCodigoMunicipio.Text;
   parametro.salvar;

   Tab1.Enabled              := false;
   Tab2.Enabled              := false;
   BitGravar.Enabled := false;

   Avisar('Operação realizada com sucesso!');
 except
   on e: Exception do begin
     Avisar('Falha ao gravar informações.'+#13#10+e.Message);
   end;
 end;
end;

procedure TfrmCadParametros.BitFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadParametros.BitProcurarClick(Sender: TObject);
begin
  OpenDialog.Execute;
  EdCaminhoLogo.Text :=  OpenDialog.FileName;
  Image1.Picture.LoadFromFile(OpenDialog.FileName);
end;

procedure TfrmCadParametros.FormShow(Sender: TObject);
begin

  ComboBox1.Items.Assign(Printer.Printers);

  parametro := TParametro.Create;
  parametro := parametro.Get;
  edCod.Text         := trim(parametro.codEmp);
  edRaz.Text         := trim(parametro.Raz);
  edNomeFan.Text     := trim(parametro.Fan);
  edEnd.Text         := trim(parametro.Ender);
  edNum.Text         := IntToStr(parametro.numero);
  edBairro.Text      := trim(parametro.bairro);
  edResponsavel.Text := trim(parametro.responsavel);
  FrameCidade21.codMun := IntToStr(parametro.CodMunicipio);
  edUf.Text          := trim(parametro.Estado);
  edCep.Text         := Trim(parametro.Cep);
  edCnpj.Text        := trim(parametro.Cnpj);
  edIe.Text          := trim(parametro.IE);
  edFone.Text        := trim(parametro.Fone);
  edFax.Text         := trim(parametro.fax);
  edDataMov.Date     := parametro.DataMov;
  edCpfResponsavel.Text := trim(parametro.CpfResponsavel);
  edEmail.Text       := trim(parametro.Email);
  edSite.Text        := trim(parametro.site);
  EdCaminhoLogo.Text := trim(parametro.CaminhoLogo);
  edDataMov.DateTime := StrToDate(FormatDateTime('dd/mm/yyyy',now));
  edCaminhoBD.Text   := trim(parametro.BDRemoto);
  edtRNTRC.Text      := IntToStr(parametro.RNTRC);
  edtBDPadrao.Text   := trim(parametro.BDPadrao);
  mMsgPadrao.Text    := trim(parametro.MsgPadrao);
  edtCaracProd.Text  := trim(parametro.CaracProd);
  framecidadeorigem.codMun := IfThen(trim(parametro.CidadeOrig)<>'', parametro.CidadeOrig,'0');

  if parametro.SN = 'SN' then
    cbSN.ItemIndex   := 0
  else if parametro.SN = 'LR' then
    cbSN.ItemIndex   := 1
  else if parametro.SN = 'LP' then
    cbSN.ItemIndex   := 2
  else
    cbSN.ItemIndex   := 3;

  if parametro.ImpPadrao <> '' then
    SelImpPadrao;

  ComboBox1.ItemIndex := 0;

  if (Trim(EdCaminhoLogo.Text) <> '')and(FileExists(Trim(EdCaminhoLogo.Text))) then
    Image1.Picture.LoadFromFile(EdCaminhoLogo.Text);

  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadParametros.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_F4 then
    BitAlterar.Click
  else if (Key = Vk_F2) and (BitGravar.Enabled) then
    BitGravar.Click
  else if Key = Vk_escape then
    BitFechar.Click
  else if Key = VK_return then
     Perform(WM_NEXTDLGCTL, 0, 0)
  else if Key = VK_EScape then
    Close;   
end;

procedure TfrmCadParametros.selImpPadrao;
var encontrou :Boolean;
  i :Integer;
begin
  encontrou := false;
  
  for i := 0 to ComboBox1.Items.Count - 1 do begin
    ComboBox1.ItemIndex := 0;

    if parametro.ImpPadrao = Trim(ComboBox1.Text) then
     begin
       encontrou := true;
       Break;
     end;
  end;

  if not encontrou then
    ComboBox1.Text := parametro.ImpPadrao;
end;

procedure TfrmCadParametros.btSelecionaBDClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o BD';
  OpenDialog1.Execute;
  edCaminhoBD.Text :=  OpenDialog1.FileName;
end;

procedure TfrmCadParametros.edUfEnter(Sender: TObject);
begin
  edUf.Text := FrameCidade21.edestado.Text;
end;

procedure TfrmCadParametros.FrameCidade21spbBuscaClick(Sender: TObject);
begin
  FrameCidade21.SpbBuscaClick(Sender);

end;

end.

