unit ClasseCTE;

interface 
   uses MdoQuery;
   Type TClasseCTE = Class
   private
     FData: Tdatetime;
     FSerie: Integer;
     FNrcte: Integer;
     FNrenvcte: Integer;
     FVerxml: String;
     FIdchave: String;
     FCodufemit: String;
     FCfop: String;
     FNatop: String;
     FForpag: Integer;
     FModdoc: String;
     FHora: String;
     FTpimp: Integer;
     FTpemis: Integer;
     FTpamb: Integer;
     FTpcte: Integer;
     FProcemi: Integer;
     FVerproc: String;
     FRefcte: String;
     FCmunemi: String;
     FXmunemi: String;
     FUfemi: String;
     FModal: String;
     FTpserv: Integer;
     FCmunini: String;
     FXmunini: String;
     FUfini: String;
     FCmunfim: String;
     FXmunfim: String;
     FUffim: String;
     FRetira: Integer;
     FXdetretira: String;
     FToma: Integer;
     FCnpjtom: String;
     FIetom: String;
     FRaztom: String;
     FFantom: String;
     FFonetom: String;
     FLogratom: String;
     FNumerotom: String;
     FComptom: String;
     FBairrotom: String;
     FCmuntom: String;
     FXmuntom: String;
     FCeptom: String;
     FUftom: String;
     FCodtom: Integer;
     FTpdoctom: Integer;
     FXcaracad: String;
     FXcaracser: String;
     FXemi: String;
     FXorig: String;
     FXpass: String;
     FXdest: String;
     FXrota: String;
     FTpper: Integer;
     FDini: Tdatetime;
     FDfim: Tdatetime;
     FTphor: Integer;
     FHini: String;
     FHfim: String;
     FOrigcalc: String;
     FDestcalc: String;
     FXobs: String;
     FCodrem: Integer;
     FCnpjrem: String;
     FIerem: String;
     FRazrem: String;
     FFanrem: String;
     FFonerem: String;
     FLograrem: String;
     FNumerorem: String;
     FComprem: String;
     FBairrorem: String;
     FCmunrem: String;
     FXmunrem: String;
     FCeprem: String;
     FUfrem: String;
     FTpdocrem: Integer;
     FCodexp: Integer;
     FCnpjexp: String;
     FIeexp: String;
     FRazexp: String;
     FFanexp: String;
     FFoneexp: String;
     FLograexp: String;
     FNumeroexp: String;
     FCompexp: String;
     FBairroexp: String;
     FCmunexp: String;
     FXmunexp: String;
     FCepexp: String;
     FUfexp: String;
     FTpdocexp: Integer;
     FCodrec: Integer;
     FCnpjrec: String;
     FIerec: String;
     FRazrec: String;
     FFanrec: String;
     FFonerec: String;
     FLograrec: String;
     FNumerorec: String;
     FComprec: String;
     FBairrorec: String;
     FCmunrec: String;
     FXmunrec: String;
     FCeprec: String;
     FUfrec: String;
     FTpdocrec: Integer;
     FCoddes: Integer;
     FCnpjdes: String;
     FIedes: String;
     FRazdes: String;
     FFandes: String;
     FFonedes: String;
     FIsuf: String;
     FLogrades: String;
     FNumerodes: String;
     FCompdes: String;
     FBairrodes: String;
     FCmundes: String;
     FXmundes: String;
     FCepdes: String;
     FUfdes: String;
     FTpdocdes: Integer;
     FCnpjentdes: String;
     FRazentdes: String;
     FLograentdes: String;
     FNumeroentdes: String;
     FCompentdes: String;
     FBairroentdes: String;
     FCmunentdes: String;
     FXmunentdes: String;
     FUfentdes: String;
     FLocentdes: Integer;
     FEmailDes: String;
     FVtprest: Real;
     FVrec: Real;
     FCst: String;
     FVbc: Real;
     FPicms: Real;
     FVicms: Real;
     FPredbc: Real;
     FVcred: Real;
     FInfadfiscimp: String;
     FVmerc: Real;
     FPropred: String;
     FXoutcat: String;
     FRntrc: String;
     FDprev: Tdatetime;
     FLota: Integer;
     FSeriectrb: String;
     FNctrb: String;
     FStatus: String;
     FXmotivo: String;
     FRem: Integer;
     FExp: Integer;
     FRec: Integer;
     FDes: Integer;
     FInforem: Integer;
     FNprot: String;
     FCarga: String;
     FCod_lote :Integer;
     FDataEmis :TDateTime;
     FCodSeg :integer;
     FRespSeg :integer;
     Fcodigo_veiculo: integer;
     FNUM_CTE_ANULADO :Integer;


     procedure SetData(const Value: Tdatetime);
     procedure SetSerie(const Value: Integer);
     procedure SetNrcte(const Value: Integer);
     procedure SetNrenvcte(const Value: Integer);
     procedure SetVerxml(const Value: String);
     procedure SetIdchave(const Value: String);
     procedure SetCodufemit(const Value: String);
     procedure SetCfop(const Value: String);
     procedure SetNatop(const Value: String);
     procedure SetForpag(const Value: Integer);
     procedure SetModdoc(const Value: String);
     procedure SetHora(const Value: String);
     procedure SetTpimp(const Value: Integer);
     procedure SetTpemis(const Value: Integer);
     procedure SetTpamb(const Value: Integer);
     procedure SetTpcte(const Value: Integer);
     procedure SetProcemi(const Value: Integer);
     procedure SetVerproc(const Value: String);
     procedure SetRefcte(const Value: String);
     procedure SetCmunemi(const Value: String);
     procedure SetXmunemi(const Value: String);
     procedure SetUfemi(const Value: String);
     procedure SetModal(const Value: String);
     procedure SetTpserv(const Value: Integer);
     procedure SetCmunini(const Value: String);
     procedure SetXmunini(const Value: String);
     procedure SetUfini(const Value: String);
     procedure SetCmunfim(const Value: String);
     procedure SetXmunfim(const Value: String);
     procedure SetUffim(const Value: String);
     procedure SetRetira(const Value: Integer);
     procedure SetXdetretira(const Value: String);
     procedure SetToma(const Value: Integer);
     procedure SetCnpjtom(const Value: String);
     procedure SetIetom(const Value: String);
     procedure SetRaztom(const Value: String);
     procedure SetFantom(const Value: String);
     procedure SetFonetom(const Value: String);
     procedure SetLogratom(const Value: String);
     procedure SetNumerotom(const Value: String);
     procedure SetComptom(const Value: String);
     procedure SetBairrotom(const Value: String);
     procedure SetCmuntom(const Value: String);
     procedure SetXmuntom(const Value: String);
     procedure SetCeptom(const Value: String);
     procedure SetUftom(const Value: String);
     procedure SetCodtom(const Value: Integer);
     procedure SetTpdoctom(const Value: Integer);
     procedure SetXcaracad(const Value: String);
     procedure SetXcaracser(const Value: String);
     procedure SetXemi(const Value: String);
     procedure SetXorig(const Value: String);
     procedure SetXpass(const Value: String);
     procedure SetXdest(const Value: String);
     procedure SetXrota(const Value: String);
     procedure SetTpper(const Value: Integer);
     procedure SetDini(const Value: Tdatetime);
     procedure SetDfim(const Value: Tdatetime);
     procedure SetTphor(const Value: Integer);
     procedure SetHini(const Value: String);
     procedure SetHfim(const Value: String);
     procedure SetOrigcalc(const Value: String);
     procedure SetDestcalc(const Value: String);
     procedure SetXobs(const Value: String);
     procedure SetCodrem(const Value: Integer);
     procedure SetCnpjrem(const Value: String);
     procedure SetIerem(const Value: String);
     procedure SetRazrem(const Value: String);
     procedure SetFanrem(const Value: String);
     procedure SetFonerem(const Value: String);
     procedure SetLograrem(const Value: String);
     procedure SetNumerorem(const Value: String);
     procedure SetComprem(const Value: String);
     procedure SetBairrorem(const Value: String);
     procedure SetCmunrem(const Value: String);
     procedure SetXmunrem(const Value: String);
     procedure SetCeprem(const Value: String);
     procedure SetUfrem(const Value: String);
     procedure SetTpdocrem(const Value: Integer);
     procedure SetCodexp(const Value: Integer);
     procedure SetCnpjexp(const Value: String);
     procedure SetIeexp(const Value: String);
     procedure SetRazexp(const Value: String);
     procedure SetFanexp(const Value: String);
     procedure SetFoneexp(const Value: String);
     procedure SetLograexp(const Value: String);
     procedure SetNumeroexp(const Value: String);
     procedure SetCompexp(const Value: String);
     procedure SetBairroexp(const Value: String);
     procedure SetCmunexp(const Value: String);
     procedure SetXmunexp(const Value: String);
     procedure SetCepexp(const Value: String);
     procedure SetUfexp(const Value: String);
     procedure SetTpdocexp(const Value: Integer);
     procedure SetCodrec(const Value: Integer);
     procedure SetCnpjrec(const Value: String);
     procedure SetIerec(const Value: String);
     procedure SetRazrec(const Value: String);
     procedure SetFanrec(const Value: String);
     procedure SetFonerec(const Value: String);
     procedure SetLograrec(const Value: String);
     procedure SetNumerorec(const Value: String);
     procedure SetComprec(const Value: String);
     procedure SetBairrorec(const Value: String);
     procedure SetCmunrec(const Value: String);
     procedure SetXmunrec(const Value: String);
     procedure SetCeprec(const Value: String);
     procedure SetUfrec(const Value: String);
     procedure SetTpdocrec(const Value: Integer);
     procedure SetCoddes(const Value: Integer);
     procedure SetCnpjdes(const Value: String);
     procedure SetIedes(const Value: String);
     procedure SetRazdes(const Value: String);
     procedure SetFandes(const Value: String);
     procedure SetFonedes(const Value: String);
     procedure SetIsuf(const Value: String);
     procedure SetLogrades(const Value: String);
     procedure SetNumerodes(const Value: String);
     procedure SetCompdes(const Value: String);
     procedure SetBairrodes(const Value: String);
     procedure SetCmundes(const Value: String);
     procedure SetXmundes(const Value: String);
     procedure SetCepdes(const Value: String);
     procedure SetUfdes(const Value: String);
     procedure SetTpdocdes(const Value: Integer);
     procedure SetCnpjentdes(const Value: String);
     procedure SetRazentdes(const Value: String);
     procedure SetLograentdes(const Value: String);
     procedure SetNumeroentdes(const Value: String);
     procedure SetCompentdes(const Value: String);
     procedure SetBairroentdes(const Value: String);
     procedure SetCmunentdes(const Value: String);
     procedure SetXmunentdes(const Value: String);
     procedure SetUfentdes(const Value: String);
     procedure SetLocentdes(const Value: Integer);
     procedure SetEmailDes(const Value: String);
     procedure SetVtprest(const Value: Real);
     procedure SetVrec(const Value: Real);
     procedure SetCst(const Value: String);
     procedure SetVbc(const Value: Real);
     procedure SetPicms(const Value: Real);
     procedure SetVicms(const Value: Real);
     procedure SetPredbc(const Value: Real);
     procedure SetVcred(const Value: Real);
     procedure SetInfadfiscimp(const Value: String);
     procedure SetVmerc(const Value: Real);
     procedure SetPropred(const Value: String);
     procedure SetXoutcat(const Value: String);
     procedure SetRntrc(const Value: String);
     procedure SetDprev(const Value: Tdatetime);
     procedure SetLota(const Value: Integer);
     procedure SetSeriectrb(const Value: String);
     procedure SetNctrb(const Value: String);
     procedure SetStatus(const Value: String);
     procedure SetXmotivo(const Value: String);
     procedure SetRem(const Value: Integer);
     procedure SetExp(const Value: Integer);
     procedure SetRec(const Value: Integer);
     procedure SetDes(const Value: Integer);
     procedure SetInforem(const Value: Integer);
     procedure SetNprot(const Value: String);
     procedure SetCarga(const Value: String);
     procedure SetCod_lote(const Value :integer);
     procedure SetDataEmis(const Value :TDateTime);
     procedure SetCodSeg(const Value :Integer);
     procedure SetRespSeg(const Value :Integer);
     procedure Setcodigo_veiculo(const Value: integer);
     procedure SetNUM_CTE_ANULADO(const Value: Integer);

     Class function GetFromQuery(Qry: TMDOQuery):TClasseCTE;

     public

     property Data : Tdatetime  read FData write SetData;
     property Serie : Integer  read FSerie write SetSerie;
     property Nrcte : Integer  read FNrcte write SetNrcte;
     property Nrenvcte : Integer  read FNrenvcte write SetNrenvcte;
     property Verxml : String  read FVerxml write SetVerxml;
     property Idchave : String  read FIdchave write SetIdchave;
     property Codufemit : String  read FCodufemit write SetCodufemit;
     property Cfop : String  read FCfop write SetCfop;
     property Natop : String  read FNatop write SetNatop;
     property Forpag : Integer  read FForpag write SetForpag;
     property Moddoc : String  read FModdoc write SetModdoc;
     property Hora : String  read FHora write SetHora;
     property Tpimp : Integer  read FTpimp write SetTpimp;
     property Tpemis : Integer  read FTpemis write SetTpemis;
     property Tpamb : Integer  read FTpamb write SetTpamb;
     property Tpcte : Integer  read FTpcte write SetTpcte;
     property Procemi : Integer  read FProcemi write SetProcemi;
     property Verproc : String  read FVerproc write SetVerproc;
     property Refcte : String  read FRefcte write SetRefcte;
     property Cmunemi : String  read FCmunemi write SetCmunemi;
     property Xmunemi : String  read FXmunemi write SetXmunemi;
     property Ufemi : String  read FUfemi write SetUfemi;
     property Modal : String  read FModal write SetModal;
     property Tpserv : Integer  read FTpserv write SetTpserv;
     property Cmunini : String  read FCmunini write SetCmunini;
     property Xmunini : String  read FXmunini write SetXmunini;
     property Ufini : String  read FUfini write SetUfini;
     property Cmunfim : String  read FCmunfim write SetCmunfim;
     property Xmunfim : String  read FXmunfim write SetXmunfim;
     property Uffim : String  read FUffim write SetUffim;
     property Retira : Integer  read FRetira write SetRetira;
     property Xdetretira : String  read FXdetretira write SetXdetretira;
     property Toma : Integer  read FToma write SetToma;
     property Cnpjtom : String  read FCnpjtom write SetCnpjtom;
     property Ietom : String  read FIetom write SetIetom;
     property Raztom : String  read FRaztom write SetRaztom;
     property Fantom : String  read FFantom write SetFantom;
     property Fonetom : String  read FFonetom write SetFonetom;
     property Logratom : String  read FLogratom write SetLogratom;
     property Numerotom : String  read FNumerotom write SetNumerotom;
     property Comptom : String  read FComptom write SetComptom;
     property Bairrotom : String  read FBairrotom write SetBairrotom;
     property Cmuntom : String  read FCmuntom write SetCmuntom;
     property Xmuntom : String  read FXmuntom write SetXmuntom;
     property Ceptom : String  read FCeptom write SetCeptom;
     property Uftom : String  read FUftom write SetUftom;
     property Codtom : Integer  read FCodtom write SetCodtom;
     property Tpdoctom : Integer  read FTpdoctom write SetTpdoctom;
     property Xcaracad : String  read FXcaracad write SetXcaracad;
     property Xcaracser : String  read FXcaracser write SetXcaracser;
     property Xemi : String  read FXemi write SetXemi;
     property Xorig : String  read FXorig write SetXorig;
     property Xpass : String  read FXpass write SetXpass;
     property Xdest : String  read FXdest write SetXdest;
     property Xrota : String  read FXrota write SetXrota;
     property Tpper : Integer  read FTpper write SetTpper;
     property Dini : Tdatetime  read FDini write SetDini;
     property Dfim : Tdatetime  read FDfim write SetDfim;
     property Tphor : Integer  read FTphor write SetTphor;
     property Hini : String  read FHini write SetHini;
     property Hfim : String  read FHfim write SetHfim;
     property Origcalc : String  read FOrigcalc write SetOrigcalc;
     property Destcalc : String  read FDestcalc write SetDestcalc;
     property Xobs : String  read FXobs write SetXobs;
     property Codrem : Integer  read FCodrem write SetCodrem;
     property Cnpjrem : String  read FCnpjrem write SetCnpjrem;
     property Ierem : String  read FIerem write SetIerem;
     property Razrem : String  read FRazrem write SetRazrem;
     property Fanrem : String  read FFanrem write SetFanrem;
     property Fonerem : String  read FFonerem write SetFonerem;
     property Lograrem : String  read FLograrem write SetLograrem;
     property Numerorem : String  read FNumerorem write SetNumerorem;
     property Comprem : String  read FComprem write SetComprem;
     property Bairrorem : String  read FBairrorem write SetBairrorem;
     property Cmunrem : String  read FCmunrem write SetCmunrem;
     property Xmunrem : String  read FXmunrem write SetXmunrem;
     property Ceprem : String  read FCeprem write SetCeprem;
     property Ufrem : String  read FUfrem write SetUfrem;
     property Tpdocrem : Integer  read FTpdocrem write SetTpdocrem;
     property Codexp : Integer  read FCodexp write SetCodexp;
     property Cnpjexp : String  read FCnpjexp write SetCnpjexp;
     property Ieexp : String  read FIeexp write SetIeexp;
     property Razexp : String  read FRazexp write SetRazexp;
     property Fanexp : String  read FFanexp write SetFanexp;
     property Foneexp : String  read FFoneexp write SetFoneexp;
     property Lograexp : String  read FLograexp write SetLograexp;
     property Numeroexp : String  read FNumeroexp write SetNumeroexp;
     property Compexp : String  read FCompexp write SetCompexp;
     property Bairroexp : String  read FBairroexp write SetBairroexp;
     property Cmunexp : String  read FCmunexp write SetCmunexp;
     property Xmunexp : String  read FXmunexp write SetXmunexp;
     property Cepexp : String  read FCepexp write SetCepexp;
     property Ufexp : String  read FUfexp write SetUfexp;
     property Tpdocexp : Integer  read FTpdocexp write SetTpdocexp;
     property Codrec : Integer  read FCodrec write SetCodrec;
     property Cnpjrec : String  read FCnpjrec write SetCnpjrec;
     property Ierec : String  read FIerec write SetIerec;
     property Razrec : String  read FRazrec write SetRazrec;
     property Fanrec : String  read FFanrec write SetFanrec;
     property Fonerec : String  read FFonerec write SetFonerec;
     property Lograrec : String  read FLograrec write SetLograrec;
     property Numerorec : String  read FNumerorec write SetNumerorec;
     property Comprec : String  read FComprec write SetComprec;
     property Bairrorec : String  read FBairrorec write SetBairrorec;
     property Cmunrec : String  read FCmunrec write SetCmunrec;
     property Xmunrec : String  read FXmunrec write SetXmunrec;
     property Ceprec : String  read FCeprec write SetCeprec;
     property Ufrec : String  read FUfrec write SetUfrec;
     property Tpdocrec : Integer  read FTpdocrec write SetTpdocrec;
     property Coddes : Integer  read FCoddes write SetCoddes;
     property Cnpjdes : String  read FCnpjdes write SetCnpjdes;
     property Iedes : String  read FIedes write SetIedes;
     property Razdes : String  read FRazdes write SetRazdes;
     property Fandes : String  read FFandes write SetFandes;
     property Fonedes : String  read FFonedes write SetFonedes;
     property Isuf : String  read FIsuf write SetIsuf;
     property Logrades : String  read FLogrades write SetLogrades;
     property Numerodes : String  read FNumerodes write SetNumerodes;
     property Compdes : String  read FCompdes write SetCompdes;
     property Bairrodes : String  read FBairrodes write SetBairrodes;
     property Cmundes : String  read FCmundes write SetCmundes;
     property Xmundes : String  read FXmundes write SetXmundes;
     property Cepdes : String  read FCepdes write SetCepdes;
     property Ufdes : String  read FUfdes write SetUfdes;
     property Tpdocdes : Integer  read FTpdocdes write SetTpdocdes;
     property Cnpjentdes : String  read FCnpjentdes write SetCnpjentdes;
     property Razentdes : String  read FRazentdes write SetRazentdes;
     property Lograentdes : String  read FLograentdes write SetLograentdes;
     property Numeroentdes : String  read FNumeroentdes write SetNumeroentdes;
     property Compentdes : String  read FCompentdes write SetCompentdes;
     property Bairroentdes : String  read FBairroentdes write SetBairroentdes;
     property Cmunentdes : String  read FCmunentdes write SetCmunentdes;
     property Xmunentdes : String  read FXmunentdes write SetXmunentdes;
     property Ufentdes : String  read FUfentdes write SetUfentdes;
     property Locentdes : Integer  read FLocentdes write SetLocentdes;
     property EmailDes : String read FEmailDes write SetEmailDes;
     property Vtprest : Real  read FVtprest write SetVtprest;
     property Vrec : Real  read FVrec write SetVrec;
     property Cst : String  read FCst write SetCst;
     property Vbc : Real  read FVbc write SetVbc;
     property Picms : Real  read FPicms write SetPicms;
     property Vicms : Real  read FVicms write SetVicms;
     property Predbc : Real  read FPredbc write SetPredbc;
     property Vcred : Real  read FVcred write SetVcred;
     property Infadfiscimp : String  read FInfadfiscimp write SetInfadfiscimp;
     property Vmerc : Real  read FVmerc write SetVmerc;
     property Propred : String  read FPropred write SetPropred;
     property Xoutcat : String  read FXoutcat write SetXoutcat;
     property Rntrc : String  read FRntrc write SetRntrc;
     property Dprev : Tdatetime  read FDprev write SetDprev;
     property Lota : Integer  read FLota write SetLota;
     property Seriectrb : String  read FSeriectrb write SetSeriectrb;
     property Nctrb : String  read FNctrb write SetNctrb;
     property Status : String  read FStatus write SetStatus;
     property Xmotivo : String  read FXmotivo write SetXmotivo;
     property Rem : Integer  read FRem write SetRem;
     property Exp : Integer  read FExp write SetExp;
     property Rec : Integer  read FRec write SetRec;
     property Des : Integer  read FDes write SetDes;
     property Inforem : Integer  read FInforem write SetInforem;
     property Nprot : String  read FNprot write SetNprot;
     property Carga : String  read FCarga write SetCarga;
     property Cod_lote :Integer read FCod_lote write SetCod_lote;
     property DataEmis :TDateTime read FDataEmis write SetDataEmis;
     property CodSeg :integer read FCodSeg write SetCodSeg;
     property RespSeg :Integer read FRespSeg write SetRespSeg;
     property codigo_veiculo :integer read Fcodigo_veiculo write Setcodigo_veiculo;
     property NUM_CTE_ANULADO :Integer read FNUM_CTE_ANULADO write SetNUM_CTE_ANULADO;

     function Salvar:Boolean;
     function Deletar(Codigo :integer):Boolean;
     class function GetbyCodigo(Codigo: Integer):TClasseCTe;
    end;

