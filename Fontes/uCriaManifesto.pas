unit uCriaManifesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadrao, ACBrMDFe, ExtCtrls, ComCtrls, uFrameCidade2, pcnConversao,
  uFrameBuscaCFOP, Mask, FocusMaskEdit, StdCtrls, Buttons, uFramePeriodo2,
  Grids, DBGrids, DBMarcianoZebradoGrid, DBMarcianoGrid, pngimage,
  ACBrMDFeDAMDFeClass, funcoes_cte, DB, DBClient,
  Provider, MDOCustomDataSet, MDOQuery, FrameBuscaCTes, uFrameVeiculo,
  frameBuscaCondutor, ACBrBase, ACBrDFe, ACBrMDFeDAMDFeRLClass;

type
  THackWinControl = class(TWinControl);
  TfrmCriaManifesto = class(TFPadrao)
    pgManifesto: TPageControl;
    ts1: TTabSheet;
    Shape1: TShape;
    Label28: TLabel;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    cbStatus: TComboBox;
    FramePeriodo21: TFramePeriodo2;
    GroupBox5: TGroupBox;
    lbAmb: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    lbAmbGeral: TLabel;
    btbuscar: TBitBtn;
    m100: TRichEdit;
    GroupBox10: TGroupBox;
    Label68: TLabel;
    Label67: TLabel;
    ts2: TTabSheet;
    Panel1: TPanel;
    btnConsulta: TSpeedButton;
    btnCancela: TSpeedButton;
    btnImprimir: TSpeedButton;
    btnEnviar: TSpeedButton;
    btnIncluir: TSpeedButton;
    Label83: TLabel;
    MDFe: TACBrMDFe;
    ts3: TTabSheet;
    GridCtes: TDBMarcianoGrid;
    qryMDFe: TMDOQuery;
    dspMDFe: TDataSetProvider;
    cdsMDFe: TClientDataSet;
    dsMDFe: TDataSource;
    cdsMDFeCMDF: TIntegerField;
    cdsMDFeNMDF: TIntegerField;
    cdsMDFeTPAMB: TIntegerField;
    cdsMDFeTPEMIT: TIntegerField;
    cdsMDFeMODAL: TIntegerField;
    cdsMDFeDHEMI: TDateField;
    cdsMDFeTPEMIS: TIntegerField;
    cdsMDFeVERPROC: TStringField;
    cdsMDFeUFINI: TStringField;
    cdsMDFeUFFIM: TStringField;
    cdsMDFeCOD_EMIT: TIntegerField;
    cdsMDFeCOD_VEIC_TRAC: TIntegerField;
    cdsMDFeVALE_PEDAGIO: TIntegerField;
    buscaCtes1: TbuscaCtes;
    btnAddCte: TBitBtn;
    cdsCtes: TClientDataSet;
    dsCtes: TDataSource;
    Label8: TLabel;
    Label9: TLabel;
    diCte: TDateTimePicker;
    dfCte: TDateTimePicker;
    ts4: TTabSheet;
    gbValePedagio: TGroupBox;
    edCNPJ: TStaticText;
    edtCNPJEmpFor: TEdit;
    edtCNPJEmpResp: TEdit;
    StaticText4: TStaticText;
    edtNumComp: TEdit;
    StaticText7: TStaticText;
    gbVeiculoRebo: TGroupBox;
    DBMarcianoGrid1: TDBMarcianoGrid;
    btnAddVeicReboq: TBitBtn;
    FrameVeiculo2: TFrameVeiculo;
    gbVeiculoPrin: TGroupBox;
    FrameVeiculo1: TFrameVeiculo;
    gbCondutores: TGroupBox;
    GridCondutores: TDBMarcianoGrid;
    BuscaCondutor1: TBuscaCondutor;
    btnAddCondutor: TBitBtn;
    cdsCondutores: TClientDataSet;
    dsCondutores: TDataSource;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    Label10: TLabel;
    dsVeicReboq: TDataSource;
    cdsVeicReboq: TClientDataSet;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edtCodigoVale: TEdit;
    cdsCondutoresCODIGO_CONDUTOR: TIntegerField;
    cdsCondutoresCONDUTOR: TStringField;
    cdsCondutoresCPF: TStringField;
    cdsCondutoresCODIGO: TIntegerField;
    cdsVeicReboqCODIGO: TIntegerField;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtCMDF: TEdit;
    txt3: TStaticText;
    cbFormaEmis: TComboBox;
    edtNMDF: TEdit;
    StaticText1: TStaticText;
    cbModal: TComboBox;
    txt8: TStaticText;
    cbTpEmit: TComboBox;
    StaticText3: TStaticText;
    cdsCtesCODIGO: TIntegerField;
    dtpCriacao: TDateTimePicker;
    StaticText9: TStaticText;
    cdsMDFeIDCHAVE: TStringField;
    cdsMDFeDT_CRIACAO: TDateField;
    cdsMDFeSTATUS: TStringField;
    cdsMDFeDESCRICAO_STATUS: TStringField;
    cdsMDFeNUMERO_PROTOCOLO: TStringField;
    cdsVeicReboqCODIGO_VEICULO: TIntegerField;
    cdsVeicReboqPLACA: TStringField;
    cdsVeicReboqTARA: TBCDField;
    cdsVeicReboqCAPACIDADE_KG: TBCDField;
    cdsVeicReboqCAPACIDADE_M3: TBCDField;
    cdsVeicReboqRNTRC: TStringField;
    mObs: TMemo;
    Label14: TLabel;
    Label40: TLabel;
    mObsFisco: TMemo;
    Label15: TLabel;
    Label16: TLabel;
    cdsVeicReboqUF: TStringField;
    SpeedButton2: TSpeedButton;
    memoMsg: TMemo;
    cdsCtesNUMCTE: TIntegerField;
    cdsCtesDATA: TDateField;
    cdsCtesRAZDES: TStringField;
    frameCidOrig: TFrameCidade2;
    btnAlterar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancelaOp: TSpeedButton;
    Label7: TLabel;
    btnEncerrar: TSpeedButton;
    Image4: TImage;
    Label17: TLabel;
    cbUfInicial: TComboBox;
    StaticText2: TStaticText;
    dsMunCarrega: TDataSource;
    gridMunCarrega: TDBGrid;
    btnAddMunCar: TBitBtn;
    Label2: TLabel;
    cdsMDFeCMUNCARREGA: TStringField;
    Label6: TLabel;
    Label19: TLabel;
    frameCidFimPrestacao: TFrameCidade2;
    cdsMDFeCMUNDESCARGA: TIntegerField;
    GridManifestos: TDBGrid;
    Label3: TLabel;
    cdsMunCarrega: TClientDataSet;
    cdsMunCarregaCODMUNCARREGA: TIntegerField;
    cdsMunCarregaMUNICIPIO: TStringField;
    cdsMunCarregaUF: TStringField;
    cdsCtesXMUNFIM: TStringField;
    cdsMDFeXMUNDESCARGA: TStringField;
    cdsDeletar: TClientDataSet;
    cdsDeletarTABELA: TStringField;
    cdsDeletarCODREGISTRO: TIntegerField;
    dsUfPercurso: TDataSource;
    DBGrid1: TDBGrid;
    Label18: TLabel;
    cbxUfPercurso: TComboBox;
    btnAddUf: TBitBtn;
    cdsUfPercurso: TClientDataSet;
    cdsUfPercursoUF: TStringField;
    MDFeDAMDFEFR: TACBrMDFeDAMDFeRL;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAddCteClick(Sender: TObject);
    procedure GridCtesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure buscaCtes1Exit(Sender: TObject);
    procedure buscaCtes1Enter(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAddCondutorClick(Sender: TObject);
    procedure BuscaCondutor1Exit(Sender: TObject);
    procedure btnAddVeicReboqClick(Sender: TObject);
    procedure FrameVeiculo2Exit(Sender: TObject);
    procedure btbuscarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ts1Exit(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridManifestosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure pgManifestoChange(Sender: TObject);
    procedure edtCMDFChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure cdsMDFeAfterScroll(DataSet: TDataSet);
    procedure btnCancelaOpClick(Sender: TObject);
    procedure ts2Enter(Sender: TObject);
    procedure btnEncerrarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnAddMunCarClick(Sender: TObject);
    procedure gridMunCarregaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure frameCidFimPrestacaoExit(Sender: TObject);
    procedure btnAddUfClick(Sender: TObject);

  private
    procedure habilita_desabilita(H_D :Boolean);
    procedure cria_clientDataSets;
    procedure limpar_dados;
    procedure mostra_dados;
    procedure Mostra_municipios_carregamento(codigos_ibge :String);

    function confere_obrigatorios :Boolean;
    procedure trataMsgRetorno(msg :String);

    procedure salva_MDFe;
    function  salva_vale_pedagio(codigo :integer) :Boolean;
    procedure salva_ctes_manifesto(codigo_manifesto :integer);
    procedure salva_condutores(codigo_manifesto :integer);
    procedure salva_veiculos_reboque(codigo_manifesto :integer);

    function GerarMDFe :Boolean;

    procedure salva_retorno_MDFe(consultado :Boolean);
    procedure salva_retorno_evento(codigo_manifesto :integer; evento: TpcnTpEvento);
    procedure salva_XML;

    procedure verifica_status_servico;
    procedure consulta_MDFe;

    procedure Cancelar_manifesto;
    procedure Encerrar_manifesto;

    procedure busca_dados_cte(numero_cte :integer);
    function  agrupa_mun_carrega :String;
    procedure salva_para_delecao( tabela :String; codigo :Integer);

    procedure Deleta_registros;
  public
    { Public declarations }
  end;

var
  frmCriaManifesto: TfrmCriaManifesto;

implementation

uses Modulo, Manifesto, ValePedagio, CondutoresManifesto, veiculosReboque,
     CTesManifesto, ClasseCTE, Veiculo, Condutor, pmdfeConversaoMDFe,
  Parametro, pmdfeMDFe, StrUtils, ACBrMDFeWebServices, uLog, Math,
  pmdfeRetEnvEventoMDFe, pmdfeEventoMDFe, uConfigCte;

{$R *.dfm}

procedure TfrmCriaManifesto.FormCreate(Sender: TObject);
var xSenha :String;
begin
  inherited;
  try
    cria_clientDataSets;

    If trim(dm.Parametro.Certificado) = '' Then
      begin
        Self.MDFe.Configuracoes.Certificados.NumeroSerie := self.MDFe.SSL.SelecionarCertificado;
        InputQuery('Senha certificado ', 'PIN', xSenha);
        Self.MDFe.Configuracoes.Certificados.Senha       := xSenha;
      end
    else if trim(dm.Parametro.Certificado) <> '0' then
      begin
        self.MDFe.Configuracoes.Certificados.NumeroSerie := trim(dm.Parametro.Certificado);
        self.MDFe.Configuracoes.Certificados.Senha       := DesCrip(dm.Parametro.SenhaCertif);
      end;

    MDFe.Configuracoes.Geral.FormaEmissao  := StrToTpEmis(cbFormaEmis.ItemIndex + 1);

    if not(DirectoryExists(ExtractFilePath(Application.ExeName)+'XMLMDFe')) then
      CreateDirectory( PAnsiChar(ExtractFilePath(Application.ExeName)+'XMLMDFe\'), 0);

    if not(DirectoryExists(ExtractFilePath(Application.ExeName)+'Schemas\PL_MDFe_100a_NT032014\')) then
      avisar('Schemas MDF-e não encontrado. [ '+ExtractFilePath(Application.ExeName)+'Schemas\PL_MDFe_100a_NT032014\ ]');

    MDFe.Configuracoes.Arquivos.PathSalvar    := ExtractFilePath(Application.ExeName)+'XMLMDFe\';
    MDFe.Configuracoes.Arquivos.PathSchemas   := ExtractFilePath(Application.ExeName)+'Schemas\PL_MDFe_100a_NT032014\';

    try
      MDFe.Configuracoes.WebServices.UF   := dm.Parametro.Estado;
      MDFeDAMDFEFR.Logo                   := dm.Parametro.CaminhoLogo;
      MDFeDAMDFEFR.Impressora             := dm.Parametro.ImpPadrao;
    except
      on e: Exception do begin
        Avisar('Erro ao buscar dados de Parametros.'+#13#10+e.Message);
      end;
    end;

    case dm.Parametro.TipoAmbiente of
     2: MDFe.Configuracoes.WebServices.Ambiente := taHomologacao;
     1: MDFe.Configuracoes.WebServices.Ambiente := taProducao;
    end;

     if dm.Parametro.TipoAmbiente = 1 then
      begin
       lbAmbGeral.Font.Color := clGreen;
       lbAmbGeral.Caption := 'Produção';
      end
     else if dm.Parametro.TipoAmbiente = 2 then
      begin
        lbAmbGeral.Font.Color := clBlue;
        lbAmbGeral.Caption := 'Homologação';
      end;

    MDFe.Configuracoes.WebServices.Visualizar := false;

    if MDFe.DAMDFe <> nil then
     begin
      MDFe.DAMDFe.TipoDAMDFe  := StrToTpImp(1); //1-retrato  2-paisagem
      MDFe.DAMDFe.Logo        := ExtractFileName(Application.ExeName)+'\LOGOS\logo.jpg';
     end;

     if dm.Parametro.SN = 'S' then
        mObs.Text := 'EMPRESA OPTANTE PELO SIMPLES NACIONAL';
   //  if trim(dm.Parametro.MsgPadrao) <> '' then
     //  mObs.Text := trim(dm.Parametro.MsgPadrao);

     diCte.DateTime := strToDateTime( DateToStr(Date)+' 00:00:00');
     dfCte.DateTime := strToDateTime( DateToStr(Date)+' 23:59:59');

     pgManifesto.ActivePageIndex := 0;
     
  Except
    on e: Exception do begin
      Mensagem('Erro ao configurar | '+e.Message);
    end;
  end;
end;

procedure TfrmCriaManifesto.btnIncluirClick(Sender: TObject);
begin
  habilita_desabilita(true);
  self.limpar_dados;
  btnIncluir.Tag              := 1;
  pgManifesto.ActivePageIndex := 1;
end;

procedure TfrmCriaManifesto.btnAddCteClick(Sender: TObject);
var i :integer;
begin

  buscaCtes1.cds.First;
  while not buscaCtes1.cds.Eof do begin

    if not cdsCtes.Locate(cdsCtes.Fields[0].FieldName, buscaCtes1.cds.Fields[0].AsVariant, []) then begin

      cdsCtes.Append;
      for i := 0 to buscaCtes1.cds.Fields.Count - 1 do
        cdsCtes.Fields[i+1].AsVariant := buscaCtes1.cds.Fields[i].AsVariant;

      cdsCtes.Post;
    end;

    buscaCtes1.cds.Next;
  end;

  buscaCtes1.limpa;

end;

procedure TfrmCriaManifesto.GridCtesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var perguntar, tabela :String;
begin
  if key = VK_Delete then
    if (TClientDataSet( TDataSource( TDBMarcianoGrid( Sender ).DataSource ).DataSet ).Active) and
    not(TClientDataSet( TDataSource( TDBMarcianoGrid( Sender ).DataSource ).DataSet ).IsEmpty) then begin

      if TClientDataSet( TDataSource( TDBMarcianoGrid( Sender ).DataSource ).DataSet ).Name = 'cdsCtes' then begin
        perguntar := 'Deseja remover o CT-e Nº '+cdsCtes.Fields[0].AsString+' deste manifesto?';
        tabela   := 'CTES_MANIFESTO';
      end
      else if TClientDataSet( TDataSource( TDBMarcianoGrid( Sender ).DataSource ).DataSet ).Name = 'cdsVeicReboq' then begin
        perguntar := 'Deseja remover o Veículo de placa "'+cdsVeicReboq.Fields[2].AsString+'" deste manifesto?';
        tabela   := 'VEICULOS_REBOQUE';
      end
      else if TClientDataSet( TDataSource( TDBMarcianoGrid( Sender ).DataSource ).DataSet ).Name = 'cdsCondutores' then begin
        perguntar := 'Deseja remover o Condutor '+cdsCondutores.Fields[2].AsString+' deste manifesto?';
        tabela   := 'CONDUTORES_MANIFESTO';
      end;

      if not Pergunta( perguntar ) then
        Exit;

      salva_para_delecao(tabela, TClientDataSet( TDataSource( TDBMarcianoGrid( Sender ).DataSource ).DataSet ).fieldByName('CODIGO').asInteger );
      TClientDataSet( TDataSource( TDBMarcianoGrid( Sender ).DataSource ).DataSet ).Delete;
    end;
end;

procedure TfrmCriaManifesto.buscaCtes1Exit(Sender: TObject);
begin
  if assigned(buscaCtes1.cds) and not (buscaCtes1.cds.IsEmpty) then
    btnAddCte.Click;
end;

procedure TfrmCriaManifesto.buscaCtes1Enter(Sender: TObject);
begin
  inherited;
  buscaCtes1.dti := diCte.DateTime;
  buscaCtes1.dtf := dfCte.DateTime;
end;

procedure TfrmCriaManifesto.btnSalvarClick(Sender: TObject);
begin
  if confere_obrigatorios then
    salva_MDFe;
end;

procedure TfrmCriaManifesto.salva_MDFe;
var MDFe          :TManifesto;
    cod_manifesto :integer;
begin
  try
    DM.Transaction.AutoCommit := false;
  try

    Deleta_registros;

    MDFe := TManifesto.Create;

    MDfe.CMDF          := StrToInt(edtCMDF.Text);
    MDFe.NMDF          := StrToInt(edtNMDF.Text);
    //MDFe.IDChave       := edtChave.Text;
    MDFe.TpAmb         := dm.Parametro.TipoAmbiente;
    MDFe.TpEmit        := cbTpEmit.ItemIndex + 1;
    MDFe.Modal         := cbModal.ItemIndex + 1;
//    MDFe.DhEmi       :=
    MDFe.TpEmis        := cbFormaEmis.ItemIndex + 1;
    MDFe.VerProc       := '1.0';
    MDFe.UfIni         := cbUfInicial.Items[ cbUfInicial.itemIndex ];
    MDFe.UfFim         := frameCidFimPrestacao.edestado.Text;
    MDFe.CMunCarrega   := agrupa_mun_carrega;
  //  MDFe.XMunCarrega   := TRIM(frameCidOrig.edCidade.Text);
    MDFe.CMunDescarga  := StrToInt(frameCidFimPrestacao.edCodigoMunicipio.Text);
 //   MDFe.XMunDescarga  := TRIM(frameCidDest.edCidade.Text);
    MDFe.infclp        := TRIM( mObs.Text );
    MDFe.infadfisco    := TRIM( mObsFisco.Text );
    MDFe.DT_criacao    := Date;
    MDFe.status        := '321';
    MDFe.descricao_status := 'MDF-e pendente para envio';

    MDFe.Cod_Emit      :=  1; // empresa cadastrada em parametros

    MDFe.Cod_Veic_Trac := StrToInt(FrameVeiculo1.edCodigo.Text);

    cdsUfPercurso.First;
    while not cdsUfPercurso.Eof do begin

      MDFe.infPercurso := MDFe.infPercurso + cdsUfPercursoUF.AsString+',';

      cdsUfPercurso.Next;
    end;

       { SE HOUVER VALE, SALVA }
    if salva_vale_pedagio(StrToInt(edtCodigoVale.Text)) then
      MDFe.CodValePedagio  := strToIntDef( Maximo_valor_cadastrado('VALE_PEDAGIO', 'CODIGO') ,0);

    MDFe.Salvar;

    if StrToInt(edtCMDF.Text) = 0 then
      cod_manifesto := strToIntDef( Maximo_valor_cadastrado('MANIFESTO', 'CMDF') ,0)
    else
      cod_manifesto := StrToInt(edtCMDF.Text);

    salva_condutores( cod_manifesto );
    salva_veiculos_reboque( cod_manifesto );
    salva_ctes_manifesto( cod_manifesto );

    DM.Transaction.Commit;

    avisar('Manifesto salvo com sucesso!');

    btnCancelaOp.Click;
    btbuscar.Click;    

  Except
    on e: Exception do begin
       DM.Transaction.Rollback;

       avisar(e.Message);
    end;
  end;

  Finally
    DM.Transaction.AutoCommit := true;
  end;
end;

procedure TfrmCriaManifesto.btnAddCondutorClick(Sender: TObject);
var i :integer;
begin

  BuscaCondutor1.cds.First;
  while not BuscaCondutor1.cds.Eof do begin

    if not cdsCondutores.Locate('CODIGO_CONDUTOR', BuscaCondutor1.cds.Fields[0].AsVariant, []) then begin

      cdsCondutores.Append;
      for i := 0 to BuscaCondutor1.cds.Fields.Count - 1 do
        cdsCondutores.Fields[i+1].AsVariant := BuscaCondutor1.cds.Fields[i].AsVariant;

      cdsCondutores.Post;
    end;

    BuscaCondutor1.cds.Next;
  end;

  BuscaCondutor1.limpa;
end;

procedure TfrmCriaManifesto.BuscaCondutor1Exit(Sender: TObject);
begin
  if assigned(BuscaCondutor1.cds) and not (BuscaCondutor1.cds.IsEmpty) then
    btnAddCondutor.Click;
end;

procedure TfrmCriaManifesto.btnAddVeicReboqClick(Sender: TObject);
var i :integer;
begin
  FrameVeiculo2.cds.First;
  while not FrameVeiculo2.cds.Eof do begin

    if not cdsVeicReboq.Locate('CODIGO_VEICULO', FrameVeiculo2.cds.Fields[0].AsVariant, []) then begin

      cdsVeicReboq.Append;
      for i := 0 to FrameVeiculo2.cds.Fields.Count - 1 do begin
        cdsVeicReboq.Fields[i+1].AsVariant := FrameVeiculo2.cds.Fields[i].AsVariant;

        if i = cdsVeicReboq.Fields.Count - 2 then
          break; 
      end;

      cdsVeicReboq.Post;
    end;

    FrameVeiculo2.cds.Next;
  end;

  FrameVeiculo2.limpa;
end;

procedure TfrmCriaManifesto.FrameVeiculo2Exit(Sender: TObject);
begin
 if assigned(FrameVeiculo2.cds) and not (FrameVeiculo2.cds.IsEmpty) then
    btnAddVeicReboq.Click;
end;

function TfrmCriaManifesto.salva_vale_pedagio(codigo :integer) :Boolean;
var vale :TValePedagio;
begin
 try
 try
   Result := false;

   if TRIM(edtCNPJEmpFor.Text) = '' then
     Exit;

   vale := TValePedagio.Create;

   vale.Codigo    := codigo;
   vale.Cnpj_forn := edtCNPJEmpFor.Text;
   vale.Cnpj_pg   := edtCNPJEmpResp.Text;
   vale.N_compra  := edtNumComp.Text;

   vale.Salvar;

   Result := true;
 Except
   on e: Exception do begin
      raise Exception.Create('Erro ao salvar vale pedágio  | '+e.Message);
   end;
 end;

 Finally
   if assigned(vale) then
     FreeAndNil(vale);
 end;
end;

procedure TfrmCriaManifesto.salva_condutores(codigo_manifesto: integer);
var condutores :TCondutoresManifesto;
begin
 try
 try

   cdsCondutores.First;
   while not cdsCondutores.Eof do begin

     condutores := TCondutoresManifesto.Create;

     condutores.Codigo           := cdsCondutoresCODIGO.AsInteger;
     condutores.Codigo_Manifesto := codigo_manifesto;
     condutores.Codigo_Condutor  := cdsCondutoresCODIGO_CONDUTOR.AsInteger;

     condutores.Salvar;

     cdsCondutores.Next;
   end;

 Except
   on e: Exception do begin
      raise Exception.Create('Erro ao salvar condutores  | '+e.Message);
   end;
 end;

 Finally
   if assigned(condutores) then
     FreeAndNil(condutores);
 end;
end;

procedure TfrmCriaManifesto.cria_clientDataSets;
begin
  cdsMunCarrega.CreateDataSet;
  cdsCondutores.CreateDataSet;
  cdsVeicReboq.CreateDataSet;
  cdsCtes.CreateDataSet;
  cdsDeletar.CreateDataSet;
  cdsUfPercurso.CreateDataSet;
end;

procedure TfrmCriaManifesto.salva_veiculos_reboque(
  codigo_manifesto: integer);
var veiculos :TVeiculosReboque;
begin
 try
 try

   cdsVeicReboq.First;
   while not cdsVeicReboq.Eof do begin

     veiculos := TVeiculosReboque.Create;

     veiculos.Codigo           := cdsVeicReboqCODIGO.AsInteger;
     veiculos.Codigo_Manifesto := codigo_manifesto;
     veiculos.Codigo_Veiculo   := cdsVeicReboqCODIGO_VEICULO.AsInteger;

     veiculos.Salvar;

     cdsVeicReboq.Next;
   end;

 Except
   on e: Exception do begin
      raise Exception.Create('Erro ao salvar veiculos de reboque  | '+e.Message);
   end;
 end;

 Finally
   if assigned(veiculos) then
     FreeAndNil(veiculos);
 end;
end;

function TfrmCriaManifesto.confere_obrigatorios: Boolean;
begin
  Result := false;

  if cdsMunCarrega.IsEmpty then begin
    avisar('Ao menos um município de carregamento deve ser informado');
    pgManifesto.ActivePageIndex := 1;
    gridMunCarrega.SetFocus;
  end
  else if cdsCtes.RecordCount < 1 then begin
    pgManifesto.ActivePageIndex := 3;
    avisar('ATENÇÃO! O MDF-e deve ser criado apenas se for carga fracionada e interestadual');
    pgManifesto.ActivePageIndex := 2;
    buscaCtes1.edtNumCte.SetFocus;
  end
  else if cbUfInicial.ItemIndex <= 0 then begin
    pgManifesto.ActivePageIndex := 1;
    avisar('UF inicial não foi informada');
    cbUfInicial.SetFocus;
  end
  else if cdsCtes.IsEmpty then begin
    pgManifesto.ActivePageIndex := 2;
    avisar('Nenhuma CT-e foi vinculada ao manifesto');
    diCte.SetFocus;
  end
  else if FrameVeiculo1.edtPlaca.Text = '' then begin
    pgManifesto.ActivePageIndex := 3;
    avisar('O veículo principal não foi informado');
    FrameVeiculo1.edCodigo.SetFocus;
  end
  else if cdsCondutores.IsEmpty then begin
    pgManifesto.ActivePageIndex := 3;
    avisar('Nenhum condutor foi informado');
    BuscaCondutor1.edtCodigo.SetFocus;
  end
  else if ( (trim(edtCNPJEmpFor.Text) <> '') or (trim(edtCNPJEmpResp.Text) <> '') or (trim(edtNumComp.Text) <> '') ) and
          ( (trim(edtCNPJEmpFor.Text) = '') or (trim(edtCNPJEmpResp.Text) = '') or (trim(edtNumComp.Text) = '') ) then begin
      pgManifesto.ActivePageIndex := 3;
      avisar('Preenchimento do vale pedágio, incompleto');
      edtCNPJEmpFor.SetFocus;
  end
  else
    Result := true;

end;

procedure TfrmCriaManifesto.habilita_desabilita(H_D: Boolean);
begin
  ts2.Enabled := H_D;
  ts3.Enabled := H_D;
  ts4.Enabled := H_D;

  self.btnEnviar.Enabled    := not H_D;
  self.btnConsulta.Enabled  := not H_D;
  self.btnImprimir.Enabled  := not H_D;
  self.btnCancela.Enabled   := not H_D;
  self.btnAlterar.Enabled   := not H_D;
  self.btnIncluir.enabled   := not H_D;

  self.btnSalvar.Visible    := H_D;
  self.btnCancelaOp.Visible := H_D;
  self.Label7.Visible       := H_D;

end;

procedure TfrmCriaManifesto.btbuscarClick(Sender: TObject);
begin
  cdsMDFe.Close;
  qryMDFe.ParamByName('dti').AsDateTime := FramePeriodo21.eddi.DateTime;
  qryMDFe.ParamByName('dtf').AsDateTime := FramePeriodo21.eddf.DateTime;
  qryMDFe.ParamByName('stat').AsInteger := 0;

  if cbStatus.ItemIndex > 0 then
    begin
      if cbStatus.ItemIndex = 1 then
        qryMDFe.ParamByName('stat').AsString := '321'
      else if cbStatus.ItemIndex = 2 then
        qryMDFe.ParamByName('stat').AsString := '100'
      else if cbStatus.ItemIndex = 3 then
        qryMDFe.ParamByName('stat').AsString := '101'
      else if cbStatus.ItemIndex = 4 then
        qryMDFe.ParamByName('stat').AsString := '132';
    end;

  cdsMDFe.Open;
  GridManifestos.SetFocus;
end;

procedure TfrmCriaManifesto.FormShow(Sender: TObject);
begin
  inherited;
  FramePeriodo21.eddi.DateTime := StrToDateTime(DateToStr(Date)+' 00:00:00');
  FramePeriodo21.eddf.DateTime := StrToDateTime(DateToStr(Date)+' 23:59:59');
  buscaCtes1.FStatus           := '100';
  btbuscar.Click;
end;

procedure TfrmCriaManifesto.mostra_dados;
var Manifesto :TManifesto;
    i         :integer;
    aux, ufs_percurso :String;

begin
  self.limpar_dados;

  Manifesto := TManifesto.GetbyCodigo(cdsMDFeCMDF.AsInteger);

  if not assigned( Manifesto ) then
    Exit;

  edtCMDF.Text                := intToStr(Manifesto.CMDF);
  edtNMDF.Text                := intToStr(Manifesto.NMDF);
  dtpCriacao.DateTime         := Manifesto.DT_criacao;
  cbTpEmit.ItemIndex          := Manifesto.TpEmit -1;
  cbModal.ItemIndex           := Manifesto.Modal -1;
  cbFormaEmis.ItemIndex       := Manifesto.TpEmis -1;
  cbUfInicial.ItemIndex       := cbUfInicial.Items.IndexOf( Manifesto.UfIni );

  ufs_percurso                := Manifesto.infPercurso;
  
  while ufs_percurso <> '' do begin
    aux := copy(ufs_percurso,1,pos(',',ufs_percurso)-1);

    cdsUfPercurso.Append;
    cdsUfPercursoUF.AsString := aux;
    cdsUfPercurso.Post;

    ufs_percurso := copy(ufs_percurso,pos(',',ufs_percurso)+1, length(ufs_percurso));
  end;

  frameCidFimPrestacao.codMun := IntToStr( Manifesto.CMunDescarga );

  Mostra_municipios_carregamento( Manifesto.CMunCarrega );

  mObs.Text             := TRIM( Manifesto.infclp );
  mObsFisco.Text        := TRIM( Manifesto.infadfisco ); 

  for i := 0 to Manifesto.ctesManifesto.Count - 1 do begin
    cdsCtes.Append;
    cdsCtesCODIGO.AsInteger           := (Manifesto.ctesManifesto[i] as TCtesManifesto).Codigo;
    cdsCtesNUMCTE.AsInteger           := (Manifesto.ctesManifesto[i] as TCtesManifesto).Codigo_Cte;
    cdsCtesDATA.AsDateTime            := (Manifesto.ctesManifesto[i] as TCtesManifesto).CTe.Data;
    cdsCtesRAZDES.AsString            := (Manifesto.ctesManifesto[i] as TCtesManifesto).CTe.Razdes;
    cdsCtesXMUNFIM.AsString           := (Manifesto.ctesManifesto[i] as TCtesManifesto).CTe.Xmunfim;
    cdsCtes.Post;
  end;

  FrameVeiculo1.codigo := Manifesto.Cod_Veic_Trac;

  if assigned(Manifesto.veiculosReboque) then begin
    for i := 0 to Manifesto.veiculosReboque.Count - 1 do begin
      cdsVeicReboq.Append;
      cdsVeicReboqCODIGO.AsInteger         := (Manifesto.veiculosReboque[i] as TVeiculosReboque).Codigo;
      cdsVeicReboqCODIGO_VEICULO.AsInteger := (Manifesto.veiculosReboque[i] as TVeiculosReboque).Codigo_Veiculo;
      cdsVeicReboqPLACA.AsString           := (Manifesto.veiculosReboque[i] as TVeiculosReboque).Veiculo.placa;
      cdsVeicReboqTARA.AsInteger           := TRUNC((Manifesto.veiculosReboque[i] as TVeiculosReboque).Veiculo.TARA);
      cdsVeicReboqCAPACIDADE_KG.AsInteger  := TRUNC((Manifesto.veiculosReboque[i] as TVeiculosReboque).Veiculo.capacidade_kg);
      cdsVeicReboqCAPACIDADE_M3.AsInteger  := TRUNC((Manifesto.veiculosReboque[i] as TVeiculosReboque).Veiculo.capacidade_m3);
      cdsVeicReboqRNTRC.AsString           := (Manifesto.veiculosReboque[i] as TVeiculosReboque).Veiculo.RNTRC;
      cdsVeicReboqUF.AsString              := (Manifesto.veiculosReboque[i] as TVeiculosReboque).Veiculo.uf_veiculo;
      cdsVeicReboq.Post;
    end;
  end;

  for i := 0 to Manifesto.condutores.Count - 1 do begin
    cdsCondutores.Append;
    cdsCondutoresCODIGO.AsInteger           := (Manifesto.condutores[i] as TCondutoresManifesto).Codigo;
    cdsCondutoresCODIGO_CONDUTOR.AsInteger := (Manifesto.condutores[i] as TCondutoresManifesto).Codigo_Condutor;
    cdsCondutoresCONDUTOR.AsString         := (Manifesto.condutores[i] as TCondutoresManifesto).Condutor.nome;
    cdsCondutoresCPF.AsString              := (Manifesto.condutores[i] as TCondutoresManifesto).Condutor.CPF;
    cdsCondutores.Post;
  end;

  if assigned(Manifesto.ValePedagio) then begin
    edtCNPJEmpFor.Text  := Manifesto.ValePedagio.Cnpj_forn;
    edtCNPJEmpResp.Text := Manifesto.ValePedagio.Cnpj_pg;
    edtNumComp.Text     := Manifesto.ValePedagio.N_compra;
  end;

end;

procedure TfrmCriaManifesto.ts1Exit(Sender: TObject);
begin
  if btnIncluir.Tag <> 1 then
    self.mostra_dados;
end;

procedure TfrmCriaManifesto.limpar_dados;
begin
  edtCMDF.Clear;
  edtNMDF.Clear;
  cbFormaEmis.ItemIndex := 0;
  cbModal.ItemIndex     := 0;
  cbTpEmit.ItemIndex    := 0;
  cdsMunCarrega.EmptyDataSet;
  cdsUfPercurso.EmptyDataSet;
  mObs.Clear;
  mObsFisco.Clear;  
  cdsCtes.EmptyDataSet;
  FrameVeiculo1.limpa;
  cdsVeicReboq.EmptyDataSet;
  cdsCondutores.EmptyDataSet;
  edtCNPJEmpFor.Clear;
  edtCNPJEmpResp.Clear;
  edtNumComp.Clear;
  dtpCriacao.DateTime := StrToDateTime(DateToStr(Date)+' 00:00:00');
end;

procedure TfrmCriaManifesto.salva_ctes_manifesto(codigo_manifesto: integer);
var ctes :TCTesManifesto;
begin
 try
 try

   cdsCtes.First;
   while not cdsCtes.Eof do begin

     ctes := TCTesManifesto.Create;

     ctes.Codigo           := cdsCtesCODIGO.AsInteger;
     ctes.Codigo_Manifesto := codigo_manifesto;
     ctes.Codigo_Cte       := cdsCtesNUMCTE.AsInteger;

     ctes.Salvar;

     cdsCtes.Next;
   end;

 Except
   on e: Exception do begin
      raise Exception.Create('Erro ao salvar CTes  | '+e.Message);
   end;
 end;

 Finally
   if assigned(ctes) then
     FreeAndNil(ctes);
 end;

end;

procedure TfrmCriaManifesto.btnEnviarClick(Sender: TObject);
begin

  if (cdsMDFeSTATUS.AsString = '100') then begin
    avisar('MDF-e selecionado já foi enviado!');
    exit;
  end;

  if(dm.Parametro.TipoAmbiente <> cdsMDFeTPAMB.AsInteger) then begin
    avisar('Ambiente do webservice difere do ambiente de criação d MDF-e!');
    exit;
  end;

  MDFe.Manifestos.Clear;

 try
   Aguarda('Aguarde, enviando MDF-e...');

   {Carrega os dados para geração}
   self.mostra_dados;

   {Alimenta o componente ACbrMDfe para envio}
   if not GerarMDFe then Exit;

   try
     if MDFe.Enviar( cdsMDFeCMDF.AsInteger ) then begin
       avisar('Manifesto enviado com sucesso!');
       salva_retorno_MDFe(false);
       salva_XML;
       btbuscar.Click;
     end;

   Except
     on e: Exception do begin
       trataMsgRetorno(e.Message);
       avisar('Atenção! Falha no envio.'+#13+' Maiores informações consultar Log [ F10 ]');
     end;
   end;

 finally
   FimAguarda;
   MDFe.Manifestos.Clear;
 end;
end;

function TfrmCriaManifesto.GerarMDFe :Boolean;
var qtd_tot_mercadoria :Real;
    vlr_tot_mercadoria :Real;
    municipio_atual    :String;
label inicio;
begin

  try

   with MDFe.Manifestos.Add.MDFe do
    begin

     // Dados de Identificação do MDF-e
     Ide.cUF := retornaCodUF( dm.Parametro.Estado );

     // TpcnTipoAmbiente = (taProducao, taHomologacao);
     case dm.Parametro.TipoAmbiente of
      1: Ide.tpAmb := taProducao;
      2: Ide.tpAmb := taHomologacao;
     end;
  
     // TMDFeTpEmitente = ( teTransportadora, teTranspCargaPropria );
     case cbTpEmit.ItemIndex of
      0 : Ide.tpEmit  := teTransportadora;
      1 : Ide.tpEmit  := teTranspCargaPropria;
     end;

     Ide.modelo  := '58';
     Ide.serie   := 1;
     Ide.nMDF    := StrToIntDef(edtNMDF.Text, 0);
     Ide.cMDF    := StrToIntDef(edtCMDF.Text, 0);

     // TMDFeModal = ( moRodoviario, moAereo, moAquaviario, moFerroviario );
     case cbTpEmit.ItemIndex of
      0 : Ide.modal   := moRodoviario;
      1 : Ide.modal   := moAereo;
      2 : Ide.modal   := moAquaviario;
      3 : Ide.modal   := moFerroviario;
     end;

     Ide.dhEmi   := Now;

     // TpcnTipoEmissao = (teNormal, teContingencia, teSCAN, teDPEC, teFSDA);
     case cbTpEmit.ItemIndex of
      0: Ide.tpEmis  := teNormal;
      1: Ide.tpEmis  := teContingencia;
     //...
     end;

     // TpcnProcessoEmissao = (peAplicativoContribuinte, peAvulsaFisco, peAvulsaContribuinte, peContribuinteAplicativoFisco);
     Ide.procEmi := peAplicativoContribuinte;
     Ide.verProc := '1.0';

     Ide.UFIni   := cbUfInicial.Items[ cbUfInicial.itemIndex ];
     Ide.UFFim   := frameCidFimPrestacao.edestado.Text;

     cdsMunCarrega.First;
     while not cdsMunCarrega.Eof do begin

       with Ide.infMunCarrega.Add do begin
         cMunCarrega := cdsMunCarregaCODMUNCARREGA.AsInteger;
         xMunCarrega := TRIM( cdsMunCarregaMUNICIPIO.AsString );
       end;

       cdsMunCarrega.Next;
     end;

     cdsUfPercurso.First;
     while not cdsUfPercurso.Eof do begin

       with Ide.infPercurso.Add do
         UFPer := cdsUfPercursoUF.AsString;

       cdsUfPercurso.Next;
     end;

     //
     // Dados do Emitente
     //
     Emit.CNPJ  := dm.Parametro.Cnpj;
     Emit.IE    := dm.Parametro.IE;
     Emit.xNome := dm.Parametro.Raz;
     Emit.xFant := dm.Parametro.Fan;
  
     Emit.EnderEmit.xLgr    := dm.Parametro.Ender;
     Emit.EnderEmit.nro     := IntToStr(dm.Parametro.numero);
     Emit.EnderEmit.xCpl    := '';
     Emit.EnderEmit.xBairro := dm.Parametro.bairro;
     Emit.EnderEmit.cMun    := dm.Parametro.CodMunicipio;
     Emit.EnderEmit.xMun    := dm.Parametro.Cidade;
     Emit.EnderEmit.CEP     := StrToInt( retiraMascara(dm.Parametro.Cep) );
     Emit.EnderEmit.UF      := dm.Parametro.Estado;
     Emit.EnderEmit.fone    := dm.Parametro.Fone;
     Emit.enderEmit.email   := dm.Parametro.Email;
  
     rodo.RNTRC := IntToStr(dm.Parametro.RNTRC);
     rodo.CIOT  := dm.Parametro.CIOT;

     rodo.veicTracao.cInt  := FrameVeiculo1.edCodigo.Text;
     rodo.veicTracao.placa := FrameVeiculo1.edtPlaca.Text;
     rodo.veicTracao.tara  := FrameVeiculo1.Tara;
     rodo.veicTracao.capKG := FrameVeiculo1.CapKG;
     rodo.veicTracao.capM3 := FrameVeiculo1.CapM3;

     case FrameVeiculo1.tipoRodado of
      1 : rodo.veicTracao.tpRod  :=  trTruck;
      2 : rodo.veicTracao.tpRod  :=  trToco;
      3 : rodo.veicTracao.tpRod  :=  trCavaloMecanico;
      4 : rodo.veicTracao.tpRod  :=  trVAN;
      5 : rodo.veicTracao.tpRod  :=  trUtilitario;
      6 : rodo.veicTracao.tpRod  :=  trOutros;
      0 : raise Exception.Create('O tipo de rodado do veículo principal deve ser informado!');
     end;

     case FrameVeiculo1.tipoCarroceria of
      0 : rodo.veicTracao.tpCar  :=  tcNaoAplicavel;
      1 : rodo.veicTracao.tpCar  :=  tcAberta;
      2 : rodo.veicTracao.tpCar  :=  tcFechada;
      3 : rodo.veicTracao.tpCar  :=  tcGraneleira;
      4 : rodo.veicTracao.tpCar  :=  tcPortaContainer;
      5 : rodo.veicTracao.tpCar  :=  tcSider;
     end;

     rodo.veicTracao.UF := FrameVeiculo1.UF;

     cdsCondutores.First;
     while not cdsCondutores.Eof do begin
       with rodo.veicTracao.condutor.Add do begin
         xNome := cdsCondutoresCONDUTOR.AsString;
         CPF   := cdsCondutoresCPF.AsString;
       end;

       cdsCondutores.Next;
     end;

     if not cdsVeicReboq.IsEmpty then begin
       cdsVeicReboq.First;
       while not cdsVeicReboq.Eof do begin

         with rodo.veicReboque.Add do begin
           cInt  := cdsVeicReboqCODIGO_VEICULO.AsString;
           placa := cdsVeicReboqPLACA.AsString;
           tara  := cdsVeicReboqTARA.AsInteger;
           capKG := cdsVeicReboqCAPACIDADE_KG.AsInteger;
           capM3 := cdsVeicReboqCAPACIDADE_M3.AsInteger;

           prop.RNTRC := TRIM(cdsVeicReboqRNTRC.Text);

           UF    := cdsVeicReboqUF.AsString;

         end;

       cdsVeicReboq.Next;
       end;
     end;

     if TRIM(edtCNPJEmpFor.Text) <> '' then
       with rodo.valePed.disp.Add do begin
         CNPJForn := TRIM(edtCNPJEmpFor.Text);
         CNPJPg   := TRIM(edtCNPJEmpResp.Text);
         nCompra  := TRIM(edtNumComp.Text);
       end;

     qtd_tot_mercadoria := 0;
     vlr_tot_mercadoria := 0;


     cdsCtes.First;
     cdsCtes.IndexFieldNames := 'XMUNFIM';
     while not cdsCtes.Eof do begin

        municipio_atual := cdsCtesXMUNFIM.AsString;
        
        busca_dados_cte( cdsCtesNUMCTE.AsInteger );

        with infDoc.infMunDescarga.Add do begin
          cMunDescarga := dm.qryGeneric.FieldByName('cmunfim').AsInteger;
          xMunDescarga := dm.qryGeneric.FieldByName('xmunfim').AsString;

          inicio:

          with infCTe.Add do begin
            chCTe := dm.qryGeneric.FieldByName('idchave').AsString;
          end;

          qtd_tot_mercadoria := qtd_tot_mercadoria + dm.qryGeneric.FieldByName('qtd_carga').AsFloat;
          vlr_tot_mercadoria := vlr_tot_mercadoria + dm.qryGeneric.FieldByName('vmerc').AsFloat;

          if not (cdsCtes.Recno = cdsCtes.recordcount) then begin

            cdsCtes.Next;
            if cdsCtesXMUNFIM.AsString = municipio_atual then begin{se próximo CTe for dentro do mesmo municipio}
              busca_dados_cte( cdsCtesNUMCTE.AsInteger );
              goto inicio;
            end
            else
              cdsCtes.Prior;
              
          end;

        end;

       if not cdsCtes.Eof then
         cdsCtes.Next;
     end; //fim while

     tot.qCTe := cdsCtes.RecordCount;
     tot.vCarga := vlr_tot_mercadoria;

     // UnidMed = (uM3,uKG, uTON, uUNIDADE, uLITROS);
     case StrToIntDef( dm.qryGeneric.FieldByName('uni_medida').AsString, 0) of
      0 : tot.cUnid  :=  uM3;
      1 : tot.cUnid  :=  uKG;
      2 : tot.cUnid  :=  uTon;
      3 : tot.cUnid  :=  uUNIDADE;
      4 : tot.cUnid  :=  uLITROS;
      5 : tot.cUnid  :=  uMMBTU;
     end;

     tot.qCarga := qtd_tot_mercadoria;

     {with lacres.Add do begin
       nLacre := '123';
     end;  }

     infAdic.infCpl     := mObs.Text;
     infAdic.infAdFisco := mObsFisco.Text;
    end;

    Result := True;

  Except
    on e: Exception do begin
      avisar(e.Message);

      Result := False;
    end;
  end;
end;

procedure TfrmCriaManifesto.SpeedButton2Click(Sender: TObject);
begin
 try
   Aguarda('Aguarde, verificando status do serviço...');
   verifica_status_servico;

 finally
   FimAguarda;
 end;
end;

procedure TfrmCriaManifesto.verifica_status_servico;
var ambiente, status, solicitacao, resposta, obs :String;
begin
  MDFe.WebServices.StatusServico.Executar;
  
  ambiente    := TpAmbToStr(MDFe.WebServices.StatusServico.tpAmb);
  ambiente    := IfThen(ambiente = '1', 'Produção', 'Homologação');
  status      := IntToStr(MDFe.WebServices.StatusServico.cStat)+' - '+MDFe.WebServices.StatusServico.xMotivo;
  solicitacao := DateTimeToStr(MDFe.WebServices.StatusServico.dhRecbto)+' - '+retornaSiglaUF(MDFe.WebServices.StatusServico.cUF);
  resposta    := IntToStr(MDFe.WebServices.StatusServico.TMed);
  obs         := MDFe.WebServices.StatusServico.xObs;

  Avisar('= = = = = = = = = = = = = = = = = = STATUS DO SERVIÇO = = = = = = = = = = = = = = = = = ='+#13#10+#13#10+
         '[ AMBIENTE ] '    +ambiente+#13#10+#13#10+

         '[ STATUS ] '    +status+#13#10+#13#10+

         '[ DATA/HORA/UF SOLICITAÇÃO ] ' +solicitacao+#13#10+#13#10+
         '[ TEMPO RESPOSTA ] '     +resposta+'s'+#13#10+#13#10+

         '[ OBS. ] '     +obs, 40);
end;

procedure TfrmCriaManifesto.salva_retorno_MDFe(consultado :Boolean);
var Manifesto :TManifesto;
begin

  Manifesto := TManifesto.GetbyCodigo(cdsMDFeCMDF.AsInteger);

  Manifesto.status           := IfThen(Consultado, IntToStr( MDFe.WebServices.Consulta.cStat) , IntToStr(MDFe.WebServices.Retorno.cStat) );
  Manifesto.descricao_status := IfThen(Consultado, MDFe.WebServices.Consulta.XMotivo ,MDFe.WebServices.Retorno.xMotivo);
  Manifesto.numero_protocolo := IfThen(Consultado, MDFe.WebServices.Consulta.Protocolo ,MDFe.WebServices.Retorno.Protocolo);
  Manifesto.IDChave          := IfThen(Consultado, cdsMDFeIDCHAVE.AsString ,MDFe.WebServices.Retorno.ChaveMDFe);

  if (Consultado) and (Manifesto.status = '100') then
    Manifesto.DhEmi            := MDFe.WebServices.Consulta.DhRecbto
  else if not consultado then
    Manifesto.DhEmi            := now;

  Manifesto.Salvar;

end;

procedure TfrmCriaManifesto.salva_XML;
var StringStream: TStringStream;
    qryXML :TMDOQuery;
    memo1 :TMemo;
begin
  dm.qryGeneric := dm.GetQueryInstance('select codigo from manifesto_xml where codigo_manifesto = :codigo');
  dm.qryGeneric.ParamByName('codigo').AsInteger := self.cdsMDFeCMDF.asInteger;
  dm.qryGeneric.Open;

  //Salva no BD
  StringStream := TStringStream.Create(self.MDFe.Manifestos.Items[0].XML);
  qryXML       := dm.GetQueryInstance('update or insert into manifesto_xml (codigo, codigo_manifesto, xml) values (:cod, :cod_man, :xml)');

  if not dm.qryGeneric.IsEmpty then   qryXML.ParamByName('cod').asInteger := dm.qryGeneric.fieldByName('codigo').AsInteger
                               else   qryXML.ParamByName('cod').asInteger := 0;

  qryXML.ParamByName('cod_man').AsInteger := self.cdsMDFeCMDF.asInteger;
  qryXML.ParamByName('xml').LoadFromStream(StringStream, ftBlob);
  qryXML.ExecSQL;

  //Salva na pasta XML do sistema
  memo1 := TMemo.Create(self);
  memo1.Text := self.MDFe.Manifestos.Items[0].XML;
  memo1.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'\XMLMDFe\MDFe-'+cdsMDFeNMDF.AsString+'.xml');
  memo1.Free;
  memo1 := nil;
end;

procedure TfrmCriaManifesto.consulta_MDFe;
var amb :TpcnTipoAmbiente;
begin
  amb := MDFe.Configuracoes.WebServices.Ambiente;

  case cdsMDFeTPAMB.AsInteger of
   2: MDFe.Configuracoes.WebServices.Ambiente := taHomologacao;
   1: MDFe.Configuracoes.WebServices.Ambiente := taProducao;
  end;

  MDFe.Manifestos.Clear;

  mostra_dados;
  if not GerarMDFe then Exit;

  MDFe.Manifestos.Assinar;
  cdsMDFe.Edit;
  cdsMDFeIDCHAVE.AsString := copy(MDFe.Manifestos.Items[0].MDFe.infMDFe.ID,5,44);
  cdsMDFe.Post;

  MDFe.WebServices.Consulta.MDFeChave := cdsMDFeIDCHAVE.AsString;

  try
   MDFe.WebServices.Consulta.Executar;

   if MDFe.WebServices.Consulta.cStat in [100,101,132] then begin
     salva_retorno_MDFe(true);
     salva_XML;
   end;

   btbuscar.Click;

   if      MDFe.WebServices.Consulta.cStat = 100 then   avisar('100 - Autorizado o uso do MDF-e')
   else if MDFe.WebServices.Consulta.cStat = 101 then   avisar('101 - Cancelamento de MDF-e homologado')
   else if MDFe.WebServices.Consulta.cStat = 132 then   avisar('132 - Encerramento de MDF-e homologado')   
   else if MDFe.WebServices.Consulta.cStat = 217 then   avisar('MDF-e não consta na base de dados da SEFAZ');

  Except
    on e: Exception do begin
      trataMsgRetorno(e.Message);
      avisar('Atenção! Falha ao consultar.'+#13+' Maiores informações consultar Log [ F10 ]');
    end;
  end;

  MDFe.Configuracoes.WebServices.Ambiente := amb;
  MDFe.Manifestos.Clear;
end;

procedure TfrmCriaManifesto.btnImprimirClick(Sender: TObject);
var caminho :String;
begin
  caminho := ExtractFilePath(Application.ExeName)+'XMLMDFe\MDFe-'+cdsMDFeNMDF.AsString+'.xml';

  MDFe.Manifestos.Clear;
  MDFe.Manifestos.LoadFromFile( caminho );
  MDFe.Manifestos.Imprimir;
end;

procedure TfrmCriaManifesto.btnCancelaClick(Sender: TObject);
begin
  if not (cdsMDFeSTATUS.AsString = '100') then begin
    avisar('MDF-e selecionado ainda não foi enviado!');
    exit;
  end;

  if(dm.Parametro.TipoAmbiente <> cdsMDFeTPAMB.AsInteger) then begin
    avisar('Ambiente do webservice difere do ambiente de criação d MDF-e!');
    exit;
  end;

 try
   Aguarda('Cancelando MDF-e selecionado...');
   Cancelar_manifesto;
 finally
   FimAguarda;
 end;
end;

procedure TfrmCriaManifesto.btnConsultaClick(Sender: TObject);
begin
 try
  Aguarda('Aguarde, consultando MDF-e...');

  consulta_MDFe;

 Finally
   FimAguarda;
 end;
end;

procedure TfrmCriaManifesto.trataMsgRetorno(msg: String);
var encontrou :Boolean;
    i :integer;
begin
  encontrou := true;

  memoMsg.Text := msg;

  m100.Lines.Add('');

  if ( POS('ID:#', msg) = 0 ) then  begin
    m100.Lines.Add(msg);
    exit;
  end;

  m100.Lines.Add(memoMsg.Lines.Strings[0]);

  for i := 1 to memoMsg.Lines.Count - 1 do begin

    if ( POS('">', memoMsg.Lines.Strings[i]) > 0 ) then
      m100.Lines.Add( copy(memoMsg.Lines.Strings[i], pos('">',memoMsg.Lines.Strings[i])+2, length(memoMsg.Lines.Strings[i]) ) );

  end;
end;

procedure TfrmCriaManifesto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not ((key = VK_RETURN) and ((ActiveControl = mObs) or (ActiveControl = mObsFisco))) then
    inherited;
  
  if Key = VK_F2 then
    btbuscar.Click
  else if (Key = VK_F3) and (btnIncluir.Enabled) then
    btnIncluir.Click
  else if (Key = VK_F4) and (btnsalvar.Enabled) then
    btnAlterar.Click
  else if (Key = VK_F5) and (btnenviar.Enabled) then
    btnenviar.Click
  else if (Key = VK_F6) and (btnImprimir.Enabled) then
    btnImprimir.Click
  else if (Key = VK_F8) and (btnCancela.Enabled) then
    btnCancela.Click
  else if (Key = VK_F9) and (btnConsulta.Enabled) then
    btnConsulta.Click
  else if Key = VK_F10 then begin
    frmLog := TfrmLog.create(self);
    frmLog.preencheLog(m100);
    frmLog.ShowModal;
    frmLog.Release;
    frmLog := nil;
  end
  else if (Key = VK_F11) and (btnEncerrar.Enabled) then
    btnEncerrar.Click
  else if key = vk_Up then begin
    if not (ActiveControl is TDBMarcianoGrid) and  not (ActiveControl is TComboBox) and not (ActiveControl is TDBGrid) then
      pgManifesto.SetFocus;
  end
  else if (key = VK_Down) then begin
    if (ActiveControl = pgManifesto) then
      THackWinControl(pgManifesto.ActivePage).SelectFirst;
  end;
end;

procedure TfrmCriaManifesto.GridManifestosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (Column.Field.FieldName = 'STATUS') then
    begin
      GridCTes.Canvas.Font.Style  := [fsBold];
      GridManifestos.Canvas.Brush.Color := clBlack;

     if cdsMDFeSTATUS.AsString = '100' then  //autorizado
       GridManifestos.Canvas.Font.Color := $0000B900
     else if cdsMDFeSTATUS.AsString = '101' then //cancelado
       GridManifestos.Canvas.Font.Color := clRed
     else if cdsMDFeSTATUS.AsString = '321' then //pendente para envio
       GridManifestos.Canvas.Font.Color := $00FCB16D
     else if cdsMDFeSTATUS.AsString = '132' then //pendente para envio
       GridManifestos.Canvas.Font.Color := clYellow
     else
       GridManifestos.Canvas.Font.Color := clWhite;

    end;

    if gdSelected in State then begin
      GridManifestos.Canvas.Font.Color  := clwhite;
      GridManifestos.Canvas.Brush.Color := $00674F38;
    end;

     GridManifestos.Canvas.FillRect(Rect);
     GridManifestos.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmCriaManifesto.pgManifestoChange(Sender: TObject);
begin
  if self.pgManifesto.ActivePageIndex = 0 then
    GridManifestos.SetFocus;
end;

procedure TfrmCriaManifesto.edtCMDFChange(Sender: TObject);
begin
  if TRIM(TEdit(Sender).Text) = '' then
    TEdit(Sender).Text := '0';
end;

procedure TfrmCriaManifesto.btnAlterarClick(Sender: TObject);
begin
  inherited;
  habilita_desabilita(true);
  if pgManifesto.ActivePageIndex = 0 then
    pgManifesto.ActivePageIndex := 1;
end;

procedure TfrmCriaManifesto.cdsMDFeAfterScroll(DataSet: TDataSet);
begin
  btnAlterar.Enabled  := (cdsMDFeSTATUS.AsString = '321');
  btnEnviar.Enabled   := (cdsMDFeSTATUS.AsString = '321');
  btnImprimir.Enabled := (cdsMDFeSTATUS.AsString = '100');
  btnCancela.Enabled  := (cdsMDFeSTATUS.AsString = '100');
  btnEncerrar.Enabled := (cdsMDFeSTATUS.AsString = '100');
end;

procedure TfrmCriaManifesto.btnCancelaOpClick(Sender: TObject);
begin
  habilita_desabilita(false);
  pgManifesto.ActivePageIndex := 0;
  GridManifestos.SetFocus;
  btnIncluir.Tag := 0;
end;

procedure TfrmCriaManifesto.ts2Enter(Sender: TObject);
begin
  frameCidOrig.edCodigoMunicipio.SetFocus;
end;

procedure TfrmCriaManifesto.salva_retorno_evento(codigo_manifesto :integer; evento: TpcnTpEvento);
var memo :TMemo;
    StringStream: TStringStream;
    Manifesto :TManifesto;
    Status, descricao, Desc_evento :String;
begin

  if evento = teCancelamento  then begin
    Status      := '101';
    descricao   := 'Cancelamento de MDF-e homologado';
    Desc_evento := 'Cancelado';
  end
  else if evento = teEncerramento then begin
    Status      := '132';
    descricao   := 'Encerramento de MDF-e homologado';
    Desc_evento := 'Encerrado';
  end;

  Manifesto := TManifesto.GetbyCodigo(cdsMDFeCMDF.AsInteger);

  Manifesto.status           := Status;
  Manifesto.descricao_status := descricao;
  Manifesto.numero_protocolo := MDfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;

  Manifesto.Salvar;


  memo := TMemo.Create(self);
  memo.Text := MDFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.XML;

  memo.Lines.SaveToFile(PathSis+'\XMLMDFe\MDFe_'+Desc_evento+'-'+intToStr(codigo_manifesto)+'.xml');
  memo.Free;
  memo := nil;

  StringStream := TStringStream.Create(MDFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.XML);

  dm.qryGeneric.Close;
  dm.qryGeneric.SQL.Text := 'update manifesto_xml set xml = :xml    where codigo_manifesto = :codigo';

  dm.qryGeneric.ParamByName('codigo').AsInteger := codigo_manifesto;
  dm.qryGeneric.ParamByName('xml').LoadFromStream(StringStream, ftBlob);

  dm.qryGeneric.ExecSQL;
end;

procedure TfrmCriaManifesto.btnEncerrarClick(Sender: TObject);
begin
  if not (cdsMDFeSTATUS.AsString = '100') then begin
    avisar('MDF-e selecionado ainda não foi enviado!');
    exit;
  end;

  if(dm.Parametro.TipoAmbiente <> cdsMDFeTPAMB.AsInteger) then begin
    avisar('Ambiente do webservice difere do ambiente de criação d MDF-e!');
    exit;
  end;

 try
   Aguarda('Encerrando MDF-e selecionado...');
   Encerrar_manifesto;
 finally
   FimAguarda;
 end;
end;

procedure TfrmCriaManifesto.Encerrar_manifesto;
begin

  if Pergunta('Deseja realmente encerrar o MDF-e nº '+cdsMDFeNMDF.AsString+'?') then begin
    MDFe.EventoMDFe.Evento.Clear;

    with MDFe.EventoMDFe.Evento.Add do begin
      infEvento.chMDFe   := cdsMDFeIDCHAVE.AsString;
      infEvento.CNPJ     := dm.Parametro.Cnpj;
      infEvento.dhEvento := now;

      infEvento.tpEvento   := teEncerramento;
      infEvento.nSeqEvento := 1;

      infEvento.detEvento.nProt := cdsMDFeNUMERO_PROTOCOLO.AsString;
      infEvento.detEvento.dtEnc := Date;
      infEvento.detEvento.cUF   := StrToInt( copy( cdsMDFeCMUNDESCARGA.AsString, 1, 2) );
      infEvento.detEvento.cMun  := cdsMDFeCMUNDESCARGA.AsInteger;
    end;

    if MDFe.EnviarEvento( cdsMDFeCMDF.AsInteger ) then begin
      avisar('MDF-e Encerrado com sucesso!');
      salva_retorno_evento(cdsMDFeCMDF.AsInteger, teEncerramento);
      btbuscar.Click;
    end
    else
      avisar('Falha ao encerrar MDF-e');

  end;
end;

procedure TfrmCriaManifesto.Cancelar_manifesto;
var
 vAux : String;
begin

  if Pergunta('Deseja realmente cancelar o MDF-e nº '+cdsMDFeNMDF.AsString+'?') then begin

    MDFe.EventoMDFe.Evento.Clear;

    if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux))
     then exit;

    with MDFe.EventoMDFe.Evento.Add do begin
      infEvento.chMDFe   := cdsMDFeIDCHAVE.AsString; //Copy(MDFe.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
      infEvento.CNPJ     := dm.Parametro.Cnpj;
      infEvento.dhEvento := now;

      infEvento.tpEvento   := teCancelamento;
      infEvento.nSeqEvento := 1;

      infEvento.detEvento.nProt := cdsMDFeNUMERO_PROTOCOLO.AsString;
      infEvento.detEvento.xJust := trim(vAux);
    end;

    if MDFe.EnviarEvento( cdsMDFeCMDF.AsInteger ) then begin // 1 = Numero do Lote
      avisar('MDF-e Cancelado com sucesso!');
      salva_retorno_evento( cdsMDFeCMDF.AsInteger, teCancelamento );
      btbuscar.Click;
    end                                                           
    else
      avisar('Falha ao cancelar MDF-e');
  end;
end;

procedure TfrmCriaManifesto.SpeedButton1Click(Sender: TObject);
begin
  frmConfigCte := TfrmConfigCte.create(self);
  frmConfigCte.ShowModal;
  frmConfigCte.Release;
  frmConfigCte := nil;

  case dm.Parametro.TipoAmbiente of
   2: MDFe.Configuracoes.WebServices.Ambiente := taHomologacao;
   1: MDFe.Configuracoes.WebServices.Ambiente := taProducao;
  end;

   if dm.Parametro.TipoAmbiente = 1 then
    begin
     lbAmbGeral.Font.Color := clGreen;
     lbAmbGeral.Caption := 'Produção';
    end
   else if dm.Parametro.TipoAmbiente = 2 then
    begin
      lbAmbGeral.Font.Color := clBlue;
      lbAmbGeral.Caption := 'Homologação';
    end;
end;

procedure TfrmCriaManifesto.busca_dados_cte(numero_cte: integer);
begin
  dm.qryGeneric.Close;
  dm.qryGeneric.SQL.Text := 'select cte.idchave, cte.vmerc, cte.cmunfim, cte.xmunfim, MAX(cq.codunid) uni_medida, '+
                            '       SUM(cq.qtdecarga) qtd_carga                             from cte              '+
                            'left join cteqtdecarga cq on cq.numcte = cte.numcte                                  '+
                            'where cte.numcte = :numcte                                                           '+
                            'group by cte.idchave, cte.vmerc, cte.cmunfim, cte.xmunfim                            ';

  dm.qryGeneric.ParamByName('numcte').AsInteger := numero_cte;
  dm.qryGeneric.Open;
end;

procedure TfrmCriaManifesto.btnAddMunCarClick(Sender: TObject);
begin
  if frameCidOrig.edCidade.Text = '' then begin
    avisar('Nenhum município não foi selecionado');
    frameCidOrig.edCodigoMunicipio.SetFocus;
    exit;
  end;

 { if frameCidOrig.edestado.Text = frameCidFimPrestacao.edestado.Text then begin
    avisar('ATENÇÃO! O MDF-e deve ser criado apenas para cargas interestaduais');
    frameCidOrig.limpa;
    frameCidOrig.edCodigoMunicipio.SetFocus;
    exit;
  end; }

  if not cdsMunCarrega.Locate('CODMUNCARREGA',StrToInt(frameCidOrig.edCodigoMunicipio.Text), []) then begin

    cdsMunCarrega.Append;
    cdsMunCarregaCODMUNCARREGA.AsInteger := StrToInt(frameCidOrig.edCodigoMunicipio.Text);
    cdsMunCarregaMUNICIPIO.AsString      := frameCidOrig.edCidade.Text;
    cdsMunCarregaUF.AsString             := frameCidOrig.edestado.Text;
    cdsMunCarrega.Post;

  end;

  frameCidOrig.limpa;
end;

function TfrmCriaManifesto.agrupa_mun_carrega: String;
begin
  Result := '';
  cdsMunCarrega.First;
  while not cdsMunCarrega.Eof do begin
    Result := Result + cdsMunCarregaCODMUNCARREGA.AsString + ',';

    cdsMunCarrega.Next;
  end;

end;

procedure TfrmCriaManifesto.Mostra_municipios_carregamento(codigos_ibge: String);
var codigo :String;
begin
  while codigos_ibge <> '' do begin

    codigo := copy(codigos_ibge,1, pos(',', codigos_ibge)-1);

    frameCidOrig.codMun := codigo;
    btnAddMunCar.Click;

    codigos_ibge := copy(codigos_ibge, pos(',',codigos_ibge)+1, length(codigos_ibge));

  end;
end;

procedure TfrmCriaManifesto.salva_para_delecao(tabela: String;
  codigo: Integer);
begin
  cdsDeletar.Append;
  cdsDeletarTABELA.AsString       := tabela;
  cdsDeletarCODREGISTRO.AsInteger := codigo;
  cdsDeletar.Post;
end;

procedure TfrmCriaManifesto.Deleta_registros;
begin
  cdsDeletar.First;
  while not cdsDeletar.Eof do begin
    dm.qryGeneric.Close;
    dm.qryGeneric.SQL.Text := 'DELETE FROM '+ cdsDeletarTABELA.AsString + ' WHERE CODIGO = '+cdsDeletarCODREGISTRO.AsString;
    dm.qryGeneric.ExecSQL;

    cdsDeletar.Next;
  end;
end;

procedure TfrmCriaManifesto.gridMunCarregaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if TDbGrid(Sender).DataSource.DataSet.Active and not TDbGrid(Sender).DataSource.DataSet.IsEmpty then
    TDbGrid(Sender).DataSource.DataSet.Delete;
end;

procedure TfrmCriaManifesto.frameCidFimPrestacaoExit(Sender: TObject);
begin
  cdsMunCarrega.First;
  if cdsMunCarrega.Active and not cdsMunCarrega.IsEmpty then
    if cdsMunCarregaUF.AsString = frameCidFimPrestacao.edestado.Text then begin
      avisar('ATENÇÃO! O MDF-e deve ser criado apenas para cargas interestaduais');
      frameCidFimPrestacao.edCodigoMunicipio.SetFocus;
    end;
end;

procedure TfrmCriaManifesto.btnAddUfClick(Sender: TObject);
begin
  if cdsUfPercurso.Locate('UF', cbxUfPercurso.Items[cbxUfPercurso.itemIndex],[]) then
    Exit;
    
  cdsUfPercurso.Append;
  cdsUfPercursoUF.AsString := cbxUfPercurso.Items[cbxUfPercurso.itemIndex];
  cdsUfPercurso.Post;
end;

end.




























