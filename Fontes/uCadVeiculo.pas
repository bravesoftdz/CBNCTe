unit uCadVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MDOCustomDataSet, MDOQuery, Provider, DBClient, Mask, StrUtils,
  ToolEdit, CurrEdit, FocusCurrEdit, StdCtrls, ExtCtrls, LabelFocusEdit,
  Buttons, Grids, DBGrids, DBMarcianoZebradoGrid, DBMarcianoGrid, ComCtrls, funcoes_cte;

type
  TfrmCadVeiculo = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    gridCliente: TDBMarcianoGrid;
    TabSheet2: TTabSheet;
    pnlDados: TPanel;
    BtnGravar: TSpeedButton;
    Label15: TLabel;
    Label18: TLabel;
    BtnCancelar: TBitBtn;
    Label63: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    edtPlaca: TEdit;
    edtRenavam: TEdit;
    cbUf: TComboBox;
    edtTara: TFocusCurrEdit;
    edtCapacidadeKG: TFocusCurrEdit;
    edtCapacidadeM3: TFocusCurrEdit;
    cbTpVeiculo: TComboBox;
    cbTpRodado: TComboBox;
    cbTpCarroceria: TComboBox;
    cbVeiculoProp: TComboBox;
    ds: TDataSource;
    cds: TClientDataSet;
    dsp: TDataSetProvider;
    qry: TMDOQuery;
    cdsCODIGO: TIntegerField;
    cdsPLACA: TStringField;
    cdsRENAVAM: TStringField;
    cdsTIPO_VEICULO: TIntegerField;
    cdsTIPO_RODADO: TIntegerField;
    cdsTIPO_CARROCERIA: TIntegerField;
    cdsVEICULO_PROPRIO: TStringField;
    cdsTARA: TBCDField;
    cdsCAPACIDADE_KG: TBCDField;
    cdsCAPACIDADE_M3: TBCDField;
    cdsUF_VEICULO: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtCodigo: TFocusCurrEdit;
    gbDadosProprietario: TGroupBox;
    pnlDadosVeiculo: TPanel;
    Label91: TLabel;
    Label92: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    edtCnpjPropVeic: TEdit;
    edtIEPropVeic: TEdit;
    edtRNTRCPropVeic: TEdit;
    edtNomePropVeic: TEdit;
    cbTipoPropVeic: TComboBox;
    cdsCPFCNPJ: TStringField;
    cdsIE: TStringField;
    cdsUF: TStringField;
    cdsNOME_PROPRIETARIO: TStringField;
    cdsRNTRC: TStringField;
    cdsTIPO_PROPRIETARIO: TSmallintField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cbUFProvVeic: TComboBox;
    Label10: TLabel;
    Label93: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel1: TPanel;
    BtnAlterar: TBitBtn;
    btnIncluir: TBitBtn;
    procedure btnIncluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure TabSheet1Exit(Sender: TObject);
    procedure TabSheet2Exit(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbVeiculoPropChange(Sender: TObject);
    procedure cbTpVeiculoChange(Sender: TObject);
  private
    Fincluindo :Boolean;
    FAlterando :Boolean;

    procedure limpaCampos;
    procedure preenche_campos;

    procedure salvar;

    function persistencias :Boolean;
  public
    { Public declarations }
  end;

var
  frmCadVeiculo: TfrmCadVeiculo;

implementation

uses Veiculo;

{$R *.dfm}

procedure TfrmCadVeiculo.btnIncluirClick(Sender: TObject);
begin
  limpaCampos;
  pnlDados.Enabled := true;
  Fincluindo := true;
  PageControl1.ActivePageIndex := 1;
end;

procedure TfrmCadVeiculo.limpaCampos;
begin
  edtCodigo.Clear;
  edtPlaca.Clear;
  edtRenavam.Clear;
  edtTara.Clear;
  edtCapacidadeKG.Clear;
  edtCapacidadeM3.Clear;
  cbUf.ItemIndex           := -1;
  cbTpVeiculo.ItemIndex    := -1;
  cbTpRodado.ItemIndex     := -1;
  cbTpCarroceria.ItemIndex := -1;
  cbVeiculoProp.ItemIndex  := -1;
  edtCnpjPropVeic.Clear;
  edtIEPropVeic.Clear;
  edtNomePropVeic.Clear;
  cbUFProvVeic.ItemIndex := -1;
  edtRNTRCPropVeic.Clear;
  cbTipoPropVeic.ItemIndex := -1;
end;

procedure TfrmCadVeiculo.BtnAlterarClick(Sender: TObject);
begin
  if cds.RecNo > 0 then
    begin
      pnlDados.Enabled := true;
      FAlterando := true;
      PageControl1.ActivePageIndex := 1;
      cbVeiculoPropChange(nil);
    end
  else
    avisar('Primeiramente selecione o cliente desejado.');
end;

procedure TfrmCadVeiculo.TabSheet1Exit(Sender: TObject);
begin
  if FIncluindo then
    exit
  else
    preenche_campos;

end;

procedure TfrmCadVeiculo.preenche_campos;
begin
  edtCodigo.AsInteger      := cdsCODIGO.AsInteger;
  edtPlaca.Text            := cdsPLACA.AsString;
  edtRenavam.Text          := cdsRENAVAM.AsString;
  edtTara.Value            := cdsTARA.AsFloat;
  edtCapacidadeKG.Value    := cdsCAPACIDADE_KG.AsFloat;
  edtCapacidadeM3.Value    := cdsCAPACIDADE_M3.AsFloat;
  cbUf.ItemIndex           := cbUf.Items.IndexOf(cdsUF_VEICULO.AsString);
  cbTpVeiculo.ItemIndex    := StrToIntDef(cdsTIPO_VEICULO.AsString, -1);
  cbTpRodado.ItemIndex     := StrToIntDef(cdsTIPO_RODADO.AsString, -1);
  cbTpCarroceria.ItemIndex := StrToIntDef(cdsTIPO_CARROCERIA.AsString, -1);
  cbVeiculoProp.ItemIndex  := cbVeiculoProp.Items.IndexOf( IfThen(cdsVEICULO_PROPRIO.AsString = 'S', 'Sim', 'Não') );
  edtCnpjPropVeic.Text     := cdsCPFCNPJ.AsString;
  edtIEPropVeic.Text       := cdsIE.AsString;
  edtNomePropVeic.Text     := cdsNOME_PROPRIETARIO.AsString;
  cbUFProvVeic.ItemIndex   := CBox_indice_pelo_texto(cbUFProvVeic, TRIM(cdsUF.Text));
  edtRNTRCPropVeic.Text    := cdsRNTRC.Text;
  cbTipoPropVeic.ItemIndex := cdsTIPO_PROPRIETARIO.AsInteger;
end;

procedure TfrmCadVeiculo.TabSheet2Exit(Sender: TObject);
begin
  if FIncluindo or Falterando then
    BtnCancelar.Click;
end;

procedure TfrmCadVeiculo.BtnCancelarClick(Sender: TObject);
begin
  pnlDados.Enabled := false;
  FIncluindo := false;
  FAlterando := false;
  limpaCampos;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadVeiculo.BtnGravarClick(Sender: TObject);
begin
  if persistencias then
    salvar;
end;

procedure TfrmCadVeiculo.salvar;
var veiculo :TVeiculo;
begin
 try
  try

  veiculo := TVeiculo.Create;

  if FIncluindo then
    veiculo.codigo   := 0
  else if FAlterando then
    veiculo.codigo   := edtCodigo.AsInteger;

  veiculo.placa           := trim(edtPlaca.Text);
  veiculo.renavam         := trim(edtRenavam.Text);
  veiculo.tipo_veiculo    := cbTpVeiculo.ItemIndex;
  veiculo.tipo_rodado     := cbTpRodado.ItemIndex;
  veiculo.tipo_carroceria := cbTpCarroceria.ItemIndex;
  veiculo.uf_veiculo      := cbUf.Text;
  veiculo.veiculo_proprio := copy(cbVeiculoProp.Text,1,1);
  veiculo.TARA            := edtTara.Value;
  veiculo.capacidade_kg   := edtCapacidadeKG.Value;
  veiculo.capacidade_m3   := edtCapacidadeM3.Value;

  if cbVeiculoProp.ItemIndex = 1 then begin
    veiculo.CPFCNPJ           := edtCnpjPropVeic.Text;
    veiculo.IE                := edtIEPropVeic.Text;
    veiculo.Nome_proprietario := edtNomePropVeic.Text;
    veiculo.UF                := cbUf.Items[cbUf.itemIndex];
    veiculo.RNTRC             := edtRNTRCPropVeic.Text;
    veiculo.Tipo_Proprietario := cbTipoPropVeic.ItemIndex;
  end;

  veiculo.salvar;

  FIncluindo := false;
  FAlterando := false;

  avisar('Operação realizada com sucesso!');
  PageControl1.ActivePageIndex := 0;

  cds.Close;
  cds.Open;

  Except
     on e: Exception do begin
        avisar('Ocorreu um erro ao gravar: '+e.Message);
     end;
  end;

 finally
   FreeAndNil(veiculo);
 end;
end;

function TfrmCadVeiculo.persistencias: Boolean;
begin
  Result := false;

  if length( trim( edtPlaca.Text )) < 7 then begin
    avisar('Informe a placa do veículo');
    edtPlaca.SetFocus;
  end
  else if length( trim( edtRenavam.Text ) ) < 9 then begin
    avisar('Informe o RENAVAM do veículo');
    edtRenavam.SetFocus;
  end
  else if cbUf.ItemIndex < 0 then begin
    avisar('Informe a UF do veículo');
    cbUf.SetFocus;
  end
  else if cbTpVeiculo.ItemIndex < 0 then begin
    avisar('Informe o tipo do veículo');
    cbTpVeiculo.SetFocus;
  end
  else if (cbTpVeiculo.ItemIndex = 0) and (cbTpRodado.ItemIndex < 0) then begin
    avisar('Informe o tipo do rodado do veículo');
    cbTpRodado.SetFocus;
  end
  else if (cbTpVeiculo.ItemIndex = 0) and (cbTpCarroceria.ItemIndex < 0) then begin
    avisar('Informe o tipo da carroceria do veículo');
    cbTpCarroceria.SetFocus;
  end
  else if cbVeiculoProp.ItemIndex < 0 then begin
    avisar('Informe se é veículo próprio');
    cbVeiculoProp.SetFocus;
  end
  else if (cbVeiculoProp.ItemIndex = 1) and (trim(edtNomePropVeic.Text) = '') then begin
    avisar('Informe o nome do proprietário do veículo');
    edtNomePropVeic.SetFocus;
  end
  else if (cbVeiculoProp.ItemIndex = 1) and (cbUFProvVeic.ItemIndex < 0) then begin
    avisar('Informe a UF');
    cbUFProvVeic.SetFocus;
  end
  else if (cbVeiculoProp.ItemIndex = 1) and (edtCnpjPropVeic.Text = '') then begin
    avisar('Informe o CPF/CNPJ do proprietário');
    edtCnpjPropVeic.SetFocus;
  end
  else if (cbVeiculoProp.ItemIndex = 1) and (edtIEPropVeic.Text = '') then begin
    avisar('Informe a I.E. do proprietário');
    edtIEPropVeic.SetFocus;
  end
  else if (cbVeiculoProp.ItemIndex = 1) and (edtRNTRCPropVeic.Text = '') then begin
    avisar('Informe a UF');
    edtRNTRCPropVeic.SetFocus;
  end
  else
    Result := true;    
end;

procedure TfrmCadVeiculo.FormShow(Sender: TObject);
begin
  cds.CreateDataSet;
  PageControl1.ActivePageIndex := 0;
  cds.Close;
  cds.Open;
end;

procedure TfrmCadVeiculo.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCadVeiculo.cbVeiculoPropChange(Sender: TObject);
begin
  gbDadosProprietario.Visible := (cbVeiculoProp.ItemIndex = 1);
end;

procedure TfrmCadVeiculo.cbTpVeiculoChange(Sender: TObject);
begin
  label12.Visible := (cbTpVeiculo.ItemIndex = 0);
  label13.Visible := (cbTpVeiculo.ItemIndex = 0);
end;

end.