implementation

uses SysUtils, DB, Modulo;

{ TCTE }

class function TClasseCTE.GetbyCodigo(Codigo: Integer): TClasseCTE;
var qry:  TMDOQuery;
begin
  result:= nil;
  qry := dm.GetQueryInstance('select * from CTE where numcte = :pcodigo ');
  qry.ParamByName('pcodigo').AsInteger := Codigo;
  qry.Open;

  if NOT qry.IsEmpty then
    result:= GetFromQuery(qry);
  FreeAndNil(qry);
end;

class function TClasseCTE.GetFromQuery(Qry: TMDOQuery): TClasseCTE;
begin
  result:=  TClasseCTE.Create;
   if Qry.FindField('Data') <> nil         then    result.Data             :=  Qry.Fieldbyname('Data').AsDatetime;
   if Qry.FindField('Serie') <> nil        then    result.Serie            :=  Qry.Fieldbyname('Serie').AsInteger;
   if Qry.FindField('Nrcte') <> nil        then    result.Nrcte            :=  Qry.Fieldbyname('Nrcte').AsInteger;
   if Qry.FindField('Nrenvcte') <> nil     then    result.Nrenvcte         :=  Qry.Fieldbyname('Nrenvcte').AsInteger;
   if Qry.FindField('Verxml') <> nil       then    result.Verxml           :=  Qry.Fieldbyname('Verxml').AsString;
   if Qry.FindField('Idchave') <> nil      then    result.Idchave          :=  Qry.Fieldbyname('Idchave').AsString;
   if Qry.FindField('Codufemit') <> nil    then    result.Codufemit        :=  Qry.Fieldbyname('Codufemit').AsString;
   if Qry.FindField('Cfop') <> nil         then    result.Cfop             :=  Qry.Fieldbyname('Cfop').AsString;
   if Qry.FindField('Natop') <> nil        then    result.Natop            :=  Qry.Fieldbyname('Natop').AsString;
   if Qry.FindField('Forpag') <> nil       then    result.Forpag           :=  Qry.Fieldbyname('Forpag').AsInteger;
   if Qry.FindField('Moddoc') <> nil       then    result.Moddoc           :=  Qry.Fieldbyname('Moddoc').AsString;
   if Qry.FindField('Hora') <> nil         then    result.Hora             :=  Qry.Fieldbyname('Hora').AsString;
   if Qry.FindField('Tpimp') <> nil        then    result.Tpimp            :=  Qry.Fieldbyname('Tpimp').AsInteger;
   if Qry.FindField('Tpemis') <> nil       then    result.Tpemis           :=  Qry.Fieldbyname('Tpemis').AsInteger;
   if Qry.FindField('Tpamb') <> nil        then    result.Tpamb            :=  Qry.Fieldbyname('Tpamb').AsInteger;
   if Qry.FindField('Tpcte') <> nil        then    result.Tpcte            :=  Qry.Fieldbyname('Tpcte').AsInteger;
   if Qry.FindField('Procemi') <> nil      then    result.Procemi          :=  Qry.Fieldbyname('Procemi').AsInteger;
   if Qry.FindField('Verproc') <> nil      then    result.Verproc          :=  Qry.Fieldbyname('Verproc').AsString;
   if Qry.FindField('Refcte') <> nil       then    result.Refcte           :=  Qry.Fieldbyname('Refcte').AsString;
   if Qry.FindField('Cmunemi') <> nil      then    result.Cmunemi          :=  Qry.Fieldbyname('Cmunemi').AsString;
   if Qry.FindField('Xmunemi') <> nil      then    result.Xmunemi          :=  Qry.Fieldbyname('Xmunemi').AsString;
   if Qry.FindField('Ufemi') <> nil        then    result.Ufemi            :=  Qry.Fieldbyname('Ufemi').AsString;
   if Qry.FindField('Modal') <> nil        then    result.Modal            :=  Qry.Fieldbyname('Modal').AsString;
   if Qry.FindField('Tpserv') <> nil       then    result.Tpserv           :=  Qry.Fieldbyname('Tpserv').AsInteger;
   if Qry.FindField('Cmunini') <> nil      then    result.Cmunini          :=  Qry.Fieldbyname('Cmunini').AsString;
   if Qry.FindField('Xmunini') <> nil      then    result.Xmunini          :=  Qry.Fieldbyname('Xmunini').AsString;
   if Qry.FindField('Ufini') <> nil        then    result.Ufini            :=  Qry.Fieldbyname('Ufini').AsString;
   if Qry.FindField('Cmunfim') <> nil      then    result.Cmunfim          :=  Qry.Fieldbyname('Cmunfim').AsString;
   if Qry.FindField('Xmunfim') <> nil      then    result.Xmunfim          :=  Qry.Fieldbyname('Xmunfim').AsString;
   if Qry.FindField('Uffim') <> nil        then    result.Uffim            :=  Qry.Fieldbyname('Uffim').AsString;
   if Qry.FindField('Retira') <> nil       then    result.Retira           :=  Qry.Fieldbyname('Retira').AsInteger;
   if Qry.FindField('Xdetretira') <> nil   then    result.Xdetretira       :=  Qry.Fieldbyname('Xdetretira').AsString;
   if Qry.FindField('Toma') <> nil         then    result.Toma             :=  Qry.Fieldbyname('Toma').AsInteger;
   if Qry.FindField('Cnpjtom') <> nil      then    result.Cnpjtom          :=  Qry.Fieldbyname('Cnpjtom').AsString;
   if Qry.FindField('Ietom') <> nil        then    result.Ietom            :=  Qry.Fieldbyname('Ietom').AsString;
   if Qry.FindField('Raztom') <> nil       then    result.Raztom           :=  Qry.Fieldbyname('Raztom').AsString;
   if Qry.FindField('Fantom') <> nil       then    result.Fantom           :=  Qry.Fieldbyname('Fantom').AsString;
   if Qry.FindField('Fonetom') <> nil      then    result.Fonetom          :=  Qry.Fieldbyname('Fonetom').AsString;
   if Qry.FindField('Logratom') <> nil     then    result.Logratom         :=  Qry.Fieldbyname('Logratom').AsString;
   if Qry.FindField('Numerotom') <> nil    then    result.Numerotom        :=  Qry.Fieldbyname('Numerotom').AsString;
   if Qry.FindField('Comptom') <> nil      then    result.Comptom          :=  Qry.Fieldbyname('Comptom').AsString;
   if Qry.FindField('Bairrotom') <> nil    then    result.Bairrotom        :=  Qry.Fieldbyname('Bairrotom').AsString;
   if Qry.FindField('Cmuntom') <> nil      then    result.Cmuntom          :=  Qry.Fieldbyname('Cmuntom').AsString;
   if Qry.FindField('Xmuntom') <> nil      then    result.Xmuntom          :=  Qry.Fieldbyname('Xmuntom').AsString;
   if Qry.FindField('Ceptom') <> nil       then    result.Ceptom           :=  Qry.Fieldbyname('Ceptom').AsString;
   if Qry.FindField('Uftom') <> nil        then    result.Uftom            :=  Qry.Fieldbyname('Uftom').AsString;
   if Qry.FindField('Codtom') <> nil       then    result.Codtom           :=  Qry.Fieldbyname('Codtom').AsInteger;
   if Qry.FindField('Tpdoctom') <> nil     then    result.Tpdoctom         :=  Qry.Fieldbyname('Tpdoctom').AsInteger;
   if Qry.FindField('Xcaracad') <> nil     then    result.Xcaracad         :=  Qry.Fieldbyname('Xcaracad').AsString;
   if Qry.FindField('Xcaracser') <> nil    then    result.Xcaracser        :=  Qry.Fieldbyname('Xcaracser').AsString;
   if Qry.FindField('Xemi') <> nil         then    result.Xemi             :=  Qry.Fieldbyname('Xemi').AsString;
   if Qry.FindField('Xorig') <> nil        then    result.Xorig            :=  Qry.Fieldbyname('Xorig').AsString;
   if Qry.FindField('Xpass') <> nil        then    result.Xpass            :=  Qry.Fieldbyname('Xpass').AsString;
   if Qry.FindField('Xdest') <> nil        then    result.Xdest            :=  Qry.Fieldbyname('Xdest').AsString;
   if Qry.FindField('Xrota') <> nil        then    result.Xrota            :=  Qry.Fieldbyname('Xrota').AsString;
   if Qry.FindField('Tpper') <> nil        then    result.Tpper            :=  Qry.Fieldbyname('Tpper').AsInteger;
   if Qry.FindField('Dini') <> nil         then    result.Dini             :=  Qry.Fieldbyname('Dini').AsDatetime;
   if Qry.FindField('Dfim') <> nil         then    result.Dfim             :=  Qry.Fieldbyname('Dfim').AsDatetime;
   if Qry.FindField('Tphor') <> nil        then    result.Tphor            :=  Qry.Fieldbyname('Tphor').AsInteger;
   if Qry.FindField('Hini') <> nil         then    result.Hini             :=  Qry.Fieldbyname('Hini').AsString;
   if Qry.FindField('Hfim') <> nil         then    result.Hfim             :=  Qry.Fieldbyname('Hfim').AsString;
   if Qry.FindField('Origcalc') <> nil     then    result.Origcalc         :=  Qry.Fieldbyname('Origcalc').AsString;
   if Qry.FindField('Destcalc') <> nil     then    result.Destcalc         :=  Qry.Fieldbyname('Destcalc').AsString;
   if Qry.FindField('Xobs') <> nil         then    result.Xobs             :=  Qry.Fieldbyname('Xobs').AsString;
   if Qry.FindField('Codrem') <> nil       then    result.Codrem           :=  Qry.Fieldbyname('Codrem').AsInteger;
   if Qry.FindField('Cnpjrem') <> nil      then    result.Cnpjrem          :=  Qry.Fieldbyname('Cnpjrem').AsString;
   if Qry.FindField('Ierem') <> nil        then    result.Ierem            :=  Qry.Fieldbyname('Ierem').AsString;
   if Qry.FindField('Razrem') <> nil       then    result.Razrem           :=  Qry.Fieldbyname('Razrem').AsString;
   if Qry.FindField('Fanrem') <> nil       then    result.Fanrem           :=  Qry.Fieldbyname('Fanrem').AsString;
   if Qry.FindField('Fonerem') <> nil      then    result.Fonerem          :=  Qry.Fieldbyname('Fonerem').AsString;
   if Qry.FindField('Lograrem') <> nil     then    result.Lograrem         :=  Qry.Fieldbyname('Lograrem').AsString;
   if Qry.FindField('Numerorem') <> nil    then    result.Numerorem        :=  Qry.Fieldbyname('Numerorem').AsString;
   if Qry.FindField('Comprem') <> nil      then    result.Comprem          :=  Qry.Fieldbyname('Comprem').AsString;
   if Qry.FindField('Bairrorem') <> nil    then    result.Bairrorem        :=  Qry.Fieldbyname('Bairrorem').AsString;
   if Qry.FindField('Cmunrem') <> nil      then    result.Cmunrem          :=  Qry.Fieldbyname('Cmunrem').AsString;
   if Qry.FindField('Xmunrem') <> nil      then    result.Xmunrem          :=  Qry.Fieldbyname('Xmunrem').AsString;
   if Qry.FindField('Ceprem') <> nil       then    result.Ceprem           :=  Qry.Fieldbyname('Ceprem').AsString;
   if Qry.FindField('Ufrem') <> nil        then    result.Ufrem            :=  Qry.Fieldbyname('Ufrem').AsString;
   if Qry.FindField('Tpdocrem') <> nil     then    result.Tpdocrem         :=  Qry.Fieldbyname('Tpdocrem').AsInteger;
   if Qry.FindField('Codexp') <> nil       then    result.Codexp           :=  Qry.Fieldbyname('Codexp').AsInteger;
   if Qry.FindField('Cnpjexp') <> nil      then    result.Cnpjexp          :=  Qry.Fieldbyname('Cnpjexp').AsString;
   if Qry.FindField('Ieexp') <> nil        then    result.Ieexp            :=  Qry.Fieldbyname('Ieexp').AsString;
   if Qry.FindField('Razexp') <> nil       then    result.Razexp           :=  Qry.Fieldbyname('Razexp').AsString;
   if Qry.FindField('Fanexp') <> nil       then    result.Fanexp           :=  Qry.Fieldbyname('Fanexp').AsString;
   if Qry.FindField('Foneexp') <> nil      then    result.Foneexp          :=  Qry.Fieldbyname('Foneexp').AsString;
   if Qry.FindField('Lograexp') <> nil     then    result.Lograexp         :=  Qry.Fieldbyname('Lograexp').AsString;
   if Qry.FindField('Numeroexp') <> nil    then    result.Numeroexp        :=  Qry.Fieldbyname('Numeroexp').AsString;
   if Qry.FindField('Compexp') <> nil      then    result.Compexp          :=  Qry.Fieldbyname('Compexp').AsString;
   if Qry.FindField('Bairroexp') <> nil    then    result.Bairroexp        :=  Qry.Fieldbyname('Bairroexp').AsString;
   if Qry.FindField('Cmunexp') <> nil      then    result.Cmunexp          :=  Qry.Fieldbyname('Cmunexp').AsString;
   if Qry.FindField('Xmunexp') <> nil      then    result.Xmunexp          :=  Qry.Fieldbyname('Xmunexp').AsString;
   if Qry.FindField('Cepexp') <> nil       then    result.Cepexp           :=  Qry.Fieldbyname('Cepexp').AsString;
   if Qry.FindField('Ufexp') <> nil        then    result.Ufexp            :=  Qry.Fieldbyname('Ufexp').AsString;
   if Qry.FindField('Tpdocexp') <> nil     then    result.Tpdocexp         :=  Qry.Fieldbyname('Tpdocexp').AsInteger;
   if Qry.FindField('Codrec') <> nil       then    result.Codrec           :=  Qry.Fieldbyname('Codrec').AsInteger;
   if Qry.FindField('Cnpjrec') <> nil      then    result.Cnpjrec          :=  Qry.Fieldbyname('Cnpjrec').AsString;
   if Qry.FindField('Ierec') <> nil        then    result.Ierec            :=  Qry.Fieldbyname('Ierec').AsString;
   if Qry.FindField('Razrec') <> nil       then    result.Razrec           :=  Qry.Fieldbyname('Razrec').AsString;
   if Qry.FindField('Fanrec') <> nil       then    result.Fanrec           :=  Qry.Fieldbyname('Fanrec').AsString;
   if Qry.FindField('Fonerec') <> nil      then    result.Fonerec          :=  Qry.Fieldbyname('Fonerec').AsString;
   if Qry.FindField('Lograrec') <> nil     then    result.Lograrec         :=  Qry.Fieldbyname('Lograrec').AsString;
   if Qry.FindField('Numerorec') <> nil    then    result.Numerorec        :=  Qry.Fieldbyname('Numerorec').AsString;
   if Qry.FindField('Comprec') <> nil      then    result.Comprec          :=  Qry.Fieldbyname('Comprec').AsString;
   if Qry.FindField('Bairrorec') <> nil    then    result.Bairrorec        :=  Qry.Fieldbyname('Bairrorec').AsString;
   if Qry.FindField('Cmunrec') <> nil      then    result.Cmunrec          :=  Qry.Fieldbyname('Cmunrec').AsString;
   if Qry.FindField('Xmunrec') <> nil      then    result.Xmunrec          :=  Qry.Fieldbyname('Xmunrec').AsString;
   if Qry.FindField('Ceprec') <> nil       then    result.Ceprec           :=  Qry.Fieldbyname('Ceprec').AsString;
   if Qry.FindField('Ufrec') <> nil        then    result.Ufrec            :=  Qry.Fieldbyname('Ufrec').AsString;
   if Qry.FindField('Tpdocrec') <> nil     then    result.Tpdocrec         :=  Qry.Fieldbyname('Tpdocrec').AsInteger;
   if Qry.FindField('Coddes') <> nil       then    result.Coddes           :=  Qry.Fieldbyname('Coddes').AsInteger;
   if Qry.FindField('Cnpjdes') <> nil      then    result.Cnpjdes          :=  Qry.Fieldbyname('Cnpjdes').AsString;
   if Qry.FindField('Iedes') <> nil        then    result.Iedes            :=  Qry.Fieldbyname('Iedes').AsString;
   if Qry.FindField('Razdes') <> nil       then    result.Razdes           :=  Qry.Fieldbyname('Razdes').AsString;
   if Qry.FindField('Fandes') <> nil       then    result.Fandes           :=  Qry.Fieldbyname('Fandes').AsString;
   if Qry.FindField('Fonedes') <> nil      then    result.Fonedes          :=  Qry.Fieldbyname('Fonedes').AsString;
   if Qry.FindField('Isuf') <> nil         then    result.Isuf             :=  Qry.Fieldbyname('Isuf').AsString;
   if Qry.FindField('Logrades') <> nil     then    result.Logrades         :=  Qry.Fieldbyname('Logrades').AsString;
   if Qry.FindField('Numerodes') <> nil    then    result.Numerodes        :=  Qry.Fieldbyname('Numerodes').AsString;
   if Qry.FindField('Compdes') <> nil      then    result.Compdes          :=  Qry.Fieldbyname('Compdes').AsString;
   if Qry.FindField('Bairrodes') <> nil    then    result.Bairrodes        :=  Qry.Fieldbyname('Bairrodes').AsString;
   if Qry.FindField('Cmundes') <> nil      then    result.Cmundes          :=  Qry.Fieldbyname('Cmundes').AsString;
   if Qry.FindField('Xmundes') <> nil      then    result.Xmundes          :=  Qry.Fieldbyname('Xmundes').AsString;
   if Qry.FindField('Cepdes') <> nil       then    result.Cepdes           :=  Qry.Fieldbyname('Cepdes').AsString;
   if Qry.FindField('Ufdes') <> nil        then    result.Ufdes            :=  Qry.Fieldbyname('Ufdes').AsString;
   if Qry.FindField('Tpdocdes') <> nil     then    result.Tpdocdes         :=  Qry.Fieldbyname('Tpdocdes').AsInteger;
   if Qry.FindField('Cnpjentdes') <> nil   then    result.Cnpjentdes       :=  Qry.Fieldbyname('Cnpjentdes').AsString;
   if Qry.FindField('Razentdes') <> nil    then    result.Razentdes        :=  Qry.Fieldbyname('Razentdes').AsString;
   if Qry.FindField('Lograentdes') <> nil  then    result.Lograentdes      :=  Qry.Fieldbyname('Lograentdes').AsString;
   if Qry.FindField('Numeroentdes') <> nil then    result.Numeroentdes     :=  Qry.Fieldbyname('Numeroentdes').AsString;
   if Qry.FindField('Compentdes') <> nil   then    result.Compentdes       :=  Qry.Fieldbyname('Compentdes').AsString;
   if Qry.FindField('Bairroentdes') <> nil then    result.Bairroentdes     :=  Qry.Fieldbyname('Bairroentdes').AsString;
   if Qry.FindField('Cmunentdes') <> nil   then    result.Cmunentdes       :=  Qry.Fieldbyname('Cmunentdes').AsString;
   if Qry.FindField('Xmunentdes') <> nil   then    result.Xmunentdes       :=  Qry.Fieldbyname('Xmunentdes').AsString;
   if Qry.FindField('Ufentdes') <> nil     then    result.Ufentdes         :=  Qry.Fieldbyname('Ufentdes').AsString;
   if Qry.FindField('Locentdes') <> nil    then    result.Locentdes        :=  Qry.Fieldbyname('Locentdes').AsInteger;
   if Qry.FindField('EmailDes') <> nil     then    Result.EmailDes         :=  Qry.fieldByName('EmailDes').AsString;
   if Qry.FindField('Vtprest') <> nil      then    result.Vtprest          :=  Qry.Fieldbyname('Vtprest').AsFloat;
   if Qry.FindField('Vrec') <> nil         then    result.Vrec             :=  Qry.Fieldbyname('Vrec').AsFloat;
   if Qry.FindField('Cst') <> nil          then    result.Cst              :=  Qry.Fieldbyname('Cst').AsString;
   if Qry.FindField('Vbc') <> nil          then    result.Vbc              :=  Qry.Fieldbyname('Vbc').AsFloat;
   if Qry.FindField('Picms') <> nil        then    result.Picms            :=  Qry.Fieldbyname('Picms').AsFloat;
   if Qry.FindField('Vicms') <> nil        then    result.Vicms            :=  Qry.Fieldbyname('Vicms').AsFloat;
   if Qry.FindField('Predbc') <> nil       then    result.Predbc           :=  Qry.Fieldbyname('Predbc').AsFloat;
   if Qry.FindField('Vcred') <> nil        then    result.Vcred            :=  Qry.Fieldbyname('Vcred').AsFloat;
   if Qry.FindField('Infadfiscimp') <> nil then    result.Infadfiscimp     :=  Qry.Fieldbyname('Infadfiscimp').AsString;
   if Qry.FindField('Vmerc') <> nil        then    result.Vmerc            :=  Qry.Fieldbyname('Vmerc').AsFloat;
   if Qry.FindField('Propred') <> nil      then    result.Propred          :=  Qry.Fieldbyname('Propred').AsString;
   if Qry.FindField('Xoutcat') <> nil      then    result.Xoutcat          :=  Qry.Fieldbyname('Xoutcat').AsString;
   if Qry.FindField('Rntrc') <> nil        then    result.Rntrc            :=  Qry.Fieldbyname('Rntrc').AsString;
   if Qry.FindField('Dprev') <> nil        then    result.Dprev            :=  Qry.Fieldbyname('Dprev').AsDatetime;
   if Qry.FindField('Lota') <> nil         then    result.Lota             :=  Qry.Fieldbyname('Lota').AsInteger;
   if Qry.FindField('Seriectrb') <> nil    then    result.Seriectrb        :=  Qry.Fieldbyname('Seriectrb').AsString;
   if Qry.FindField('Nctrb') <> nil        then    result.Nctrb            :=  Qry.Fieldbyname('Nctrb').AsString;
   if Qry.FindField('Status') <> nil       then    result.Status           :=  Qry.Fieldbyname('Status').AsString;
   if Qry.FindField('Xmotivo') <> nil      then    result.Xmotivo          :=  Qry.Fieldbyname('Xmotivo').AsString;
   if Qry.FindField('Rem') <> nil          then    result.Rem              :=  Qry.Fieldbyname('Rem').AsInteger;
   if Qry.FindField('Exp') <> nil          then    result.Exp              :=  Qry.Fieldbyname('Exp').AsInteger;
   if Qry.FindField('Rec') <> nil          then    result.Rec              :=  Qry.Fieldbyname('Rec').AsInteger;
   if Qry.FindField('Des') <> nil          then    result.Des              :=  Qry.Fieldbyname('Des').AsInteger;
   if Qry.FindField('Inforem') <> nil      then    result.Inforem          :=  Qry.Fieldbyname('Inforem').AsInteger;
   if Qry.FindField('Nprot') <> nil        then    result.Nprot            :=  Qry.Fieldbyname('Nprot').AsString;
   if Qry.FindField('Carga') <> nil        then    result.Carga            :=  Qry.Fieldbyname('Carga').AsString;
   if Qry.FindField('cod_lote') <> nil     then    result.Cod_lote         :=  Qry.Fieldbyname('cod_lote').AsInteger;
   if Qry.FindField('dataEmis') <> nil     then    Result.DataEmis         :=  Qry.fieldByName('DataEmis').AsDateTime;
   if Qry.FindField('codseg') <> nil       then    Result.CodSeg           :=  Qry.fieldByName('codseg').AsInteger;
   if Qry.FindField('respseg') <> nil      then    Result.respSeg          :=  Qry.fieldByName('respseg').AsInteger;
   if Qry.FindField('codigo_veiculo') <> nil then  Result.codigo_veiculo   :=  Qry.fieldByName('codigo_veiculo').AsInteger;
   if Qry.FindField('NUM_CTE_ANULADO') <> nil  then    Result.NUM_CTE_ANULADO  :=  Qry.fieldByName('NUM_CTE_ANULADO').AsInteger;
