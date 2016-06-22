unit uCriaCTe;

{$I ACBr.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ACBrCTe, Modulo, pcnConversao,
  ComCtrls, DB, DBClient, Grids, DBGrids, Mask, ToolEdit, CurrEdit,
  FocusCurrEdit, uFrameBuscaCFOP, uFrameCidade2, uFrameCliente2, Buttons,
  DBMarcianoZebradoGrid, DBMarcianoGrid, ExtCtrls, FocusMaskEdit, Provider,
  MDOCustomDataSet, MDOQuery, ClasseCTe, XPMan, pcteRetEnvCTe, Funcoes_cte,
  uFramePeriodo2, ACBrCTeDACTEClass, ACBrCTeDACTEFR, uCliente, IniFiles,
  AppEvnts, DBCtrls, xmldom, XMLIntf, ACBrNFe, msxmldom, XMLDoc, FocusEdit,
  pngimage, uFrameVeiculo, FrameBuscaCTes, ACBrBase, ACBrDFe,
  ACBrCTeDACTeRLClass;

type
  THackWinControl = class(TWinControl);
  TfrmCriaCTe = class(TForm)
    ACBrCTe1: TACBrCTe;
    dsCtes: TDataSource;
    PageControl2: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    dspCtes: TDataSetProvider;
    ts3: TTabSheet;
    ts4: TTabSheet;
    ts5: TTabSheet;
    ts6: TTabSheet;
    ts7: TTabSheet;
    ts8: TTabSheet;
    ts9: TTabSheet;
    cbTomador: TComboBox;
    XPManifest1: TXPManifest;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtModelo: TStaticText;
    StaticText4: TStaticText;
    lbNum: TStaticText;
    txt1: TStaticText;
    txt2: TStaticText;
    edtModelo: TEdit;
    edtSerie: TEdit;
    edtNumero: TEdit;
    edtRNTRC: TFocusMaskEdit;
    frameBuscaCFOP1: TframeBuscaCFOP;
    txtForPag: TStaticText;
    cbForPag: TComboBox;
    frameCidOrig: TFrameCidade2;
    frameCidDest: TFrameCidade2;
    cbFormaemis: TComboBox;
    cbTipoCte: TComboBox;
    cbTipoImp: TComboBox;
    cbTipoServ: TComboBox;
    txt3: TStaticText;
    txt4: TStaticText;
    txt5: TStaticText;
    txt6: TStaticText;
    cbModal: TComboBox;
    txt8: TStaticText;
    cbRetira: TComboBox;
    txt9: TStaticText;
    edtNatOp: TFocusMaskEdit;
    txtNat: TStaticText;
    edtData: TDateTimePicker;
    edtCaracTrans: TEdit;
    StaticText15: TStaticText;
    edtCaracServ: TEdit;
    StaticText16: TStaticText;
    GridCTes: TDBMarcianoGrid;
    cdsCtes: TClientDataSet;
    cbLota: TComboBox;
    StaticText18: TStaticText;
    StaticText17: TStaticText;
    edtFuncEmiss: TEdit;
    StaticText20: TStaticText;
    gbTomador: TGroupBox;
    edtTomCNPJ: TEdit;
    edtTomIE: TEdit;
    edtTomRazao: TEdit;
    edtTomFantasia: TEdit;
    edtTomLogradouro: TEdit;
    edtTomNumero: TEdit;
    edtTomComp: TEdit;
    edtTomBairro: TEdit;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    StaticText27: TStaticText;
    edtTomFone: TFocusMaskEdit;
    edtTomCEP: TFocusMaskEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    frameCidadeToma: TFrameCidade2;
    StaticText50: TStaticText;
    cbExpedidor: TComboBox;
    gbExpedidor: TGroupBox;
    edtExpCNPJ: TEdit;
    edtExpIE: TEdit;
    edtExpRazao: TEdit;
    edtExpFantasia: TEdit;
    edtExpLogradouro: TEdit;
    edtExpNumero: TEdit;
    edtExpComp: TEdit;
    edtExpBairro: TEdit;
    StaticText28: TStaticText;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    StaticText31: TStaticText;
    StaticText32: TStaticText;
    StaticText33: TStaticText;
    StaticText34: TStaticText;
    StaticText35: TStaticText;
    StaticText36: TStaticText;
    StaticText37: TStaticText;
    edtExpFone: TFocusMaskEdit;
    edtExpCep: TFocusMaskEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    frameCidadeExp: TFrameCidade2;
    StaticText38: TStaticText;
    cbRecebedor: TComboBox;
    gbRecebedor: TGroupBox;
    edtRecCNPJ: TEdit;
    edtRecIE: TEdit;
    edtRecRazao: TEdit;
    edtRecFantasia: TEdit;
    edtRecLogradouro: TEdit;
    edtRecNumero: TEdit;
    edtRecComp: TEdit;
    edtRecBairro: TEdit;
    StaticText39: TStaticText;
    StaticText40: TStaticText;
    StaticText41: TStaticText;
    StaticText42: TStaticText;
    StaticText43: TStaticText;
    StaticText44: TStaticText;
    StaticText45: TStaticText;
    StaticText46: TStaticText;
    StaticText47: TStaticText;
    StaticText48: TStaticText;
    edtRecFone: TFocusMaskEdit;
    edtRecCep: TFocusMaskEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    frameCidadeRec: TFrameCidade2;
    idNotas: TClientDataSet;
    idNotasID: TStringField;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Cidade: TLabel;
    Label13: TLabel;
    edtEmitCNPJ: TEdit;
    edtEmitIE: TEdit;
    edtEmitRazao: TEdit;
    edtEmitFantasia: TEdit;
    edtEmitLogradouro: TEdit;
    edtEmitNumero: TEdit;
    edtEmitComp: TEdit;
    edtEmitBairro: TEdit;
    edCNPJ: TStaticText;
    edIE: TStaticText;
    edRaz: TStaticText;
    edNomeFan: TStaticText;
    edFone: TStaticText;
    edCEP: TStaticText;
    edLogradouro: TStaticText;
    edNum: TStaticText;
    edComple: TStaticText;
    edBairro: TStaticText;
    frameCidadeEmit: TFrameCidade2;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edtRemCnpj: TEdit;
    edtRemIe: TEdit;
    edtRemRazao: TEdit;
    edtRemFantasia: TEdit;
    edtRemLogradouro: TEdit;
    edtRemNumero: TEdit;
    edtRemComp: TEdit;
    edtRemBairro: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    edtRemFone: TFocusMaskEdit;
    edtRemCep: TFocusMaskEdit;
    frameCidadeRem: TFrameCidade2;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edtDestCnpj: TEdit;
    edtDestIe: TEdit;
    edtDestRazao: TEdit;
    edtDestFantasia: TEdit;
    edtDestLogradouro: TEdit;
    edtDestNumero: TEdit;
    edtDestComp: TEdit;
    edtDestBairro: TEdit;
    txt10: TStaticText;
    txt11: TStaticText;
    txt12: TStaticText;
    txt13: TStaticText;
    txt14: TStaticText;
    txt15: TStaticText;
    txt16: TStaticText;
    txt17: TStaticText;
    txt18: TStaticText;
    txt19: TStaticText;
    edtDestEmail: TEdit;
    txt23: TStaticText;
    edtDestFone: TFocusMaskEdit;
    edtDestCep: TFocusMaskEdit;
    frameCidadeDest: TFrameCidade2;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edValorPrestacao: TFocusCurrEdit;
    edValorReceber: TFocusCurrEdit;
    cbST: TComboBox;
    cdsCtesDATA: TDateField;
    cdsCtesSERIE: TIntegerField;
    cdsCtesNUMCTE: TIntegerField;
    cdsCtesNUMENVCTE: TIntegerField;
    cdsCtesVERXML: TStringField;
    cdsCtesIDCHAVE: TStringField;
    cdsCtesCODUFEMIT: TStringField;
    cdsCtesCFOP: TStringField;
    cdsCtesNATOP: TStringField;
    cdsCtesFORPAG: TIntegerField;
    cdsCtesMODDOC: TStringField;
    cdsCtesHORA: TStringField;
    cdsCtesTPIMP: TIntegerField;
    cdsCtesTPEMIS: TIntegerField;
    cdsCtesTPAMB: TIntegerField;
    cdsCtesTPCTE: TIntegerField;
    cdsCtesPROCEMI: TIntegerField;
    cdsCtesVERPROC: TStringField;
    cdsCtesREFCTE: TStringField;
    cdsCtesCMUNEMI: TStringField;
    cdsCtesXMUNEMI: TStringField;
    cdsCtesUFEMI: TStringField;
    cdsCtesMODAL: TStringField;
    cdsCtesTPSERV: TIntegerField;
    cdsCtesCMUNINI: TStringField;
    cdsCtesXMUNINI: TStringField;
    cdsCtesUFINI: TStringField;
    cdsCtesCMUNFIM: TStringField;
    cdsCtesXMUNFIM: TStringField;
    cdsCtesUFFIM: TStringField;
    cdsCtesRETIRA: TIntegerField;
    cdsCtesXDETRETIRA: TStringField;
    cdsCtesTOMA: TIntegerField;
    cdsCtesCNPJTOM: TStringField;
    cdsCtesIETOM: TStringField;
    cdsCtesRAZTOM: TStringField;
    cdsCtesFANTOM: TStringField;
    cdsCtesFONETOM: TStringField;
    cdsCtesLOGRATOM: TStringField;
    cdsCtesNUMEROTOM: TStringField;
    cdsCtesCOMPTOM: TStringField;
    cdsCtesBAIRROTOM: TStringField;
    cdsCtesCMUNTOM: TStringField;
    cdsCtesXMUNTOM: TStringField;
    cdsCtesCEPTOM: TStringField;
    cdsCtesUFTOM: TStringField;
    cdsCtesCODTOM: TIntegerField;
    cdsCtesTPDOCTOM: TIntegerField;
    cdsCtesXCARACAD: TStringField;
    cdsCtesXCARACSER: TStringField;
    cdsCtesXEMI: TStringField;
    cdsCtesXORIG: TStringField;
    cdsCtesXPASS: TStringField;
    cdsCtesXDEST: TStringField;
    cdsCtesXROTA: TStringField;
    cdsCtesTPPER: TIntegerField;
    cdsCtesDINI: TDateField;
    cdsCtesDFIM: TDateField;
    cdsCtesTPHOR: TIntegerField;
    cdsCtesHINI: TStringField;
    cdsCtesHFIM: TStringField;
    cdsCtesORIGCALC: TStringField;
    cdsCtesDESTCALC: TStringField;
    cdsCtesCODREM: TIntegerField;
    cdsCtesCNPJREM: TStringField;
    cdsCtesIEREM: TStringField;
    cdsCtesRAZREM: TStringField;
    cdsCtesFANREM: TStringField;
    cdsCtesFONEREM: TStringField;
    cdsCtesLOGRAREM: TStringField;
    cdsCtesNUMEROREM: TStringField;
    cdsCtesCOMPREM: TStringField;
    cdsCtesBAIRROREM: TStringField;
    cdsCtesCMUNREM: TStringField;
    cdsCtesXMUNREM: TStringField;
    cdsCtesCEPREM: TStringField;
    cdsCtesUFREM: TStringField;
    cdsCtesTPDOCREM: TIntegerField;
    cdsCtesCODEXP: TIntegerField;
    cdsCtesCNPJEXP: TStringField;
    cdsCtesIEEXP: TStringField;
    cdsCtesRAZEXP: TStringField;
    cdsCtesFANEXP: TStringField;
    cdsCtesFONEEXP: TStringField;
    cdsCtesLOGRAEXP: TStringField;
    cdsCtesNUMEROEXP: TStringField;
    cdsCtesCOMPEXP: TStringField;
    cdsCtesBAIRROEXP: TStringField;
    cdsCtesCMUNEXP: TStringField;
    cdsCtesXMUNEXP: TStringField;
    cdsCtesCEPEXP: TStringField;
    cdsCtesUFEXP: TStringField;
    cdsCtesTPDOCEXP: TIntegerField;
    cdsCtesCODREC: TIntegerField;
    cdsCtesCNPJREC: TStringField;
    cdsCtesIEREC: TStringField;
    cdsCtesRAZREC: TStringField;
    cdsCtesFANREC: TStringField;
    cdsCtesFONEREC: TStringField;
    cdsCtesLOGRAREC: TStringField;
    cdsCtesNUMEROREC: TStringField;
    cdsCtesCOMPREC: TStringField;
    cdsCtesBAIRROREC: TStringField;
    cdsCtesCMUNREC: TStringField;
    cdsCtesXMUNREC: TStringField;
    cdsCtesCEPREC: TStringField;
    cdsCtesUFREC: TStringField;
    cdsCtesTPDOCREC: TIntegerField;
    cdsCtesCODDES: TIntegerField;
    cdsCtesCNPJDES: TStringField;
    cdsCtesIEDES: TStringField;
    cdsCtesRAZDES: TStringField;
    cdsCtesFANDES: TStringField;
    cdsCtesFONEDES: TStringField;
    cdsCtesISUF: TStringField;
    cdsCtesLOGRADES: TStringField;
    cdsCtesNUMERODES: TStringField;
    cdsCtesCOMPDES: TStringField;
    cdsCtesBAIRRODES: TStringField;
    cdsCtesCMUNDES: TStringField;
    cdsCtesXMUNDES: TStringField;
    cdsCtesCEPDES: TStringField;
    cdsCtesUFDES: TStringField;
    cdsCtesTPDOCDES: TIntegerField;
    cdsCtesCNPJENTDES: TStringField;
    cdsCtesRAZENTDES: TStringField;
    cdsCtesLOGRAENTDES: TStringField;
    cdsCtesNUMEROENTDES: TStringField;
    cdsCtesCOMPENTDES: TStringField;
    cdsCtesBAIRROENTDES: TStringField;
    cdsCtesCMUNENTDES: TStringField;
    cdsCtesXMUNENTDES: TStringField;
    cdsCtesUFENTDES: TStringField;
    cdsCtesLOCENTDES: TIntegerField;
    cdsCtesVTPREST: TBCDField;
    cdsCtesVREC: TBCDField;
    cdsCtesCST: TStringField;
    cdsCtesVBC: TBCDField;
    cdsCtesPICMS: TBCDField;
    cdsCtesVICMS: TBCDField;
    cdsCtesPREDBC: TBCDField;
    cdsCtesVCRED: TBCDField;
    cdsCtesINFADFISCIMP: TStringField;
    cdsCtesVMERC: TBCDField;
    cdsCtesPROPRED: TStringField;
    cdsCtesXOUTCAT: TStringField;
    cdsCtesRNTRC: TStringField;
    cdsCtesDPREV: TDateField;
    cdsCtesLOTA: TIntegerField;
    cdsCtesSERIECTRB: TStringField;
    cdsCtesNCTRB: TStringField;
    cdsCtesXMOTIVO: TStringField;
    cdsCtesREM: TIntegerField;
    cdsCtesEXP: TIntegerField;
    cdsCtesREC: TIntegerField;
    cdsCtesDES: TIntegerField;
    cdsCtesINFOREM: TIntegerField;
    cdsCtesNPROT: TStringField;
    cdsCtesEMAILDES: TStringField;
    cdsCtesCOD_LOTE: TIntegerField;
    cdsCtesCARGA: TStringField;
    cdsCtesSTATUS: TStringField;
    cbStatus: TComboBox;
    FramePeriodo21: TFramePeriodo2;
    GroupBox5: TGroupBox;
    lbAmb: TLabel;
    edtEmitCep: TEdit;
    ts10: TTabSheet;
    GroupBox6: TGroupBox;
    edtProdPredo: TEdit;
    Label30: TLabel;
    Label31: TLabel;
    edtOutCaracProd: TEdit;
    qryCtes: TMDOQuery;
    OpenDialog1: TOpenDialog;
    btbuscar: TBitBtn;
    cdsRelatorio: TClientDataSet;
    cdsRelatorioNUMCTE: TIntegerField;
    OpenDialog2: TOpenDialog;
    Label28: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    lbAmbGeral: TLabel;
    SpeedButton1: TSpeedButton;
    GroupBox7: TGroupBox;
    edtBaseCalculo: TFocusCurrEdit;
    Label37: TLabel;
    Label38: TLabel;
    edtPerIcms: TFocusCurrEdit;
    Label39: TLabel;
    edtVlrIcms: TFocusCurrEdit;
    mObs: TMemo;
    Label40: TLabel;
    FrameClienteDest: TFrameCliente2;
    FrameClienteReme: TFrameCliente2;
    btCalcula: TSpeedButton;
    Panel1: TPanel;
    edtEmitFone: TFocusMaskEdit;
    Label64: TLabel;
    Label65: TLabel;
    edtRBCalc: TFocusCurrEdit;
    edtVCred: TFocusCurrEdit;
    Label66: TLabel;
    btConsulta: TSpeedButton;
    btCancela: TSpeedButton;
    btInutiliza: TSpeedButton;
    btnImprimir: TSpeedButton;
    btnEnviar: TSpeedButton;
    btnIncluir: TSpeedButton;
    ApplicationEvents1: TApplicationEvents;
    ts11: TTabSheet;
    GroupBox8: TGroupBox;
    cdsDocs: TClientDataSet;
    dsDocs: TDataSource;
    dspDoc: TDataSetProvider;
    qryDoc: TMDOQuery;
    pnDocs: TPanel;
    PCDocOrig: TPageControl;
    tsNFe: TTabSheet;
    Label41: TLabel;
    Label62: TLabel;
    lbCarac: TLabel;
    DBEdtChave: TDBEdit;
    dbserieCte: TDBEdit;
    dbNumCte: TDBEdit;
    tsNF: TTabSheet;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    cbModeloNf: TComboBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    dbModNF: TDBEdit;
    tsOutros: TTabSheet;
    Label42: TLabel;
    Label43: TLabel;
    label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    cbTpDoc: TComboBox;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    dbTpDoc: TDBEdit;
    btSalv: TBitBtn;
    btCanc: TBitBtn;
    cdsDocsSERIECTE: TIntegerField;
    cdsDocsNRCTE: TIntegerField;
    cdsDocsCHAVE: TStringField;
    cdsDocsPIN: TStringField;
    cdsDocsNROMA: TStringField;
    cdsDocsNPED: TStringField;
    cdsDocsMOD: TStringField;
    cdsDocsSERIE: TStringField;
    cdsDocsDEMI: TDateField;
    cdsDocsVBC: TBCDField;
    cdsDocsVICMS: TBCDField;
    cdsDocsVBCST: TBCDField;
    cdsDocsVST: TBCDField;
    cdsDocsVPROD: TBCDField;
    cdsDocsVNF: TBCDField;
    cdsDocsNCFOP: TStringField;
    cdsDocsNPESO: TBCDField;
    cdsDocsTPDOC: TStringField;
    cdsDocsDESCOUTROS: TStringField;
    cdsDocsCODIGO: TIntegerField;
    dbCodigo: TDBEdit;
    pnDados: TPanel;
    RGTpDoc: TRadioGroup;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btnInc: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    Timer1: TTimer;
    RGTipoInclusao: TRadioGroup;
    XMLDocument1: TXMLDocument;
    ACBrNFe1: TACBrNFe;
    GroupBox9: TGroupBox;
    cbRespSeg: TComboBox;
    Label69: TLabel;
    edtNomeSeg: TEdit;
    Label70: TLabel;
    edtNApolice: TEdit;
    Label71: TLabel;
    edtNAverbacao: TEdit;
    Label72: TLabel;
    SpbBuscaSeg: TBitBtn;
    edtCodSeg: TFocusEdit;
    Label73: TLabel;
    cdsCtesCODSEG: TIntegerField;
    cdsCtesRESPSEG: TIntegerField;
    idNotasDTEMI: TDateField;
    idNotasVNF: TFloatField;
    dtDataEmis: TDateTimePicker;
    Label74: TLabel;
    Label75: TLabel;
    DBEdtVlrNota: TDBEdit;
    dtDataEmisNf: TDateTimePicker;
    cdsCtesDATAEMIS: TDateField;
    gbVeiculo: TGroupBox;
    Label63: TLabel;
    edtPlaca: TEdit;
    edtRenavam: TEdit;
    Label76: TLabel;
    cbUf: TComboBox;
    Label77: TLabel;
    memoMsg: TMemo;
    m100: TRichEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    GroupBox10: TGroupBox;
    Label7: TLabel;
    Label68: TLabel;
    Label67: TLabel;
    Label78: TLabel;
    Shape1: TShape;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    cdsCtesXOBS: TStringField;
    edtTara: TFocusCurrEdit;
    edtCapacidadeKG: TFocusCurrEdit;
    edtCapacidadeM3: TFocusCurrEdit;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    cbTipoVeiculo: TComboBox;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    cbTipoRodado: TComboBox;
    cbTipoCarroceria: TComboBox;
    dsunidcarga: TDataSource;
    GroupBox11: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    cbUndMed: TComboBox;
    edtQtdCarga: TFocusCurrEdit;
    cbTpMed: TComboBox;
    GridInfoCarga: TDBGrid;
    btnIncUnid: TBitBtn;
    Label29: TLabel;
    edtVlrMerc: TFocusCurrEdit;
    btnCanUnid: TBitBtn;
    cdsUnidCarga: TClientDataSet;
    cdsUnidCargaCODIGO: TIntegerField;
    cdsUnidCargaNUMCTE: TIntegerField;
    cdsUnidCargaCODUNID: TStringField;
    cdsUnidCargaTPMEDIDA: TStringField;
    cdsUnidCargaQTDECARGA: TFloatField;
    btnAltUnid: TSpeedButton;
    btnExcUnid: TSpeedButton;
    cdsUnidDeletada: TClientDataSet;
    cdsUnidDeletadaCODIGO: TIntegerField;
    cdsUnidCargaDESC_UNID: TStringField;
    pnlDadosPropVeic: TPanel;
    edtCnpjPropVeic: TEdit;
    edtIEPropVeic: TEdit;
    edtRNTRCPropVeic: TEdit;
    edtNomePropVeic: TEdit;
    cbUFPropVeic: TComboBox;
    cbTipoPropVeic: TComboBox;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Shape2: TShape;
    lbPropVeic: TStaticText;
    Shape3: TShape;
    FrameVeiculo1: TFrameVeiculo;
    cdsCtesCODIGO_VEICULO: TIntegerField;
    rgVeiculoProprio: TRadioGroup;
    cdsCompPrestacao: TClientDataSet;
    dsCompPrestacao: TDataSource;
    GroupBox12: TGroupBox;
    dbGridComponentes: TDBGrid;
    edtNomeComponente: TEdit;
    edtValorComponente: TFocusCurrEdit;
    Label97: TLabel;
    Label98: TLabel;
    btnIncComp: TBitBtn;
    btnCanComp: TBitBtn;
    btnAltComp: TSpeedButton;
    btnExcComp: TSpeedButton;
    Shape4: TShape;
    cdsCompDeletado: TClientDataSet;
    cdsCompDeletadoCODIGO: TIntegerField;
    cdsCompPrestacaoCODIGO: TIntegerField;
    cdsCompPrestacaoNUM_CTE: TIntegerField;
    cdsCompPrestacaoNOME_COMPONENTE: TStringField;
    cdsCompPrestacaoVALOR_COMPONENTE: TBCDField;
    SpeedButton2: TSpeedButton;
    btnCancelaOp: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnAlter: TSpeedButton;
    Shape5: TShape;
    cdsCtesNUM_CTE_ANULADO: TIntegerField;
    pnlAnulacao: TPanel;
    lbData: TStaticText;
    dtpAnulacao: TDateTimePicker;
    buscaCtes1: TbuscaCtes;
    edtChaveCteAnulacao: TEdit;
    lbchaveCte: TStaticText;
    ACBrCTeDACTeRL1: TACBrCTeDACTeRL;
    btnIncPorXML: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure frameCidDestSpbBuscaClick(Sender: TObject);
    procedure GridCTesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridCTesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbTomadorChange(Sender: TObject);
    procedure cbExpedidorChange(Sender: TObject);
    procedure cbRecebedorChange(Sender: TObject);
    procedure ts1Exit(Sender: TObject);
    procedure btbuscarClick(Sender: TObject);
    procedure btConsultaClick(Sender: TObject);
    procedure btInutilizaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCancelaClick(Sender: TObject);
    procedure frameCidOrigSpbBuscaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure cdsCtesAfterScroll(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FrameClienteRemeedCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrameClienteRemeSpbBuscaClick(Sender: TObject);
    procedure FrameClienteDestSpbBuscaClick(Sender: TObject);
    procedure FrameClienteDestedCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure btCalculaClick(Sender: TObject);
    procedure edValorPrestacaoChange(Sender: TObject);
    procedure edtCaracServKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbTpDocChange(Sender: TObject);
    procedure RGTpDocClick(Sender: TObject);
    procedure ts10Enter(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnIncClick(Sender: TObject);
    procedure btSalvClick(Sender: TObject);
    procedure DBEdtChaveChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btCancClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frameCidDestedCodigoMunicipioChange(Sender: TObject);
    procedure ACBrCTe1GerarLog(const Mensagem: String);
    procedure SpbBuscaSegClick(Sender: TObject);
    procedure edtCodSegKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodSegChange(Sender: TObject);
    procedure cbFormaemisChange(Sender: TObject);
    procedure frameBuscaCFOP1edCFOPExit(Sender: TObject);
    procedure frameBuscaCFOP1edCFOPChange(Sender: TObject);
    procedure frameBuscaCFOP1edCFOPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure frameBuscaCFOP1edCFOPKeyPress(Sender: TObject;
      var Key: Char);
    procedure GridInfoCargaEnter(Sender: TObject);
    procedure GridInfoCargaExit(Sender: TObject);
    procedure btnIncUnidClick(Sender: TObject);
    procedure btnaltUnidClick(Sender: TObject);
    procedure btnCanUnidClick(Sender: TObject);
    procedure btnExcUnidClick(Sender: TObject);
    procedure FrameVeiculo1SpbBuscaClick(Sender: TObject);
    procedure FrameVeiculo1edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgVeiculoProprioClick(Sender: TObject);
    procedure btnIncCompClick(Sender: TObject);
    procedure btnCanCompClick(Sender: TObject);
    procedure btnAltCompClick(Sender: TObject);
    procedure btnExcCompClick(Sender: TObject);
    procedure dbGridComponentesEnter(Sender: TObject);
    procedure dbGridComponentesExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnAlterClick(Sender: TObject);
    procedure btnCancelaOpClick(Sender: TObject);
    procedure RGTipoInclusaoClick(Sender: TObject);
    procedure edtNatOpEnter(Sender: TObject);
    procedure cbTipoCteChange(Sender: TObject);
    procedure buscaCtes1Exit(Sender: TObject);
    procedure buscaCtes1edtNumCteChange(Sender: TObject);
    procedure buscaCtes1Enter(Sender: TObject);
    procedure ts9Enter(Sender: TObject);
    procedure btnIncPorXMLClick(Sender: TObject);

  private
    function incluir_bd_remoto   :Boolean;
    function incluir_manualmente :Boolean;
    function incluir_XML         :Boolean;

    procedure criaCte; { Efetua inclusao de um novo CT-e }
    procedure GerarCTe;
    function  CarregaEnvia :Boolean; { Carrega informaçoes, referente ao CT-e selecionado, no componente ACBr e o envia }

    procedure preencheCamposXML; { Preenche os campos com dados do XML selecionado }
    procedure limpaCampos;
    procedure atualizaCampos;
    procedure preencheCampos;
    procedure preencheCliDest;
    procedure preencheCliReme;
    procedure preencheVeiculo;

    { funçoes que persistm campos obrigatorios referentes a suas respectivas abas (pages)}
    function persistencias :Boolean;
    function persisteEmitente :Boolean;
    function persisteRemetente :Boolean;
    function persisteDestinatario :Boolean;
    function persisteDados :Boolean;
    function persisteSeImp :Boolean;
    function persisteInfCarga :Boolean;

    function Verifica :Boolean; { verifica se tem ao menos uma CT-e selecionada}
    procedure salvaNfes; { Salva dados referentes as NF-es utilizadas para gerar o CT-e }
    function selecionaNfes: Boolean; { Abre uma tela para seleção de NFes que originarão o CT-e }
    function formaEmissao: Integer; { Seta combobox para forma de emissão do CTe }
    procedure criaLote; { Cria um novo lote }
    procedure salvaRetLote(PConsulta:boolean); { Atualiza Status do retorno de envio do lote }
    procedure salvaRetCte(PConsulta:boolean); { Atualiza CT-e conforme status do retorno de envio }
    procedure armazenaIDs; { Armazena IDs das NFes Selecionadas }
    procedure habilitaDesabilita(H_D :Boolean); { Habilita ou Desabilita Pages do PageControl }
    procedure buscaCtes;  { Busca Ct-es conforme filtro selecionado }
    procedure consultaCte(informa_status: boolean); { Consulta o status do Ct-e selecionado}
    procedure AtualizaPelaConsulta; { Atualiza o Status do CT-e selecionado}
    procedure InutilizarCte;  { Abre uma tela de inutilização do CT-e}
    procedure salvaRetCancel; { Atualiza status do CT-e para cancelado }
    procedure salvaQtdCarga; { Salva no BD a quantidade da carga referente ao CT-e enviado}
    procedure salvaComponentesValorPrestacao;
    procedure imprimeDacte(chave :String); { Imprime diretamente, ou abre uma tela de impressão de DACTe}
    procedure geraRelatorio; { Gera um relatorio dos CTes enviados }
    function  atualizaBDRemoto :Boolean; { Atualiza como ja utilizada NF-e no BD remoto quando for criado um CT-e da mesma}
    procedure puxaEmitente;  { Preenche dados do emitente puxando da tabela de parametros }
    procedure salvaXML; { Salva o XML de emissão na pasta do sistema e no Banco de Dados}
    procedure ativarContingencia(ativar :Boolean); { Ativa contingencia FSDA}
    procedure setFormaEmissaoServidor(idFormaEmis :integer); { Seta se servidor esta em forma emissão normal, contingencia, ...}
    function persisteSelecaoXML :Boolean;  { Verifica se os XMLs selecionados são do mesmo remetente e p/ o mesmo destinatario}
    procedure cancelarCte;  { Cancela CT-e selecionado }
    procedure trataMsgRetorno(msg: String);  { Deixa mais enxuta a mensagem de retorno em caso de falha ao enviar/validar }
    procedure remove_unidades_deletadas;
    procedure remove_componentes_deletados;
    procedure documentoPorXml(caminhoArquivo :String);
    function EncontraNo(NodeList :IXMLNodeList; NodeName :String) :IXMLNode;

  private
    CTE :TClasseCTe;
    ultimaEmissao :TDateTime;
    incluindo :Boolean;
    ultNFeUsada :String;
    Ini :TIniFile;
    incManu :Boolean;

  public

  end;

var
  frmCriaCTe: TfrmCriaCTe;
  listaNotas : TClientDataSet;

implementation

uses uNfes, pcteCTe, uInutilizaCte, Parametro, ACBrCTeWebServices, pcteConversaoCte,
  uFortesRelCtes, uConfigCte, uDigChave, pcnNFe, uLog, uImpressaoDacte,
  Math, uAtivaContingencia, uDica, pcteEventoCTe, uCriaManifesto, StrUtils;

{$R *.dfm}

procedure TfrmCriaCTe.FormCreate(Sender: TObject);
var xSenha :string;
begin
 try
   Ini := TIniFile.Create(PathSis+ 'CBNCTe.ini');
   
   If trim(dm.Parametro.Certificado) = '' Then
    begin
      Self.ACBrCTe1.Configuracoes.Certificados.NumeroSerie := self.ACBrCTe1.SSL.SelecionarCertificado;
      InputQuery('Senha certificado ', 'PIN', xSenha);
      Self.ACBrCTe1.Configuracoes.Certificados.Senha := xSenha;
    end
   else if trim(dm.Parametro.Certificado) <> '0' then
    begin
      self.ACBrCTe1.Configuracoes.Certificados.NumeroSerie := trim(dm.Parametro.Certificado);
      self.ACBrCTe1.Configuracoes.Certificados.Senha       := DesCrip(dm.Parametro.SenhaCertif);
    end;

  self.edtRNTRC.Text := IntToStr(dm.Parametro.RNTRC);

  ACBrCTe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(cbFormaEmis.ItemIndex + 1);
//  ACBrCTe1.Configuracoes.Geral.Salvar       := true;
  ACBrCTe1.Configuracoes.Arquivos.PathSalvar   := ExtractFilePath(Application.ExeName)+'XML\';

  try
    ACBrCTe1.Configuracoes.WebServices.UF         := dm.Parametro.Estado;
    ACBrCTe1.DACTe.Logo := dm.Parametro.CaminhoLogo;
    ACBrCTeDACTeRL1.Logo := dm.Parametro.CaminhoLogo;
    ACBrCTeDACTeRL1.Impressora := dm.Parametro.ImpPadrao;
  except
     on e: Exception do begin
        Avisar('Erro ao buscar dados de Parametros.'+#13#10+e.Message);
     end;

  end;

  case dm.Parametro.TipoAmbiente of
   2: ACBrCTe1.Configuracoes.WebServices.Ambiente := taHomologacao;
   1: ACBrCTe1.Configuracoes.WebServices.Ambiente := taProducao;
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

  ACBrCTe1.Configuracoes.WebServices.Visualizar := false;

  if ACBrCTe1.DACTe <> nil then
   begin
    ACBrCTe1.DACTe.TipoDACTe  := StrToTpImp(cbTipoImp.ItemIndex+1);
    ACBrCTe1.DACTe.Logo       := ExtractFileName(Application.ExeName)+'\LOGOS\logo.jpg';
   end;

   if dm.Parametro.SN = 'S' then
      mObs.Text := 'EMPRESA OPTANTE PELO SIMPLES NACIONAL';
   if trim(dm.Parametro.MsgPadrao) <> '' then
     mObs.Text := trim(dm.Parametro.MsgPadrao);

  incManu := false;
  puxaEmitente;

  if Ini.ReadString('CONFIG_CTE','TP_INCLUSAO','') = 'M' then
    RGTipoInclusao.ItemIndex := 1
  else if Ini.ReadString('CONFIG_CTE','TP_INCLUSAO','') = 'X' then
    RGTipoInclusao.ItemIndex := 2
  else
    RGTipoInclusao.ItemIndex := 0;
    
  if Ini.ReadString('CONFIG_CTE','PRODUTO','') <> '' then
    edtProdPredo.Text := Ini.ReadString('CONFIG_CTE','PRODUTO','');

  except
    on e: Exception do begin
        Avisar('Erro ao configurar.'+#13#10+e.Message);
     end;
  end;

end;


procedure TfrmCriaCTe.btnEnviarClick(Sender: TObject);
begin
  if not Verifica then
    begin
      avisar('Selecione ao mínimo 1 CT-e para envio [Barra de Espaço]');
      GridCTes.SetFocus;
      exit;
    end;

  try
   cdsCtes.DisableControls;

   try
     Aguarda('Enviando CT-e(s) selecionada(s)...');
     CarregaEnvia;
     avisar('Término do envio da(s) CT-e(s)');

   Except
     on e: Exception do begin
        avisar(e.Message);
     end;
   end;
   
  finally
   cdsCtes.EnableControls;

   ACBrCTe1.Conhecimentos.Clear;
   cdsCtes.Filtered := false;
   cdsCtes.Close;
   qryCtes.ParamByName('dti').AsDateTime := FramePeriodo21.eddi.dateTime;
   qryCtes.ParamByName('dtf').AsDateTime := FramePeriodo21.eddf.dateTime;
   CdsCtes.Open;

   FimAguarda;
  end;
end;

procedure TfrmCriaCTe.GerarCTe;
var
 i, CodigoMunicipio, Tomador, codCT: Integer;
begin

  with ACBrCTe1.Conhecimentos.Add.CTe do
  begin
   // Dados de Identificação do CT-e
   //infCTe.ID := 'CTe'+cdsCtesIDCHAVE.AsString;

   Ide.cUF := cdsCtesCODUFEMIT.AsInteger;
   codCT := cdsCtesNUMENVCTE.AsInteger;
   Ide.cCT := StrToInt(ZeroEsquerda(codCT,(8-Length(IntToStr(codCT)))));  // Código Aleatório que contenha 8 dígitos
   Ide.CFOP := cdsCtesCFOP.AsInteger;
   Ide.natOp := cdsCtesNATOP.AsString;

   case cdsCtesFORPAG.AsInteger of
    0: Ide.forPag := fpPago;
    1: Ide.forPag := fpAPagar;
   end;

   Ide.modelo := cdsCtesMODDOC.AsString;
   Ide.serie  := cdsCtesSERIE.AsInteger;
   Ide.nCT    := self.cdsCtesNUMCTE.AsInteger;

   if (self.cdsCtesDATAEMIS.AsString = '')or(self.cdsCtesDATAEMIS.AsString = '30/12/1899') then
     Ide.dhEmi := Now
   else
     Ide.dhEmi := self.cdsCtesDATAEMIS.AsDateTime;

   ultimaEmissao := Ide.dhEmi;

   case cdsCtesTPIMP.AsInteger of
    0: Ide.tpImp := tiRetrato;
    1: Ide.tpImp := tiPaisagem;
   end;

   case cdsCtesTPEMIS.AsInteger of
    1: Ide.tpEmis := teNormal;
    5: Ide.tpEmis := teFSDA;
    7: Ide.tpEmis := teSVCRS;
    8: Ide.tpEmis := teSVCSP;
   end;

   { sete servidor para forma emissão correspondente ao do CT-e }
   setFormaEmissaoServidor(cdsCtesTPEMIS.AsInteger);

   if cdsCtesTPEMIS.AsInteger = 5 then begin
     Ide.dhCont := dm.Parametro.contingencia_ativa;
     Ide.xJust  := dm.Parametro.just_contingencia;
   end;

   case dm.Parametro.TipoAmbiente of
    1: Ide.tpAmb:=taProducao;
    2: Ide.tpAmb:=taHomologacao;
   end;

   case cdsCtesTPCTE.AsInteger of
    0: Ide.tpCTe:=tcNormal;
    1: Ide.tpCTe:=tcComplemento;
    2: Ide.tpCTe:=tcAnulacao;
    3: Ide.tpCTe:=tcSubstituto;
   end;

   // TpcnProcessoEmissao = (peAplicativoContribuinte, peAvulsaFisco, peAvulsaContribuinte, peContribuinteAplicativoFisco);
   Ide.procEmi := peAplicativoContribuinte;
   Ide.verProc := '4.0';
   Ide.refCTE  := cdsCtesIDCHAVE.AsString;
   Ide.cMunEnv := cdsCtesCMUNEMI.AsInteger;
   Ide.xMunEnv := cdsCtesXMUNEMI.AsString;
   Ide.UFEnv   := cdsCtesUFEMI.AsString;

   case StrToInt(Trim(cdsCtesMODAL.AsString)) of
    0: Ide.modal := mdRodoviario;
    1: Ide.modal := mdAereo;
    2: Ide.modal := mdAquaviario;
    3: Ide.modal := mdFerroviario;
    4: Ide.modal := mdDutoviario;
   end;

   case cdsCtesTPSERV.AsInteger of
    0: Ide.tpServ:=tsNormal;
    1: Ide.tpServ:=tsSubcontratacao;
    2: Ide.tpServ:=tsRedespacho;
    3: Ide.tpServ:=tsIntermediario;
   end;

   // Origem da Prestação
   Ide.cMunIni := cdsCtesCMUNINI.AsInteger;
   Ide.xMunIni := cdsCtesXMUNINI.AsString;
   Ide.UFIni   := cdsCtesUFINI.AsString;

   // Destino da Prestação
   Ide.cMunFim := cdsCtesCMUNFIM.AsInteger;
   Ide.xMunFim := cdsCtesXMUNFIM.AsString;
   Ide.UFFim   := cdsCtesUFFIM.AsString;

   // TpcteRetira = (rtSim, rtNao);
   case cdsCtesRETIRA.AsInteger of
     0: Ide.retira := rtSim;
     1: Ide.retira := rtNao;
   end;

   Ide.xdetretira := cdsCtesXDETRETIRA.AsString;

   case cdsCtesTOMA.AsInteger of
    0: Ide.Toma03.Toma := tmRemetente;
    1: Ide.Toma03.Toma := tmExpedidor;
    2: Ide.Toma03.Toma := tmRecebedor;
    3: Ide.Toma03.Toma := tmDestinatario;
   end;

   // Totamdor do Serviço no CTe 4 = Outros
   if cdsCtesTOMA.AsInteger = 4
    then begin

     Ide.Toma4.Toma:=tmOutros;

     Ide.Toma4.CNPJCPF := cdsCtesCNPJTOM.AsString;
     Ide.Toma4.IE      := cdsCtesIETOM.AsString;
     Ide.Toma4.xNome   := cdsCtesRAZTOM.AsString;
     Ide.Toma4.xFant   := cdsCtesFANTOM.AsString;
     Ide.Toma4.fone    := cdsCtesFONETOM.AsString;
     Ide.Toma4.EnderToma.xLgr := cdsCtesLOGRATOM.AsString;
     Ide.Toma4.enderToma.nro  := cdsCtesNUMEROTOM.AsString;
     Ide.Toma4.EnderToma.xCpl := cdsCtesCOMPTOM.AsString;
     Ide.Toma4.EnderToma.xBairro := cdsCtesBAIRROTOM.AsString;
     Ide.Toma4.EnderToma.cMun := cdsCtesCMUNTOM.AsInteger;
     Ide.Toma4.EnderToma.xMun := cdsCtesXMUNTOM.AsString;
     Ide.Toma4.EnderToma.CEP  := cdsCtesCEPTOM.AsInteger;
     Ide.Toma4.EnderToma.UF   := cdsCtesUFTOM.AsString;
     Ide.Toma4.EnderToma.cPais:= 1058;
     Ide.Toma4.EnderToma.xPais:= 'Brasil';
    end;

   //
   //  Informações Complementares do CTe
   //
   compl.xCaracAd  := cdsCtesXCARACAD.AsString; //'caracteristica do transporte';
   compl.xCaracSer := cdsCtesXCARACSER.AsString; //'caracteristica do serviço';
   compl.xEmi      := cdsCtesXEMI.AsString; //'funcionario que emitiu';

   compl.fluxo.xOrig := cdsCtesXORIG.AsString; //'SIGLA da filial de origem';

   (*if '' = 'x'                                                      // \
    then begin                                                        //  \
     with compl.fluxo.pass.Add do                                     //   \_ obrigatorio para transp. aereo                                                           //   \_ Obrigatorio para transporte aereo
       xPass := '';                                                   //   |                                                            //  |
    end;                                                              //  /
   compl.fluxo.xDest := '';                                           // /
   compl.fluxo.xRota := '';                    *)                     ///

   compl.Entrega.TipoData := tdSemData;

      case cdsCtesTPPER.AsInteger of                          //mudar pra ZERO na tabela
        0: compl.Entrega.semData.tpPer:=tdSemData;
    1,2,3: begin
            compl.Entrega.comData.tpPer := tdNaData;
            compl.Entrega.comData.dProg := now;             //atualizar
           end;
        4: begin
            compl.Entrega.noPeriodo.tpPer:=tdNoPeriodo;
            compl.Entrega.noPeriodo.dIni := now;            //atualizar
            compl.Entrega.noPeriodo.dFim := now;            //atualizar
           end;
   end;
              //['0','1','2','3','4'], [thSemHorario, thNoHorario, thAteHorario, thApartirHorario, thNoIntervalo]
   compl.Entrega.TipoHora:= thSemHorario;

   case cdsCtesTPHOR.AsInteger of                     //mudar pra ZERO na tabela
        0: compl.Entrega.semHora.tpHor:=thSemHorario;
    1,2,3: begin
            compl.Entrega.comHora.tpHor:= thNoHorario;
            compl.Entrega.comHora.hProg:= StrToTime('0');   //atualizar
           end;
        4: begin
            compl.Entrega.noInter.tpHor:=thNoIntervalo;
            compl.Entrega.noInter.hIni:=StrToTime('0');    //atualizar
            compl.Entrega.noInter.hFim:=StrToTime('0');    //atualizar
           end;
   end;

   compl.origCalc  := cdsCtesORIGCALC.AsString;
   compl.destCalc  := cdsCtesDESTCALC.AsString;
   compl.xObs      := cdsCtesXOBS.AsString;

   if Ide.tpCTe = tcAnulacao then begin
     infCteAnu.chCTe := edtChaveCteAnulacao.Text;
     infCteAnu.dEmi  := dtpAnulacao.DateTime;
   end
   else if Ide.tpCTe = tcComplemento then
     infCteComp.chave := edtChaveCteAnulacao.Text;

   (*
   DM_CNT.Tabelas.Close;
   DM_CNT.Tabelas.SQL.Clear;
   DM_CNT.Tabelas.SQL.Add('Select * From Cnt_Tabelas');
   DM_CNT.Tabelas.SQL.Add('Where Codigo = :xTabela');
   DM_CNT.Tabelas.Params[0].AsString:=DM_CNT.ParametrosTabela.AsString;
   DM_CNT.Tabelas.Active:=True;
   DM_CNT.Tabelas.Open;

   if DM_CNT.TabelasCST.AsInteger=41
    then compl.xObs := compl.xObs +
           ';Documento emitido por ME ou EPP optante pelo Simples Nacional' +
           ';Nao gera direito a credito fiscal de ICMS';

   // Obs do Contribuinte
   if (trim(DM_CNT.Conhec2ObsContCampo.AsString)<>'') and
      (trim(DM_CNT.Conhec2ObsContTexto.AsString)<>'')
    then begin
     with compl.ObsCont.Add do
      begin
       xCampo:=DM_CNT.Conhec2ObsContCampo.AsString;
       xTexto:=DM_CNT.Conhec2ObsContTexto.AsString;
      end;
    end;

   // Obs para o Fisco
   if (trim(DM_CNT.Conhec2ObsFiscoCampo.AsString)<>'') and
      (trim(DM_CNT.Conhec2ObsFiscoTexto.AsString)<>'')
    then begin
     with compl.ObsFisco.Add do
      begin
       xCampo:=DM_CNT.Conhec2ObsFiscoCampo.AsString;
       xTexto:=DM_CNT.Conhec2ObsFiscoTexto.AsString;
      end;
    end;
             *)
   //
   // Dados do Emitente
   //

   Emit.CNPJ           := dm.Parametro.Cnpj;
   Emit.IE             := dm.Parametro.IE;
   Emit.xNome          := dm.Parametro.Raz;
   Emit.xFant          := dm.Parametro.Fan;
   Emit.EnderEmit.xLgr := dm.Parametro.Ender;
   Emit.EnderEmit.nro  := IntToStr(dm.Parametro.numero);
   Emit.EnderEmit.xCpl := '';
   Emit.EnderEmit.xBairro := dm.Parametro.bairro;
   Emit.EnderEmit.cMun := dm.Parametro.CodMunicipio;
   Emit.EnderEmit.xMun := dm.Parametro.Cidade;
   Emit.EnderEmit.CEP  := StrToInt(retiraMascara(dm.Parametro.Cep));
   Emit.EnderEmit.UF   := dm.Parametro.Estado;
   Emit.enderEmit.fone := retiraMascara(dm.Parametro.Fone);

   //
   //  Dados do Remetente
   //
   Rem.xNome := cdsCtesRAZREM.AsString;
   Rem.xFant := cdsCtesFANREM.AsString;
   Rem.EnderReme.xLgr := cdsCtesLOGRAREM.AsString;
   Rem.EnderReme.nro  := cdsCtesNUMEROREM.AsString;
   Rem.EnderReme.xCpl := cdsCtesCOMPREM.AsString;
   Rem.EnderReme.xBairro := cdsCtesBAIRROREM.AsString;
   Rem.EnderReme.cMun  := cdsCtesCMUNREM.AsInteger;
   Rem.EnderReme.xMun  := cdsCtesXMUNREM.AsString;
   Rem.EnderReme.CEP   := cdsCtesCEPREM.AsInteger;
   Rem.EnderReme.UF    := cdsCtesUFREM.AsString;
   Rem.EnderReme.cPais := 1058;
   Rem.EnderReme.xPais := 'Brasil';
   Rem.CNPJCPF := cdsCtesCNPJREM.AsString;
   Rem.IE      := cdsCtesIEREM.AsString;
   Rem.fone    := cdsCtesFONEREM.AsString;

     //
     // Relação das Notas Fiscais
     //

     dm.qryGeneric.Close;
     dm.qryGeneric.SQL.Text := 'select * from CTENFEREM where nrcte = :nrcte';
     dm.qryGeneric.ParamByName('nrcte').AsInteger := self.cdsCtesNUMCTE.AsInteger;
     dm.qryGeneric.Open;

     if not dm.qryGeneric.IsEmpty then
       begin
         dm.qryGeneric.First;
         while not dm.qryGeneric.Eof do
          begin
            case dm.qryGeneric.fieldByName('tpdoc').AsInteger of
             1: begin
                 // Nota Fiscal Eletrônica

                  with infCTeNorm.infDoc.infNFe.Add do
                   begin
                    chave := dm.qryGeneric.fieldByName('chave').AsString;
                    PIN   := dm.qryGeneric.fieldByName('pin').AsString;

                   end;
                end;

             2: begin
                        // Nota Fiscal
                 with infCTeNorm.infDoc.infNF.Add do
                  begin
                    nRoma := dm.qryGeneric.fieldByName('nroma').AsString;
                    nPed  := dm.qryGeneric.fieldByName('nped').AsString;

                    if dm.qryGeneric.fieldByName('mod').AsString = '01' then
                      modelo := moNF011AAvulsa
                    else if dm.qryGeneric.fieldByName('mod').AsString = '04' then
                      modelo := moNFProdutor;
                      
                    serie := dm.qryGeneric.fieldByName('serie').AsString;
                    nDoc  := dm.qryGeneric.fieldByName('chave').AsString;
                    dEmi  := dm.qryGeneric.fieldByName('demi').asDateTime;
                    vBC   := dm.qryGeneric.fieldByName('vbc').AsFloat;
                    vICMS := dm.qryGeneric.fieldByName('vicms').AsFloat;
                    vBCST := dm.qryGeneric.fieldByName('vbcst').asFloat;
                    vST   := dm.qryGeneric.fieldByName('vst').asFloat;
                    vProd := dm.qryGeneric.fieldByName('vprod').asFloat;
                    vNF   := dm.qryGeneric.fieldByName('vnf').asFloat;
                    nCFOP := dm.qryGeneric.fieldByName('ncfop').asInteger;
                    nPeso := dm.qryGeneric.fieldByName('npeso').asFloat;
                    PIN   := dm.qryGeneric.fieldByName('pin').AsString;

                  end;

                   // informar Local de Retirada  apenas se for diferente do endereço do remetente
                 { if 'localRetiradaNota' <> 'endRemetenteNota' then
                   begin

                    LocRet.CNPJCPF := '';
                    locRet.xNome   := '';
                    locRet.xLgr    := '';
                    locRet.nro     := '';
                    locRet.xCpl    := '';
                    locRet.xBairro := '';
                    locRet.cMun    := 0;
                    locRet.xMun    := '';
                    locRet.UF      := '';
                   end;}
               end;

             99: begin
                 // Outros Tipos de Documentos
                  with infCTeNorm.infDoc.infOutros.Add do
                   begin
                    tpDoc      := tdOutros;
                    descOutros := dm.qryGeneric.fieldByName('descoutros').asString;

                    nDoc     := dm.qryGeneric.fieldByName('chave').asString;
                    dEmi     := date;
                    vDocFisc := dm.qryGeneric.fieldByName('vnf').AsFloat;
                   end;
                 end;

              0: begin
                   with infCTeNorm.infDoc.infOutros.Add do
                   begin
                    tpDoc := tdDeclaracao;

                    nDoc     := dm.qryGeneric.fieldByName('chave').asString;
                    dEmi     := date;
                    vDocFisc := dm.qryGeneric.fieldByName('vnf').AsFloat;
                   end;

                 end;

             10: begin
                   with infCTeNorm.infDoc.infOutros.Add do
                   begin
                    tpDoc := tdDutoviario;

                    nDoc     := dm.qryGeneric.fieldByName('chave').asString;
                    dEmi     := date;
                    vDocFisc := dm.qryGeneric.fieldByName('vnf').AsFloat;
                   end;

                 end;

            end;
            
            dm.qryGeneric.Next;
          end;

       end;


   //
   //  Dados do Destinatario
   //

     Dest.xNome             := cdsCtesRAZDES.AsString;
     Dest.EnderDest.xLgr    := cdsCtesLOGRADES.AsString;
     Dest.EnderDest.nro     := cdsCtesNUMERODES.AsString;
     Dest.EnderDest.xCpl    := cdsCtesCOMPDES.AsString;
     Dest.EnderDest.xBairro := cdsCtesBAIRRODES.AsString;
     Dest.EnderDest.cMun    := cdsCtesCMUNDES.AsInteger;
     Dest.EnderDest.xMun    := cdsCtesXMUNDES.AsString;
     Dest.EnderDest.CEP     := cdsCtesCEPDES.AsInteger;
     Dest.EnderDest.UF      := cdsCtesUFDES.AsString;
     Dest.EnderDest.cPais   := 1058;
     Dest.EnderDest.xPais   := 'Brasil';
     Dest.CNPJCPF           := cdsCtesCNPJDES.AsString;
     Dest.IE                := cdsCtesIEDES.AsString;
     Dest.email             := cdsCtesEMAILDES.AsString;
     Dest.fone              := cdsCtesFONEDES.AsString;
     Dest.ISUF              := cdsCtesISUF.AsString;

     // Local de Entrega
     if ''='x'  //informar apenas se local da entrega não for o mesmo endereço do destinatário
      then begin
       Dest.locEnt.CNPJCPF := '';
       Dest.locEnt.xNome   := '';
       Dest.locEnt.xLgr    := '';
       Dest.locEnt.nro     := '';
       Dest.locEnt.xCpl    := '';
       Dest.locEnt.xBairro := '';
       Dest.locEnt.cMun    := 0;
       Dest.locEnt.xMun    := '';
       Dest.locEnt.UF      := '';
      end;

   //
   //  Dados do Expedidor
   //  preencher somente se existir outro alguem q é responsavel por entregar a carga ao transportador
  if cdsCtesCODEXP.AsInteger > 0 then
    begin
      Exped.xNome              := cdsCtesRAZEXP.AsString;
      Exped.EnderExped.xLgr    := cdsCtesLOGRAEXP.AsString;
      Exped.EnderExped.nro     := cdsCtesNUMEROEXP.AsString;
      Exped.EnderExped.xCpl    := cdsCtesCOMPEXP.AsString;
      Exped.EnderExped.xBairro := cdsCtesBAIRROEXP.AsString;
      Exped.EnderExped.cMun    := cdsCtesCMUNEXP.AsInteger;
      Exped.EnderExped.xMun    := cdsCtesXMUNEXP.AsString;
      Exped.EnderExped.CEP     := cdsCtesCEPEXP.AsInteger;
      Exped.EnderExped.UF      := cdsCtesUFEXP.AsString;
      Exped.EnderExped.cPais   := 1058;
      Exped.EnderExped.xPais   := 'Brasil';
      Exped.CNPJCPF            := cdsCtesCNPJEXP.AsString;
      Exped.IE                 := cdsCtesIEEXP.AsString;
      Exped.fone               := cdsCtesFONEEXP.AsString;
    end;

   //
   //  Dados do Recebedor
   //  preencher somente se existir outro alguem q é responsavel por receber a carga do transportador
   if cdsCtesCODREC.AsInteger > 0 then
    begin
      Receb.xNome              := cdsCtesRAZREC.AsString;
      Receb.EnderReceb.xLgr    := cdsCtesLOGRAREC.AsString;
      Receb.EnderReceb.nro     := cdsCtesNUMEROREC.AsString;
      Receb.EnderReceb.xCpl    := cdsCtesCOMPREC.AsString;
      Receb.EnderReceb.xBairro := cdsCtesBAIRROREC.AsString;
      Receb.EnderReceb.cMun    := cdsCtesCMUNREC.AsInteger;
      Receb.EnderReceb.xMun    := cdsCtesXMUNREC.AsString;
      Receb.EnderReceb.CEP     := cdsCtesCEPREC.AsInteger;
      Receb.EnderReceb.UF      := cdsCtesUFREC.AsString;
      Receb.EnderReceb.cPais   := 1058;
      Receb.EnderReceb.xPais   := 'Brasil';
      Receb.CNPJCPF            := cdsCtesCNPJREC.AsString;
      Receb.IE                 := cdsCtesIEREC.AsString;
      Receb.fone               := cdsCtesFONEREC.AsString;
    end;

   //
   //  Valores da Prestação de Serviço
   //
   vPrest.vTPrest := cdsCtesVTPREST.AsFloat;//RoundTo(DM_CNT.Conhec2ValorTotal.AsFloat, -2);
   vPrest.vRec    := cdsCtesVREC.AsFloat;   //RoundTo(DM_CNT.Conhec2ValorTotal.AsFloat, -2);

   dm.qryGeneric.Close;
   dm.qryGeneric.SQL.Text := 'select * from COMPONENTE_VALOR_PRESTACAO where num_cte = :nrcte';
   dm.qryGeneric.ParamByName('nrcte').AsInteger := self.cdsCtesNUMCTE.AsInteger;
   dm.qryGeneric.Open;

   while not dm.qryGeneric.Eof do begin

     with vPrest.Comp.Add do begin
       xNome := dm.qryGeneric.fieldByName('NOME_COMPONENTE').AsString;
       vComp := dm.qryGeneric.fieldByName('VALOR_COMPONENTE').AsFloat;
     end;

     dm.qryGeneric.Next;
   end;
   //
   // Relação dos Componentes da Prestação de Serviço
   //
{  verificar primeiro
   DM_CNT.Componentes.Close;
   DM_CNT.Componentes.SQL.Clear;
   DM_CNT.Componentes.SQL.Add('Select * From Cnt_Componentes');
   DM_CNT.Componentes.SQL.Add('Where Codigo = :xCodigo');
   DM_CNT.Componentes.SQL.Add('and Numero = :xNumero');
   DM_CNT.Componentes.SQL.Add('Order By Item');
   DM_CNT.Componentes.Params[0].AsInteger:=DM_CNT.Conhec2Codigo.AsInteger;
   DM_CNT.Componentes.Params[1].AsInteger:=DM_CNT.Conhec2Numero.AsInteger;
   DM_CNT.Componentes.Active := True;
   DM_CNT.Componentes.Open;
   j:=DM_CNT.Componentes.RecordCount;
   if j>0
    then begin
     DM_CNT.Componentes.First;
     for i:=1 to j do
      begin
       if DM_CNT.ComponentesValor.AsFloat>0.0
        then begin
         with vPrest.comp.Add do
          begin
           xNome:=DM_CNT.ComponentesDescricao.AsString;;
           vComp:=RoundTo(DM_CNT.ComponentesValor.AsFloat, -2);
          end;
        end;
       DM_CNT.Componentes.Next;
      end;
    end;
                     }
   //
   //  Valores dos Impostos
   //
   // TpcnCSTIcms = (cst00, cst10, cst20, cst30, cst40, cst41, cst45, cst50, cst51, cst60, cst70, cst80, cst81, cst90);
   // 80 e 81 apenas para CTe

   if dm.Parametro.SN = 'S' then
     begin
      Imp.ICMS.ICMSSN.indSN := 1;
      //Imp.ICMS.ICMSSN.infAdFisco := 'EMPRESA OPTANTE PELO SIMPLES NACIONAL';
     end
   else
     case cdsCtesCST.AsInteger of
      00: begin
           Imp.ICMS.SituTrib     := cst00;
           Imp.ICMS.ICMS00.CST   := cst00; // Tributação Normal ICMS
           Imp.ICMS.ICMS00.vBC   := cdsCtesVBC.AsFloat;
           Imp.ICMS.ICMS00.pICMS := cdsCtesPICMS.AsFloat;
           Imp.ICMS.ICMS00.vICMS := cdsCtesVICMS.AsFloat;
          end;
      20: begin
           Imp.ICMS.SituTrib      := cst20;
           Imp.ICMS.ICMS20.CST    := cst20; // Tributação com BC reduzida do ICMS
           Imp.ICMS.ICMS20.pRedBC := cdsCtesPREDBC.AsFloat;
           Imp.ICMS.ICMS20.vBC    := cdsCtesVBC.AsFloat;
           Imp.ICMS.ICMS20.pICMS  := cdsCtesPICMS.AsFloat;
           Imp.ICMS.ICMS20.vICMS  := cdsCtesVICMS.AsFloat;
          end;
      40: begin
           Imp.ICMS.SituTrib  := cst40;
           Imp.ICMS.ICMS45.CST := cst40; // ICMS Isento
          end;
      41: begin
           Imp.ICMS.SituTrib  := cst41;
           Imp.ICMS.ICMS45.CST := cst41; // ICMS não tributado
          end;
      51: begin
           Imp.ICMS.SituTrib  := cst51;
           Imp.ICMS.ICMS45.CST := cst51; // ICMS diferido
          end;
      60: begin
           Imp.ICMS.SituTrib          := cst60;
           Imp.ICMS.ICMS60.CST        := cst60; // ICMS st
           Imp.ICMS.ICMS60.vBCSTRet   := cdsCtesVBC.AsFloat;
           Imp.ICMS.ICMS60.vICMSSTRet := cdsCtesPICMS.AsFloat;
           Imp.ICMS.ICMS60.pICMSSTRet := cdsCtesVICMS.AsFloat;
           Imp.ICMS.ICMS60.vCred      := cdsCtesVCRED.AsFloat;
          end;
      80: begin
           Imp.ICMS.SituTrib          := cst80; // atribuido ao Tomador
           Imp.ICMS.ICMS60.CST        := cst80;
           Imp.ICMS.ICMS60.vBCSTRet   := cdsCtesVBC.AsFloat;
           Imp.ICMS.ICMS60.pICMSSTRet := cdsCtesPICMS.AsFloat;
           Imp.ICMS.ICMS60.vICMSSTRet := cdsCtesVICMS.AsFloat;
           Imp.ICMS.ICMS60.vCred      := cdsCtesVCRED.AsFloat;
          end;
      81: begin
           Imp.ICMS.SituTrib                  := cst81; //devido a outra UF
           Imp.ICMS.ICMSOutraUF.CST           := cst90;
           Imp.ICMS.ICMSOutraUF.pRedBCOutraUF := cdsCtesPREDBC.AsFloat;
           Imp.ICMS.ICMSOutraUF.vBCOutraUF    := cdsCtesVBC.AsFloat;
           Imp.ICMS.ICMSOutraUF.pICMSOutraUF  := cdsCtesPICMS.AsFloat;
           Imp.ICMS.ICMSOutraUF.vICMSOutraUF  := cdsCtesVICMS.AsFloat;
          end;    
      90: begin
           Imp.ICMS.SituTrib      := cst90;
           Imp.ICMS.ICMS90.CST    := cst90; // ICMS Outros
           Imp.ICMS.ICMS90.pRedBC := cdsCtesPREDBC.AsFloat;
           Imp.ICMS.ICMS90.vBC    := cdsCtesVBC.AsFloat;
           Imp.ICMS.ICMS90.pICMS  := cdsCtesPICMS.AsFloat;
           Imp.ICMS.ICMS90.vICMS  := cdsCtesVICMS.AsFloat;
           Imp.ICMS.ICMS90.vCred  := cdsCtesVCRED.AsFloat;
          end;
      end;

   //
   //  Informações da Carga
   //
   infCTeNorm.infCarga.vCarga   := cdsCtesVMERC.AsFloat;
   infCTeNorm.infCarga.proPred  := cdsCtesPROPRED.AsString;
   infCTeNorm.infCarga.xOutCat  := cdsCtesXOUTCAT.AsString;

   // UnidMed = (00 uM3, 01 uKG, 02 uTON, 03 uUNIDADE, 04 uLITROS, 05 mMBTU);

   dm.qryGeneric.Close;
   dm.qryGeneric.SQL.Text := 'select * from cteqtdecarga where numcte = :numcte';
   dm.qryGeneric.ParamByName('numcte').AsInteger := self.cdsCtesNUMCTE.AsInteger;
   dm.qryGeneric.Open;

   dm.qryGeneric.First;
   while not dm.qryGeneric.Eof do begin

      with infCTeNorm.infCarga.InfQ.Add do
       begin


         case dm.qryGeneric.fieldByName('codunid').AsInteger of
          0: cUnid := uM3;
          1: cUnid := uKG;
          2: cUnid := uTON;
          3: cUnid := uUNIDADE;
          4: cUnid := uLITROS;
          5: cUnid := uMMBTU;
         end;

         tpMed  := dm.qryGeneric.fieldByName('tpmedida').AsString;
         qCarga := dm.qryGeneric.fieldByName('qtdecarga').AsFloat;
       end;

     dm.qryGeneric.Next;  
   end;
   //
   //  Informações da Seguradora
   //


     with infCTeNorm.seg.Add do begin

       case cdsCtesRESPSEG.AsInteger of
        0: respSeg := rsRemetente;
        1: respSeg := rsExpedidor;
        2: respSeg := rsRecebedor;
        3: respSeg := rsDestinatario;
        4: respSeg := rsEmitenteCTe;
        5: respSeg := rsTomadorServico;
       end;

       dm.qryGeneric.Close;
       dm.qryGeneric.SQL.Text := 'select * from seguradoras where codigo = :cod';
       dm.qryGeneric.ParamByName('cod').AsInteger := self.cdsCtesCODSEG.AsInteger;
       dm.qryGeneric.Open;

       if not dm.qryGeneric.IsEmpty then begin
         xSeg:= trim(dm.qryGeneric.fieldByName('nome').AsString);

         nApol := trim(dm.qryGeneric.fieldByName('N_APOLICE').AsString);
         nAver := trim(dm.qryGeneric.fieldByName('N_AVERBACAO').AsString);
       end;

       vCarga := cdsCtesVMERC.AsFloat;
    end;

   //
   //  Dados do Modal Rodoviário
   //

   infCTeNorm.rodo.RNTRC := edtRNTRC.text;
   infCTeNorm.Rodo.dPrev := cdsCtesDPREV.AsDateTime;

   // TpcteLotacao = (ltNao, ltSim);
   case cdsCtesLOTA.AsInteger of
    0: infCTeNorm.Rodo.Lota := ltNao;
    1: infCTeNorm.Rodo.Lota := ltSim;
   end;
   infCTeNorm.Rodo.CIOT := '';


   if cdsCtesLOTA.AsInteger = 1 then begin
     with infCTeNorm.rodo.veic.Add do begin

       dm.qryGeneric.Close;
       dm.qryGeneric.SQL.Text := 'select * from veiculos where codigo = :cod';
       dm.qryGeneric.ParamByName('cod').AsInteger := self.cdsCtesCODIGO_VEICULO.AsInteger;
       dm.qryGeneric.Open;

       cInt    := intToStr(cdsCtesLOTA.AsInteger);
       RENAVAM := dm.qryGeneric.fieldByName('RENAVAM').asString;
       placa   := dm.qryGeneric.fieldByName('PLACA').AsString;
       UF      := dm.qryGeneric.fieldByName('UF_VEICULO').asString;
       tara    := dm.qryGeneric.fieldByName('TARA').AsInteger;
       capKG   := dm.qryGeneric.fieldByName('CAPACIDADE_KG').AsInteger;
       capM3   := dm.qryGeneric.fieldByName('CAPACIDADE_M3').AsInteger;

       // TpcteTipoVeiculo = (tvTracao, tvReboque);
       case dm.qryGeneric.fieldByName('tipo_veiculo').AsInteger of
        0: tpVeic := tvTracao;
        1: tpVeic := tvReboque;
       end;

       // TpcteTipoRodado = (trNaoAplicavel, trTruck, trToco, trCavaloMecanico, trVAN, trUtilitario, trOutros);
       case dm.qryGeneric.fieldByName('tipo_rodado').AsInteger of
        0: tpRod := trNaoAplicavel;
        1: tpRod := trTruck;
        2: tpRod := trToco;
        3: tpRod := trCavaloMecanico;
        4: tpRod := trVAN;
        5: tpRod := trUtilitario;
        6: tpRod := trOutros;
       end;

       // TpcteTipoCarroceria = (tcNaoAplicavel, tcAberta, tcFechada, tcGraneleira, tcPortaContainer, tcSider);
       case dm.qryGeneric.fieldByName('tipo_carroceria').AsInteger of
        0: tpCar := tcNaoAplicavel;
        1: tpCar := tcAberta;
        2: tpCar := tcFechada;
        3: tpCar := tcGraneleira;
        4: tpCar := tcPortaContainer;
        5: tpCar := tcSider;
       end;

       // TpcteTipoPropriedade = (tpProprio, tpTerceiro);
       if dm.qryGeneric.fieldByName('veiculo_proprio').AsString = 'S' then
         tpProp := tpProprio
       else
         tpProp := tpTerceiro;
       

         // se for de terceiro, seleciona os dados dele


         prop.CNPJCPF := dm.qryGeneric.fieldByName('CPFCNPJ').AsString;
         prop.IE      := dm.qryGeneric.fieldByName('IE').AsString;
         prop.RNTRC   := dm.qryGeneric.fieldByName('RNTRC').AsString;
         prop.xNome   := dm.qryGeneric.fieldByName('NOME_PROPRIETARIO').AsString;
         prop.UF      := dm.qryGeneric.fieldByName('UF').AsString;

         // TpcteProp = (tpTACAgregado, tpTACIndependente, tpOutros);
         case dm.qryGeneric.fieldByName('TIPO_PROPRIETARIO').AsInteger of
          0: prop.tpProp := tpTACAgregado;
          1: prop.tpProp := tpTACIndependente;
          2: prop.tpProp := tpOutros;
         end;

       end;
     end;
   end;
   //
   //  Informações do Detalhamento do CTe do tipo Anulação de Valores
   //

   // infCTeAnuEnt.dEmi:=DM_CNT.Conhec2Data.AsDateTime;
   // infCTeAnuEnt.chCTe:='';

end;

procedure TfrmCriaCTe.btnIncluirClick(Sender: TObject);
begin
  incluindo      := true;
  edtNumero.Text := '0'; //para nao alterar em vez de incluir
  edtOutCaracProd.Text := trim(dm.Parametro.CaracProd);
  limpaCampos;
  puxaEmitente;


  case RGTipoInclusao.ItemIndex of
   0: incluindo := incluir_bd_remoto;
   1: incluindo := incluir_manualmente;
   2: incluindo := incluir_XML;
  end;

  if incluindo then begin
    PageControl2.ActivePageIndex := 1;
    habilitaDesabilita(true);
    frameBuscaCFOP1.edCFOP.SetFocus;
  end

end;

function TfrmCriaCTe.selecionaNfes: Boolean;
begin
  Result := True;

  frmNfes := TfrmNfes.create(self);
  if frmNfes.ShowModal = mrOk then
    begin
     listaNotas := frmNfes.cdsNFes;
     if listaNotas.isEmpty then
       Result := false
     else
       armazenaIDs;
    end
  else
    Result := false;

  frmNfes.Release;
end;

procedure TfrmCriaCTe.criaCte;
begin
 try
   CTe := TClasseCTe.Create;

   if strToInt(edtNumero.Text) > 0 then // se estiver alterando
     Cte.Data := cdsCtesDATA.AsDateTime
   else
     CTe.Data := Date;

   CTe.Serie:= StrToInt(edtSerie.Text);
   CTe.Nrcte := strToInt(edtNumero.Text);    // codigo incremental

   if strToInt(edtNumero.Text) > 0 then // se estiver alterando
     CTE.Nrenvcte := cdsCtesNUMENVCTE.AsInteger // codigo incremental
   else
     CTE.Nrenvcte := 0;

   CTe.Verxml := '2.0';//'1.04';
   CTe.Idchave:= '';
   CTe.Codufemit := IntToStr(retornaCodUF(frameCidadeEmit.edestado.Text));
   CTe.Cfop := frameBuscaCFOP1.edCFOP.Text;
   CTe.Natop := edtNatOp.Text;
   CTe.Forpag := cbForPag.ItemIndex;
   CTE.Moddoc := edtModelo.Text;
   CTe.Hora := FormatDateTime('hh:mm:ss',now);
   CTe.Tpimp := cbTipoImp.ItemIndex + 1; // 1 retrato - 2 paisagem
   CTE.Tpemis := formaEmissao; // 1 normal - 5 contin. FSDA
   CTe.Tpamb := dm.Parametro.TipoAmbiente; // 1 prod. - 2 homo.
   CTe.Tpcte := cbTipoCte.ItemIndex;
   CTe.Procemi := 0; //como aplicativo contribuinte
   CTe.Verproc := '1.0';
   CTe.Refcte  := ''; //se fosse uma de papel e agora fosse enviar
   CTe.Cmunemi := frameCidadeEmit.edCodigoMunicipio.Text;
   CTE.Xmunemi := frameCidadeEmit.edCidade.Text;
   CTe.Ufemi   := frameCidadeEmit.edestado.Text;
   CTE.Modal   := IntToStr(cbModal.ItemIndex);
   CTE.Tpserv  := cbTipoServ.ItemIndex;
   CTE.Cmunini := frameCidOrig.edCodigoMunicipio.Text;
   CTE.Xmunini := frameCidOrig.edCidade.Text;
   CTE.Ufini   := frameCidOrig.edestado.Text;
   CTe.Cmunfim := frameCidDest.edCodigoMunicipio.Text;
   CTE.Xmunfim := frameCidDest.edCidade.Text;
   CTE.Uffim   := frameCidDest.edestado.Text;
   Cte.Retira  := cbRetira.ItemIndex;
   CTE.Xdetretira := ''; // obs da retirada
   CTE.Toma  := cbTomador.ItemIndex; //0-Remetente 1-Expedidor 2-Recebedor 3-Destinatário 4-Outros

   CTE.Cnpjtom := edtTomCNPJ.Text;
   CTE.Ietom  := edtTomIE.Text;
   CTE.Raztom := edtTomRazao.Text;
   CTE.Fantom := edtTomFantasia.Text;
   CTE.Fonetom := edtTomFone.Text;
   CTE.Logratom := edtTomLogradouro.Text;
   cte.Numerotom := edtTomNumero.Text;
   cte.Comptom := edtTomComp.Text;
   cte.Bairrotom := edtTomBairro.Text;
   cte.Cmuntom := frameCidadeToma.edCodigoMunicipio.Text;
   cte.Xmuntom := frameCidadeToma.edCidade.Text;
   cte.Ceptom  := edtTomCEP.Text;
   cte.Uftom := frameCidadeToma.edestado.Text;
   cte.Codtom := 0;
   cte.Tpdoctom := 0;
   cte.Xcaracad := edtCaracTrans.Text;
   CTE.Xcaracser := edtCaracServ.Text;
   cte.Xemi := edtFuncEmiss.Text;
   cte.Xorig := '';
   cte.Xpass := '';
   cte.Xdest := '';
   cte.Xrota := '';
   cte.Tpper := 0; // 0-sem data; 1-Na data; 2-Até a data; 3-A partir da data; 4-no periodo
   cte.Dini  := 0; // se tiver data de entrega
   CTE.Dfim  := 0; // se tiver data de entrega
   cte.Tphor := 0; // 0-sem hora; 1-No horário; 2-Até o horário; 3-A partir do horário; 4-no intervalo de tempo
   cte.Hini := ''; // se tiver hora de entrega
   cte.Hfim := ''; // se tiver hora de entrega
   cte.Origcalc := frameCidadeEmit.edCidade.Text;
   cte.Destcalc := frameCidadeDest.edCidade.Text;
   CTE.Xobs := trim(mObs.Text);
   CTe.Codrem := 0;   // remetente
   cte.Cnpjrem := edtRemCnpj.Text;
   cte.Ierem := edtRemIe.Text;
   cte.Razrem := trim(edtRemRazao.Text);
   cte.Fanrem := edtRemFantasia.Text;
   CTE.Fonerem := edtRemFone.Text;
   CTE.Lograrem := edtRemLogradouro.Text;
   cte.Numerorem := edtRemNumero.Text;
   cte.Comprem := edtRemComp.Text;
   CTE.Bairrorem := edtRemBairro.Text;
   cte.Cmunrem := frameCidadeRem.edCodigoMunicipio.Text;
   cte.Xmunrem := frameCidadeRem.edCidade.Text;
   CTE.Ceprem  := edtRemCep.Text;
   CTE.Ufrem  := frameCidadeRem.edestado.Text;
   CTE.Tpdocrem := 0;
   cte.Codexp  := 0; //expedidor
   cte.Cnpjexp := edtExpCNPJ.Text;
   cte.Ieexp := edtExpIE.Text;
   cte.Razexp := edtExpRazao.Text;
   CTE.Fanexp := edtExpFantasia.Text;
   cte.Foneexp := edtExpFone.Text;
   CTE.Lograexp := edtExpLogradouro.Text;
   cte.Numeroexp := edtExpNumero.Text;
   cte.Compexp := edtExpComp.Text;
   cte.Bairroexp := edtExpBairro.Text;
   CTE.Cmunexp := frameCidadeExp.edCodigoMunicipio.Text;
   cte.Xmunexp := frameCidadeExp.edCidade.Text;
   CTE.Cepexp := edtExpCep.Text;
   cte.Ufexp := frameCidadeExp.edestado.Text;
   cte.Tpdocexp := 0;
   cte.Codrec := 0; //recebedor            
   cte.Cnpjrec := edtRecCNPJ.Text;
   cte.Ierec := edtRecIE.Text;
   cte.Razrec := edtRecRazao.Text;
   CTE.Fanrec := edtRecFantasia.Text;
   cte.Fonerec:= edtRecFone.Text;
   CTE.Lograrec := edtRecLogradouro.Text;
   cte.Numerorec:= edtRecNumero.Text;
   cte.Comprec:= edtRecComp.Text;
   cte.Bairrorec:= edtRecBairro.Text;
   CTE.Cmunrec := frameCidadeRec.edCodigoMunicipio.Text;
   cte.Xmunrec := frameCidadeRec.edCidade.Text;
   CTE.Ceprec := edtRecCep.Text;
   cte.Ufrec := frameCidadeRec.edestado.Text;
   cte.Tpdocrec := 0;
   CTE.Coddes := 0;  // destinatario
   cte.Cnpjdes := edtDestCnpj.Text;
   cte.Iedes := edtDestIe.Text;
   cte.Razdes := edtDestRazao.Text;
   CTE.Fandes := edtDestFantasia.Text;
   cte.Fonedes:= edtDestFone.Text;
   CTE.Isuf := ''; //inscrição suframa
   CTE.Logrades := edtDestLogradouro.Text;
   cte.Numerodes:= edtDestNumero.Text;
   cte.Compdes:= edtDestComp.Text;
   cte.Bairrodes:= edtDestBairro.Text;
   CTE.Cmundes := frameCidadeDest.edCodigoMunicipio.Text;
   cte.Xmundes := frameCidadeDest.edCidade.Text;
   CTE.Cepdes := edtDestCep.Text;
   cte.Ufdes := frameCidadeDest.edestado.Text;
   cte.EmailDes := edtDestEmail.Text;
   cte.Tpdocdes := 0;
   // ENTDES - informar apenas qndo local da entr. n for o mesmo do ender. do destinatario
   cte.Cnpjentdes := '';
   cte.Razentdes := '';
   cte.Lograentdes := '';
   CTE.Numeroentdes := '';
   cte.Compentdes := '';
   cte.Bairroentdes := '';
   cte.Cmunentdes := '';
   cte.Xmunentdes := '';
   cte.Ufentdes := '';
   cte.Locentdes := 1;

   // VPREST = VREC = VBC
   CTE.Vtprest := edValorPrestacao.Value; // vlr. tot. prest. serv.
   CTE.Vrec  := edValorReceber.Value;
   cte.Cst := copy(cbST.Text,1,2);
   cte.Vbc := edtBaseCalculo.Value;//edValorPrestacao.Value;
   cte.Picms := edtPerIcms.Value;//12;
   cte.Vicms := edtVlrIcms.Value;//(cte.Picms * CTE.Vbc ) / 100;
   cte.Predbc := edtRBCalc.Value;
   cte.Vcred := edtVCred.Value;
   cte.Infadfiscimp := '';
   cte.Vmerc := StrToFloat(edtVlrMerc.text);
   cte.Propred := Trim(edtProdPredo.Text); //produto predominante
   cte.Xoutcat := Trim(edtOutCaracProd.Text);// carc. carg. ex: Fria, granel, refrigerada.. ou medidas: 12x12x12
   cte.Rntrc := Trim(edtRNTRC.Text); //Registro obrigatorio do emit. junto à ANTT, para transportadores rod.
   CTE.Dprev :=  edtData.DateTime;
   cte.Lota := cbLota.ItemIndex; //0-nao 1-sim
   cte.Seriectrb := '';
   cte.Nctrb := '';
   cte.Status := '321'; // 321-digitacao, 100-enviado, 101-cancelado, 102-inutilizado
   CTE.Xmotivo := 'CT-e pendente para envio';
   cte.Rem := 0;
   cte.Exp := 1;  // 0 - sim   1 - nao
   cte.Rec := 1;
   cte.Des := 0;
   cte.Inforem := 1;
   cte.Nprot := '';
   cte.Carga := 'N';
   cte.codigo_veiculo := strToIntDef(FrameVeiculo1.edCodigo.Text,0);
   CTE.Cod_lote := loteAtual + 1;
   CTE.CodSeg := StrToInt(edtCodSeg.Text);
   CTE.RespSeg := cbRespSeg.ItemIndex; // 0-Remetente 1-Expedidor 2-Recebedor 3-Destinatario 4-Emitente da CTe 5-Tomador do Servico

   CTE.NUM_CTE_ANULADO := StrToInt(buscaCtes1.edtNumCte.Text);

   CTE.Salvar;

   CTE.Free;
   CTE := nil;
 Except
   on e: Exception do begin
     CTE.Free;
     CTE := nil;
     Avisar('Erro ao criar CT-e.'+#13#10+e.Message);
  end;
 end;
end;

procedure TfrmCriaCTe.preencheCampos;
begin
  if trim(listaNotas.fieldByName('ANTT').AsString) <> '' then
    edtRNTRC.Text := trim(listaNotas.fieldByName('ANTT').AsString)
  else
    edtRNTRC.Text := IntToStr(dm.Parametro.RNTRC);

  edtRemCNPJ.Text        := listaNotas.fieldByName('CNPJEMI').AsString;
  edtRemIE.Text          := listaNotas.fieldByName('IEEMI').AsString;
  edtRemRazao.Text       := trim(listaNotas.fieldByName('RAZEMI').AsString);
  edtRemFantasia.Text    := listaNotas.fieldByName('FANTEMI').AsString;
  edtRemFone.Text        := retiraMascara(dm.Parametro.Fone);

  if not Length(retiraMascara(listaNotas.fieldByName('CEPEMI').AsString)) > 8 then
    edtRemCEP.Text       := '00000000000'
  else
    edtRemCEP.Text       := retiraMascara(listaNotas.fieldByName('CEPEMI').AsString);

  edtRemLogradouro.Text  := listaNotas.fieldByName('LOGREMI').AsString;
  edtRemNumero.Text      := listaNotas.fieldByName('NUMEROEMI').AsString;
  edtRemBairro.Text      := listaNotas.fieldByName('BAIRRO').AsString;
  frameCidadeRem.edCodigoMunicipio.Text := intToStr(dm.Parametro.CodMunicipio);
  frameCidadeRem.edCidade.Text          := listaNotas.fieldByName('MUNEMI').AsString;
  frameCidadeRem.edestado.Text          := listaNotas.fieldByName('UFEMI').AsString;

  //dados destinatario
  edtDestCNPJ.Text       := listaNotas.fieldByName('CNPJDEST').AsString;
  edtDestIE.Text         := listaNotas.fieldByName('IEDEST').AsString;
  edtDestRazao.Text      := listaNotas.fieldByName('NOMEDEST').AsString;
  edtDestFone.Text       := retiraMascara(listaNotas.fieldByName('FONEDEST').AsString);
  
  if not Length(retiraMascara(listaNotas.fieldByName('CEPDEST').AsString)) > 8 then
    edtDestCEP.Text      := '00000000000'
  else
    edtDestCEP.Text      := retiraMascara(listaNotas.fieldByName('CEPDEST').AsString);

  edtDestLogradouro.Text := listaNotas.fieldByName('LOGRDEST').AsString;
  edtDestNumero.Text     := listaNotas.fieldByName('NUMERODEST').AsString;
  edtDestBairro.Text     := listaNotas.fieldByName('BAIRRODEST').AsString;
  frameCidadeDest.edCodigoMunicipio.Text := listaNotas.fieldByName('CODMUNDEST').AsString;
  frameCidadeDest.edCidade.Text          := listaNotas.fieldByName('MUNDEST').AsString;
  frameCidadeDest.edestado.Text          := listaNotas.fieldByName('UFDEST').AsString;
  edtDestEmail.Text      := listaNotas.fieldByName('EMAILDEST').AsString;
//  edtVlrMerc.Text        := listaNotas.fieldByName('TOTPRODUTOS').AsString;

  frameCidDest.edCodigoMunicipio.Text := listaNotas.fieldByName('CODMUNDEST').AsString;
  frameCidDest.edCidade.Text          := listaNotas.fieldByName('MUNDEST').AsString;
  frameCidDest.edestado.Text          := listaNotas.fieldByName('UFDEST').AsString;

  edtNumero.Text := '0';
 //preenche frete e valor da carga

  cbST.ItemIndex := 9;

 if dm.Parametro.SN = 'LR' then
   cbST.ItemIndex := 2;

 listaNotas.First;

  edValorPrestacao.Value := 0;
  edValorReceber.Value   := 0;
  edtVlrMerc.Value       := 0;
  edtQtdCarga.Value      := 0;
  ultNFeUsada            := '';
  edtRBCalc.Value        := listaNotas.fieldByName('PERREDCFRETEICMS').AsFloat;
  edtPerIcms.Value       := listaNotas.fieldByName('PICMSFRETEM').AsFloat;

 while not listaNotas.Eof do begin
   edValorPrestacao.Value := edValorPrestacao.Value + listaNotas.fieldByName('VLRICMSFRETEM').AsFloat;
   edValorReceber.Value   := edValorPrestacao.Value;
   edtVlrMerc.Value       := edtVlrMerc.Value + listaNotas.fieldByName('TOTNF').AsFloat;
   edtQtdCarga.Value      := edtQtdCarga.Value + listaNotas.fieldByName('PESOLIQ').AsFloat;

   if edtQtdCarga.Value > 0 then
     btnIncUnid.Click;

   if ultNFeUsada = '' then
     ultNFeUsada := listaNotas.fieldByName('codigo').AsString
   else
     ultNFeUsada := ultNFeUsada + ',' + listaNotas.fieldByName('codigo').AsString;

   listaNotas.Next;
 end;

   edtBaseCalculo.Value := edValorPrestacao.Value;

 //se tiver reducao de b. calculo, destaca
  if edtRBCalc.Value > 0 then
    edtBaseCalculo.Value := edValorPrestacao.Value - ((edValorPrestacao.Value * edtRBCalc.Value)/100);

  btCalcula.Click;

  edtPlaca.Text        := listaNotas.fieldByName('PLACA').AsString;

end;

procedure TfrmCriaCTe.FormActivate(Sender: TObject);
begin
  edtData.DateTime := Date;
  self.PageControl2.ActivePageIndex := 0;
  FramePeriodo21.eddi.DateTime := Date;
  FramePeriodo21.eddf.DateTime := Date;
  buscaCTes;
  gridCtes.SetFocus;
  if not cdsCtes.isempty then
    cdsCtes.RecNo := 1;
  incluindo := False;
end;

procedure TfrmCriaCTe.btnSalvarClick(Sender: TObject);
var mensagem_final :String;
begin
 try
   trimCampos(Self);

   if persistencias then
    begin

      if ((incManu) or (RGTipoInclusao.ItemIndex = 1)) then
         cdsDocs.First;

      Aguarda('Salvando CT-e...');
      criaCte;
      salvaComponentesValorPrestacao; //se houver
      salvaQtdCarga;
                                  //se estiver alterando
      if strToInt(edtNumero.Text) > 0 then begin
        salvaNfes;
        incManu := false;
      end
      else begin
        salvaNfes;
        criaLote;

        FimAguarda;

        mensagem_final := 'CT-e criada com sucesso!';

        if not (incManu) and not(RGTipoInclusao.ItemIndex = 1) and (ultNFeUsada <> '') then
          if not atualizaBDRemoto then
            mensagem_final := 'CT-e criada com sucesso, Porém ocorreu um erro ao atualizar nota(s) fiscal(ais) utilizadas para criação do mesmo.'+#13#10+
                              'Nota(s) Nº: '+ultNFeUsada + ', campo CTECRIADO da tabela NFE não atualizado para ''S'' ';

        avisar(mensagem_final);
      end;
      
      PageControl2.activePageindex := 0;
      cdsCtes.Close;
      qryCtes.ParamByName('dti').AsDateTime := FramePeriodo21.eddi.dateTime;
      qryCtes.ParamByName('dtf').AsDateTime := FramePeriodo21.eddf.dateTime;
      CdsCtes.Open;
      habilitaDesabilita(false);// true - habilita, false - desabilita
      self.btnIncluir.enabled := true;
      incManu := false;
      idNotas.Close;

      btnCancelaOp.Click;
    end;
    
 finally
   FimAguarda;
 end;
end;

procedure TfrmCriaCTe.frameCidDestSpbBuscaClick(Sender: TObject);
begin
  frameCidDest.SpbBuscaClick(Sender);
  if Trim(frameCidDest.edCidade.Text) <> '' then
    edtFuncEmiss.SetFocus;
end;

function TfrmCriaCTe.persistencias: Boolean;
begin
  if not persisteDados or not persisteEmitente or not persisteRemetente or not persisteDestinatario
  or not persisteSeImp or not persisteInfCarga then
    Result := false
  else
    Result := true;  
end;

function TfrmCriaCTe.persisteDestinatario: Boolean;
begin
  Result := false;

  if Trim(edtDestCnpj.Text) = '' then
    begin
      avisar('O CNPJ do Destinatário deve ser informado');
      PageControl2.ActivePageIndex := 7;
      edtDestCNPJ.SetFocus;
    end
  else if Trim(edtDestIE.Text) = '' then
    begin
      avisar('A IE do Destinatário deve ser informada');
      PageControl2.ActivePageIndex := 7;
      edtDestIE.SetFocus;
    end
  else if Trim(edtDestRazao.Text) = '' then
    begin
      avisar('A Razão Social do Destinatário deve ser informada');
      PageControl2.ActivePageIndex := 7;
      edtDestRazao.SetFocus;
    end
  else if Trim(edtDestFone.Text) = '' then
    begin
      avisar('O Telefone do Destinatário deve ser informado');
      PageControl2.ActivePageIndex := 7;
      edtDestFone.SetFocus;
    end
  else if Trim(edtDestCEP.Text) = '' then
    begin
      avisar('O CEP do Destinatário deve ser informado');
      PageControl2.ActivePageIndex := 7;
      edtDestCEP.SetFocus;
    end
  else if Trim(edtDestLogradouro.Text) = '' then
    begin
      avisar('Logradouro do Destinatário deve ser informado');
      PageControl2.ActivePageIndex := 7;
      edtDestLogradouro.SetFocus;
    end
  else if Trim(edtDestNumero.Text) = '' then
    begin
      avisar('Número do Destinatário deve ser informado');
      PageControl2.ActivePageIndex := 7;
      edtDestNumero.SetFocus;
    end
  else if Trim(edtDestBairro.Text) = '' then
    begin
      avisar('Bairro do Destinatário deve ser informado');
      PageControl2.ActivePageIndex := 7;
      edtDestBairro.SetFocus;
    end
  else if Trim(frameCidadeDest.edCodigoMunicipio.Text) = '' then
    begin
      avisar('O CNPJ do Destinatário deve ser informado');
      PageControl2.ActivePageIndex := 7;
      edtDestCNPJ.SetFocus;
    end
  else if Trim(frameCidadeDest.edCidade.Text) = '' then
    begin
      avisar('Cidade do Destinatário deve ser informada');
      PageControl2.ActivePageIndex := 7;
      frameCidadeDest.edCidade.SetFocus;
    end
  else if Trim(frameCidadeDest.edestado.Text) = '' then
    begin
      avisar('UF do Destinatário deve ser informada');
      PageControl2.ActivePageIndex := 7;
      frameCidadeDest.edestado.SetFocus;
    end
  else
    Result := true;  
end;

function TfrmCriaCTe.persisteEmitente: Boolean;
begin
  Result := false;

  if Trim(edtEmitCNPJ.Text) = '' then
    begin
      avisar('O CNPJ do Emitente deve ser informado');
      PageControl2.ActivePageIndex := 2;
      edtEmitCNPJ.SetFocus;
    end
  else if Trim(edtEmitIE.Text) = '' then
    begin
      avisar('A IE do Emitente deve ser informada');
      PageControl2.ActivePageIndex := 2;
      edtEmitIE.SetFocus;
    end
  else if Trim(edtEmitRazao.Text) = '' then
    begin
      avisar('A Razão Social do Emitente deve ser informada');
      PageControl2.ActivePageIndex := 2;
      edtEmitRazao.SetFocus;
    end
  else if Trim(edtEmitFone.Text) = '' then
    begin
      avisar('O Telefone do Emitente deve ser informado');
      PageControl2.ActivePageIndex := 2;
      edtEmitFone.SetFocus;
    end
  else if Trim(edtEmitCEP.Text) = '' then
    begin
      avisar('O CEP do Emitente deve ser informado');
      PageControl2.ActivePageIndex := 2;
      edtEmitCep.SetFocus;
    end
  else if Trim(edtEmitLogradouro.Text) = '' then
    begin
      avisar('Logradouro do Emitente deve ser informado');
      PageControl2.ActivePageIndex := 2;
      edtEmitLogradouro.SetFocus;
    end
  else if Trim(edtEmitNumero.Text) = '' then
    begin
      avisar('Número do Emitente deve ser informado');
      PageControl2.ActivePageIndex := 2;
      edtEmitNumero.SetFocus;
    end
  else if Trim(edtEmitBairro.Text) = '' then
    begin
      avisar('Bairro do Emitente deve ser informado');
      PageControl2.ActivePageIndex := 2;
      edtEmitBairro.SetFocus;
    end
  else if (Trim(frameCidadeEmit.edCodigoMunicipio.Text) = '')or(Trim(frameCidadeEmit.edCodigoMunicipio.Text) = '0') then
    begin
      avisar('O código fa cidade do Emitente deve ser informado');
      PageControl2.ActivePageIndex := 2;
      frameCidadeEmit.edCodigoMunicipio.SetFocus;
    end
  else if Trim(frameCidadeEmit.edCidade.Text) = '' then
    begin
      avisar('Cidade do Emitente deve ser informada');
      PageControl2.ActivePageIndex := 2;
      frameCidadeEmit.edCidade.SetFocus;
    end
  else if Trim(frameCidadeEmit.edestado.Text) = '' then
    begin
      avisar('UF do Emitente deve ser informada');
      PageControl2.ActivePageIndex := 2;
      frameCidadeEmit.edestado.SetFocus;
    end
  else
    Result := true;
end;

function TfrmCriaCTe.persisteRemetente: Boolean;
begin
  Result := false;

  if Trim(edtRemCNPJ.Text) = '' then
    begin
      avisar('O CNPJ do Remetente deve ser informado');
      PageControl2.ActivePageIndex := 4;
      edtRemCNPJ.SetFocus;
    end
  else if Trim(edtRemIE.Text) = '' then
    begin
      avisar('A IE do Remetente deve ser informada');
      PageControl2.ActivePageIndex := 4;
      edtRemIE.SetFocus;
    end
  else if Trim(edtRemRazao.Text) = '' then
    begin
      avisar('A Razão Social do Remetente deve ser informada');
      PageControl2.ActivePageIndex := 4;
      edtRemRazao.SetFocus;
    end
  else if Trim(edtRemFone.Text) = '' then
    begin
      avisar('O Telefone do Remetente deve ser informado');
      PageControl2.ActivePageIndex := 4;
      edtRemFone.SetFocus;
    end
  else if Trim(edtRemCEP.Text) = '' then
    begin
      avisar('O CNPJ do Remetente deve ser informado');
      PageControl2.ActivePageIndex := 4;
      edtRemCNPJ.SetFocus;
    end
  else if Trim(edtRemLogradouro.Text) = '' then
    begin
      avisar('Logradouro do Remetente deve ser informado');
      PageControl2.ActivePageIndex := 4;
      edtRemLogradouro.SetFocus;
    end
  else if Trim(edtRemNumero.Text) = '' then
    begin
      avisar('Número do Remetente deve ser informado');
      PageControl2.ActivePageIndex := 4;
      edtRemNumero.SetFocus;
    end
  else if Trim(edtRemBairro.Text) = '' then
    begin
      avisar('Bairro do Remetente deve ser informado');
      PageControl2.ActivePageIndex := 4;
      edtRemBairro.SetFocus;
    end
  else if (Trim(frameCidadeRem.edCodigoMunicipio.Text) = '')or(Trim(frameCidadeRem.edCodigoMunicipio.Text) = '0') then
    begin
      avisar('O código da cidade do Remetente deve ser informado');
      PageControl2.ActivePageIndex := 4;
      frameCidadeRem.edCodigoMunicipio.SetFocus;
    end
  else if Trim(frameCidadeRem.edCidade.Text) = '' then
    begin
      avisar('Cidade do Remetente deve ser informada');
      PageControl2.ActivePageIndex := 4;
      frameCidadeRem.edCidade.SetFocus;
    end
  else if Trim(frameCidadeRem.edestado.Text) = '' then
    begin
      avisar('UF do Remetente deve ser informada');
      PageControl2.ActivePageIndex := 4;
      frameCidadeRem.edestado.SetFocus;
    end
  else
    Result := true;
end;

function TfrmCriaCTe.persisteDados: Boolean;
begin
  Result := false;

  if Trim(edtRNTRC.Text) = '' then
    begin
      avisar('O RNTRC deve ser informado');
      PageControl2.ActivePageIndex := 1;
      edtRNTRC.SetFocus;
    end
  else if frameBuscaCFOP1.edCFOP.Value <= 0 then
    begin
      avisar('O CFOP deve ser informado');
      PageControl2.ActivePageIndex := 1;
      frameBuscaCFOP1.edCFOP.SetFocus;
    end
  else if (Trim(frameCidOrig.edCodigoMunicipio.Text) = '')or(Trim(frameCidOrig.edCodigoMunicipio.Text) = '0') then
    begin
      avisar('A cidade origem da prestação de serviço deve ser informada');
      PageControl2.ActivePageIndex := 1;
      frameCidOrig.edCodigoMunicipio.SetFocus;
    end
  else if (Trim(frameCidDest.edCodigoMunicipio.Text) = '')or(Trim(frameCidDest.edCodigoMunicipio.Text) = '0') then
    begin
      avisar('A cidade destino da prestação de serviço deve ser informada');
      PageControl2.ActivePageIndex := 1;
      frameCidDest.edCodigoMunicipio.SetFocus;
    end
  else if (cbTipoCte.ItemIndex = 2) and (edtChaveCteAnulacao.Text = '') then
    begin
      avisar('Para emitir um CT-e de anulação de valores, é necessário informar o CT-e a ser anulado');
      PageControl2.ActivePageIndex := 1;
      buscaCtes1.edtNumCte.SetFocus;
    end
  else
    Result := true;
end;

procedure TfrmCriaCTe.salvaNfes;
var numCte :integer;
CONST
    sql_update  = 'UPDATE CTENFEREM             '+
                  'SET PIN   = :PIN,            '+
                  '    NROMA = :NROMA,          '+
                  '    SERIECTE = :SERIECTE,    '+
                  '    NRCTE = :NRCTE,          '+
                  '    CHAVE = :CHAVE,          '+
                  '    NPED  = :NPED,           '+
                  '    "MOD" = :MOD,            '+
                  '    SERIE = :SERIE,          '+
                  '    DEMI  = :DEMI,           '+
                  '    VBC   = :VBC,            '+
                  '    VICMS = :VICMS,          '+
                  '    VBCST = :VBCST,          '+
                  '    VST   = :VST,            '+
                  '    VPROD = :VPROD,          '+
                  '    VNF   = :VNF,            '+
                  '    NCFOP = :NCFOP,          '+
                  '    NPESO = :NPESO,          '+
                  '    TPDOC = :TPDOC,          '+
                  '    DESCOUTROS = :DESCOUTROS '+
                  'WHERE (CODIGO = :CODIGO)     ';

    sql_insert  = 'INSERT INTO CTENFEREM (SERIECTE, NRCTE, CHAVE, PIN, NROMA, NPED, "MOD", SERIE, DEMI, '+
                   ' VBC, VICMS, VBCST, VST, VPROD, VNF, NCFOP, NPESO, TPDOC, DESCOUTROS, CODIGO)        '+
                   ' VALUES (:SERIECTE, :NRCTE, :CHAVE, :PIN, :NROMA, :NPED, :MOD, :SERIE, :DEMI, :VBC,  '+
                   ' :VICMS, :VBCST, :VST, :VPROD, :VNF, :NCFOP, :NPESO, :TPDOC, :DESCOUTROS, :CODIGO)   ';
begin
 try
   if strToInt(edtNumero.Text) > 0 then //se estiver alterando
    begin
      numCte := strToInt(edtNumero.Text);
    end
   else
    begin
      dm.qryGeneric.Close;
      dm.qryGeneric.SQL.Text := 'select gen_id(GEN_CTE_ID, 0) as cod from rdb$database';
      dm.qryGeneric.Open;
      numCte := dm.qryGeneric.fieldByName('cod').AsInteger;
    end;


      //se estiver incluindo via BD Remoto ou via XML
   if not (strToInt(edtNumero.Text) > 0) and not (incManu) and (RGTipoInclusao.ItemIndex <> 1) then
    begin
      idNotas.First;
      dm.qryGeneric.Close;
      dm.qryGeneric.SQL.Text := sql_insert;

      while not idNotas.Eof do begin
        dm.qryGeneric.ParamByName('seriecte').AsInteger := 1;
        dm.qryGeneric.ParamByName('nrcte').AsInteger := numCte;

        dm.qryGeneric.ParamByName('chave').AsString := SomenteNumeros(idNotasID.asString);

        if RGTpDoc.ItemIndex = 0 then
          dm.qryGeneric.ParamByName('tpdoc').asString  := '01'
        else if RGTpDoc.ItemIndex = 1 then
          dm.qryGeneric.ParamByName('tpdoc').asString  := '02'
        else
          dm.qryGeneric.ParamByName('tpdoc').asString  := copy(cbTpDoc.Text,1,2);

        dm.qryGeneric.ParamByName('demi').asDateTime  := idNotasDTEMI.AsDateTime;
        dm.qryGeneric.ParamByName('vnf').AsFloat      := idNotasVNF.AsFloat;
        dm.qryGeneric.ParamByName('mod').AsString     := '01';
        dm.qryGeneric.ParamByName('serie').AsString   := '001';

        dm.qryGeneric.ExecSQL;
        idNotas.Next;
      end;
    end
   else
    begin
      cdsDocs.First;
      while not cdsDocs.Eof do begin

        dm.qryGeneric.Close;

        if cdsDocsCODIGO.AsInteger = 0 then
          dm.qryGeneric.SQL.Text := sql_insert
        else
          dm.qryGeneric.SQL.Text := sql_update;

        dm.qryGeneric.ParamByName('seriecte').AsInteger := 1;
        dm.qryGeneric.ParamByName('nrcte').AsInteger  := numCte;
        dm.qryGeneric.ParamByName('codigo').AsInteger := cdsDocsCODIGO.AsInteger;
        dm.qryGeneric.ParamByName('chave').AsString   := cdsDocsChave.AsString;
        dm.qryGeneric.ParamByName('pin').AsString     := cdsDocsPIN.AsString;
        dm.qryGeneric.ParamByName('nroma').AsString   := cdsDocsNROMA.AsString;
        dm.qryGeneric.ParamByName('nped').AsString    := cdsDocsNPED.AsString;
        dm.qryGeneric.ParamByName('mod').AsString     := cdsDocsMOD.AsString;//copy(cbModeloNf.Text,1,2);
        if cdsDocsMOD.AsString = '55' then
          dm.qryGeneric.ParamByName('serie').AsString   := '001';//cdsDocsSERIE.AsString;
        dm.qryGeneric.ParamByName('demi').asDateTime  := cdsDocsDEMI.AsDateTime;
        dm.qryGeneric.ParamByName('vbc').AsFloat      := cdsDocsVBC.AsFloat;
        dm.qryGeneric.ParamByName('vicms').AsFloat    := cdsDocsVICMS.AsFloat;
        dm.qryGeneric.ParamByName('vbcst').asFloat    := cdsDocsVBCST.AsFloat;
        dm.qryGeneric.ParamByName('vst').asFloat      := cdsDocsVST.AsFloat;
        dm.qryGeneric.ParamByName('vprod').asFloat    := cdsDocsVPROD.AsFloat;

        dm.qryGeneric.ParamByName('vnf').asFloat      := cdsDocsVNF.AsFloat;

        dm.qryGeneric.ParamByName('ncfop').asString   := cdsDocsNCFOP.AsString;
        dm.qryGeneric.ParamByName('npeso').asFloat    := cdsDocsNPESO.AsFloat;

        dm.qryGeneric.ParamByName('tpdoc').asString   := cdsDocsTPDOC.AsString;

        dm.qryGeneric.ParamByName('descoutros').asString := cdsDocsDESCOUTROS.AsString;
        dm.qryGeneric.ExecSQL;

        cdsDocs.Next;
      end;
    end;

 except
   on e: Exception do begin
     avisar('Erro ao salvar documento originário'+#13#10+e.Message);
   end;
 end;
end;

function TfrmCriaCTe.formaEmissao: Integer;
begin
  Result := 0;
  
  if      cbFormaemis.ItemIndex = 0 then   Result := 1
  else if cbFormaemis.ItemIndex = 1 then   Result := 5
  else if cbFormaemis.ItemIndex = 2 then   Result := 7
  else if cbFormaemis.ItemIndex = 3 then   Result := 8;
end;

procedure TfrmCriaCTe.GridCTesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  if (Column.Field.FieldName = 'STATUS') then
    begin
      GridCTes.Canvas.Font.Style  := [fsBold];
      GridCTes.Canvas.Brush.Color := clBlack;

     if cdsCtesSTATUS.AsString = '100' then  //autorizado
       GridCTes.Canvas.Font.Color := $0000B900
     else if cdsCtesSTATUS.AsString = '101' then //cancelado
       GridCTes.Canvas.Font.Color := clRed
     else if cdsCtesSTATUS.AsString = '321' then //pendente para envio
       GridCTes.Canvas.Font.Color := $00FCB16D
     else if cdsCtesSTATUS.AsString = '102' then
       GridCTes.Canvas.Font.Color := $0000E6E6
     else
       GridCTes.Canvas.Font.Color := clWhite;
       
    end;
  if cdsCtesCARGA.AsString = 'X' then
    begin
      GridCTes.Canvas.Font.Color := $00FFFDF9;
      GridCTes.Canvas.Brush.Color := $00AD8361;
      GridCTes.DefaultDrawDataCell(Rect, GridCTes.columns[datacol].field, State);
    end;

    if gdSelected in State then
      GridCTes.Canvas.Font.Color := clSilver;

     GridCTes.Canvas.FillRect(Rect);
     GridCTes.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TfrmCriaCTe.GridCTesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Space then
    begin

      cdsCtes.Edit;
      
      if (cdsCtesCARGA.AsString <> 'X') and (cdsCtesSTATUS.AsString <> '100') then
        cdsCtesCARGA.AsString := 'X'
      else
        cdsCtesCARGA.AsString := '';

      cdsCtes.Post;
    end;
end;

function TfrmCriaCTe.Verifica: Boolean;
begin
  Result := false;

  cdsCtes.First;
  while not cdsCtes.Eof do begin
    if cdsCtesCARGA.AsString = 'X' then
     begin
      Result := True;
      cdsCtes.Last;
     end;
     cdsCtes.Next;
  end;
end;

function TfrmCriaCTe.CarregaEnvia: Boolean;
var pos :integer;
begin
 try
   cdsRelatorio.Close;
   if not cdsRelatorio.Active then
    cdsRelatorio.CreateDataSet;

   cdsCtes.Filtered := false;
   cdsCtes.Filter   := 'CARGA = ''X''';
   cdsCtes.Filtered := true;
   cdsCtes.First;

   while not cdsCtes.Eof do begin
     ACBrCTe1.Conhecimentos.Clear;
     GerarCTe;

     if(dm.Parametro.TipoAmbiente = cdsCtesTPAMB.AsInteger) then
       begin
                                              //imprimir false ou true
          if ACBrCTe1.Enviar(cdsCtesCOD_LOTE.AsInteger, false) then // atualmente é enviado apenas 1 CTe por Lote
            begin
              salvaRetCte(false);  //retorno cte
              salvaRetLote(false); //retorno lote
              salvaXML;

             if Ini.ReadString('CONFIG_CTE','IMP_AUT','') = 'S' then
               imprimeDacte(cdsCtesNUMCTE.asString);

             if Ini.ReadString('CONFIG_CTE','REL_AUT','') = 'S' then
              begin
               cdsRelatorio.Append;
               cdsRelatorioNUMCTE.AsInteger := cdsCtesNUMCTE.AsInteger;
               cdsRelatorio.Post;
              end;
            end;

       end
     else
       begin
         avisar('Ambiente do webservice difere do ambiente de criação da CT-e!');

         pos := cdsCtes.RecNo;
         cdsCtes.Edit;
         cdsCtesCARGA.AsString := '';
         cdsCtes.Post;

         cdsCtes.Filtered := false;
         cdsCtes.Filter   := 'CARGA = ''X''';
         cdsCtes.Filtered := true;
         cdsCtes.RecNo := pos;
       end;

     cdsCtes.Next;
   end;



   result := true;

 Except
   on e: Exception do begin
     trataMsgRetorno(e.Message);
     raise Exception.create('Atenção! Falha no envio.'+#13+' Maiores informações consultar Log [ F10 ]');
   end;
 end;

  if (Ini.ReadString('CONFIG_CTE','REL_AUT','') = 'S') and (ACBrCTe1.WebServices.Retorno.cStat = 100) then
    begin
      geraRelatorio;
    end;
end;

procedure TfrmCriaCTe.criaLote;
begin
 try
   dm.qryGeneric.Close;
   dm.qryGeneric.SQL.Text := 'insert into cte_lote(CODIGO, CODSTAT, STATUS, TPEMIS) VALUES(0, :cStat, :stat, :tpEmis)';
   dm.qryGeneric.ParamByName('cStat').AsString := '321';
   dm.qryGeneric.ParamByName('stat').AsString := 'Pendente para envio';
   dm.qryGeneric.ParamByName('tpEmis').AsString := IntToStr(formaEmissao);
   dm.qryGeneric.ExecSQL;
 except
   on e: Exception do begin
     avisar('Erro ao criar Lote'+#13#10+e.Message);
   end;
 end;
end;

procedure TfrmCriaCTe.salvaRetLote(PConsulta:boolean);
var  CTeRetorno: TretEnvCTe;
begin
  CTeRetorno                := TretEnvCTe.Create;
  CTeRetorno.Leitor.Arquivo := ACBrCTe1.WebServices.Enviar.RetWS;
  CTeRetorno.LerXml;

  dm.qryGeneric.Close;
  dm.qryGeneric.SQL.Text := 'update cte_lote set codstat = :cStat, status = :stat, recibo = :rec'+
                            ' where codigo = :codLote';

  dm.qryGeneric.ParamByName('codLote').AsInteger := Self.cdsCtesCOD_LOTE.AsInteger;

  if (PConsulta)and(ACBrCTe1.WebServices.Consulta.cStat = 100) then begin
    dm.qryGeneric.ParamByName('cStat').AsString    := '103';
    dm.qryGeneric.ParamByName('stat').AsString     := 'Lote recebido com sucesso';
    dm.qryGeneric.ParamByName('rec').AsString      := '';
  end
  else begin
    dm.qryGeneric.ParamByName('cStat').AsString    := IntToStr(CTeRetorno.cStat);
    dm.qryGeneric.ParamByName('stat').AsString     := CTeRetorno.xMotivo;
    dm.qryGeneric.ParamByName('rec').AsString      := CTeRetorno.infRec.nRec;
  end;
  dm.qryGeneric.ExecSQL;

  FreeAndNil(CTeRetorno);
end;

procedure TfrmCriaCTe.salvaRetCte(PConsulta:boolean);
begin
  dm.qryGeneric.Close;
  dm.qryGeneric.SQL.Text := 'update cte set status = :stat, xmotivo = :xMot, nprot = :prot, dataemis = :dtEmi, tpamb = :tpamb, idchave = :chave '+
                            ' where numcte = :nrcte';

  dm.qryGeneric.ParamByName('nrcte').AsInteger  := self.cdsCtesNUMCTE.AsInteger;

  dm.qryGeneric.ParamByName('stat').AsString    := IfThen(PConsulta, intToStr(ACBrCTe1.WebServices.Consulta.cStat), IntToStr(ACBrCTe1.WebServices.Retorno.cStat));
  dm.qryGeneric.ParamByName('xmot').AsString    := IfThen(PConsulta, ACBrCTe1.WebServices.Consulta.XMotivo, ACBrCTe1.WebServices.Retorno.xMotivo);
  dm.qryGeneric.ParamByName('prot').AsString    := IfThen(PConsulta, ACBrCTe1.WebServices.Consulta.Protocolo, ACBrCTe1.WebServices.Retorno.Protocolo);
  dm.qryGeneric.ParamByName('chave').AsString   := IfThen(PConsulta, cdsCtesIDCHAVE.AsString, ACBrCTe1.WebServices.Retorno.ChaveCte);
  dm.qryGeneric.ParamByName('tpamb').AsInteger  := IfThen(PConsulta, cdsCtesTPAMB.AsInteger, dm.Parametro.TipoAmbiente);

  if (PConsulta) and (dm.qryGeneric.ParamByName('stat').AsString = '100') then
    dm.qryGeneric.ParamByName('dtEmi').AsDateTime :=  ACBrCTe1.WebServices.Consulta.DhRecbto
  else if not PConsulta then
    dm.qryGeneric.ParamByName('dtEmi').AsDateTime := ultimaEmissao;

  dm.qryGeneric.ExecSQL;

end;

procedure TfrmCriaCTe.cbTomadorChange(Sender: TObject);
begin
  if cbTomador.ItemIndex = 4 then
    gbTomador.Enabled := true
  else
    gbTomador.Enabled := false;
end;

procedure TfrmCriaCTe.cbExpedidorChange(Sender: TObject);
begin
  if cbExpedidor.ItemIndex = 1 then
    gbExpedidor.Enabled := true
  else
    gbExpedidor.Enabled := False;
end;

procedure TfrmCriaCTe.cbRecebedorChange(Sender: TObject);
begin
  if cbRecebedor.ItemIndex = 1 then
    gbRecebedor.Enabled := true
  else
    gbRecebedor.Enabled := False;
end;

procedure TfrmCriaCTe.armazenaIDs;
begin
  if not assigned(listaNotas) then
  begin
    if not idNotas.Active then
      idNotas.CreateDataSet;

    idNotas.Append;
    idNotasID.AsString      := SomenteNumeros( ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID );
    idNotasDTEMI.AsDateTime := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi;
    idNotasVNF.AsFloat      := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
    idNotas.Post;

    PageControl2.ActivePageIndex := 10;
    btninc.Click;
    DBEdtChave.Text     := SomenteNumeros( ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID );
    dtDataEmis.DateTime := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi;
    DBEdtVlrNota.Text   := FloatToStr( ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF);
    btSalv.Click;
  end
  else
  begin
    idNotas.Close;

    if not idNotas.Active then
      idNotas.CreateDataSet;

    listaNotas.First;
    while not listaNotas.Eof do begin
      idNotas.Append;
      idNotasID.AsString := listaNotas.fieldByName('ID').AsString;
      idNotasDTEMI.AsDateTime := listaNotas.fieldByNAme('DTEMI').AsDateTime;
      idNotasVNF.AsFloat      := listaNotas.fieldByName('TOTNF').AsFloat;
      idNotas.Post;

      listaNotas.Next;
    end;
  end;
end;

procedure TfrmCriaCTe.atualizaCampos;
var tecla :Char;
begin
  //Aba dados Cte
  edtNumero.Text                         := cdsCtesNUMCTE.AsString;
  edtData.date                           := cdsCtesDATA.AsDateTime;
  edtRNTRC.Text                          := cdsCtesRNTRC.AsString;
  cbLota.itemIndex                       := cdsCtesLOTA.AsInteger;
  cbRetira.ItemIndex                     := cdsCtesRETIRA.AsInteger;
  cbForPag.ItemIndex                     := cdsCtesFORPAG.AsInteger;
  cbModal.ItemIndex                      := cdsCtesMODDOC.AsInteger;
  cbTipoCte.ItemIndex                    := cdsCtesTPCTE.AsInteger;
  cbTipoImp.ItemIndex                    := cdsCtesTPIMP.AsInteger - 1;
  cbTipoServ.ItemIndex                   := cdsCtesTPSERV.AsInteger;

  if cdsCtesNUM_CTE_ANULADO.AsInteger > 0 then begin
    buscaCtes1.numCte := cdsCtesNUM_CTE_ANULADO.AsInteger;
    buscaCtes1Exit(nil);
  end;

  case  cdsCtesTPEMIS.AsInteger of
   1: cbFormaemis.ItemIndex := 0;  //normal
   5: cbFormaemis.ItemIndex := 1;  //complemento
   7: cbFormaemis.ItemIndex := 2;  //anulacao de valores
   8: cbFormaemis.ItemIndex := 3;  //substituicao
  end;
  cbTipoCteChange(nil);

  frameBuscaCFOP1.edCFOP.text            := cdsCtesCFOP.AsString;
  frameBuscaCFOP1.edCFOPKeyPress(self, tecla);
  
  edtNatOp.Text                          := frameBuscaCFOP1.NatOp.natOp;

  puxaEmitente;

  frameCidOrig.codMun                    := cdsCtesCMUNINI.AsString;

  frameCidDest.codMun                    := cdsCtesCMUNFIM.AsString;

  edtFuncEmiss.Text                      := cdsCtesXEMI.AsString;
  edtProdPredo.Text                      := cdsCtesPROPRED.AsString;
  edtCaracTrans.Text                     := cdsCtesXCARACAD.AsString;
  edtCaracServ.Text                      := cdsCtesXCARACSER.AsString;
  edtVlrMerc.Text                        := cdsCtesVMERC.AsString;

  //dados remetente
  edtRemCNPJ.Text                        := cdsCtesCNPJREM.AsString;
  edtRemIE.Text                          := cdsCtesIEREM.AsString;
  edtRemRazao.Text                       := cdsCtesRAZREM.AsString;
  edtRemFantasia.Text                    := cdsCtesFANREM.AsString;
  edtRemFone.Text                        := cdsCtesFONEREM.AsString;
  edtRemCEP.Text                         := cdsCtesCEPREM.AsString;
  edtRemLogradouro.Text                  := cdsCtesLOGRAREM.AsString;
  edtRemNumero.Text                      := cdsCtesNUMEROREM.AsString;
  edtRemBairro.Text                      := cdsCtesBAIRROREM.AsString;
  frameCidadeRem.edCodigoMunicipio.Text  := cdsCtesCMUNREM.AsString;
  frameCidadeRem.edCidade.Text           := cdsCtesXMUNREM.AsString;
  frameCidadeRem.edestado.Text           := cdsCtesUFREM.AsString;

  //dados destinatario
  edtDestCNPJ.Text                       := cdsCtesCNPJDES.AsString;
  edtDestIE.Text                         := cdsCtesIEDES.AsString;
  edtDestRazao.Text                      := cdsCtesRAZDES.AsString;
  edtDestFantasia.Text                   := cdsCtesFANDES.AsString;
  edtDestFone.Text                       := cdsCtesFONEDES.AsString;
  edtDestCEP.Text                        := cdsCtesCEPDES.AsString;
  edtDestLogradouro.Text                 := cdsCtesLOGRADES.AsString;
  edtDestNumero.Text                     := cdsCtesNUMERODES.AsString;
  edtDestBairro.Text                     := cdsCtesBAIRRODES.AsString;
  frameCidadeDest.edCodigoMunicipio.Text := cdsCtesCMUNDES.AsString;
  frameCidadeDest.edCidade.Text          := cdsCtesXMUNDES.AsString;
  frameCidadeDest.edestado.Text          := cdsCtesUFDES.AsString;
  edtDestEmail.Text                      := cdsCtesEMAILDES.AsString;

  // aba serviços e impostos
  edValorPrestacao.Value                 := cdsCtesVTPREST.AsFloat;
  edValorReceber.Value                   := cdsCtesVREC.AsFloat;

  dm.qryGeneric.Close;
  dm.qryGeneric.SQL.Text := 'select * from componente_valor_prestacao where num_cte = :numcte';
  dm.qryGeneric.ParamByName('numcte').AsInteger := cdsCtesNUMCTE.AsInteger;
  dm.qryGeneric.Open;

  dm.qryGeneric.First;
  while not dm.qryGeneric.Eof do begin

    if not cdsCompPrestacao.Active then cdsCompPrestacao.CreateDataSet;

    cdsCompPrestacao.Append;
    cdsCompPrestacaoCODIGO.AsInteger          := dm.qryGeneric.fieldByName('codigo').AsInteger;
    cdsCompPrestacaoNUM_CTE.AsInteger         := cdsCtesNUMCTE.AsInteger;
    cdsCompPrestacaoVALOR_COMPONENTE.AsString := dm.qryGeneric.fieldByName('valor_componente').AsString;
    cdsCompPrestacaoNOME_COMPONENTE.AsString  := dm.qryGeneric.fieldByName('nome_componente').AsString;
    cdsCompPrestacao.Post;

    dm.qryGeneric.Next;
  end;

  cbST.ItemIndex                         := CBox_indice_pelo_texto(cbST, trim(cdsCtesCST.asString));
  edtBaseCalculo.Value                   := cdsCtesVBC.AsFloat;
  edtPerIcms.Value                       := cdsCtesPICMS.AsFloat;
  edtVlrIcms.Value                       := cdsCtesVICMS.AsFloat;
  edtRBCalc.Value                        := cdsCtesPREDBC.AsFloat;
  edtVCred.Value                         := cdsCtesVCRED.AsFloat;

  // aba informações carga
  edtProdPredo.Text                      := cdsCtesPROPRED.AsString;
  edtOutCaracProd.Text                   := cdsCtesXOUTCAT.AsString;

  { * * * * * * * * * * * * * * * * * * * * DADOS DO VEÍCULO * * * * * * * * * * * * * * * * * * * *}
  dm.qryGeneric.Close;
  dm.qryGeneric.SQL.Text := 'select * from veiculos where codigo = :cod';
  dm.qryGeneric.ParamByName('cod').AsInteger := cdsCtesCODIGO_VEICULO.AsInteger;
  dm.qryGeneric.Open;

  FrameVeiculo1.edCodigo.Text            := dm.qryGeneric.fieldByName('CODIGO').AsString;
  edtPlaca.Text                          := dm.qryGeneric.fieldByName('PLACA').AsString;
  edtRenavam.Text                        := dm.qryGeneric.fieldByName('RENAVAM').AsString;
  cbUf.Text                              := dm.qryGeneric.fieldByName('UF_VEICULO').AsString;
  edtTara.Value                          := dm.qryGeneric.fieldByName('TARA').AsInteger;
  edtCapacidadeKG.AsInteger              := dm.qryGeneric.fieldByName('CAPACIDADE_KG').AsInteger;
  edtCapacidadeM3.AsInteger              := dm.qryGeneric.fieldByName('CAPACIDADE_M3').AsInteger;
  cbTipoVeiculo.ItemIndex                := dm.qryGeneric.fieldByName('TIPO_VEICULO').AsInteger;
  cbTipoRodado.ItemIndex                 := dm.qryGeneric.fieldByName('TIPO_RODADO').AsInteger;
  cbTipoCarroceria.ItemIndex             := dm.qryGeneric.fieldByName('TIPO_CARROCERIA').AsInteger;
  rgVeiculoProprio.ItemIndex             := IfThen( dm.qryGeneric.fieldByName('veiculo_proprio').AsString = 'S', 0, 1);
  edtCnpjPropVeic.Text                   := dm.qryGeneric.fieldByName('CPFCNPJ').AsString;
  edtIEPropVeic.Text                     := dm.qryGeneric.fieldByName('IE').AsString;
  cbUFPropVeic.ItemIndex                 := CBox_indice_pelo_texto(cbUFPropVeic, trim(dm.qryGeneric.fieldByName('UF').AsString));
  edtNomePropVeic.Text                   := dm.qryGeneric.fieldByName('NOME_PROPRIETARIO').AsString;
  edtRNTRCPropVeic.Text                  := dm.qryGeneric.fieldByName('RNTRC').AsString;
  cbTipoPropVeic.ItemIndex               := StrToIntDef( dm.qryGeneric.fieldByName('TIPO_PROPRIETARIO').AsString, -1);

  dm.qryGeneric.Close;
  dm.qryGeneric.SQL.Text := 'select * from cteqtdeCarga where numcte = :numcte';
  dm.qryGeneric.ParamByName('numcte').AsInteger := cdsCtesNUMCTE.AsInteger;
  dm.qryGeneric.Open;

  dm.qryGeneric.First;
  while not dm.qryGeneric.Eof do begin

    if not cdsUnidCarga.Active then cdsUnidCarga.CreateDataSet;

    cdsUnidCarga.Append;
    cdsUnidCargaCODIGO.AsInteger         := dm.qryGeneric.fieldByName('codigo').AsInteger;
    cdsUnidCargaNUMCTE.AsInteger         := cdsCtesNUMCTE.AsInteger;
    cdsUnidCargaCODUNID.AsString         := dm.qryGeneric.fieldByName('codunid').AsString;
    cdsUnidCargaTPMEDIDA.AsString        := dm.qryGeneric.fieldByName('tpmedida').AsString;
    cdsUnidCargaQTDECARGA.AsFloat        := dm.qryGeneric.fieldByName('qtdecarga').asFloat;
    cdsUnidCargaDESC_UNID.AsString       := CBox_texto_pelo_indice(cbUndMed, dm.qryGeneric.fieldByName('codUnid').AsInteger );
    cdsUnidCarga.Post;

    dm.qryGeneric.Next;
  end;

  mObs.Text            := cdsCtesXOBS.AsString;

  CdsDocs.Close;
  qryDoc.ParamByName('nrcte').AsInteger := cdsCtesNUMCTE.AsInteger;
  cdsDocs.Open;

  dtDataEmis.DateTime := cdsDocsDEMI.AsDateTime;
  
  if cdsDocs.fieldByName('mod').AsString = '01' then
    cbModeloNf.ItemIndex := 0
  else if cdsDocs.fieldByName('mod').AsString = '04' then
    cbModeloNf.ItemIndex := 1;

  if cdsDocs.fieldByName('tpdoc').AsString = '01' then  //nfe
    begin
      RGTpDoc.ItemIndex := 0;
    end
  else if cdsDocs.fieldByName('tpdoc').AsString = '02' then //nf
    begin
      RGTpDoc.ItemIndex := 1;
    end
  else if cdsDocs.fieldByName('tpdoc').AsString = '00' then //Declaração
    begin
      cbtpdoc.ItemIndex := 0;
    end
  else if cdsDocs.fieldByName('tpdoc').AsString = '10' then //Dutoviário
    begin
      cbtpdoc.ItemIndex := 1;
    end
  else if cdsDocs.fieldByName('tpdoc').AsString = '99' then //Outros
    begin
      RGTpDoc.ItemIndex := 2;
      cbtpdoc.ItemIndex := 2;
    end;

  RGTpDocClick(self);

end;

procedure TfrmCriaCTe.ts1Exit(Sender: TObject);
begin
  if not (incluindo) and not (cdsCtes.IsEmpty) then begin
    limpaCampos;
    atualizaCampos;
  end;

end;

procedure TfrmCriaCTe.habilitaDesabilita(H_D :Boolean);
begin
  ts2.Enabled := H_D;
  ts3.Enabled := H_D;
  ts4.Enabled := H_D;
  ts5.Enabled := H_D;
  ts6.Enabled := H_D;
  ts7.Enabled := H_D;
  ts8.Enabled := H_D;
  ts9.Enabled := H_D;
  ts10.Enabled := H_D;
  ts11.Enabled := H_D;

  self.btnEnviar.Enabled   := not H_D;
  self.btConsulta.Enabled  := not H_D;
  self.btnImprimir.Enabled := not H_D;
  self.btInutiliza.Enabled := not H_D;
  self.btCancela.Enabled   := not H_D;
  self.btnAlter.Enabled    := not H_D;
  self.btnIncluir.enabled  := not H_D;

  self.btnSalvar.Visible    := H_D;
  self.btnCancelaOp.Visible := H_D;
  self.shape5.Visible       := H_D;
end;

procedure TfrmCriaCTe.buscaCtes;
begin
  cdsCtes.Close;
  qryCtes.ParamByName('dti').AsDateTime := FramePeriodo21.eddi.dateTime;
  qryCtes.ParamByName('dtf').AsDateTime := FramePeriodo21.eddf.dateTime;
  qryCtes.ParamByName('stat').AsInteger := 0;

  if cbStatus.ItemIndex > 0 then
    begin
      if cbStatus.ItemIndex = 1 then
        qryCtes.ParamByName('stat').AsInteger := strToInt('321')
      else if cbStatus.ItemIndex = 2 then
        qryCtes.ParamByName('stat').AsInteger := strToInt('100')
      else if cbStatus.ItemIndex = 3 then
        qryCtes.ParamByName('stat').AsInteger := strToInt('101')
      else if cbStatus.ItemIndex = 1 then
        qryCtes.ParamByName('stat').AsInteger := strToInt('102');
    end;
    
  cdsCtes.Open;
end;

procedure TfrmCriaCTe.btbuscarClick(Sender: TObject);
begin
  buscaCtes;
end;

procedure TfrmCriaCTe.btConsultaClick(Sender: TObject);
begin
  if not cdsCtes.IsEmpty then
    ConsultaCte(true);

end;

procedure TfrmCriaCTe.consultaCte(informa_status: boolean);
var amb :TpcnTipoAmbiente;
begin
  amb := ACBrCTe1.Configuracoes.WebServices.Ambiente;

  case cdsCtesTPAMB.AsInteger of
   2: ACBrCTe1.Configuracoes.WebServices.Ambiente := taHomologacao;
   1: ACBrCTe1.Configuracoes.WebServices.Ambiente := taProducao;
  end;

  ACBrCTe1.Conhecimentos.Clear;

    GerarCTe;
    ACBrCTe1.Conhecimentos.Assinar;
    cdsCtes.Edit;
    cdsCtesIDCHAVE.AsString := copy(ACBrCTe1.Conhecimentos.Items[0].CTe.infCTe.ID,4,44);
    cdsCtes.Post;

  ACBrCTe1.WebServices.Consulta.CTeChave := cdsCtesIDCHAVE.AsString;
  ACBrCTe1.WebServices.Consulta.Executar;

  if (ACBrCTe1.WebServices.Consulta.cStat <> 600) then
    AtualizaPelaConsulta;

  if informa_status then begin
    if      ACBrCTe1.WebServices.Consulta.cStat = 100 then   avisar('100 - Autorizado o uso do CT-e')
    else if ACBrCTe1.WebServices.Consulta.cStat = 101 then   avisar('101 - Cancelamento de CT-e homologado')
    else if ACBrCTe1.WebServices.Consulta.cStat = 600 then   avisar('CT-e não consta na base de dados da SEFAZ');
  end;

  ACBrCTe1.Configuracoes.WebServices.Ambiente := amb;
  ACBrCTe1.Conhecimentos.Clear;
end;

procedure TfrmCriaCTe.btInutilizaClick(Sender: TObject);
begin
 InutilizarCte;
end;

procedure TfrmCriaCTe.InutilizarCte;
begin
  frmInutilizaCte := TfrmInutilizaCte.create(Self);

  if frmInutilizaCte.Showmodal = MrOk then
   Begin

       ACBrCTe1.WebServices.Inutiliza(edtEmitCNPJ.Text, Trim(frmInutilizaCte.memoJust.Text), frmInutilizaCte.edtAno.AsInteger,
                                    frmInutilizaCte.edtModelo.AsInteger, frmInutilizaCte.edtSerie.AsInteger,
                                    frmInutilizaCte.edtNumIni.AsInteger, frmInutilizaCte.edtNumFin.AsInteger);

       dm.qryGeneric.Close;                             
       dm.qryGeneric.SQL.Text := 'update cte set status = ''102'', xmotivo = ''Inutilizacao de numero homologado'' '+
                                 'where numcte >= :nini and numcte <= :nfim';
       dm.qryGeneric.ParamByName('nini').AsInteger := frmInutilizaCte.edtNumIni.AsInteger;
       dm.qryGeneric.ParamByName('nfim').AsInteger := frmInutilizaCte.edtNumFin.AsInteger;
       dm.qryGeneric.ExecSQL;

       avisar('CT-es de número '+frmInutilizaCte.edtNumIni.Text+' a '+frmInutilizaCte.edtNumFin.Text+' inutilizados com sucesso!');

   end;
  frmInutilizaCte.Release;

end;

procedure TfrmCriaCTe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    btbuscar.Click
  else if Key = VK_escape then
    Self.close
  else if (Key = VK_F3) and (btnIncluir.Enabled) then
    btnIncluir.Click
  else if (Key = VK_F4) and (btnsalvar.Enabled) then
    btnAlter.Click
  else if (Key = VK_F5) and (btnenviar.Enabled) then
    btnenviar.Click
  else if (Key = VK_F6) and (btnImprimir.Enabled) then
    btnImprimir.Click
  else if (Key = VK_F7) and (btInutiliza.Enabled) then
    btInutiliza.Click
  else if (Key = VK_F8) and (btCancela.Enabled) then
    btCancela.Click
  else if (Key = VK_F9) and (btConsulta.Enabled) then
    btConsulta.Click
  else if Key = VK_Return then
    Press(VK_TAB)
  else if Key = VK_F10 then
    begin
      frmLog := TfrmLog.create(self);
      frmLog.preencheLog(m100);
      frmLog.ShowModal;
      frmLog.Release;
      frmLog := nil;
    end
  else if key = vk_Up then begin
    if not (ActiveControl is TDBMarcianoGrid) and  not (ActiveControl is TComboBox) and not (ActiveControl is TDBGrid) then
      PageControl2.SetFocus;
  end
  else if (key = VK_Down) then begin
    if (ActiveControl = PageControl2) then
      THackWinControl(PageControl2.ActivePage).SelectFirst;
  end;
end;

procedure TfrmCriaCTe.btCancelaClick(Sender: TObject);
begin
  try
    cancelarCte;
  except
    on e: Exception do
     begin
        Avisar(e.Message);
        FimAguarda;
     end;
  end;
end;

procedure TfrmCriaCTe.limpaCampos;
begin
  frameCidDest.edCidade.Text := '';
  frameCidDest.edCodigoMunicipio.Text := '0';
  edtFuncEmiss.Text      := '';
  edtCaracTrans.Text     := '';
  edtCaracServ.Text      := '';
  edtVlrMerc.Text        := '';
  cbFormaemis.ItemIndex  := 0;
  buscaCtes1.limpa;
  edtChaveCteAnulacao.Clear;

  if Ini.ReadString('CONFIG_CTE','LOTA','') = 'S' then
    cbLota.ItemIndex := 1
  else
    cbLota.ItemIndex := 0;

  edtEmitCNPJ.Text       := '';
  edtEmitIE.Text         := '';
  edtEmitRazao.Text      := '';
  edtEmitFantasia.Text   := '';
  edtEmitFone.Text       := '';
  edtEmitCEP.Text        := '';
  edtEmitLogradouro.Text := '';
  edtEmitNumero.Text     := '';
  edtEmitBairro.Text     := '';
  frameCidadeEmit.edCodigoMunicipio.Text := '0';

  edtRemCNPJ.Text        := '';
  edtRemIE.Text          := '';
  edtRemRazao.Text       := '';
  edtRemFantasia.Text    := '';
  edtRemFone.Text        := '';
  edtRemCEP.Text         := '';
  edtRemLogradouro.Text  := '';
  edtRemNumero.Text      := '';
  edtRemBairro.Text      := '';
  frameCidadeRem.edCodigoMunicipio.Text := '0';
  FrameClienteReme.edCodigo.Clear;

  edtDestCNPJ.Text       := '';
  edtDestIE.Text         := '';
  edtDestRazao.Text      := '';
  edtDestFantasia.Text   := '';
  edtDestFone.Text       := '';
  edtDestCEP.Text        := '';
  edtDestLogradouro.Text := '';
  edtDestNumero.Text     := '';
  edtDestBairro.Text     := '';
  frameCidadeDest.edCodigoMunicipio.Text := '0';
  frameClienteDest.edCodigo.Clear;

  cdsDocs.Close;
  edValorPrestacao.Clear;
  edValorReceber.Clear;
  edtBaseCalculo.Clear;
  edtPerIcms.Clear;
  edtVlrIcms.Clear;
  edtRBCalc.Clear;
  edtVCred.Clear;
  cbST.ItemIndex := 0;

  {edtPlaca.Clear;
  edtRenavam.Clear;
  cbUf.ItemIndex := -1; }

  edtOutCaracProd.Clear;
  edtQtdCarga.Value  := 0;
  cbTpMed.ItemIndex  := 0;
  cbUndMed.ItemIndex := 1;
  if cdsUnidCarga.Active then     cdsUnidCarga.EmptyDataSet;
  if cdsCompPrestacao.Active then cdsCompPrestacao.EmptyDataSet;

  edtCodseg.Text     := '0';
  edtNomeSeg.Text    := '';
  edtNApolice.Text   := '';
  edtNAverbacao.Text := '';
end;

procedure TfrmCriaCTe.frameCidOrigSpbBuscaClick(Sender: TObject);
begin
  frameCidOrig.SpbBuscaClick(Sender);
  if Trim(frameCidOrig.edCidade.Text) <> '' then
    frameCidDest.edCodigoMunicipio.SetFocus;
end;

procedure TfrmCriaCTe.salvaRetCancel;
var memo :TMemo;
begin

  consultaCte(false);
                                                        
  try
    memo := TMemo.Create(self);
    memo.Text := ACBrCTe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.XML;

    if not DirectoryExists(PathSis+'\XML\Cancelamento') then
      CreateDir(PathSis+'\XML\Cancelamento');

    memo.Lines.SaveToFile(PathSis+'\XML\Cancelamento\CTe_Cancelada-'+cdsCtesNUMCTE.AsString+'.xml');

  finally
    FreeAndNil( memo );
  end;
end;

procedure TfrmCriaCTe.salvaQtdCarga;
var numCte :integer;
begin
 try
   if (cdsUnidDeletada.Active) and not(cdsUnidDeletada.IsEmpty) then
     Remove_unidades_deletadas;

   dm.qryGeneric.Close;
   dm.qryGeneric.SQL.Text := 'select gen_id(GEN_CTE_ID, 0) as cod from rdb$database';
   dm.qryGeneric.Open;
   numCte := dm.qryGeneric.fieldByName('cod').AsInteger;

   dm.qryGeneric.Close;
   dm.qryGeneric.SQL.Text := 'update or insert into CTEQTDECARGA values (:codigo, :numcte, :codunid, :tpmedida, :qtdeCarga)';

   cdsUnidCarga.First;
   while not cdsUnidCarga.Eof do begin
      dm.qryGeneric.ParamByName('codigo').AsInteger    := cdsUnidCargaCODIGO.AsInteger;

      if edtNumero.Text = '0' then
        dm.qryGeneric.ParamByName('numcte').AsInteger          := numCte
      else
        dm.qryGeneric.ParamByName('numcte').AsInteger          := cdsCtesNUMCTE.AsInteger;

      dm.qryGeneric.ParamByName('codunid').AsString    := cdsUnidCargaCODUNID.AsString;
      dm.qryGeneric.ParamByName('tpmedida').AsString   := cdsUnidCargaTPMEDIDA.AsString;
      dm.qryGeneric.ParamByName('qtdeCarga').AsFloat   := cdsUnidCargaQTDECARGA.AsFloat;

      dm.qryGeneric.ExecSQL;

      cdsUnidCarga.next;
   end;

 except
   avisar('Erro ao salvar informações da carga');
 end;

end;

procedure TfrmCriaCTe.btnImprimirClick(Sender: TObject);
begin
  frmImpressaoDacte := TfrmImpressaoDacte.Create(self);
  frmImpressaoDacte.ShowModal;
  frmImpressaoDacte.Release;
  //imprimeDacte('');
end;

procedure TfrmCriaCTe.imprimeDacte(chave :String);
var cte :string;
begin
  cte := '';

  if chave = '' then
   begin
     OpenDialog1.Title := 'Selecione o CTe';
     OpenDialog1.DefaultExt := '*.xml';
     OpenDialog1.Filter := 'Arquivos CTe (*.xml)|*.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
     OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;
     ACBrCTeDACTeRL1.MostrarPreview := True;
     if OpenDialog1.Execute then
       cte := OpenDialog1.FileName;
   end
  else
   begin
     cte := ExtractFilePath(Application.ExeName)+'XML\CTe-'+ chave +'.xml';
     ACBrCTeDACTeRL1.MostrarPreview := false;
   end;

  if cte <> '' then
   begin
     ACBrCTe1.Conhecimentos.Clear;
     ACBrCTe1.Conhecimentos.LoadFromFile(cte);
     self.ACBrCTeDACTeRL1.Logo := dm.Parametro.CaminhoLogo;
     ACBrCTe1.Conhecimentos.Imprimir;
   end;

end;

procedure TfrmCriaCTe.geraRelatorio;
var condicao :String;
begin
  condicao := 'where cte.numcte in (';

  cdsRelatorio.First;
  while not cdsRelatorio.Eof do begin
    if condicao = 'where cte.numcte in (' then
      condicao := condicao + cdsRelatorioNUMCTE.AsString
    else
      condicao := condicao + ',' + cdsRelatorioNUMCTE.AsString;

    cdsRelatorio.Next;
  end;
  condicao := condicao + ')';

  fortesRelCTes := TfortesRelCTes.Create(Self);
  
  fortesRelCTes.condicaoImpressao := condicao;
  fortesRelCTes.ordem             := 'NumCte';
  fortesRelCTes.tipo              := '0'; //0-analitico, 1-sintetico
  fortesRelCTes.dataInicial       := cdsCtesDATA.AsDateTime;
  fortesRelCTes.dataFinal         := cdsCtesDATA.AsDateTime;
  fortesRelCTes.ExecutaReport;
  fortesRelCTes.Release;

end;

function TfrmCriaCTe.atualizaBDRemoto :Boolean;
begin
  result := false;
  try
    dm.qryGeneric.Database    := dm.DBRemoto;
    dm.qryGeneric.Transaction := dm.TransactionR;
    dm.qryGeneric.Close;
    dm.qryGeneric.SQL.Text    := 'update nfe set nfe.ctecriado = ''S'' where nfe.codigo in('+ultNFeUsada+')';

    dm.qryGeneric.ExecSQL;

    result := true;
  finally
    dm.qryGeneric.Database    := dm.Database;
    dm.qryGeneric.Transaction := dm.Transaction;
  end;
end;

procedure TfrmCriaCTe.cdsCtesAfterScroll(DataSet: TDataSet);
begin

  lbAmb.Font.Color := IfThen(cdsCtesTPAMB.AsInteger = 1, clGreen, clBlue);
  lbAmb.Caption    := IfThen(cdsCtesTPAMB.AsInteger = 1, 'Produção', 'Homologação');

  btnAlter.Enabled     := (cdsCtesSTATUS.AsString = '321');
  btnEnviar.Enabled    := (cdsCtesSTATUS.AsString = '321');
  btnImprimir.Enabled  := (cdsCtesSTATUS.AsString = '100');
  btCancela.Enabled    := (cdsCtesSTATUS.AsString = '100');
end;

procedure TfrmCriaCTe.SpeedButton1Click(Sender: TObject);
begin
  frmConfigCte := TfrmConfigCte.create(self);
  frmConfigCte.ShowModal;
  frmConfigCte.Release;
  frmConfigCte := nil;

  case dm.Parametro.TipoAmbiente of
   2: ACBrCTe1.Configuracoes.WebServices.Ambiente := taHomologacao;
   1: ACBrCTe1.Configuracoes.WebServices.Ambiente := taProducao;
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

function TfrmCriaCTe.persisteSeImp: Boolean;
begin
  Result := false;

  if cbSt.ItemIndex <= 0 then
    begin
      avisar('A ST não foi informada!');
      PageControl2.ActivePageIndex := 8;

      if cbST.Enabled then
        cbST.SetFocus
      else
        edValorPrestacao.SetFocus;
         
    end
  else if (copy(cbSt.text,1,2) = '20') and (edtRBCalc.Value <= 0) then
    begin
      avisar('O percentual de redução de base deve ser informado para o CST selecionado!');
      edtRBCalc.SetFocus;
    end
  else if (edValorPrestacao.Value <= 0) and (cbTipoCte.ItemIndex <> 1) then
    begin
      avisar('O valor da prestação não foi informado!');
      PageControl2.ActivePageIndex := 8;
      edValorPrestacao.SetFocus;
    end
  else if edValorReceber.Value <= 0 then
    begin
      avisar('O valor a receber não foi informado!');
      PageControl2.ActivePageIndex := 8;
      edValorReceber.SetFocus;
    end
  else
    Result := true;
end;

function TfrmCriaCTe.persisteInfCarga: Boolean;
begin
  Result := false;

  if not(cdsUnidCarga.Active) or (cdsUnidCarga.IsEmpty) then
    begin
      avisar('A quantidade de carga não foi informada!');
      PageControl2.ActivePageIndex := 9;
      edtQtdCarga.SetFocus;
    end
  else if edtVlrMerc.Value <= 0 then
    begin
      avisar('O valor da mercadoria não foi informado!');
      PageControl2.ActivePageIndex := 9;
      edtVlrMerc.SetFocus;
    end
  else if ((incManu)or(RGTipoInclusao.ItemIndex = 1))and(cdsDocs.IsEmpty) then
    begin
      avisar('Favor preencher as informações do documento originário!');
      btnInc.Click;
    end
  else if (edtCodSeg.text <> '0')and((trim(edtNomeSeg.Text) = '')or(trim(edtNApolice.Text) = '')) then
    begin
      avisar('Favor preencher as informações da seguradora!');
      PageControl2.ActivePageIndex := 9;
      edtCodSeg.SetFocus;
    end
  else
    Result := true;
end;

procedure TfrmCriaCTe.preencheCliDest;
begin
  if FrameClienteDest.campos = nil then
    exit;

  edtDestRazao.Text      := FrameClienteDest.campos.Fields[1].AsString;
  edtDestFantasia.Text   := FrameClienteDest.campos.Fields[2].AsString;
  edtDestCnpj.Text       := FrameClienteDest.campos.Fields[3].AsString;
  edtDestIE.Text         := FrameClienteDest.campos.Fields[4].AsString;

  if trim(FrameClienteDest.campos.Fields[5].AsString) <> '(  )    -' then
    edtDestFone.Text       := FrameClienteDest.campos.Fields[5].AsString
  else if trim(FrameClienteDest.campos.Fields[12].AsString) <> '(  )    -' then
    edtDestFone.Text       := FrameClienteDest.campos.Fields[12].AsString
  else if trim(FrameClienteDest.campos.Fields[13].AsString) <> '(  )    -' then
    edtDestFone.Text       := FrameClienteDest.campos.Fields[13].AsString;

  edtDestLogradouro.Text := FrameClienteDest.campos.Fields[6].AsString;
  edtDestNumero.Text     := FrameClienteDest.campos.Fields[7].AsString;
  edtDestBairro.Text     := FrameClienteDest.campos.Fields[8].AsString;
  edtDestCep.Text        := FrameClienteDest.campos.Fields[9].AsString;
  frameCidadeDest.codMun := FrameClienteDest.campos.Fields[10].AsString;
  edtDestEmail.Text      := FrameClienteDest.campos.Fields[11].AsString;
end;

procedure TfrmCriaCTe.preencheCliReme;
begin
  if FrameClienteReme.campos = nil then
    exit;

  edtRemRazao.Text      := FrameClienteReme.campos.Fields[1].AsString;
  edtRemFantasia.Text   := FrameClienteReme.campos.Fields[2].AsString;
  edtRemCnpj.Text       := FrameClienteReme.campos.Fields[3].AsString;
  edtRemIE.Text         := FrameClienteReme.campos.Fields[4].AsString;

  if trim(FrameClienteReme.campos.Fields[5].AsString) <> '(  )    -' then
    edtRemFone.Text       := FrameClienteReme.campos.Fields[5].AsString
  else if trim(FrameClienteReme.campos.Fields[12].AsString) <> '(  )    -' then
    edtRemFone.Text       := FrameClienteReme.campos.Fields[12].AsString
  else if trim(FrameClienteReme.campos.Fields[13].AsString) <> '(  )    -' then
    edtRemFone.Text       := FrameClienteReme.campos.Fields[13].AsString;

  edtRemLogradouro.Text := FrameClienteReme.campos.Fields[6].AsString;
  edtRemNumero.Text     := FrameClienteReme.campos.Fields[7].AsString;
  edtRemBairro.Text     := FrameClienteReme.campos.Fields[8].AsString;
  edtRemCep.Text        := FrameClienteReme.campos.Fields[9].AsString;
  frameCidadeRem.codMun := FrameClienteReme.campos.Fields[10].AsString;

end;

procedure TfrmCriaCTe.FrameClienteRemeedCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  FrameClienteReme.edCodigoKeyDown(Sender, Key, Shift);
  if Key = VK_return then
    preencheCliReme;
end;

procedure TfrmCriaCTe.FrameClienteRemeSpbBuscaClick(Sender: TObject);
begin
  FrameClienteReme.SpbBuscaClick(Sender);
  preencheCliReme;
end;

procedure TfrmCriaCTe.FrameClienteDestSpbBuscaClick(Sender: TObject);
begin
  FrameClienteDest.SpbBuscaClick(Sender);
  preencheCliDest;
end;

procedure TfrmCriaCTe.FrameClienteDestedCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  FrameClienteDest.edCodigoKeyDown(Sender, Key, Shift);
  if Key = VK_return then
    preencheCliDest;
end;

procedure TfrmCriaCTe.puxaEmitente;
begin
  edtEmitCNPJ.Text       := dm.Parametro.Cnpj;
  edtEmitIE.Text         := dm.Parametro.IE;
  edtEmitRazao.Text      := dm.Parametro.Raz;
  edtEmitFantasia.Text   := dm.Parametro.Fan;
  edtEmitFone.Text       := dm.Parametro.Fone;
  edtEmitCEP.Text        := retiraMascara(dm.Parametro.Cep);
  edtEmitLogradouro.Text := dm.Parametro.Ender;
  edtEmitNumero.Text     := intToStr(dm.Parametro.numero);
  edtEmitBairro.Text     := dm.Parametro.bairro;
  frameCidadeEmit.codMun := intToStr(dm.Parametro.CodMunicipio);

  frameCidOrig.codMun    := inttostr(dm.Parametro.CodMunicipio);

  if trim(dm.Parametro.CidadeOrig) <> '' then
    frameCidOrig.codMun := dm.Parametro.CidadeOrig;
end;

procedure TfrmCriaCTe.btCalculaClick(Sender: TObject);
begin
  edtVlrIcms.Value     := (edtPerIcms.Value * edtBaseCalculo.Value)/100;

  if (frameCidDest.edestado.Text <> dm.Parametro.Estado) and (dm.Parametro.SN = 'LR') then
    mObs.Text := '"Regime especial do recolhimento do imposto 0818" - ';

  if trim(mObs.Text) = '' then
    mObs.Text := dm.Parametro.MsgPadrao;

  if (copy(cbST.Text,1,2) = '20') and (dm.Parametro.SN = 'LR') then
    mObs.Text := 'CONFORME RICIMS 5141/01 ARTIGO 50 INCISO VI';
end;

procedure TfrmCriaCTe.edValorPrestacaoChange(Sender: TObject);
begin
  if (edValorPrestacao.Value > 0) or (cbTipoCte.ItemIndex = 1) then
    cbST.Enabled := true
  else
    cbST.Enabled := false;  
end;

procedure TfrmCriaCTe.edtCaracServKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    PageControl2.ActivePageIndex := 2;

  Key := 0;
end;

procedure TfrmCriaCTe.cbTpDocChange(Sender: TObject);
begin
  if cbTpDoc.ItemIndex = 2 then
   begin
     dbedit19.Visible := true;
     label43.Visible    := true;
   end
  else
   begin
     dbedit19.Visible := false;
     label43.Visible    := false;
   end;
  dbTpDoc.Text := copy(cbTpDoc.Text,1,2);
end;

procedure TfrmCriaCTe.RGTpDocClick(Sender: TObject);
begin
    tsNFe.Enabled    := false;
    tsNF.Enabled     := false;
    tsOutros.Enabled := false;

  if RGTpDoc.ItemIndex = 0 then
    begin
      tsNFe.Enabled := true;
      PCDocOrig.ActivePageIndex := 0;
    end
  else if RGTpDoc.ItemIndex = 1 then
    begin
      tsNF.Enabled := true;
      PCDocOrig.ActivePageIndex := 1;
    end
  else if RGTpDoc.ItemIndex = 2 then
    begin
      tsOutros.Enabled := true;
      PCDocOrig.ActivePageIndex := 2;
    end;

  btnIncPorXML.Enabled := RGTpDoc.ItemIndex = 0;  
end;

procedure TfrmCriaCTe.ts10Enter(Sender: TObject);
begin
  if (incManu)or(RGTipoInclusao.ItemIndex = 1) then
   begin
     GroupBox8.Enabled := true;
   end
  else
   begin
     groupBox8.Enabled := false;
   end;

end;

procedure TfrmCriaCTe.salvaXML;
var StringStream: TStringStream;
    qryXML :TMDOQuery;
    memo1 :TMemo;
begin
  dm.qryGeneric := dm.GetQueryInstance('select codigo from cte_xml where nrcte = :nrcte');
  dm.qryGeneric.ParamByName('nrcte').AsInteger := self.cdsCtesNumCte.asInteger;
  dm.qryGeneric.Open;

  //Salva no BD
  StringStream := TStringStream.Create(self.ACBrCTe1.Conhecimentos.Items[0].XML);
  qryXML       := dm.GetQueryInstance('update or insert into cte_xml (codigo, nrcte, xml) values (:cod, :nrcte, :xml)');

  if not dm.qryGeneric.IsEmpty then   qryXML.ParamByName('cod').asInteger := dm.qryGeneric.fieldByName('codigo').AsInteger
                               else   qryXML.ParamByName('cod').asInteger := 0;

  qryXML.ParamByName('nrcte').AsInteger := self.cdsCtesNumCte.asInteger;
  qryXML.ParamByName('xml').LoadFromStream(StringStream, ftBlob);
  qryXML.ExecSQL;

  //Salva na pasta XML do sistema
  try
  
    memo1 := TMemo.Create(self);
    memo1.Text := self.ACBrCTe1.Conhecimentos.Items[0].XML;
    memo1.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'\XML\CTe-'+cdsCtesNUMCTE.AsString+'.xml');

  finally
    FreeAndNil( memo1 );
  end;
end;

procedure TfrmCriaCTe.ApplicationEvents1Message(var Msg: tagMSG;
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

procedure TfrmCriaCTe.FormShow(Sender: TObject);
begin
  buscaCtes1.dti               := Date - 90;
  buscaCtes1.dtf               := Date;
  buscaCtes1Enter(nil);
  frmCriaCTe.Top        := (Screen.Height - Height) div 2;
  frmCriaCTe.Left       := (Screen.Width - Width) div 2;
  cbST.ItemIndex        := 9;
  cbFormaemis.ItemIndex := IfThen(trim(dm.Parametro.just_contingencia) = '',0,1);
  cbStatus.ItemIndex    := 1;
  btbuscar.Click;

  if  cbFormaemis.ItemIndex = 1 then
    cbFormaemis.Hint := 'Ativa desde: '+dateToStr(dm.Parametro.contingencia_ativa)+ ' Motivo: '+dm.Parametro.just_contingencia;
end;

procedure TfrmCriaCTe.btnIncClick(Sender: TObject);
begin
 if not cdsDocs.Active then
   cdsDocs.CreateDataSet;

 pnDocs.Enabled := true;
 dtDataEmis.DateTime := Date;

  cdsDocs.Append;

  if RgTpDoc.ItemIndex = 0 then
    begin
      PCDocOrig.ActivePageIndex := 0;
      dbTpDoc.Text    := '01';
      if ts11.Enabled then
        DBEdtChave.SetFocus;
    end
  else if RgTpDoc.ItemIndex = 1 then
    begin
      PCDocOrig.ActivePageIndex := 1;
      dbTpDoc.Text    := '02';
      cbModeloNf.SetFocus;
    end
  else if RgTpDoc.ItemIndex = 2 then
    begin
      PCDocOrig.ActivePageIndex := 2;
      cbTpDoc.SetFocus;
    end;
  dbserieCte.Text := '001';
  dbNumCte.Text   := '0';
  dbCodigo.Text   := '0';

  rgTpDoc.Enabled := false;
  panel2.Enabled := false;
  timer1.Enabled := true;
end;

procedure TfrmCriaCTe.btSalvClick(Sender: TObject);
begin

  if rgTpDoc.ItemIndex = 0 then begin //for nfe
    if dateToStr(dtDataEmis.DateTime) = '30/12/1899' then begin
      avisar('A data de emissão da nota deve ser informada!');
      dtDataEmis.SetFocus;
      exit;
    end;

    if StrToFloat(DBEdtVlrNota.Text) <=0 then begin
      avisar('O valor da nota deve ser informado!');
      DBEdtVlrNota.SetFocus;
      exit;
    end;
  end;

  if rgTpDoc.ItemIndex = 1 then begin
    if dateToStr(dtDataEmisNf.DateTime) = '30/12/1899' then begin
      avisar('A data de emissão da nota deve ser informada!');
      dtDataEmisNf.SetFocus;
      exit;
    end;

    if cdsDocsVNF.AsFloat <=0 then begin
      avisar('O valor da nota deve ser informado!!');
      DBEdit12.SetFocus;
      exit;
    end;
  end;

  if RgTpDoc.ItemIndex = 2 then
   begin
     case cbTpDoc.ItemIndex of
      0: dbTpDoc.Text := '00';
      1: dbTpDoc.Text := '10';
      2: dbTpDoc.Text := '99';
     end;
   end;

  if rgtpdoc.ItemIndex = 1 then
    dbModNf.Text := copy(cbModeloNf.Text,1,2)
  else if rgtpdoc.ItemIndex = 0 then
    dbModNf.Text := '55';

  cdsDocsDEMI.AsDateTime := dtDataEmis.DateTime;
  cdsDocs.Post;
  pndocs.Enabled := false;
  rgTpDoc.Enabled := true;
  panel2.Enabled := true;
  pnDocs.BevelInner :=  bvNone;
  pnDocs.BevelOuter :=  bvNone;
  pnDados.BevelInner := bvLowered;
  pnDados.BevelOuter := bvRaised;
end;

procedure TfrmCriaCTe.DBEdtChaveChange(Sender: TObject);
begin
  lbCarac.Caption := intToStr(length(trim(DBEdtChave.Text)));
end;

procedure TfrmCriaCTe.btnAlterarClick(Sender: TObject);
begin
  if cdsDocsMOD.AsString = '55' then
    RGTpDoc.ItemIndex := 0
  else
    RGTpDoc.ItemIndex := 1;
      
  cdsDocs.Edit;
  pnDocs.Enabled := true;
  if RgTpDoc.ItemIndex = 0 then begin
    DBEdtChave.SetFocus;
    dtDataEmis.DateTime := cdsDocsDEMI.AsDateTime;
  end
  else if RgTpDoc.ItemIndex = 1 then
   begin
     if cdsDocsMOD.AsString = '01' then
        cbModeloNf.ItemIndex := 0
     else if cdsDocsMOD.AsString = '04' then
        cbModeloNf.ItemIndex := 1;

     cbModeloNf.SetFocus;
     dtDataEmisNf.DateTime := cdsDocsDEMI.AsDateTime;
   end
  else if RgTpDoc.ItemIndex = 2 then
   begin
     if cdsDocsTPDOC.AsString = '00' then
        cbTpDoc.ItemIndex := 0
     else if cdsDocsTPDOC.AsString = '10' then
        cbTpDoc.ItemIndex := 1
     else if cdsDocsTPDOC.AsString = '99' then
        cbTpDoc.ItemIndex := 2;

     cbTpDoc.SetFocus;
   end;
  rgTpDoc.Enabled := false;
  panel2.Enabled := false;
  timer1.Enabled := true;
end;

procedure TfrmCriaCTe.btnExcluirClick(Sender: TObject);
begin
  if pergunta('Deseja excluir o documento originário Nº '+cdsDocsCHAVE.AsString+'?') then
    cdsDocs.Delete;
end;

procedure TfrmCriaCTe.btCancClick(Sender: TObject);
begin
  cdsDocs.Cancel;
  pnDocs.Enabled := false;
  rgTpDoc.Enabled := true;
  panel2.Enabled := true;
  pnDocs.BevelInner :=  bvNone;
  pnDocs.BevelOuter :=  bvNone;
  pnDados.BevelInner := bvLowered;
  pnDados.BevelOuter := bvRaised;
end;

procedure TfrmCriaCTe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ini.WriteString('CONFIG_CTE','PRODUTO',edtProdPredo.Text);
end;

procedure TfrmCriaCTe.frameCidDestedCodigoMunicipioChange(Sender: TObject);
begin
  if trim(frameCidDest.edCodigoMunicipio.Text) = '' then
    frameCidDest.edCodigoMunicipio.Text := '0';
end;

procedure TfrmCriaCTe.preencheCamposXML;
begin

  edtRemCNPJ.Text                       := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
  edtRemIE.Text                         := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE;
  edtRemRazao.Text                      := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome;
  edtRemFantasia.Text                   := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xFant;
  edtRemFone.Text                       := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone;
  edtRemCEP.Text                        := intToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP);
  edtRemLogradouro.Text                 := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr;
  edtRemNumero.Text                     := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;
  edtRemBairro.Text                     := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
  frameCidadeRem.edCodigoMunicipio.Text := intToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun);
  frameCidadeRem.edCidade.Text          := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
  frameCidadeRem.edestado.Text          := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;

  edtDestCNPJ.Text                       := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
  edtDestIE.Text                         := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IE;
  edtDestRazao.Text                      := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
  edtDestFantasia.Text                   := '';
  edtDestFone.Text                       := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone;
  edtDestCEP.Text                        := intToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP);
  edtDestLogradouro.Text                 := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr;
  edtDestNumero.Text                     := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro;
  edtDestBairro.Text                     := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro;
  frameCidadeDest.edCodigoMunicipio.Text := intToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun);
  frameCidadeDest.edCidade.Text          := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun;
  frameCidadeDest.edestado.Text          := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF;
  edtDestEmail.Text                      := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.Email;
  frameCidDest.codMun                    := intToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun);

  edtVlrMerc.Value                       := edtVlrMerc.Value + ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
  edtQtdCarga.Value                      := edtQtdCarga.Value + ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL;

  if edtQtdCarga.Value > 0 then begin
    btnIncUnid.Click;
    GridInfoCargaEnter(nil);
  end;

  FrameVeiculo1.codigo                   := StrToIntDef( Campo_por_campo('VEICULOS', 'CODIGO', 'PLACA', ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.veicTransp.placa), 0);
  preencheVeiculo;

  cbST.ItemIndex := 9;

  armazenaIDs;

end;

function TfrmCriaCTe.persisteSelecaoXML: Boolean;
var emit, dest :String;
    x :integer;
begin
  Result := true;
  emit := '';
  dest := '';

  for x := 0 to OpenDialog1.Files.Count - 1 do
    begin
      ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.Files.Strings[x]);

      if not (emit = '') then
       begin
         if (emit <> ACBrNFe1.NotasFiscais.Items[x].NFe.Emit.CNPJCPF) or
            (dest <> ACBrNFe1.NotasFiscais.Items[x].NFe.Dest.CNPJCPF) then
         begin
           Result := false;
           break;
         end;

       end;
      emit := ACBrNFe1.NotasFiscais.Items[x].NFe.Emit.CNPJCPF;
      dest := ACBrNFe1.NotasFiscais.Items[x].NFe.Dest.CNPJCPF;
    end;
end;

procedure TfrmCriaCTe.ACBrCTe1GerarLog(const Mensagem: String);
begin
//  m100.Lines.Add(Mensagem);
end;

procedure TfrmCriaCTe.SpbBuscaSegClick(Sender: TObject);
var campos : TDataSet;
begin
  campos:= PesquisaSimplesLocate('select s.codigo, s.nome, s.n_apolice, s.n_averbacao from seguradoras s where codigo = :param1', edtCodSeg.Text);

  if campos.Fields[2].Text = '' then
  campos :=  PesquisaSimples('select s.codigo, s.nome, s.n_apolice, s.n_averbacao from seguradoras s', false, 850);

  if campos = nil then begin
    edtCodseg.Text     := '0';
    edtNomeSeg.Text    := '';
    edtNApolice.Text   := '';
    edtNAverbacao.Text := '';
    exit;
  end;

  edtCodseg.Text     := TClientDataSet(campos).Fields[0].text;
  edtNomeSeg.Text    := TClientDataSet(campos).Fields[1].text;
  edtNApolice.Text   := TClientDataSet(campos).Fields[2].text;
  edtNAverbacao.Text := TClientDataSet(campos).Fields[3].text;
  Press(VK_TAB);
end;

procedure TfrmCriaCTe.edtCodSegKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
    SpbBuscaSeg.Click;
end;

procedure TfrmCriaCTe.edtCodSegChange(Sender: TObject);
begin
  if trim(edtCodSeg.Text) = '' then
    edtCodSeg.Text := '0';
end;

procedure TfrmCriaCTe.AtualizaPelaConsulta;
begin
  salvaRetCte(true);
  salvaRetLote(true);
  
  if ACBrCTe1.WebServices.Consulta.cStat = 100 then
    salvaXML;

  cdsCtes.Close;
  qryCtes.ParamByName('dti').AsDateTime := FramePeriodo21.eddi.dateTime;
  qryCtes.ParamByName('dtf').AsDateTime := FramePeriodo21.eddf.dateTime;
  CdsCtes.Open;
end;

procedure TfrmCriaCTe.cbFormaemisChange(Sender: TObject);
begin

  if (cbFormaemis.ItemIndex = 1)and (TRIM(dm.Parametro.just_contingencia) = '') then begin
    if pergunta('Deseja entrar em contingência?') then
      ativarContingencia(true)
    else
      cbFormaemis.ItemIndex := 0;
  end
  else if (cbFormaemis.ItemIndex = 0) and (dm.Parametro.just_contingencia <> '') then begin
    if pergunta('Deseja sair da contingência?') then
      ativarContingencia(false)
    else
      cbFormaemis.ItemIndex := 1;
  end;

end;

procedure TfrmCriaCTe.ativarContingencia(ativar :Boolean);
var DH, just :String;
begin
  DH := '0';
  just := '';
  cbFormaemis.ShowHint := false;

  if ativar then begin
    frmAtivaContingencia := TfrmAtivaContingencia.create(self);

    if frmAtivaContingencia.showmodal = mrOk then begin
      DH   := DateToStr(frmAtivaContingencia.dtpData.DateTime) + ' ' +TimeToStr(frmAtivaContingencia.dtpHora.Time);
      just := trim(frmAtivaContingencia.memMotivo.Text);
    end;

    cbFormaemis.ShowHint := true;
  end;



  dm.qryGeneric.Close;
  dm.qryGeneric.SQL.Text := 'update parametros set contingencia_ativa = :ca, just_contingencia = :jc';
  dm.qryGeneric.ParamByName('ca').asDateTime := StrToDateTime(DH);
  dm.qryGeneric.ParamByName('jc').AsString   := just;
  dm.qryGeneric.ExecSQL;

  dm.Parametro := dm.Parametro.Get;

  cbFormaemis.Hint := 'Ativa desde: '+dateToStr(dm.Parametro.contingencia_ativa)+ ' Motivo: '+dm.Parametro.just_contingencia;
end;

procedure TfrmCriaCTe.setFormaEmissaoServidor(idFormaEmis :integer);
begin

  if      idFormaEmis = 1 then  ACBrCTe1.Configuracoes.Geral.FormaEmissao := teNormal
  else if idFormaEmis = 5 then  ACBrCTe1.Configuracoes.Geral.FormaEmissao := teFSDA
  else if idFormaEmis = 7 then  ACBrCTe1.Configuracoes.Geral.FormaEmissao := teSVCRS
  else if idFormaEmis = 8 then  ACBrCTe1.Configuracoes.Geral.FormaEmissao := teSVCSP;

end;

procedure TfrmCriaCTe.cancelarCte;
var just: String;
  idLote, EveInicial, EveFinal : Integer;
begin

  if not (cdsCtesSTATUS.AsString = '100') then
   begin
     avisar('CT-e selecionado ainda não foi enviado!');
     exit;
   end;

  if(dm.Parametro.TipoAmbiente <> cdsCtesTPAMB.AsInteger) then
   begin
     avisar('Ambiente do webservice difere do ambiente de criação do CT-e!');
     exit;
   end;

  if not pergunta('Deseja realmente cancelar o CT-e de Nº '+cdsCtesNUMCTE.AsString+'?') then   exit;

   Aguarda('Cancelando CT-e selecionado...');

   if not(InputQuery('WebServices Cancelamento', 'Justificativa', just)) then   exit;

   ACBrCTe1.EventoCTe.Evento.Clear;

   with ACBrCTe1.EventoCTe.Evento.Add do
    begin
     infevento.chCTe           := cdsCtesIDCHAVE.AsString;
     infEvento.CNPJ            := dm.Parametro.Cnpj;
     infEvento.dhEvento        := now;
     infEvento.tpEvento        := teCancelamento;
     infEvento.detEvento.xJust := trim(just);
     infEvento.detEvento.nProt := cdsCtesNPROT.AsString;
    end;

   // Lote de Eventos
   dm.qryGeneric.Close;
   dm.qryGeneric.SQL.Clear;
   dm.qryGeneric.SQL.Add('Select * From Eve_Lote');
   dm.qryGeneric.SQL.Add('Where Empresa = :xEmpresa');
   dm.qryGeneric.SQL.Add('Order By Lote');
   dm.qryGeneric.Params[0].AsString := dm.Parametro.codEmp;

   dm.qryGeneric.Active := True;
   dm.qryGeneric.Open;
   dm.qryGeneric.Last;

   if dm.qryGeneric.RecordCount > 0
    then begin
     if (dm.qryGeneric.fieldByName('EveInicial').AsInteger = 0) and (dm.qryGeneric.fieldByName('EveFinal').AsInteger = 0) then
       idLote := dm.qryGeneric.fieldByName('Lote').AsInteger
     else begin
       idLote := (dm.qryGeneric.fieldByName('Lote').AsInteger +1);

       dm.qryGeneric.Close;
       dm.qryGeneric.SQL.Clear;
       dm.qryGeneric.SQL.Add('Insert into Eve_Lote');
       dm.qryGeneric.SQL.Add('(Empresa, Lote, EveInicial, EveFinal, Data)');
       dm.qryGeneric.SQL.Add('Values (:xEmpresa, :xLote, :xEveInicial, :xEveFinal, :xData)');
       dm.qryGeneric.Params[0].AsString   := dm.Parametro.codEmp;
       dm.qryGeneric.Params[1].AsInteger  := idLote;
       dm.qryGeneric.Params[2].AsInteger  := 0;
       dm.qryGeneric.Params[3].AsInteger  := 0;
       dm.qryGeneric.Params[4].AsDateTime := Date;
       dm.qryGeneric.ExecSQL;
     end;
    end
    else begin
     idLote:=1;

     dm.qryGeneric.Close;
     dm.qryGeneric.SQL.Clear;
     dm.qryGeneric.SQL.Add('Insert into Eve_Lote');
     dm.qryGeneric.SQL.Add('(Empresa, Lote, EveInicial, EveFinal, Data)');
     dm.qryGeneric.SQL.Add('Values (:xEmpresa, :xLote, :xEveInicial, :xEveFinal, :xData)');
     dm.qryGeneric.Params[0].AsString   := dm.Parametro.codEmp;
     dm.qryGeneric.Params[1].AsInteger  := idLote;
     dm.qryGeneric.Params[2].AsInteger  := 0;
     dm.qryGeneric.Params[3].AsInteger  := 0;
     dm.qryGeneric.Params[4].AsDateTime := Date;
     dm.qryGeneric.ExecSQL;
    end;

   if not ACBrCTe1.EnviarEvento(idLote) then
     raise Exception.Create('Erro ao tentar cancelar. '+ACBrCTe1.EventoCTe.Evento.Items[0].RetInfEvento.xMotivo)
   else begin
     salvaRetCancel;
     avisar('Cancelamento efetuado com sucesso!');
   end;

   EveInicial := 1;
   EveFinal   := EveInicial;

   dm.qryGeneric.Close;
   dm.qryGeneric.SQL.Clear;
   dm.qryGeneric.SQL.Add('Update Eve_Lote Set');
   dm.qryGeneric.SQL.Add('EveInicial = :xEveInicial,');
   dm.qryGeneric.SQL.Add('EveFinal = :xEveFinal,');
   dm.qryGeneric.SQL.Add('Data = :xData');
   dm.qryGeneric.SQL.Add('Where Empresa = :xEmpresa');
   dm.qryGeneric.SQL.Add('and Lote = :xLote');
   dm.qryGeneric.Params[0].AsInteger  := EveInicial;
   dm.qryGeneric.Params[1].AsInteger  := EveFinal;
   dm.qryGeneric.Params[2].AsDateTime := Date;
   dm.qryGeneric.Params[3].AsString   := dm.Parametro.codEmp;
   dm.qryGeneric.Params[4].AsInteger  := idLote;
   dm.qryGeneric.ExecSQL;

   //-------------------------------------------------------------------------------------------------------------------
   FimAguarda;

   cdsCtes.Close;
   qryCtes.ParamByName('dti').AsDateTime := FramePeriodo21.eddi.dateTime;
   qryCtes.ParamByName('dtf').AsDateTime := FramePeriodo21.eddf.dateTime;
   CdsCtes.Open;
end;

procedure TfrmCriaCTe.trataMsgRetorno(msg: String);
var i :integer;
begin

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

procedure TfrmCriaCTe.frameBuscaCFOP1edCFOPExit(Sender: TObject);
begin
  if edtNatOp.Text = '' then
    frameBuscaCFOP1.edCFOP.Clear;
end;

procedure TfrmCriaCTe.frameBuscaCFOP1edCFOPChange(Sender: TObject);
var a :Word;
    key :Char;
begin
  frameBuscaCFOP1.edCFOP.OnKeyDown  := frameBuscaCFOP1.edCFOPKeyDown;
  frameBuscaCFOP1.edCFOP.OnKeyPress := frameBuscaCFOP1.edCFOPKeyPress;

  frameBuscaCFOP1.edCFOPKeyDown(Sender, a, []);
  frameBuscaCFOP1.edCFOPKeyPress(Sender,key);

  if assigned(frameBuscaCFOP1.NatOp) then
     edtNatop.Text := frameBuscaCFOP1.NatOp.natOp
  else
     edtNatOp.Clear;
end;

procedure TfrmCriaCTe.frameBuscaCFOP1edCFOPKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  frameBuscaCFOP1.edCFOP.OnKeyDown := nil;

end;

procedure TfrmCriaCTe.frameBuscaCFOP1edCFOPKeyPress(Sender: TObject;
  var Key: Char);
begin
  frameBuscaCFOP1.edCFOP.OnKeyPress := nil;

end;

procedure TfrmCriaCTe.GridInfoCargaEnter(Sender: TObject);
begin
  btnaltUnid.Enabled := true;
  btnExcUnid.Enabled := true;

  if btnaltUnid.Tag = 1 then begin
    btnaltUnid.Tag := 0;
    btnCanUnid.Visible := false;
  end;

  cbtpmed.ItemIndex := 0;
  cbUndMed.ItemIndex := 1;
  edtQtdCarga.Clear;

end;

procedure TfrmCriaCTe.GridInfoCargaExit(Sender: TObject);
begin
  btnaltUnid.Enabled := false;
  btnExcUnid.Enabled := false;
end;

procedure TfrmCriaCTe.btnIncUnidClick(Sender: TObject);
begin
  if edtQtdCarga.Value <= 0 then begin
    avisar('A quantidade da carga, referente a respectiva unidade, deve ser informada!');
    edtQtdCarga.SetFocus;
    Exit;
  end;

  if not cdsUnidCarga.Active then cdsUnidCarga.CreateDataSet;

  if cdsUnidCarga.RecordCount = 3 then begin
    avisar('Quantidade máxima de tipos de unidade ja foi informada');
    exit;
  end;

  if btnAltUnid.Tag = 1 then
    cdsUnidCarga.Edit
  else
    cdsUnidCarga.Append;

  cdsUnidCargaCODIGO.AsInteger   := cdsUnidCargaCODIGO.AsInteger;
  cdsUnidCargaNUMCTE.AsInteger   := cdsCtesNUMCTE.AsInteger;
  cdsUnidCargaCODUNID.AsString   := '0'+ IntToStr(cbUndMed.ItemIndex);
  cdsUnidCargaTPMEDIDA.AsString  := cbTpMed.Text;
  cdsUnidCargaQTDECARGA.asFloat  := edtQtdCarga.Value;
  cdsUnidCargaDESC_UNID.AsString := cbUndMed.Text;

  cdsUnidCarga.Post;
  if PageControl2.ActivePageIndex = 9 then
    GridInfoCarga.SetFocus;
end;

procedure TfrmCriaCTe.btnaltUnidClick(Sender: TObject);
begin
  btnAltUnid.tag := 1;
  cbTpMed.ItemIndex  := CBox_indice_pelo_texto(cbTpMed, trim(cdsUnidCargaTPMEDIDA.AsString));
  cbUndMed.ItemIndex := cdsUnidCargaCODUNID.AsInteger;
  edtQtdCarga.Value  := cdsUnidCargaQTDECARGA.AsFloat;

  btnaltUnid.Enabled := false;
  btnExcUnid.Enabled := false;
  btnCanUnid.Visible := true;
end;

procedure TfrmCriaCTe.btnCanUnidClick(Sender: TObject);
begin
  GridInfoCarga.SetFocus;
end;

procedure TfrmCriaCTe.btnExcUnidClick(Sender: TObject);
begin
  if pergunta('Deseja excluir o a unidade '+cdsUnidCargaCODUNID.AsString+' - '+cdsUnidCargaTPMEDIDA.AsString+'?') then begin

    if cdsUnidCargaCODIGO.AsInteger > 0 then begin

      if not cdsUnidDeletada.Active then cdsUnidDeletada.CreateDataSet;

      cdsUnidDeletada.Append;
      cdsUnidDeletadacodigo.AsInteger := cdsUnidCargaCODIGO.AsInteger;
      cdsUnidDeletada.Post;
    end;

    cdsUnidCarga.Delete;
  end;
end;

procedure TfrmCriaCTe.remove_unidades_deletadas;
begin
  dm.qryGeneric.SQL.Text := 'Delete from CTEQTDECARGA where codigo = :cod';

  cdsUnidDeletada.First;
  while not cdsUnidDeletada.Eof do begin

    dm.qryGeneric.ParamByName('cod').AsInteger := cdsUnidDeletadacodigo.AsInteger;

    dm.qryGeneric.ExecSQL;

    cdsUnidDeletada.Next;
  end;
end;

procedure TfrmCriaCTe.FrameVeiculo1SpbBuscaClick(Sender: TObject);
begin
  FrameVeiculo1.SpbBuscaClick(Sender);
  preencheVeiculo;
end;

procedure TfrmCriaCTe.preencheVeiculo;
begin
  if FrameVeiculo1.cds = nil then
    exit;

  edtPlaca.Text              := FrameVeiculo1.cds.Fields[1].AsString;
  edtRenavam.Text            := FrameVeiculo1.cds.Fields[7].AsString;
  cbTipoVeiculo.ItemIndex    := FrameVeiculo1.cds.Fields[8].AsInteger;
  cbTipoRodado.ItemIndex     := FrameVeiculo1.cds.Fields[9].AsInteger;
  cbTipoCarroceria.ItemIndex := FrameVeiculo1.cds.Fields[10].AsInteger;
  cbUF.ItemIndex             := cbUf.Items.IndexOf( FrameVeiculo1.cds.Fields[6].AsString);
  rgVeiculoProprio.ItemIndex := IfThen(FrameVeiculo1.cds.Fields[11].AsString = 'S',0,1);
  edtTara.Value              := FrameVeiculo1.cds.Fields[2].AsFloat;
  edtCapacidadeKG.Value      := FrameVeiculo1.cds.Fields[3].AsFloat;
  edtCapacidadeM3.Value      := FrameVeiculo1.cds.Fields[4].AsFloat;

  if rgVeiculoProprio.ItemIndex = 1 then begin
    edtCnpjPropVeic.Text       := FrameVeiculo1.cds.Fields[12].AsString;
    edtIEPropVeic.Text         := FrameVeiculo1.cds.Fields[13].AsString;
    cbUFPropVeic.ItemIndex     := CBox_indice_pelo_texto(cbUFPropVeic, trim(FrameVeiculo1.cds.Fields[14].AsString));
    edtNomePropVeic.Text       := FrameVeiculo1.cds.Fields[15].AsString;
    edtRNTRCPropVeic.Text      := FrameVeiculo1.cds.Fields[5].AsString;
    cbTipoPropVeic.ItemIndex   := FrameVeiculo1.cds.Fields[16].AsInteger;

  end;
end;

procedure TfrmCriaCTe.FrameVeiculo1edCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  FrameVeiculo1.edCodigoKeyDown(Sender, Key, Shift);
  if Key = VK_return then
    preencheVeiculo;
end;

procedure TfrmCriaCTe.rgVeiculoProprioClick(Sender: TObject);
begin
  pnlDadosPropVeic.Visible := (rgVeiculoProprio.ItemIndex = 1);
  lbPropVeic.Visible       := (rgVeiculoProprio.ItemIndex = 1);
end;

procedure TfrmCriaCTe.btnIncCompClick(Sender: TObject);
begin

  if TRIM(edtNomeComponente.Text) = '' then begin
    avisar('O nome do componente deve ser informado!');
    edtNomeComponente.SetFocus;
    exit;
  end
  else if edtValorComponente.Value <= 0 then begin
    avisar('O valor do componente deve ser informado!');
    edtValorComponente.SetFocus;
    exit;
  end;

  if not cdsCompPrestacao.Active then cdsCompPrestacao.CreateDataSet;

  if btnAltComp.Tag = 1 then begin
    cdsCompPrestacao.Edit;
    cdsCompPrestacaoCODIGO.AsInteger          := cdsCompPrestacaoCODIGO.AsInteger;
  end
  else begin
    cdsCompPrestacao.Append;
    cdsCompPrestacaoCODIGO.AsInteger          := 0;
  end;

  cdsCompPrestacaoNUM_CTE.AsInteger         := cdsCtesNUMCTE.AsInteger;
  cdsCompPrestacaoVALOR_COMPONENTE.AsFloat  := edtValorComponente.Value;
  cdsCompPrestacaoNOME_COMPONENTE.AsString  := edtNomeComponente.text;

  cdsCompPrestacao.Post;
  if PageControl2.ActivePageIndex = 8 then
    dbGridComponentes.SetFocus;
end;

procedure TfrmCriaCTe.btnCanCompClick(Sender: TObject);
begin
  dbGridComponentes.SetFocus;
end;

procedure TfrmCriaCTe.btnAltCompClick(Sender: TObject);
begin
  btnAltComp.tag := 1;
  edtNomeComponente.Text  := cdsCompPrestacaoNOME_COMPONENTE.AsString;
  edtValorComponente.Text := cdsCompPrestacaoVALOR_COMPONENTE.AsString;

  btnaltUnid.Enabled := false;
  btnExcUnid.Enabled := false;
  btnCanUnid.Visible := true;
end;

procedure TfrmCriaCTe.btnExcCompClick(Sender: TObject);
begin
  if pergunta('Deseja excluir o componente '+cdsCompPrestacaoNOME_COMPONENTE.AsString+'?') then begin

    if cdsCompPrestacaoCODIGO.AsInteger > 0 then begin

      if not cdsCompDeletado.Active then cdsCompDeletado.CreateDataSet;

      cdsCompDeletado.Append;
      cdsCompDeletadoCODIGO.AsInteger := cdsCompDeletadoCODIGO.AsInteger;
      cdsCompDeletado.Post;
    end;

    cdsCompDeletado.Delete;
  end;
end;

procedure TfrmCriaCTe.dbGridComponentesEnter(Sender: TObject);
begin
  btnaltComp.Enabled := true;
  btnExcComp.Enabled := true;

  if btnaltComp.Tag = 1 then begin
    btnaltComp.Tag := 0;
    btnCanComp.Visible := false;
  end;

  edtNomeComponente.Clear;
  edtValorComponente.Clear;
end;

procedure TfrmCriaCTe.dbGridComponentesExit(Sender: TObject);
begin
  btnaltComp.Enabled := false;
  btnExcComp.Enabled := false;
end;

procedure TfrmCriaCTe.salvaComponentesValorPrestacao;
var numCte :integer;
begin
 try
   if (cdsCompDeletado.Active) and not(cdsCompDeletado.IsEmpty) then
     remove_componentes_deletados;

   if not (cdsCompPrestacao.Active) or (cdsCompPrestacao.IsEmpty) then
     EXIT;

   dm.qryGeneric.Close;
   dm.qryGeneric.SQL.Text := 'select gen_id(GEN_CTE_ID, 0) as cod from rdb$database';
   dm.qryGeneric.Open;
   numCte := dm.qryGeneric.fieldByName('cod').AsInteger;

   dm.qryGeneric.Close;
   dm.qryGeneric.SQL.Text := 'update or insert into COMPONENTE_VALOR_PRESTACAO values (:codigo, :num_cte, :nome_componente, :valor_componente)';

   cdsCompPrestacao.First;
   while not cdsCompPrestacao.Eof do begin
      dm.qryGeneric.ParamByName('codigo').AsInteger           := cdsCompPrestacaoCODIGO.AsInteger;

      if edtNumero.Text = '0' then
        dm.qryGeneric.ParamByName('num_cte').AsInteger          := numCte
      else
        dm.qryGeneric.ParamByName('num_cte').AsInteger          := cdsCtesNUMCTE.AsInteger;
        
      dm.qryGeneric.ParamByName('nome_componente').AsString   := cdsCompPrestacaoNOME_COMPONENTE.AsString;
      dm.qryGeneric.ParamByName('valor_componente').AsFloat   := cdsCompPrestacaoVALOR_COMPONENTE.AsFloat;

      dm.qryGeneric.ExecSQL;

      cdsCompPrestacao.next;
   end;

 except
   on e: Exception do begin
     avisar('Erro ao salvar componentes referente ao valor da prestação'+#13#10+e.Message);
   end;
 end;
end;

procedure TfrmCriaCTe.remove_componentes_deletados;
begin
  dm.qryGeneric.SQL.Text := 'Delete from CTEQTDECARGA where codigo = :cod';

  cdsCompDeletado.First;
  while not cdsCompDeletado.Eof do begin

    dm.qryGeneric.ParamByName('cod').AsInteger := cdsCompDeletadoCodigo.AsInteger;

    dm.qryGeneric.ExecSQL;

    cdsCompDeletado.Next;
  end;
end;

procedure TfrmCriaCTe.SpeedButton2Click(Sender: TObject);
begin
  frmCriaManifesto := TfrmCriaManifesto.Create(Self);
  frmCriaManifesto.ShowModal;
  frmCriaManifesto.Release;
  frmCriaManifesto := nil;
end;

procedure TfrmCriaCTe.btnAlterClick(Sender: TObject);
begin
  habilitaDesabilita(true);
  if PageControl2.ActivePageIndex = 0 then
    PageControl2.ActivePageIndex := 1;
end;

procedure TfrmCriaCTe.btnCancelaOpClick(Sender: TObject);
begin
  habilitaDesabilita(false);
  PageControl2.ActivePageIndex := 0;
  GridCTes.SetFocus;
  btnIncluir.Tag := 0;
  incluindo      := false;
end;

procedure TfrmCriaCTe.RGTipoInclusaoClick(Sender: TObject);
begin
 {Salva forma de inclusão}
   Ini.WriteString('CONFIG_CTE','TP_INCLUSAO',IfThen(RGTipoInclusao.ItemIndex = 0, 'P', IfThen(RGTipoInclusao.ItemIndex = 1, 'M', 'X')));
end;

function TfrmCriaCTe.incluir_bd_remoto: Boolean;
begin
 try

    if trim(Ini.ReadString('REMOTO','CAMINHO','')) = '' then begin

      if trim(dm.Parametro.BDRemoto) = '' then
        raise Exception.Create('Não há um caminho para banco remoto específicado.')
      else
        Ini.WriteString('REMOTO','CAMINHO',trim(dm.Parametro.BDRemoto));

    end;

    if selecionaNfes then
      preencheCampos()
    else
      raise Exception.Create('Nenhuma NF-e selecionada, criação do CT-e cancelada.');

   Result := true;
 Except
   on e: Exception do begin
     Result := false;
     avisar(e.message);
   end;
 end;
end;

function TfrmCriaCTe.incluir_manualmente: Boolean;
begin
   incManu := true;
   Result  := incManu;
end;

function TfrmCriaCTe.incluir_XML: Boolean;
var x :integer;
begin
 try

   if (OpenDialog1.Execute) then begin

      if OpenDialog1.Files.Count = 0 then
        raise Exception.Create('Nenhum XML selecionado, criação do CT-e cancelada.');

      if  OpenDialog1.Files.Count > 1 then
        if not persisteSelecaoXML then
          raise Exception.Create('Todos os XMLs selecionados devem ser do mesmo emitente e para o mesmo destinatário!');

      ACBrNFe1.NotasFiscais.Clear;

      for x := 0 to OpenDialog1.Files.Count - 1 do begin
        ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.Files.Strings[x]);
        preencheCamposXML;
      end;

     Result    := true; 
   end
   else
     raise Exception.Create('Nenhum XML foi selecionado, criação do CT-e cancelada.');

 Except
   on e: Exception do begin
     Result := false;
     avisar(e.message);
   end;
 end;
end;

procedure TfrmCriaCTe.edtNatOpEnter(Sender: TObject);
begin
  Press(VK_TAB);
end;

procedure TfrmCriaCTe.cbTipoCteChange(Sender: TObject);
begin
  pnlAnulacao.Visible := (cbTipoCte.ItemIndex in [1,2]);
  dtpAnulacao.Visible := (cbTipoCte.ItemIndex = 2);
  lbData.Visible      := (cbTipoCte.ItemIndex = 2);

  case cbTipoCte.ItemIndex of
   1 : lbchaveCte.Caption := 'Chave CT-e complementado';
   2 : lbchaveCte.Caption := 'Chave CT-e anulado';
  end;
end;

procedure TfrmCriaCTe.buscaCtes1Exit(Sender: TObject);
begin
  if assigned(buscaCtes1.cds) and not (buscaCtes1.cds.IsEmpty) then begin
    dm.qryGeneric.Close;
    dm.qryGeneric.SQL.Text := 'select DATAEMIS, IDCHAVE from CTE where numcte = :numcte';
    dm.qryGeneric.ParamByName('numcte').AsInteger := StrToInt(buscaCtes1.edtNumCte.Text);
    dm.qryGeneric.Open;

    dtpAnulacao.DateTime     := dm.qryGeneric.fieldByName('DATAEMIS').AsDateTime;
    edtChaveCteAnulacao.Text := dm.qryGeneric.fieldByNAme('IDCHAVE').AsString;

  end;

end;

procedure TfrmCriaCTe.buscaCtes1edtNumCteChange(Sender: TObject);
begin
  buscaCtes1.edtNumCteChange(Sender);
  edtChaveCteAnulacao.Clear;
end;

procedure TfrmCriaCTe.buscaCtes1Enter(Sender: TObject);
begin
  buscaCtes1.FrameEnter(Sender);

end;

procedure TfrmCriaCTe.ts9Enter(Sender: TObject);
begin
  cbST.Enabled := (cbTipoCte.ItemIndex = 1);
end;

procedure TfrmCriaCTe.btnIncPorXMLClick(Sender: TObject);
var dialog :TOpenDialog;
    x :integer;
begin
  dialog := TOpenDialog.Create(self);
 try

  dialog.InitialDir := GetCurrentDir;
  dialog.Options    := [ofFileMustExist,ofAllowMultiSelect];
  dialog.Filter     := 'Arquivos xml|*.xml';

  if dialog.Execute then
  begin
     for x := 0 to dialog.Files.Count - 1 do
        documentoPorXml(dialog.Files[x]);
  end
  else
     avisar('Seleção cancelada');

 finally
   FreeAndNil(dialog);
 end;
end;

procedure TfrmCriaCTe.documentoPorXml(caminhoArquivo :String);
var
    dataEmi, chaveNFe, VlrNFe :String;
    XMLDocument :TXMLDocument;
begin
  try

      XMLDocument := TXmlDocument.Create(self);
      XMLDocument.LoadFromFile( caminhoArquivo );
//      XMLDocument.Active   := true;

      chaveNFe  := '';
      dataEmi   := '';
      VlrNFe    := '';

      try
        chaveNFe  := Copy(EncontraNo(XMLDocument.DocumentElement.ChildNodes, 'infNFe').Attributes['Id'], 4, 44);
      except
        raise Exception.Create('TAG "Id" não encontrada.');
      end;

      try
        dataEmi   := EncontraNo(XMLDocument.DocumentElement.ChildNodes, 'dhEmi').Text;
      except
        raise Exception.Create('TAG "dhEmi" não encontrada.');
      end;

      try
        VlrNFe    := StringReplace( EncontraNo(XMLDocument.DocumentElement.ChildNodes, 'vNF').Text, '.', ',', [rfIgnoreCase, rfReplaceAll]);
      except
        raise Exception.Create('TAG "vNF" não encontrada.');
      end;

      if not cdsDocs.active then
        cdsDocs.CreateDataSet;

      if cdsDocs.Locate('CHAVE', chaveNFe, []) then
        Exit;

      btnInc.Click;

      DBEdtChave.Text     := chaveNFe;
      dtDataEmis.DateTime := EncodeDate(StrToInt(copy(dataEmi, 01, 4)), StrToInt(copy(dataEmi, 06, 2)), StrToInt(copy(dataEmi, 09, 2))) +
                             EncodeTime(StrToInt(copy(dataEmi, 12, 2)), StrToInt(copy(dataEmi, 15, 2)), StrToInt(copy(dataEmi, 18, 2)), 0);
      DBEdtVlrNota.Text   := VlrNFe;

      btSalv.Click;

  except
    on e: Exception do
     begin
       Avisar('Erro ao ler xml. '+e.Message);
     end;
  end
end
;

function TfrmCriaCTe.EncontraNo(NodeList: IXMLNodeList; NodeName: String): IXMLNode;
var x :integer;
begin
  if assigned( NodeList.FindNode(NodeName) ) then
    Result := NodeList.FindNode(NodeName);

  for x := 0 to NodeList.Count - 1 do begin
    if assigned(Result) then
      Exit;

    if NodeList[x].NodeName = NodeName then
      Result := NodeList[x];

    if NodeList[x].ChildNodes.Count > 0 then
      Result := EncontraNo(NodeList[x].ChildNodes, NodeName);
  end;
end;

end.