end;

function TClasseCTE.Deletar(Codigo :Integer): Boolean;
var qry:  TMDOQuery;
begin
 try
  Result := True;
  qry := dm.GetQueryInstance('Delete From CTE where codigo = :CODIGO ' );
  qry.ParamByName('CODIGO').AsInteger := Codigo;
  qry.ExecSQL;
  FreeAndNil(qry);
 except
   on e: Exception do begin
     Result := false;
     raise Exception.Create(e.Message);     
   end;
 end;
end;

function TClasseCTE.Salvar: Boolean;
var qry:  TMDOQuery;
begin
  qry := dm.GetQueryInstance('update or insert INTO CTE (DATA, SERIE, NUMCTE, NUMENVCTE, VERXML, IDCHAVE, CODUFEMIT, CFOP, NATOP,                  '+
                             'FORPAG, MODDOC, HORA, TPIMP, TPEMIS, TPAMB, TPCTE, PROCEMI, VERPROC, REFCTE, CMUNEMI, XMUNEMI,                       '+
                             'UFEMI, MODAL, TPSERV, CMUNINI, XMUNINI, UFINI, CMUNFIM, XMUNFIM, UFFIM, RETIRA, XDETRETIRA, TOMA,                    '+
                             'CNPJTOM, IETOM, RAZTOM, FANTOM, FONETOM, LOGRATOM, NUMEROTOM, COMPTOM, BAIRROTOM, CMUNTOM, XMUNTOM,                  '+
                             'CEPTOM, UFTOM, CODTOM, TPDOCTOM, XCARACAD, XCARACSER, XEMI, XORIG, XPASS, XDEST, XROTA, TPPER, DINI,                 '+
                             'DFIM, TPHOR, HINI, HFIM, ORIGCALC, DESTCALC, XOBS, CODREM, CNPJREM, IEREM, RAZREM, FANREM, FONEREM,                  '+
                             'LOGRAREM, NUMEROREM, COMPREM, BAIRROREM, CMUNREM, XMUNREM, CEPREM, UFREM, TPDOCREM, CODEXP, CNPJEXP,                 '+
                             'IEEXP, RAZEXP, FANEXP, FONEEXP, LOGRAEXP, NUMEROEXP, COMPEXP, BAIRROEXP, CMUNEXP, XMUNEXP, CEPEXP,                   '+
                             'UFEXP, TPDOCEXP, CODREC, CNPJREC, IEREC, RAZREC, FANREC, FONEREC, LOGRAREC, NUMEROREC, COMPREC,                      '+
                             'BAIRROREC, CMUNREC, XMUNREC, CEPREC, UFREC, TPDOCREC, CODDES, CNPJDES, IEDES, RAZDES, FANDES,                        '+
                             'FONEDES, ISUF, LOGRADES, NUMERODES, COMPDES, BAIRRODES, CMUNDES, XMUNDES, CEPDES, UFDES, TPDOCDES,                   '+
                             'CNPJENTDES, RAZENTDES, LOGRAENTDES, NUMEROENTDES, COMPENTDES, BAIRROENTDES, CMUNENTDES, XMUNENTDES,                  '+
                             'UFENTDES, LOCENTDES, EMAILDES, VTPREST, VREC, CST, VBC, PICMS, VICMS, PREDBC, VCRED, INFADFISCIMP, VMERC,             '+
                             'PROPRED, XOUTCAT, RNTRC, DPREV, LOTA, SERIECTRB, NCTRB, STATUS, XMOTIVO, REM, EXP, REC, DES, INFOREM,                 '+
                             ' NPROT, CARGA, cod_lote, dataemis, codseg, respSeg, codigo_veiculo, NUM_CTE_ANULADO)                                    '+
                             'VALUES (:DATA, :SERIE, :NUMCTE, :NUMENVCTE, :VERXML, :IDCHAVE, :CODUFEMIT, :CFOP, :NATOP,                             '+
                             ':FORPAG, :MODDOC, :HORA, :TPIMP, :TPEMIS, :TPAMB, :TPCTE, :PROCEMI, :VERPROC, :REFCTE, :CMUNEMI, :XMUNEMI,            '+
                             ':UFEMI, :MODAL, :TPSERV, :CMUNINI, :XMUNINI, :UFINI, :CMUNFIM, :XMUNFIM, :UFFIM, :RETIRA, :XDETRETIRA, :TOMA,         '+
                             ':CNPJTOM, :IETOM, :RAZTOM, :FANTOM, :FONETOM, :LOGRATOM, :NUMEROTOM, :COMPTOM, :BAIRROTOM, :CMUNTOM, :XMUNTOM,        '+
                             ':CEPTOM, :UFTOM, :CODTOM, :TPDOCTOM, :XCARACAD, :XCARACSER, :XEMI, :XORIG, :XPASS, :XDEST, :XROTA, :TPPER, :DINI,     '+
                             ':DFIM, :TPHOR, :HINI, :HFIM, :ORIGCALC, :DESTCALC, :XOBS, :CODREM, :CNPJREM, :IEREM, :RAZREM, :FANREM, :FONEREM,      '+
                             ':LOGRAREM, :NUMEROREM, :COMPREM, :BAIRROREM, :CMUNREM, :XMUNREM, :CEPREM, :UFREM, :TPDOCREM, :CODEXP, :CNPJEXP,       '+
                             ':IEEXP, :RAZEXP, :FANEXP, :FONEEXP, :LOGRAEXP, :NUMEROEXP, :COMPEXP, :BAIRROEXP, :CMUNEXP, :XMUNEXP, :CEPEXP,         '+
                             ':UFEXP, :TPDOCEXP, :CODREC, :CNPJREC, :IEREC, :RAZREC, :FANREC, :FONEREC, :LOGRAREC, :NUMEROREC, :COMPREC,            '+
                             ':BAIRROREC, :CMUNREC, :XMUNREC, :CEPREC, :UFREC, :TPDOCREC, :CODDES, :CNPJDES, :IEDES, :RAZDES, :FANDES,              '+
                             ':FONEDES, :ISUF, :LOGRADES, :NUMERODES, :COMPDES, :BAIRRODES, :CMUNDES, :XMUNDES, :CEPDES, :UFDES, :TPDOCDES,         '+
                             ':CNPJENTDES, :RAZENTDES, :LOGRAENTDES, :NUMEROENTDES, :COMPENTDES, :BAIRROENTDES, :CMUNENTDES, :XMUNENTDES,           '+
                             ':UFENTDES, :LOCENTDES, :EMAILDES, :VTPREST, :VREC, :CST, :VBC, :PICMS, :VICMS, :PREDBC, :VCRED, :INFADFISCIMP, :VMERC,'+
                             ':PROPRED, :XOUTCAT, :RNTRC, :DPREV, :LOTA, :SERIECTRB, :NCTRB, :STATUS, :XMOTIVO, :REM, :EXP, :REC, :DES, :INFOREM,   '+
                             ':NPROT, :CARGA, :cod_lote, :dataemis, :codseg, :respSeg, :codigo_veiculo, :NUM_CTE_ANULADO)                             ');

  if Nrcte > 0 then
    qry.ParamByName('NUMCTE').AsInteger := Nrcte
  else
    qry.ParamByName('NUMCTE').Clear;

   qry.ParamByName('Data').AsDatetime     :=  Data ;
   qry.ParamByName('Serie').AsInteger     :=  Serie ;
   qry.ParamByName('Numenvcte').AsInteger     :=  Nrenvcte ;
   qry.ParamByName('Verxml').AsString     :=  copy(Verxml,1,4);
   qry.ParamByName('Idchave').AsString     :=  copy(Idchave,1,44);
   qry.ParamByName('Codufemit').AsString     :=  copy(Codufemit,1,2);
   qry.ParamByName('Cfop').AsString     :=  copy(Cfop,1,4);
   qry.ParamByName('Natop').AsString     :=  copy(Natop,1,60);
   qry.ParamByName('Forpag').AsInteger     :=  Forpag ;
   qry.ParamByName('Moddoc').AsString     :=  copy(Moddoc,1,2);
   qry.ParamByName('Hora').AsString     :=  copy(Hora,1,8);
   qry.ParamByName('Tpimp').AsInteger     :=  Tpimp ;
   qry.ParamByName('Tpemis').AsInteger     :=  Tpemis ;
   qry.ParamByName('Tpamb').AsInteger     :=  Tpamb ;
   qry.ParamByName('Tpcte').AsInteger     :=  Tpcte ;
   qry.ParamByName('Procemi').AsInteger     :=  Procemi ;
   qry.ParamByName('Verproc').AsString     :=  copy(Verproc,1,5);
   qry.ParamByName('Refcte').AsString     :=  copy(Refcte,1,44);
   qry.ParamByName('Cmunemi').AsString     :=  copy(Cmunemi,1,7);
   qry.ParamByName('Xmunemi').AsString     :=  copy(Xmunemi,1,50);
   qry.ParamByName('Ufemi').AsString     :=  copy(Ufemi,1,2);
   qry.ParamByName('Modal').AsString     :=  copy(Modal,1,2);
   qry.ParamByName('Tpserv').AsInteger     :=  Tpserv ;
   qry.ParamByName('Cmunini').AsString     :=  copy(Cmunini,1,7);
   qry.ParamByName('Xmunini').AsString     :=  copy(Xmunini,1,50);
   qry.ParamByName('Ufini').AsString     :=  copy(Ufini,1,2);
   qry.ParamByName('Cmunfim').AsString     :=  copy(Cmunfim,1,7);
   qry.ParamByName('Xmunfim').AsString     :=  copy(Xmunfim,1,50);
   qry.ParamByName('Uffim').AsString     :=  copy(Uffim,1,2);
   qry.ParamByName('Retira').AsInteger     :=  Retira ;
   qry.ParamByName('Xdetretira').AsString     :=  copy(Xdetretira,1,160);
   qry.ParamByName('Toma').AsInteger     :=  Toma ;
   qry.ParamByName('Cnpjtom').AsString     :=  copy(Cnpjtom,1,14);
   qry.ParamByName('Ietom').AsString     :=  copy(Ietom,1,14);
   qry.ParamByName('Raztom').AsString     :=  copy(Raztom,1,50);
   qry.ParamByName('Fantom').AsString     :=  copy(Fantom,1,50);
   qry.ParamByName('Fonetom').AsString     :=  copy(Fonetom,1,12);
   qry.ParamByName('Logratom').AsString     :=  copy(Logratom,1,40);
   qry.ParamByName('Numerotom').AsString     :=  copy(Numerotom,1,10);
   qry.ParamByName('Comptom').AsString     :=  copy(Comptom,1,40);
   qry.ParamByName('Bairrotom').AsString     :=  copy(Bairrotom,1,30);
   qry.ParamByName('Cmuntom').AsString     :=  copy(Cmuntom,1,7);
   qry.ParamByName('Xmuntom').AsString     :=  copy(Xmuntom,1,50);
   qry.ParamByName('Ceptom').AsString     :=  copy(Ceptom,1,8);
   qry.ParamByName('Uftom').AsString     :=  copy(Uftom,1,2);
   qry.ParamByName('Codtom').AsInteger     :=  Codtom ;
   qry.ParamByName('Tpdoctom').AsInteger     :=  Tpdoctom ;
   qry.ParamByName('Xcaracad').AsString     :=  copy(Xcaracad,1,15);
   qry.ParamByName('Xcaracser').AsString     :=  copy(Xcaracser,1,30);
   qry.ParamByName('Xemi').AsString     :=  copy(Xemi,1,20);
   qry.ParamByName('Xorig').AsString     :=  copy(Xorig,1,15);
   qry.ParamByName('Xpass').AsString     :=  copy(Xpass,1,15);
   qry.ParamByName('Xdest').AsString     :=  copy(Xdest,1,15);
   qry.ParamByName('Xrota').AsString     :=  copy(Xrota,1,10);
   qry.ParamByName('Tpper').AsInteger     :=  Tpper ;
   qry.ParamByName('Dini').AsDatetime     :=  Dini ;
   qry.ParamByName('Dfim').AsDatetime     :=  Dfim ;
   qry.ParamByName('Tphor').AsInteger     :=  Tphor ;
   qry.ParamByName('Hini').AsString     :=  copy(Hini,1,8);
   qry.ParamByName('Hfim').AsString     :=  copy(Hfim,1,8);
   qry.ParamByName('Origcalc').AsString     :=  copy(Origcalc,1,40);
   qry.ParamByName('Destcalc').AsString     :=  copy(Destcalc,1,40);
   qry.ParamByName('Xobs').AsString     :=  trim(Xobs);
   qry.ParamByName('Codrem').AsInteger     :=  Codrem ;
   qry.ParamByName('Cnpjrem').AsString     :=  copy(Cnpjrem,1,14);
   qry.ParamByName('Ierem').AsString     :=  copy(Ierem,1,14);
   qry.ParamByName('Razrem').AsString     :=  copy(Razrem,1,50);
   qry.ParamByName('Fanrem').AsString     :=  copy(Fanrem,1,50);
   qry.ParamByName('Fonerem').AsString     :=  copy(Fonerem,1,12);
   qry.ParamByName('Lograrem').AsString     :=  copy(Lograrem,1,40);
   qry.ParamByName('Numerorem').AsString     :=  copy(Numerorem,1,10);
   qry.ParamByName('Comprem').AsString     :=  copy(Comprem,1,40);
   qry.ParamByName('Bairrorem').AsString     :=  copy(Bairrorem,1,30);
   qry.ParamByName('Cmunrem').AsString     :=  copy(Cmunrem,1,7);
   qry.ParamByName('Xmunrem').AsString     :=  copy(Xmunrem,1,50);
   qry.ParamByName('Ceprem').AsString     :=  copy(Ceprem,1,8);
   qry.ParamByName('Ufrem').AsString     :=  copy(Ufrem,1,2);
   qry.ParamByName('Tpdocrem').AsInteger     :=  Tpdocrem ;
   qry.ParamByName('Codexp').AsInteger     :=  Codexp ;
   qry.ParamByName('Cnpjexp').AsString     :=  copy(Cnpjexp,1,14);
   qry.ParamByName('Ieexp').AsString     :=  copy(Ieexp,1,14);
   qry.ParamByName('Razexp').AsString     :=  copy(Razexp,1,50);
   qry.ParamByName('Fanexp').AsString     :=  copy(Fanexp,1,50);
   qry.ParamByName('Foneexp').AsString     :=  copy(Foneexp,1,12);
   qry.ParamByName('Lograexp').AsString     :=  copy(Lograexp,1,40);
   qry.ParamByName('Numeroexp').AsString     :=  copy(Numeroexp,1,10);
   qry.ParamByName('Compexp').AsString     :=  copy(Compexp,1,40);
   qry.ParamByName('Bairroexp').AsString     :=  copy(Bairroexp,1,30);
   qry.ParamByName('Cmunexp').AsString     :=  copy(Cmunexp,1,7);
   qry.ParamByName('Xmunexp').AsString     :=  copy(Xmunexp,1,50);
   qry.ParamByName('Cepexp').AsString     :=  copy(Cepexp,1,8);
   qry.ParamByName('Ufexp').AsString     :=  copy(Ufexp,1,2);
   qry.ParamByName('Tpdocexp').AsInteger     :=  Tpdocexp ;
   qry.ParamByName('Codrec').AsInteger     :=  Codrec ;
   qry.ParamByName('Cnpjrec').AsString     :=  copy(Cnpjrec,1,14);
   qry.ParamByName('Ierec').AsString     :=  copy(Ierec,1,14);
   qry.ParamByName('Razrec').AsString     :=  copy(Razrec,1,50);
   qry.ParamByName('Fanrec').AsString     :=  copy(Fanrec,1,50);
   qry.ParamByName('Fonerec').AsString     :=  copy(Fonerec,1,12);
   qry.ParamByName('Lograrec').AsString     :=  copy(Lograrec,1,40);
   qry.ParamByName('Numerorec').AsString     :=  copy(Numerorec,1,10);
   qry.ParamByName('Comprec').AsString     :=  copy(Comprec,1,40);
   qry.ParamByName('Bairrorec').AsString     :=  copy(Bairrorec,1,30);
   qry.ParamByName('Cmunrec').AsString     :=  copy(Cmunrec,1,7);
   qry.ParamByName('Xmunrec').AsString     :=  copy(Xmunrec,1,50);
   qry.ParamByName('Ceprec').AsString     :=  copy(Ceprec,1,8);
   qry.ParamByName('Ufrec').AsString     :=  copy(Ufrec,1,2);
   qry.ParamByName('Tpdocrec').AsInteger     :=  Tpdocrec ;
   qry.ParamByName('Coddes').AsInteger     :=  Coddes ;
   qry.ParamByName('Cnpjdes').AsString     :=  copy(Cnpjdes,1,14);
   qry.ParamByName('Iedes').AsString     :=  copy(Iedes,1,14);
   qry.ParamByName('Razdes').AsString     :=  copy(Razdes,1,50);
   qry.ParamByName('Fandes').AsString     :=  copy(Fandes,1,50);
   qry.ParamByName('Fonedes').AsString     :=  copy(Fonedes,1,12);
   qry.ParamByName('Isuf').AsString     :=  copy(Isuf,1,9);
   qry.ParamByName('Logrades').AsString     :=  copy(Logrades,1,40);
   qry.ParamByName('Numerodes').AsString     :=  copy(Numerodes,1,10);
   qry.ParamByName('Compdes').AsString     :=  copy(Compdes,1,40);
   qry.ParamByName('Bairrodes').AsString     :=  copy(Bairrodes,1,30);
   qry.ParamByName('Cmundes').AsString     :=  copy(Cmundes,1,7);
   qry.ParamByName('Xmundes').AsString     :=  copy(Xmundes,1,50);
   qry.ParamByName('Cepdes').AsString     :=  copy(Cepdes,1,8);
   qry.ParamByName('Ufdes').AsString     :=  copy(Ufdes,1,2);
   qry.ParamByName('Tpdocdes').AsInteger     :=  Tpdocdes ;
   qry.ParamByName('Cnpjentdes').AsString     :=  copy(Cnpjentdes,1,14);
   qry.ParamByName('Razentdes').AsString     :=  copy(Razentdes,1,50);
   qry.ParamByName('Lograentdes').AsString     :=  copy(Lograentdes,1,40);
   qry.ParamByName('Numeroentdes').AsString     :=  copy(Numeroentdes,1,10);
   qry.ParamByName('Compentdes').AsString     :=  copy(Compentdes,1,40);
   qry.ParamByName('Bairroentdes').AsString     :=  copy(Bairroentdes,1,30);
   qry.ParamByName('Cmunentdes').AsString     :=  copy(Cmunentdes,1,7);
   qry.ParamByName('Xmunentdes').AsString     :=  copy(Xmunentdes,1,50);
   qry.ParamByName('Ufentdes').AsString     :=  copy(Ufentdes,1,2);
   qry.ParamByName('Locentdes').AsInteger     :=  Locentdes ;
   qry.ParamByName('Emaildes').AsString     :=  EmailDes;
   qry.ParamByName('Vtprest').AsFloat     :=  Vtprest ;
   qry.ParamByName('Vrec').AsFloat     :=  Vrec ;
   qry.ParamByName('Cst').AsString     :=  copy(Cst,1,2);
   qry.ParamByName('Vbc').AsFloat     :=  Vbc ;
   qry.ParamByName('Picms').AsFloat     :=  Picms ;
   qry.ParamByName('Vicms').AsFloat     :=  Vicms ;
   qry.ParamByName('Predbc').AsFloat     :=  Predbc ;
   qry.ParamByName('Vcred').AsFloat     :=  Vcred ;
   qry.ParamByName('Infadfiscimp').AsString     :=  copy(Infadfiscimp,1,255);
   qry.ParamByName('Vmerc').AsFloat     :=  Vmerc ;
   qry.ParamByName('Propred').AsString     :=  copy(Propred,1,60);
   qry.ParamByName('Xoutcat').AsString     :=  copy(Xoutcat,1,30);
   qry.ParamByName('Rntrc').AsString     :=  copy(Rntrc,1,14);
   qry.ParamByName('Dprev').AsDatetime     :=  Dprev ;
   qry.ParamByName('Lota').AsInteger     :=  Lota ;
   qry.ParamByName('Seriectrb').AsString     :=  copy(Seriectrb,1,3);
   qry.ParamByName('Nctrb').AsString     :=  copy(Nctrb,1,6);
   qry.ParamByName('Status').AsString     :=  copy(Status,1,3);
   qry.ParamByName('Xmotivo').AsString     :=  copy(Xmotivo,1,255);
   qry.ParamByName('Rem').AsInteger     :=  Rem ;
   qry.ParamByName('Exp').AsInteger     :=  Exp ;
   qry.ParamByName('Rec').AsInteger     :=  Rec ;
   qry.ParamByName('Des').AsInteger     :=  Des ;
   qry.ParamByName('Inforem').AsInteger     :=  Inforem ;
   qry.ParamByName('Nprot').AsString     :=  copy(Nprot,1,15);
   qry.ParamByName('Carga').AsString     :=  copy(Carga,1,1);
   qry.ParamByName('cod_lote').AsInteger := Cod_lote;
   qry.ParamByName('DataEmis').AsDateTime := DataEmis;
   qry.ParamByName('codseg').AsInteger   := CodSeg;
   qry.ParamByName('codigo_veiculo').AsInteger   := codigo_veiculo;
   qry.ParamByName('NUM_CTE_ANULADO').AsInteger   := NUM_CTE_ANULADO;  

  qry.ExecSQL;
  FreeAndNil(qry);
end;

procedure TClasseCTE.SetData(const Value: Tdatetime);
begin
  FData := Value;
end;

procedure TClasseCTE.SetSerie(const Value: Integer);
begin
  FSerie := Value;
end;

procedure TClasseCTE.SetNrcte(const Value: Integer);
begin
  FNrcte := Value;
end;

procedure TClasseCTE.SetNrenvcte(const Value: Integer);
begin
  FNrenvcte := Value;
end;

procedure TClasseCTE.SetVerxml(const Value: String);
begin
  FVerxml := Value;
end;

procedure TClasseCTE.SetIdchave(const Value: String);
begin
  FIdchave := Value;
end;

procedure TClasseCTE.SetCodufemit(const Value: String);
begin
  FCodufemit := Value;
end;

procedure TClasseCTE.SetCfop(const Value: String);
begin
  FCfop := Value;
end;

procedure TClasseCTE.SetNatop(const Value: String);
begin
  FNatop := Value;
end;

procedure TClasseCTE.SetForpag(const Value: Integer);
begin
  FForpag := Value;
end;

procedure TClasseCTE.SetModdoc(const Value: String);
begin
  FModdoc := Value;
end;

procedure TClasseCTE.SetHora(const Value: String);
begin
  FHora := Value;
end;

procedure TClasseCTE.SetTpimp(const Value: Integer);
begin
  FTpimp := Value;
end;

procedure TClasseCTE.SetTpemis(const Value: Integer);
begin
  FTpemis := Value;
end;

procedure TClasseCTE.SetTpamb(const Value: Integer);
begin
  FTpamb := Value;
end;

procedure TClasseCTE.SetTpcte(const Value: Integer);
begin
  FTpcte := Value;
end;

procedure TClasseCTE.SetProcemi(const Value: Integer);
begin
  FProcemi := Value;
end;

procedure TClasseCTE.SetVerproc(const Value: String);
begin
  FVerproc := Value;
end;

procedure TClasseCTE.SetRefcte(const Value: String);
begin
  FRefcte := Value;
end;

procedure TClasseCTE.SetCmunemi(const Value: String);
begin
  FCmunemi := Value;
end;

procedure TClasseCTE.SetXmunemi(const Value: String);
begin
  FXmunemi := Value;
end;

procedure TClasseCTE.SetUfemi(const Value: String);
begin
  FUfemi := Value;
end;

procedure TClasseCTE.SetModal(const Value: String);
begin
  FModal := Value;
end;

procedure TClasseCTE.SetTpserv(const Value: Integer);
begin
  FTpserv := Value;
end;

procedure TClasseCTE.SetCmunini(const Value: String);
begin
  FCmunini := Value;
end;

procedure TClasseCTE.SetXmunini(const Value: String);
begin
  FXmunini := Value;
end;

procedure TClasseCTE.SetUfini(const Value: String);
begin
  FUfini := Value;
end;

procedure TClasseCTE.SetCmunfim(const Value: String);
begin
  FCmunfim := Value;
end;

procedure TClasseCTE.SetXmunfim(const Value: String);
begin
  FXmunfim := Value;
end;

procedure TClasseCTE.SetUffim(const Value: String);
begin
  FUffim := Value;
end;

procedure TClasseCTE.SetRetira(const Value: Integer);
begin
  FRetira := Value;
end;

procedure TClasseCTE.SetXdetretira(const Value: String);
begin
  FXdetretira := Value;
end;

procedure TClasseCTE.SetToma(const Value: Integer);
begin
  FToma := Value;
end;

procedure TClasseCTE.SetCnpjtom(const Value: String);
begin
  FCnpjtom := Value;
end;

procedure TClasseCTE.SetIetom(const Value: String);
begin
  FIetom := Value;
end;

procedure TClasseCTE.SetRaztom(const Value: String);
begin
  FRaztom := Value;
end;

procedure TClasseCTE.SetFantom(const Value: String);
begin
  FFantom := Value;
end;

procedure TClasseCTE.SetFonetom(const Value: String);
begin
  FFonetom := Value;
end;

procedure TClasseCTE.SetLogratom(const Value: String);
begin
  FLogratom := Value;
end;

procedure TClasseCTE.SetNumerotom(const Value: String);
begin
  FNumerotom := Value;
end;

procedure TClasseCTE.SetComptom(const Value: String);
begin
  FComptom := Value;
end;

procedure TClasseCTE.SetBairrotom(const Value: String);
begin
  FBairrotom := Value;
end;

procedure TClasseCTE.SetCmuntom(const Value: String);
begin
  FCmuntom := Value;
end;

procedure TClasseCTE.SetXmuntom(const Value: String);
begin
  FXmuntom := Value;
end;

procedure TClasseCTE.SetCeptom(const Value: String);
begin
  FCeptom := Value;
end;

procedure TClasseCTE.SetUftom(const Value: String);
begin
  FUftom := Value;
end;

procedure TClasseCTE.SetCodtom(const Value: Integer);
begin
  FCodtom := Value;
end;

procedure TClasseCTE.SetTpdoctom(const Value: Integer);
begin
  FTpdoctom := Value;
end;

procedure TClasseCTE.SetXcaracad(const Value: String);
begin
  FXcaracad := Value;
end;

procedure TClasseCTE.SetXcaracser(const Value: String);
begin
  FXcaracser := Value;
end;

procedure TClasseCTE.SetXemi(const Value: String);
begin
  FXemi := Value;
end;

procedure TClasseCTE.SetXorig(const Value: String);
begin
  FXorig := Value;
end;

procedure TClasseCTE.SetXpass(const Value: String);
begin
  FXpass := Value;
end;

procedure TClasseCTE.SetXdest(const Value: String);
begin
  FXdest := Value;
end;

procedure TClasseCTE.SetXrota(const Value: String);
begin
  FXrota := Value;
end;

procedure TClasseCTE.SetTpper(const Value: Integer);
begin
  FTpper := Value;
end;

procedure TClasseCTE.SetDini(const Value: Tdatetime);
begin
  FDini := Value;
end;

procedure TClasseCTE.SetDfim(const Value: Tdatetime);
begin
  FDfim := Value;
end;

procedure TClasseCTE.SetTphor(const Value: Integer);
begin
  FTphor := Value;
end;

procedure TClasseCTE.SetHini(const Value: String);
begin
  FHini := Value;
end;

procedure TClasseCTE.SetHfim(const Value: String);
begin
  FHfim := Value;
end;

procedure TClasseCTE.SetOrigcalc(const Value: String);
begin
  FOrigcalc := Value;
end;

procedure TClasseCTE.SetDestcalc(const Value: String);
begin
  FDestcalc := Value;
end;

procedure TClasseCTE.SetXobs(const Value: String);
begin
  FXobs := Value;
end;

procedure TClasseCTE.SetCodrem(const Value: Integer);
begin
  FCodrem := Value;
end;

procedure TClasseCTE.SetCnpjrem(const Value: String);
begin
  FCnpjrem := Value;
end;

procedure TClasseCTE.SetIerem(const Value: String);
begin
  FIerem := Value;
end;

procedure TClasseCTE.SetRazrem(const Value: String);
begin
  FRazrem := Value;
end;

procedure TClasseCTE.SetFanrem(const Value: String);
begin
  FFanrem := Value;
end;

procedure TClasseCTE.SetFonerem(const Value: String);
begin
  FFonerem := Value;
end;

procedure TClasseCTE.SetLograrem(const Value: String);
begin
  FLograrem := Value;
end;

procedure TClasseCTE.SetNumerorem(const Value: String);
begin
  FNumerorem := Value;
end;

procedure TClasseCTE.SetComprem(const Value: String);
begin
  FComprem := Value;
end;

procedure TClasseCTE.SetBairrorem(const Value: String);
begin
  FBairrorem := Value;
end;

procedure TClasseCTE.SetCmunrem(const Value: String);
begin
  FCmunrem := Value;
end;

procedure TClasseCTE.SetXmunrem(const Value: String);
begin
  FXmunrem := Value;
end;

procedure TClasseCTE.SetCeprem(const Value: String);
begin
  FCeprem := Value;
end;

procedure TClasseCTE.SetUfrem(const Value: String);
begin
  FUfrem := Value;
end;

procedure TClasseCTE.SetTpdocrem(const Value: Integer);
begin
  FTpdocrem := Value;
end;

procedure TClasseCTE.SetCodexp(const Value: Integer);
begin
  FCodexp := Value;
end;

procedure TClasseCTE.SetCnpjexp(const Value: String);
begin
  FCnpjexp := Value;
end;

procedure TClasseCTE.SetIeexp(const Value: String);
begin
  FIeexp := Value;
end;

procedure TClasseCTE.SetRazexp(const Value: String);
begin
  FRazexp := Value;
end;

procedure TClasseCTE.SetFanexp(const Value: String);
begin
  FFanexp := Value;
end;

procedure TClasseCTE.SetFoneexp(const Value: String);
begin
  FFoneexp := Value;
end;

procedure TClasseCTE.SetLograexp(const Value: String);
begin
  FLograexp := Value;
end;

procedure TClasseCTE.SetNumeroexp(const Value: String);
begin
  FNumeroexp := Value;
end;

procedure TClasseCTE.SetCompexp(const Value: String);
begin
  FCompexp := Value;
end;

procedure TClasseCTE.SetBairroexp(const Value: String);
begin
  FBairroexp := Value;
end;

procedure TClasseCTE.SetCmunexp(const Value: String);
begin
  FCmunexp := Value;
end;

procedure TClasseCTE.SetXmunexp(const Value: String);
begin
  FXmunexp := Value;
end;

procedure TClasseCTE.SetCepexp(const Value: String);
begin
  FCepexp := Value;
end;

procedure TClasseCTE.SetUfexp(const Value: String);
begin
  FUfexp := Value;
end;

procedure TClasseCTE.SetTpdocexp(const Value: Integer);
begin
  FTpdocexp := Value;
end;

procedure TClasseCTE.SetCodrec(const Value: Integer);
begin
  FCodrec := Value;
end;

procedure TClasseCTE.SetCnpjrec(const Value: String);
begin
  FCnpjrec := Value;
end;

procedure TClasseCTE.SetIerec(const Value: String);
begin
  FIerec := Value;
end;

procedure TClasseCTE.SetRazrec(const Value: String);
begin
  FRazrec := Value;
end;

procedure TClasseCTE.SetFanrec(const Value: String);
begin
  FFanrec := Value;
end;

procedure TClasseCTE.SetFonerec(const Value: String);
begin
  FFonerec := Value;
end;

procedure TClasseCTE.SetLograrec(const Value: String);
begin
  FLograrec := Value;
end;

procedure TClasseCTE.SetNumerorec(const Value: String);
begin
  FNumerorec := Value;
end;

procedure TClasseCTE.SetComprec(const Value: String);
begin
  FComprec := Value;
end;

procedure TClasseCTE.SetBairrorec(const Value: String);
begin
  FBairrorec := Value;
end;

procedure TClasseCTE.SetCmunrec(const Value: String);
begin
  FCmunrec := Value;
end;

procedure TClasseCTE.SetXmunrec(const Value: String);
begin
  FXmunrec := Value;
end;

procedure TClasseCTE.SetCeprec(const Value: String);
begin
  FCeprec := Value;
end;

procedure TClasseCTE.SetUfrec(const Value: String);
begin
  FUfrec := Value;
end;

procedure TClasseCTE.SetTpdocrec(const Value: Integer);
begin
  FTpdocrec := Value;
end;

procedure TClasseCTE.SetCoddes(const Value: Integer);
begin
  FCoddes := Value;
end;

procedure TClasseCTE.SetCnpjdes(const Value: String);
begin
  FCnpjdes := Value;
end;

procedure TClasseCTE.SetIedes(const Value: String);
begin
  FIedes := Value;
end;

procedure TClasseCTE.SetRazdes(const Value: String);
begin
  FRazdes := Value;
end;

procedure TClasseCTE.SetFandes(const Value: String);
begin
  FFandes := Value;
end;

procedure TClasseCTE.SetFonedes(const Value: String);
begin
  FFonedes := Value;
end;

procedure TClasseCTE.SetIsuf(const Value: String);
begin
  FIsuf := Value;
end;

procedure TClasseCTE.SetLogrades(const Value: String);
begin
  FLogrades := Value;
end;

procedure TClasseCTE.SetNumerodes(const Value: String);
begin
  FNumerodes := Value;
end;

procedure TClasseCTE.SetCompdes(const Value: String);
begin
  FCompdes := Value;
end;

procedure TClasseCTE.SetBairrodes(const Value: String);
begin
  FBairrodes := Value;
end;

procedure TClasseCTE.SetCmundes(const Value: String);
begin
  FCmundes := Value;
end;

procedure TClasseCTE.SetXmundes(const Value: String);
begin
  FXmundes := Value;
end;

procedure TClasseCTE.SetCepdes(const Value: String);
begin
  FCepdes := Value;
end;

procedure TClasseCTE.SetUfdes(const Value: String);
begin
  FUfdes := Value;
end;

procedure TClasseCTE.SetTpdocdes(const Value: Integer);
begin
  FTpdocdes := Value;
end;

procedure TClasseCTE.SetCnpjentdes(const Value: String);
begin
  FCnpjentdes := Value;
end;

procedure TClasseCTE.SetRazentdes(const Value: String);
begin
  FRazentdes := Value;
end;

procedure TClasseCTE.SetLograentdes(const Value: String);
begin
  FLograentdes := Value;
end;

procedure TClasseCTE.SetNumeroentdes(const Value: String);
begin
  FNumeroentdes := Value;
end;

procedure TClasseCTE.SetCompentdes(const Value: String);
begin
  FCompentdes := Value;
end;

procedure TClasseCTE.SetBairroentdes(const Value: String);
begin
  FBairroentdes := Value;
end;

procedure TClasseCTE.SetCmunentdes(const Value: String);
begin
  FCmunentdes := Value;
end;

procedure TClasseCTE.SetXmunentdes(const Value: String);
begin
  FXmunentdes := Value;
end;

procedure TClasseCTE.SetUfentdes(const Value: String);
begin
  FUfentdes := Value;
end;

procedure TClasseCTE.SetLocentdes(const Value: Integer);
begin
  FLocentdes := Value;
end;

procedure TClasseCTE.SetVtprest(const Value: Real);
begin
  FVtprest := Value;
end;

procedure TClasseCTE.SetVrec(const Value: Real);
begin
  FVrec := Value;
end;

procedure TClasseCTE.SetCst(const Value: String);
begin
  FCst := Value;
end;

procedure TClasseCTE.SetVbc(const Value: Real);
begin
  FVbc := Value;
end;

procedure TClasseCTE.SetPicms(const Value: Real);
begin
  FPicms := Value;
end;

procedure TClasseCTE.SetVicms(const Value: Real);
begin
  FVicms := Value;
end;

procedure TClasseCTE.SetPredbc(const Value: Real);
begin
  FPredbc := Value;
end;

procedure TClasseCTE.SetVcred(const Value: Real);
begin
  FVcred := Value;
end;

procedure TClasseCTE.SetInfadfiscimp(const Value: String);
begin
  FInfadfiscimp := Value;
end;

procedure TClasseCTE.SetVmerc(const Value: Real);
begin
  FVmerc := Value;
end;

procedure TClasseCTE.SetPropred(const Value: String);
begin
  FPropred := Value;
end;

procedure TClasseCTE.SetXoutcat(const Value: String);
begin
  FXoutcat := Value;
end;

procedure TClasseCTE.SetRntrc(const Value: String);
begin
  FRntrc := Value;
end;

procedure TClasseCTE.SetDprev(const Value: Tdatetime);
begin
  FDprev := Value;
end;

procedure TClasseCTE.SetLota(const Value: Integer);
begin
  FLota := Value;
end;

procedure TClasseCTE.SetSeriectrb(const Value: String);
begin
  FSeriectrb := Value;
end;

procedure TClasseCTE.SetNctrb(const Value: String);
begin
  FNctrb := Value;
end;

procedure TClasseCTE.SetStatus(const Value: String);
begin
  FStatus := Value;
end;

procedure TClasseCTE.SetXmotivo(const Value: String);
begin
  FXmotivo := Value;
end;

procedure TClasseCTE.SetRem(const Value: Integer);
begin
  FRem := Value;
end;

procedure TClasseCTE.SetExp(const Value: Integer);
begin
  FExp := Value;
end;

procedure TClasseCTE.SetRec(const Value: Integer);
begin
  FRec := Value;
end;

procedure TClasseCTE.SetDes(const Value: Integer);
begin
  FDes := Value;
end;

procedure TClasseCTE.SetInforem(const Value: Integer);
begin
  FInforem := Value;
end;

procedure TClasseCTE.SetNprot(const Value: String);
begin
  FNprot := Value;
end;

procedure TClasseCTE.SetCarga(const Value: String);
begin
  FCarga := Value;
end;


procedure TClasseCTE.SetEmailDes(const Value: String);
begin
  FEmailDes := Value;
end;

procedure TClasseCTE.SetCod_lote(const Value: integer);
begin
  FCod_lote := Value;
end;

procedure TClasseCTE.SetDataEmis(const Value: TDateTime);
begin
  FDataEmis := Value;
end;

procedure TClasseCTE.SetCodSeg(const Value: Integer);
begin
  FCodSeg := Value;
end;

procedure TClasseCTE.SetRespSeg(const Value: Integer);
begin
  FRespSeg := Value;
end;

procedure TClasseCTE.Setcodigo_veiculo(const Value: integer);
begin
  Fcodigo_veiculo := Value;
end;

procedure TClasseCTE.SetNUM_CTE_ANULADO(const Value: Integer);
begin
  FNUM_CTE_ANULADO := Value;
end;

end.
