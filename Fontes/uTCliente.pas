unit uTCliente;

interface

uses MDOQuery, ZDataSet;

type
  TCliente = class
  private

    codigo    : Integer;
    codRota   : Integer;
    codVenPl  : Integer;
    diaCritca : Integer;
    numero    : Integer;
    tipoCli   : Integer;
    vend      : Integer;

    nome      : String;
    fantasia  : String;
    cpf       : String;
    rg        : String;
    endereco  : String;
    bairro    : String;
    cidade    : String;
    estado    : String;
    fone      : String;
    fone2     : String;
    cep       : String;
    bloqueado : String;
    pCelular  : String;
    pRespon   : String;
    agencia   : String;
    atacVar   : String;
    cadPDA    : String;
    casaProp  : String;
    conjugue  : String;
    conTrib   : String;
    consultaSintegra : String;
    email     : String;
    locTrab   : String;
    locTrConj : String;
    mae       : String;
    motBloq   : String;
    NRCC      : String;
    obs       : String;
    obs3      : String;
    obs4      : String;
    obs5      : String;
    pai       : String;
    pais      : String;
    refBanc   : String;
    refCom1   : String;
    refCom2   : String;
    refCom3   : String;
    relatos   : String;
    simples   : String;
    SPC       : String;
    suframaNr : String;
    tempMora  : String;
    tempServ  : String;
    tempServConj : String;
    tipDoc    : String;
    tipoPessoa : String;

    pQry      : TMDOQuery;

    fICMSRet  : Boolean;
    icmsSub   : Boolean;

    fLimite   : Real;
    credito   : Real;
    rendFam   : Real;

    dtAbert   : TDateTime;
    dtAlter   : TDateTime;
    dtCad     : TDateTime;
    dtNasci   : TDateTime;
    suframaDt : TDateTime;
         
    procedure setCodigo(const Value: Integer);
    procedure setCpf(const Value: String);
    procedure setNome(const Value: String);
    procedure setRg(const Value: String);
    procedure setEndereco(const Value: String);
    procedure setFone(const Value: String);
    procedure setAgencia(const Value: String);
    procedure setAtacVar(const Value: String);
    procedure setCadPDA(const Value: String);
    procedure setCasaProp(const Value: String);
    procedure setCodRota(const Value: Integer);
    procedure setCodVenPl(const Value: Integer);
    procedure setConjugue(const Value: String);
    procedure setConTrib(const Value: String);
    procedure setConsultaSintegra(const Value: String);
    procedure setCredito(const Value: Real);
    procedure setDiaCritca(const Value: Integer);
    procedure setDtAbert(const Value: TDateTime);
    procedure setDtAlter(const Value: TDateTime);
    procedure setDtCad(const Value: TDateTime);
    procedure setDtNasci(const Value: TDateTime);
    procedure setEmail(const Value: String);
    procedure setIcmsSub(const Value: Boolean);
    procedure setLocTrab(const Value: String);
    procedure setLocTrConj(const Value: String);
    procedure setMae(const Value: String);
    procedure setMotBloq(const Value: String);
    procedure setNRCC(const Value: String);
    procedure setNumero(const Value: Integer);
    procedure setObs(const Value: String);
    procedure setObs3(const Value: String);
    procedure setObs4(const Value: String);
    procedure setObs5(const Value: String);
    procedure setPai(const Value: String);
    procedure setPais(const Value: String);
    procedure setRefBanc(const Value: String);
    procedure setRefCom1(const Value: String);
    procedure setRefCom2(const Value: String);
    procedure setRefCom3(const Value: String);
    procedure setRelatos(const Value: String);
    procedure setRendFam(const Value: Real);
    procedure setSimples(const Value: String);
    procedure setSPC(const Value: String);
    procedure setSuframaDt(const Value: TDateTime);
    procedure setSuframaNr(const Value: String);
    procedure setTempMora(const Value: String);
    procedure setTempServ(const Value: String);
    procedure setTempServConj(const Value: String);
    procedure setTipDoc(const Value: String);
    procedure setTipoCli(const Value: Integer);
    procedure setTipoPessoa(const Value: String);
    procedure setVend(const Value: Integer);

    function verificaVazio: Boolean;

  public

    property getCodigo : Integer   read codigo write setCodigo;
    property getNome   : String    read nome   write setNome;
    property getCpf    : String    read cpf    write setCpf;
    property getRg     : String    read rg     write setRg;
    property getEndereco : String  read endereco write setEndereco;
    property getFone   : String    read fone   write setFone;
    property getBairro : String    read bairro write bairro;
    property getCidade : String    read cidade write cidade;
    property getEstado : String    read estado write estado;
    property getBloqueado : String read bloqueado write bloqueado;
    property getFantasia : String  read fantasia write fantasia;
    property getCep      : String  read cep      write cep;
    property getFone2 : String     read fone2    write fone2;
    property Celular  : String     read pCelular write pCelular;
    property Responsavel : String  read pRespon  write pRespon;
    property ICMSRet : Boolean read fICMSRet write fICMSRet;
    property Limite  : Real    read fLimite  write fLimite;
    property getAgencia : String read agencia write setAgencia;
    property getBanco : String read agencia write setAgencia;
    property getAtacVar : String read agencia write setAtacVar;
    property getCadPDA  : String read cadPDA write setCadPDA;
    property getCasaProp : String read casaProp write setCasaProp;
    property getCodRota : Integer read codRota write setCodRota;
    property getCodVenPl  : Integer read codVenPl write setCodVenPl;
    property getConjugue  : String read conjugue  write setConjugue;
    property getConTrib   : String read conTrib   write setConTrib;
    property getConsultaSintegra  : String read consultaSintegra write setConsultaSintegra;
    property getCredito   : Real   read credito   write setCredito;
    property getDiaCritca : Integer read diaCritca write setDiaCritca;
    property getDtAbert   : TDateTime read dtAbert  write setDtAbert;
    property getDtAlter   : TDateTime read dtAlter  write setDtAlter;
    property getDtCad     : TDateTime read dtCad    write setDtCad;
    property getDtNasci   : TDateTime read dtNasci  write setDtNasci;
    property getEmail     : String    read email    write setEmail;
    property getIcmsSub   : Boolean   read icmsSub  write setIcmsSub;
    property getLocTrab   : String    read locTrab  write setLocTrab;
    property getLocTrConj : String    read locTrConj write setLocTrConj;
    property getMae       : String    read mae      write setMae;
    property getMotBloq   : String    read motBloq  write setMotBloq;
    property getNRCC      : String    read NRCC     write setNRCC;
    property getNumero    : Integer   read numero   write setNumero;
    property getObs       : String    read obs      write setObs;
    property getObs3      : String    read obs3     write setObs3;
    property getObs4      : String    read obs4     write setObs4;
    property getObs5      : String    read obs5     write setObs5;
    property getPai       : String    read pai      write setPai;
    property getPais      : String    read pais     write setPais;
    property getRefBanc   : String    read refBanc  write setRefBanc;
    property getRefCom1   : String    read refCom1  write setRefCom1;
    property getRefCom2   : String    read refCom2  write setRefCom2;
    property getRefCom3   : String    read refCom3  write setRefCom3;
    property getRelatos   : String    read relatos  write setRelatos;
    property getRendFam   : Real      read rendFam  write setRendFam;
    property getSimples   : String    read simples  write setSimples;
    property getSPC       : String    read SPC      write setSPC;
    property getSuframaDt : TDateTime read suframaDt write setSuframaDt;
    property getSuframaNr : String    read suframaNr write setSuframaNr;
    property getTempMora  : String    read tempMora  write setTempMora;
    property getTempServ  : String    read tempServ  write setTempServ;
    property getTempServConj : String read tempServConj write setTempServConj;
    property getTipDoc    : String    read tipDoc    write setTipDoc;
    property getTipoCli   : Integer   read tipoCli   write setTipoCli;
    property getTipoPessoa : String   read tipoPessoa write setTipoPessoa;
    property getVend      : Integer   read vend      write setVend;

    procedure iniciaQry;

    procedure save;
    procedure saveZ;

    procedure setById(cod : Integer);
    procedure ById(cod : Integer );

    function verificaLimite(codCli: Integer; totLiqPed: Real): Real;

    class function GetById(cod : Integer) :TCliente;
    class function getByIdZ(Cod: Integer):TCliente;

    class function getByNrPed(const nrPed: Integer):TCliente;
    class function getByNrPedZ(const nrPed: Integer):TCliente;

    class function retornaValorGen: Integer; overload;
    class function retornaValorGen(const value: String): Integer; overload;

    class function existe(codigo: Integer): Boolean;
    class function existeZ(codigo: Integer):Boolean;

    constructor Create;
    destructor free;

  end;

implementation

uses Modulo, SysUtils, DB;

var qry : TMDOQuery;

procedure TCliente.ById(cod: Integer);
begin
  qry := dm.GetQueryInstance('select * from clientes where codigo = :codigo');
  qry.ParamByName('codigo').AsInteger := cod;
  qry.Open;

  Self.codigo         := qry.FieldByName('codigo').AsInteger;
  Self.nome           := qry.FieldByName('nome').AsString;
  Self.cpf            := qry.FieldByName('cpf').AsString;
  Self.rg             := qry.FieldByName('rg').AsString;
  Self.endereco       := qry.FieldByName('ender').AsString;
  Self.fone           := qry.FieldByName('fone1').AsString;
  Self.fone2           := qry.FieldByName('fone2').AsString;
  Self.bairro         := qry.FieldByName('bairro').AsString;
  Self.cidade         := qry.FieldByName('cidade').AsString;
  Self.estado         := qry.FieldByName('estado').AsString;
  Self.bloqueado      := qry.FieldByName('flag').AsString;
  Self.fantasia       := qry.FieldByName('nomefan').AsString;
  Self.cep            := qry.FieldByName('cep').AsString;
  Self.pCelular       := qry.FieldByName('celular').AsString;
  Self.pRespon        := qry.FieldByName('respons').AsString;
  Self.fICMSRet       := (qry.FieldByName('icmsret').AsString = 'S');
  Self.fLimite        := qry.FieldByName('LIMITE').AsFloat;
  Self.agencia        := qry.fieldByName('agencia').asString;
  Self.atacVar        := qry.fieldByName('atacvar').asString;
  Self.cadPDA         := qry.fieldByName('cadpda').asString;
  Self.casaProp       := qry.fieldByName('casaprop').AsString;
  Self.codRota        := qry.fieldByName('codrota').asInteger;
  Self.codVenPl       := qry.fieldByName('codvenPl').AsInteger;
  Self.conjugue       := qry.fieldByName('conjugue').AsString;
  Self.conTrib        := qry.fieldByName('contrib').asString;
  Self.consultaSintegra := qry.fieldByName('consultasintegra').asString;
  Self.credito        := qry.fieldByName('credito').asFloat;
  Self.diaCritca      := qry.fieldByName('diacritca').AsInteger;
  Self.dtAbert        := qry.fieldByName('dtabert').AsDateTime;
  Self.dtAlter        := qry.fieldByName('dtalter').asDateTime;
  Self.dtCad          := qry.fieldByName('dtcad').asDateTime;
  Self.dtNasci        := qry.fieldByName('dtnasci').asDateTime;
  Self.email          := qry.fieldByName('email').AsString;
  Self.icmsSub        := (qry.FieldByName('icmsret').AsString = 'S');
  Self.locTrab        := qry.fieldByName('loctrab').asString;
  Self.locTrConj      := qry.fieldByName('locTrConj').asString;
  Self.mae            := qry.fieldByName('mae').asString;
  Self.motBloq        := qry.fieldByName('motbloq').asString;
  Self.NRCC           := qry.fieldByName('nrcc').asString;
  Self.numero         := qry.fieldByName('numero').AsInteger;
  Self.obs            := qry.fieldByName('obs').asString;
  Self.obs3           := qry.fieldByName('obs3').asString;
  Self.obs4           := qry.fieldByName('obs4').asString;
  Self.obs5           := qry.fieldByName('obs5').asString;
  Self.pai            := qry.fieldByName('pai').AsString;
  Self.pais           := qry.fieldByName('pais').asString;
  Self.refBanc        := qry.fieldByName('refbanc').asString;
  Self.refCom1        := qry.fieldByName('refcom1').asString;
  Self.refCom2        := qry.fieldByName('refcom2').asString;
  Self.refCom3        := qry.fieldByName('refcom3').asString;
  Self.relatos        := qry.fieldByName('relatos').asString;
  Self.rendFam        := qry.fieldByName('rendfam').asFloat;
  Self.simples        := qry.fieldByName('simples').asString;
  Self.SPC            := qry.fieldByName('spc').asString;
  Self.suframaDt      := qry.fieldByName('suframadt').asDateTime;
  Self.suframaNr      := qry.fieldByName('suframanr').asString;
  Self.tempMora       := qry.fieldByName('tempmora').asString;
  Self.tempServ       := qry.fieldByName('tempserv').asString;
  Self.tempServConj   := qry.fieldByName('tempservconj').asString;
  Self.tipDoc         := qry.fieldByName('tipdoc').asString;
  Self.tipoCli        := qry.fieldByName('tipocli').asInteger;
  Self.tipoPessoa     := qry.fieldByName('tipopessoa').asString;
  Self.vend           := qry.fieldByName('vend').asInteger;

  qry.Close;

end;

constructor TCliente.Create;
begin
qry := dm.GetQueryInstance('select * from clientes where codigo = :codigo');
end;

class function TCliente.GetById(cod : Integer) :TCliente;
var qry: TMDOQuery;
begin
  qry := dm.GetQueryInstance('select * from clientes where codigo = :codigo');
  qry.ParamByName('codigo').AsInteger := cod;
  qry.Open;

  Result                := TCliente.Create;
  Result.codigo         := qry.FieldByName('codigo').AsInteger;
  Result.nome           := qry.FieldByName('nome').AsString;
  Result.cpf            := qry.FieldByName('cpf').AsString;
  Result.rg             := qry.FieldByName('rg').AsString;
  Result.endereco       := qry.FieldByName('ender').AsString;
  Result.fone           := qry.FieldByName('fone1').AsString;
  Result.fone2           := qry.FieldByName('fone2').AsString;
  Result.bairro         := qry.FieldByName('bairro').AsString;
  Result.cidade         := qry.FieldByName('cidade').AsString;
  Result.estado         := qry.FieldByName('estado').AsString;
  Result.bloqueado      := qry.FieldByName('flag').AsString;
  Result.fantasia       := qry.FieldByName('nomefan').AsString;
  Result.cep            := qry.FieldByName('cep').AsString;
  Result.pCelular       := qry.FieldByName('celular').AsString;
  Result.pRespon        := qry.FieldByName('respons').AsString;
  Result.fICMSRet       := (qry.FieldByName('icmsret').AsString = 'S');
  Result.fLimite        := qry.FieldByName('LIMITE').AsFloat;
  Result.agencia        := qry.FieldByName('agencia').asString;
  Result.atacVar        := qry.fieldByName('atacvar').asString;
  Result.cadPDA         := qry.fieldByName('cadpda').asString;
  Result.casaProp       := qry.fieldByName('casaProp').AsString;
  Result.codRota        := qry.fieldByName('codrota').asInteger;
  Result.codRota        := qry.fieldByName('codrota').asInteger;
  Result.conjugue       := qry.fieldByName('conjugue').AsString;
  Result.conTrib        := qry.fieldByName('contrib').asString;
  Result.consultaSintegra := qry.fieldByName('consultasintegra').asString;
  Result.credito        := qry.fieldByName('credito').asFloat;
  Result.diaCritca      := qry.fieldByName('diacritca').AsInteger;
  Result.dtAbert        := qry.fieldByName('dtabert').AsDateTime;
  Result.dtAlter        := qry.fieldByName('dtalter').asDateTime;
  Result.dtCad          := qry.fieldByName('dtcad').asDateTime;
  Result.dtNasci        := qry.fieldByName('dtnasci').asDateTime;
  Result.email          := qry.fieldByName('email').asString;
  Result.icmsSub        := (qry.FieldByName('icmsret').AsString = 'S');
  Result.locTrab        := qry.fieldByName('loctrab').asString;
  Result.locTrConj      := qry.fieldByName('locTrConj').asString;
  Result.mae            := qry.fieldByName('mae').AsString;
  Result.motBloq        := qry.fieldByName('motbloq').asString;
  Result.NRCC           := qry.fieldByName('nrcc').AsString;
  Result.numero         := qry.fieldByName('numero').AsInteger;
  Result.obs            := qry.fieldByName('obs').asString;
  Result.obs3           := qry.fieldByName('obs3').asString;
  Result.obs4           := qry.fieldByName('obs4').asString;
  Result.obs5           := qry.fieldByName('obs5').asString;
  Result.pai            := qry.fieldByName('pai').asString;
  Result.pais           := qry.fieldByName('pais').asString;
  Result.refBanc        := qry.fieldByName('refbanc').asString;
  Result.refCom1        := qry.fieldByName('refcom1').asString;
  Result.refCom2        := qry.fieldByName('refcom2').asString;
  Result.refCom3        := qry.fieldByName('refcom3').asString;
  Result.relatos        := qry.fieldByName('relatos').asString;
  Result.rendFam        := qry.fieldByName('rendfam').asFloat;
  Result.simples        := qry.fieldByName('simples').asString;
  Result.SPC            := qry.fieldByName('spc').asString;
  Result.suframaDt      := qry.fieldByName('suframadt').asDateTime;
  Result.suframaNr      := qry.fieldByName('suframanr').asString;
  Result.tempMora       := qry.fieldByName('tempmora').asString;
  Result.tempServ       := qry.fieldByName('tempserv').asString;
  Result.tempServConj   := qry.fieldByName('tempservconj').asString;
  Result.tipDoc         := qry.fieldByName('tipdoc').asString;
  Result.tipoCli        := qry.fieldByName('tipocli').asInteger;
  Result.tipoPessoa     := qry.fieldByName('tipopessoa').asString;
  Result.vend           := qry.fieldByName('vend').asInteger;

  qry.Close;
  FreeAndNil(qry);


end;

procedure TCliente.iniciaQry;
begin
  pQry := dm.GetQueryInstance('select * from clientes where codigo = :codigo');
end;

procedure TCliente.setById(cod: Integer);
begin

  pQry.ParamByName('codigo').AsInteger := cod;
  pqry.Open;

  Self.codigo         := pqry.FieldByName('codigo').AsInteger;
  Self.nome           := pqry.FieldByName('nome').AsString;
  Self.cpf            := pqry.FieldByName('cpf').AsString;
  Self.rg             := pqry.FieldByName('rg').AsString;
  Self.endereco       := pqry.FieldByName('ender').AsString;
  Self.fone           := pqry.FieldByName('fone1').AsString;
  Self.fone2          := pqry.FieldByName('fone2').AsString;
  Self.bairro         := pqry.FieldByName('bairro').AsString;
  Self.cidade         := pqry.FieldByName('cidade').AsString;
  Self.estado         := pqry.FieldByName('estado').AsString;
  Self.bloqueado      := pqry.FieldByName('flag').AsString;
  Self.fantasia       := pqry.FieldByName('nomefan').AsString;
  Self.cep            := pqry.FieldByName('cep').AsString;
  Self.pCelular       := pqry.FieldByName('celular').AsString;
  Self.pRespon        := pqry.FieldByName('respons').AsString;
  Self.fLimite        := pQry.FieldByName('LIMITE').AsFloat;
  Self.agencia        := pQry.FieldByName('agencia').asString;
  Self.atacVar        := pQry.fieldByName('atacvar').asString;
  Self.cadPDA         := pQry.fieldByName('cadpda').asString;
  Self.casaProp       := pQry.fieldByName('casaProp').AsString;
  Self.codRota        := pQry.fieldByName('codrota').asInteger;
  Self.codRota        := pQry.fieldByName('codrota').asInteger;
  Self.conjugue       := pQry.fieldByName('conjugue').asString;
  Self.conTrib        := pQry.fieldByName('contrib').asString;
  Self.consultaSintegra := pQry.fieldByName('consultasintegra').asString;
  Self.credito        := pQry.fieldByName('credito').asFloat;
  Self.diaCritca      := pQry.fieldByName('diacritca').AsInteger;
  Self.dtAbert        := pQry.fieldByName('dtabert').AsDateTime;
  Self.dtAlter        := pQry.fieldByName('dtalter').asDateTime;
  Self.dtCad          := pQry.fieldByName('dtcad').asDateTime;
  Self.dtNasci        := pQry.fieldByName('dtnasci').asDateTime;
  Self.email          := pQry.fieldByName('email').AsString;
  Self.icmsSub        := (qry.FieldByName('icmsret').AsString = 'S');
  Self.locTrab        := pQry.fieldByName('loctrab').asString;
  Self.locTrConj      := pQry.fieldByName('locTrConj').asString;
  Self.mae            := pQry.fieldByName('mae').asString;
  Self.motBloq        := pQry.fieldByName('motbloq').asString;
  Self.NRCC           := pQry.fieldByName('nrcc').asString;
  Self.numero         := pQry.fieldByName('numero').AsInteger;
  Self.obs            := pQry.fieldByName('obs').asString;
  Self.obs3           := pQry.fieldByName('obs3').asString;
  Self.obs4           := pQry.fieldByName('obs4').asString;
  Self.obs5           := pQry.fieldByName('obs5').asString;
  Self.pai            := pQry.fieldByName('pai').asString;
  Self.pais           := pQry.FieldByName('pais').asString;
  Self.refBanc        := pQry.fieldByName('refbanc').asString;
  Self.refCom1        := pQry.fieldByName('refcom1').asString;
  Self.refCom2        := pQry.fieldByName('refcom2').asString;
  Self.refCom3        := pQry.fieldByName('refcom3').asString;
  Self.relatos        := pQry.fieldByName('relatos').asString;
  Self.rendFam        := pQry.fieldByName('rendfam').asFloat;
  Self.simples        := pQry.fieldByName('simples').asString;
  Self.SPC            := pQry.fieldByName('spc').asString;
  Self.suframaDt      := pQry.fieldByName('suframadt').asDateTime;
  Self.suframaNr      := pQry.fieldByName('suframanr').asString;
  Self.tempMora       := pQry.fieldByName('tempmora').asString;
  Self.tempServ       := pQry.fieldByName('tempserv').asString;
  Self.tempServConj   := pQry.fieldByName('tempservconj').asString;
  Self.tipDoc         := pQry.fieldByName('tipdoc').asString;
  Self.tipoCli        := pQry.fieldByName('tipocli').asInteger;
  Self.tipoPessoa     := pQry.fieldByName('tipopessoa').asString;
  Self.vend           := pQry.fieldByName('vend').asInteger;

  pqry.Close;

end;

procedure TCliente.setCodigo(const Value: Integer);
begin
  codigo := Value;
end;


procedure TCliente.setCpf(const Value: String);
begin
  cpf := Value;
end;

procedure TCliente.setEndereco(const Value: String);
begin
  endereco := Value;
end;

procedure TCliente.setFone(const Value: String);
begin
  fone := Value;
end;

procedure TCliente.setNome(const Value: String);
begin
  nome := Value;
end;

procedure TCliente.setRg(const Value: String);
begin
  rg := Value;
end;

procedure TCliente.setAgencia(const Value: String);
begin
  self.agencia := Value;
end;

procedure TCliente.setAtacVar(const Value: String);
begin
  self.atacVar := Value;
end;

procedure TCliente.setCadPDA(const Value: String);
begin
  self.cadPDA :=  Value;
end;

procedure TCliente.setCasaProp(const Value: String);
begin
  self.casaProp := Value;
end;

procedure TCliente.setCodRota(const Value: Integer);
begin
  self.codRota := Value;
end;

procedure TCliente.setCodVenPl(const Value: Integer);
begin
  self.codVenPl := Value;
end;

procedure TCliente.setConjugue(const Value: String);
begin
  self.conjugue := Value;
end;

procedure TCliente.setConTrib(const Value: String);
begin
  self.conTrib := Value;
end;

procedure TCliente.setConsultaSintegra(const Value: String);
begin
  self.consultaSintegra := Value;
end;

procedure TCliente.setCredito(const Value: Real);
begin
  self.credito := Value;
end;

procedure TCliente.setDiaCritca(const Value: Integer);
begin
  self.diaCritca := Value;
end;

procedure TCliente.setDtAbert(const Value: TDateTime);
begin
  self.dtAbert := Value;
end;

procedure TCliente.setDtAlter(const Value: TDateTime);
begin
  self.dtAlter := Value;
end;

procedure TCliente.setDtCad(const Value: TDateTime);
begin
  self.dtCad := Value;
end;

procedure TCliente.setDtNasci(const Value: TDateTime);
begin
  self.dtNasci := Value;
end;

procedure TCliente.setEmail(const Value: String);
begin
  self.email := Value;
end;

procedure TCliente.setLocTrab(const Value: String);
begin
  self.locTrab := Value;
end;

procedure TCliente.setLocTrConj(const Value: String);
begin
  self.locTrConj := Value;
end;

procedure TCliente.setMae(const Value: String);
begin
  self.mae := Value;
end;

procedure TCliente.setMotBloq(const Value: String);
begin
  self.motBloq := Value;
end;

procedure TCliente.setNRCC(const Value: String);
begin
  self.NRCC := Value;
end;

procedure TCliente.setNumero(const Value: Integer);
begin
  self.numero := Value;
end;

procedure TCliente.setObs(const Value: String);
begin
  self.obs := Value;
end;

procedure TCliente.setObs3(const Value: String);
begin
  self.obs3 := Value;
end;

procedure TCliente.setObs4(const Value: String);
begin
  self.obs4 := Value;
end;

procedure TCliente.setObs5(const Value: String);
begin
  self.obs5 := Value;
end;

procedure TCliente.setPai(const Value: String);
begin
  self.pai := Value;
end;

procedure TCliente.setPais(const Value: String);
begin
  self.pais := Value;
end;

procedure TCliente.setRefBanc(const Value: String);
begin
  self.refBanc := Value;
end;

procedure TCliente.setRefCom1(const Value: String);
begin
  self.refCom1 := Value;
end;

procedure TCliente.setRefCom2(const Value: String);
begin
  self.refCom2 := Value;
end;

procedure TCliente.setRefCom3(const Value: String);
begin
  self.refCom3 := Value;
end;

procedure TCliente.setRelatos(const Value: String);
begin
  self.relatos := Value;
end;

procedure TCliente.setRendFam(const Value: Real);
begin
  self.rendFam := Value;
end;

procedure TCliente.setSimples(const Value: String);
begin
  self.simples := Value;
end;

procedure TCliente.setSPC(const Value: String);
begin
  self.SPC := Value;
end;

procedure TCliente.setSuframaDt(const Value: TDateTime);
begin
  self.suframaDt  := Value;
end;

procedure TCliente.setSuframaNr(const Value: String);
begin
  self.suframaNr := Value;
end;

procedure TCliente.setTempMora(const Value: String);
begin
  self.tempMora := Value;
end;

procedure TCliente.setTempServ(const Value: String);
begin
  self.tempServ := Value;
end;

procedure TCliente.setTempServConj(const Value: String);
begin
  self.tempServConj := Value;
end;

procedure TCliente.setTipDoc(const Value: String);
begin
  self.tipDoc := Value;
end;

procedure TCliente.setTipoCli(const Value: Integer);
begin
  self.tipoCli := Value;
end;

procedure TCliente.setTipoPessoa(const Value: String);
begin
  self.tipoPessoa := Value;
end;

procedure TCliente.setVend(const Value: Integer);
begin
  self.vend := Value;
end;

procedure TCliente.save;
var qry: TMDOQuery;
begin
  try
  if verificaVazio then
  begin
    qry := dm.getQueryInstance('INSERT INTO CLIENTES                                                              '+
                               'VALUES                                                                            '+
                               '(:CODIGO, :NOME, :NOMEFAN, :ENDER, :BAIRRO, :CIDADE, :ESTADO,                     '+
                               ' :CEP, :CPF, :RG, :FONE1, :FONE2, :OBS, :FLAG, :DTNASCI, :DTCAD,                  '+
                               ' :RESPONS, :TIPOCLI, :LOCTRAB, :TEMPSERV, :PAI, :MAE, :CONJUGUE,                  '+
                               ' :LOCTRCONJ, :TEMPSERVCONJ, :CASAPROP, :TEMPMORA, :REFCOM1, :REFCOM2,             '+
                               ' :REFCOM3, :LIMITE, :CREDITO, :PAIS, :CELULAR, :EMAIL, :RENDFAM, :REFBANC,         '+
                               ' :AGENCIA, :NRCC, :DTABERT, :MOTBLOQ, :SPC, :VEND, :SUFRAMANR, :SUFRAMADT,        '+
                               ' :OBS3, :OBS4, :OBS5, :CODVENPL, :ATACVAR, :CODROTA, :RELATOS, :DIACRITCA,        '+
                               ' :TIPOPESSOA, :SIMPLES, :TIPDOC, :NUMERO, :CONTRIB, :DTALTER, :ICMSSUB, :CADPDA,  '+
                               ' :ICMSRET, :CONSULTASINTEGRA)                                                     ');

    qry.ParamByName('codigo').AsInteger := self.codigo;
    qry.ParamByName('agencia').asString := self.agencia;
    qry.ParamByName('atacVar').asString := self.atacVar;
    qry.ParamByName('bairro').AsString := self.bairro;
    qry.ParamByName('cadPDA').asString := self.cadPDA;
    qry.ParamByName('casaProp').AsString := self.casaProp;
    qry.ParamByName('celular').AsString := self.Celular;
    qry.ParamByName('CEP').AsString := self.cep;
    qry.ParamByName('cidade').AsString := self.cidade;
    qry.ParamByName('codRota').AsInteger := self.codRota;
    qry.ParamByName('codVenPl').asInteger := self.codVenPl;
    qry.ParamByName('conjugue').asString := self.conjugue;
    qry.ParamByName('consultaSintegra').asString := self.consultaSintegra;
    qry.ParamByName('conTrib').asString := self.conTrib;
    qry.ParamByName('CPF').asString := self.cpf;
    qry.ParamByName('credito').asFloat := self.credito;
    qry.ParamByName('diaCritca').asInteger := self.diaCritca;
    qry.ParamByName('dtAbert').AsDateTime := self.dtAbert;
    qry.ParamByName('dtAlter').asDateTime := self.dtAlter;
    qry.ParamByName('dtCad').AsDateTime := self.dtCad;
    qry.ParamByName('dtNasci').AsDateTime := self.dtNasci;
    qry.ParamByName('email').asString := self.email;
    qry.ParamByName('ender').asString := self.endereco;
    qry.ParamByName('estado').asString := self.estado;
    qry.ParamByName('flag').asString := self.bloqueado;
    qry.ParamByName('fone1').asString := self.fone;
    qry.ParamByName('fone2').asString := self.fone2;
    if (self.icmsRet) then qry.ParamByName('icmsRet').asString := 'S' else qry.ParamByName('icmsRet').asString := 'N';
    if (self.icmsSub) then qry.ParamByName('icmsSub').asString := 'S' else qry.ParamByName('icmsSub').asString := 'N';
    qry.ParamByName('limite').asFloat := self.Limite;
    qry.ParamByName('locTrab').asString := self.locTrab;
    qry.ParamByName('LOCTRCONJ').asString := self.locTrConj;
    qry.ParamByName('mae').AsString := self.mae;
    qry.ParamByName('motBloq').AsString := self.motBloq;
    qry.ParamByName('nome').asString := self.nome;
    qry.ParamByName('nomeFan').asString := self.fantasia;
    qry.ParamByName('NRCC').asString := self.NRCC;
    qry.ParamByName('numero').asInteger := self.numero;
    qry.ParamByName('obs').asString := self.obs;
    qry.ParamByName('obs3').asString := self.obs3;
    qry.ParamByName('obs4').asString := self.obs4;
    qry.ParamByName('obs5').asString := self.obs5;
    qry.ParamByName('pai').asString := self.pai;
    qry.ParamByName('pais').asString := self.pais;
    qry.ParamByName('refBanc').asString := self.refBanc;
    qry.ParamByName('refCom1').asString := self.refCom1;
    qry.ParamByName('refCom2').AsString := self.refCom2;
    qry.ParamByName('refCom3').asString := self.refCom3;
    qry.ParamByName('relatos').AsString := self.relatos;
    qry.ParamByName('RENDFAM').AsFloat := self.rendFam;
    qry.ParamByName('respons').asString := self.Responsavel;
    qry.ParamByName('RG').AsString := self.rg;
    qry.ParamByName('simples').asString := self.simples;
    qry.ParamByName('SPC').AsString := self.simples;
    qry.ParamByName('suframaDt').asDateTime := self.suframaDt;
    qry.ParamByName('suframaNr').AsString := self.suframaNr;
    qry.ParamByName('tempMora').AsString := self.tempMora;
    qry.ParamByName('tempServ').asString := self.tempServ;
    qry.ParamByName('tempServConj').AsString := self.tempServConj;
    qry.ParamByName('tipDoc').asString := self.tipDoc;
    qry.ParamByName('tipoCli').asInteger := self.tipoCli;
    qry.ParamByName('tipoPessoa').AsString := self.tipoPessoa;
    qry.ParamByName('vend').asInteger := self.vend;

    qry.ExecSQL;
  end

  else
  begin
    qry := dm.GetQueryInstance('UPDATE clientes c SET c.agencia = :agencia, c.atacvar = :atacVar,                             '+
                               '                      c.bairro = :bairro, c.cadpda = :cadPDA,                                '+
                               '                      c.casaprop = :casaProp, c.celular = :celular,                          '+
                               '                      c.cep = :CEP, c.cidade = :cidade,                                      '+
                               '                      c.codigo = :codigo, c.codrota = :codRota,                              '+
                               '                      c.codvenpl = :codVenPl, c.conjugue = :conjugue,                        '+
                               '                      c.consultasintegra = :consultaSintegra, c.contrib = :contrib,          '+
                               '                      c.cpf = :CPF, c.credito = :credito,                                    '+
                               '                      c.diacritca = :diaCritca, c.dtabert = :dtAbert,                        '+
                               '                      c.dtalter = :dtAlter, c.dtcad = :dtCad,                                '+
                               '                      c.dtnasci = :dtNasci, c.email = :email,                                '+
                               '                      c.ender = :ender, c.estado = :estado,                                  '+
                               '                      c.flag = :flag, c.fone1 = :fone1,                                      '+
                               '                      c.fone2 = :fone2, c.icmsret = :icmsRet,                                '+
                               '                      c.icmssub = :icmsSub, c.limite = :limite,                              '+
                               '                      c.loctrab = :locTrab, c.loctrconj = :locTrConj,                        '+
                               '                      c.mae = :mae, c.motbloq = :motBloq,                                    '+
                               '                      c.nome = :nome, c.nomefan = :nomeFan,                                  '+
                               '                      c.nrcc = :NRCC, c.numero = :numero,                                    '+
                               '                      c.obs = :obs, c.obs3 = :obs3,                                          '+
                               '                      c.obs4 = :obs4, c.obs5 = :obs5,                                        '+
                               '                      c.pai = :pai, c.pais = :pais,                                          '+
                               '                      c.refbanc = :refBanc, c.refcom1 = :refCom1,                            '+
                               '                      c.refcom2 = :refCom2, c.refcom3 = :refCom3,                            '+
                               '                      c.relatos = :relatos, c.rendfam = :rendFam,                            '+
                               '                      c.respons = :respons, c.rg = :RG,                                      '+
                               '                      c.simples = :simples, c.spc = :SPC,                                    '+
                               '                      c.suframadt = :suframaDt, c.suframanr = :suframaNr,                    '+
                               '                      c.tempmora = :tempMora, c.tempserv = :tempServ,                        '+
                               '                      c.tempservconj = :tempServConj, c.tipdoc = :tipDoc,                    '+
                               '                      c.tipocli = :tipoCli, c.tipopessoa = :tipoPessoa,                      '+
                               '                      c.vend = :vend                                                         '+
                               'WHERE c.codigo = :codigo;                                                                    ');
    qry.ParamByName('codigo').AsInteger := self.codigo;
    qry.ParamByName('agencia').asString := self.agencia;
    qry.ParamByName('atacVar').asString := self.atacVar;
    qry.ParamByName('bairro').AsString := self.bairro;
    qry.ParamByName('cadPDA').asString := self.cadPDA;
    qry.ParamByName('casaProp').AsString := self.casaProp;
    qry.ParamByName('celular').AsString := self.Celular;
    qry.ParamByName('CEP').AsString := self.cep;
    qry.ParamByName('cidade').AsString := self.cidade;
    qry.ParamByName('codRota').AsInteger := self.codRota;
    qry.ParamByName('codVenPl').asInteger := self.codVenPl;
    qry.ParamByName('conjugue').asString := self.conjugue;
    qry.ParamByName('consultaSintegra').asString := self.consultaSintegra;
    qry.ParamByName('conTrib').asString := self.conTrib;
    qry.ParamByName('CPF').asString := self.cpf;
    qry.ParamByName('credito').asFloat := self.credito;
    qry.ParamByName('diaCritca').asInteger := self.diaCritca;
    qry.ParamByName('dtAbert').AsDateTime := self.dtAbert;
    qry.ParamByName('dtAlter').asDateTime := self.dtAlter;
    qry.ParamByName('dtCad').AsDateTime := self.dtCad;
    qry.ParamByName('dtNasci').AsDateTime := self.dtNasci;
    qry.ParamByName('email').asString := self.email;
    qry.ParamByName('ender').asString := self.endereco;
    qry.ParamByName('estado').asString := self.estado;
    qry.ParamByName('flag').asString := self.bloqueado;
    qry.ParamByName('fone1').asString := self.fone;
    qry.ParamByName('fone2').asString := self.fone2;
    if (self.icmsRet) then qry.ParamByName('icmsRet').asString := 'S' else qry.ParamByName('icmsRet').asString := 'N';
    if (self.icmsSub) then qry.ParamByName('icmsSub').asString := 'S' else qry.ParamByName('icmsSub').asString := 'N';
    qry.ParamByName('limite').asFloat := self.Limite;
    qry.ParamByName('locTrab').asString := self.locTrab;
    qry.ParamByName('locTrConj').asString := self.locTrConj;
    qry.ParamByName('mae').AsString := self.mae;
    qry.ParamByName('motBloq').AsString := self.motBloq;
    qry.ParamByName('nome').asString := self.nome;
    qry.ParamByName('nomeFan').asString := self.fantasia;
    qry.ParamByName('NRCC').asString := self.NRCC;
    qry.ParamByName('numero').asInteger := self.numero;
    qry.ParamByName('obs').asString := self.obs;
    qry.ParamByName('obs3').asString := self.obs3;
    qry.ParamByName('obs4').asString := self.obs4;
    qry.ParamByName('obs5').asString := self.obs5;
    qry.ParamByName('pai').asString := self.pai;
    qry.ParamByName('pais').asString := self.pais;
    qry.ParamByName('refBanc').asString := self.refBanc;
    qry.ParamByName('refCom1').asString := self.refCom1;
    qry.ParamByName('refCom2').AsString := self.refCom2;
    qry.ParamByName('refCom3').asString := self.refCom3;
    qry.ParamByName('relatos').AsString := self.relatos;
    qry.ParamByName('rendFam').AsFloat := self.rendFam;
    qry.ParamByName('respons').asString := self.Responsavel;
    qry.ParamByName('RG').AsString := self.rg;
    qry.ParamByName('simples').asString := self.simples;
    qry.ParamByName('SPC').AsString := self.simples;
    qry.ParamByName('suframaDt').asDateTime := self.suframaDt;
    qry.ParamByName('suframaNr').AsString := self.suframaNr;
    qry.ParamByName('tempMora').AsString := self.tempMora;
    qry.ParamByName('tempServ').asString := self.tempServ;
    qry.ParamByName('tempServConj').AsString := self.tempServConj;
    qry.ParamByName('tipDoc').asString := self.tipDoc;
    qry.ParamByName('tipoCli').asInteger := self.tipoCli;
    qry.ParamByName('tipoPessoa').AsString := self.tipoPessoa;
    qry.ParamByName('vend').asInteger := self.vend;

    qry.ExecSQL;
   end;
  finally
    freeAndNil(qry);
  end;
end;

procedure TCliente.setIcmsSub(const Value: Boolean);
begin
  self.icmsSub := Value;
end;

function TCliente.verificaVazio: Boolean;
begin
    qry := dm.GetQueryInstance('SELECT *                        '+
                               'FROM CLIENTES C                 '+
                               'WHERE C.codigo = :codigo;               ');
    qry.ParamByName('codigo').asInteger := self.codigo;
    qry.Open;

    if qry.IsEmpty then
      result := true
    else
      result := false;

    qry.close;
    freeAndNil(qry);
end;

class function TCliente.retornaValorGen: Integer;
var qry: TMDOQuery;
begin
  qry := dm.getQueryInstance('SELECT GEN_ID(GEN_CLIENTES,0) as ID FROM RDB$DATABASE');
  qry.Open;

  result := qry.fieldByName('ID').asInteger;

  freeAndNil(qry);
end;

class function TCliente.retornaValorGen(const value: String): Integer;
var qry: TMDOQuery;
begin
  if (value = '+') then
  begin
    qry := dm.getQueryInstance('SELECT GEN_ID(GEN_CLIENTES,1) as ID FROM RDB$DATABASE');
    qry.Open;

    result := qry.fieldByName('ID').asInteger;

    freeAndNil(qry);
  end;
end;

class function TCliente.getByNrPed(const nrPed: Integer): TCliente;
var qry: TMDOQuery;
begin
  try
    qry := dm.GetQueryInstance('SELECT pedidos.codcli         '+
                               'FROM pedidos                  '+
                               'WHERE pedidos.nrped = :nrPed; ');
    qry.ParamByName('nrPed').asInteger := nrPed;
    qry.Open;

    result := self.getByNrPed(qry.fieldByName('codcli').asInteger);
  finally
    qry.close;
    freeAndNil(qry);
  end;

end;

function TCliente.verificaLimite(codCli: Integer; totLiqPed: Real ): Real;
var qryBuscaLimite,
    qryBuscaContas : TMDOQuery;
    saldo : Real;
    cliente: TCliente;
begin
   cliente := TCliente.GetById(codCli);

   qryBuscaContas := dm.GetQueryInstance('SELECT SUM(receber.valor) as VALOR '+
                                         'FROM receber                      '+
                                         'WHERE receber.codcli = :cod       '+
                                         '  AND receber.situ = ''A''       ');
   qryBuscaContas.ParamByName('cod').AsInteger := cliente.codigo;
   qryBuscaContas.Open;

   qryBuscaLimite := dm.GetQueryInstance('SELECT clientes.limite       '+
                                         'FROM clientes                '+
                                         'WHERE clientes.codigo = :cod ');
   qryBuscaLimite.ParamByName('cod').asInteger := cliente.codigo;
   qryBuscaLimite.Open;


   saldo := qryBuscaLimite.FieldByName('limite').AsFloat - (qryBuscaContas.FieldByName('valor').AsFloat + totLiqPed);

   qryBuscaContas.Close;
   qryBuscaLimite.Close;

   Result := saldo;
   freeAndNil(cliente);
end;

class function TCliente.existe(codigo: Integer): Boolean;
var qry: TMDOQuery;
begin
  qry := dm.GetQueryInstance(' SELECT * FROM clientes WHERE clientes.codigo = :codigo; ');
  qry.ParamByName('codigo').asInteger := codigo;
  qry.Open;

  if not qry.IsEmpty then
    result := true
  else
    result := false;

  qry.close;
  freeAndNil(qry);
end;

destructor TCliente.free;
begin
  if (self.pQry <> nil) then
  begin
    self.pQry.Free;
    self.pQry := nil;
  end;
end;

class function TCliente.getByIdZ(Cod: Integer): TCliente;
var qry: TMDOQuery;
begin
  qry := dm.GetQueryInstance('select * from clientes where codigo = :codigo');
  qry.ParamByName('codigo').AsInteger := cod;
  qry.Open;

  Result                := TCliente.Create;
  Result.codigo         := qry.FieldByName('codigo').AsInteger;
  Result.nome           := qry.FieldByName('nome').AsString;
  Result.cpf            := qry.FieldByName('cpf').AsString;
  Result.rg             := qry.FieldByName('rg').AsString;
  Result.endereco       := qry.FieldByName('ender').AsString;
  Result.fone           := qry.FieldByName('fone1').AsString;
  Result.fone2           := qry.FieldByName('fone2').AsString;
  Result.bairro         := qry.FieldByName('bairro').AsString;
  Result.cidade         := qry.FieldByName('cidade').AsString;
  Result.estado         := qry.FieldByName('estado').AsString;
  Result.bloqueado      := qry.FieldByName('flag').AsString;
  Result.fantasia       := qry.FieldByName('nomefan').AsString;
  Result.cep            := qry.FieldByName('cep').AsString;
  Result.pCelular       := qry.FieldByName('celular').AsString;
  Result.pRespon        := qry.FieldByName('respons').AsString;
  Result.fICMSRet       := (qry.FieldByName('icmsret').AsString = 'S');
  Result.fLimite        := qry.FieldByName('LIMITE').AsFloat;
  Result.agencia        := qry.FieldByName('agencia').asString;
  Result.atacVar        := qry.fieldByName('atacvar').asString;
  Result.cadPDA         := qry.fieldByName('cadpda').asString;
  Result.casaProp       := qry.fieldByName('casaProp').AsString;
  Result.codRota        := qry.fieldByName('codrota').asInteger;
  Result.codRota        := qry.fieldByName('codrota').asInteger;
  Result.conjugue       := qry.fieldByName('conjugue').AsString;
  Result.conTrib        := qry.fieldByName('contrib').asString;
  Result.consultaSintegra := qry.fieldByName('consultasintegra').asString;
  Result.credito        := qry.fieldByName('credito').asFloat;
  Result.diaCritca      := qry.fieldByName('diacritca').AsInteger;
  Result.dtAbert        := qry.fieldByName('dtabert').AsDateTime;
  Result.dtAlter        := qry.fieldByName('dtalter').asDateTime;
  Result.dtCad          := qry.fieldByName('dtcad').asDateTime;
  Result.dtNasci        := qry.fieldByName('dtnasci').asDateTime;
  Result.email          := qry.fieldByName('email').asString;
  Result.icmsSub        := (qry.FieldByName('icmsret').AsString = 'S');
  Result.locTrab        := qry.fieldByName('loctrab').asString;
  Result.locTrConj      := qry.fieldByName('locTrConj').asString;
  Result.mae            := qry.fieldByName('mae').AsString;
  Result.motBloq        := qry.fieldByName('motbloq').asString;
  Result.NRCC           := qry.fieldByName('nrcc').AsString;
  Result.numero         := qry.fieldByName('numero').AsInteger;
  Result.obs            := qry.fieldByName('obs').asString;
  Result.obs3           := qry.fieldByName('obs3').asString;
  Result.obs4           := qry.fieldByName('obs4').asString;
  Result.obs5           := qry.fieldByName('obs5').asString;
  Result.pai            := qry.fieldByName('pai').asString;
  Result.pais           := qry.fieldByName('pais').asString;
  Result.refBanc        := qry.fieldByName('refbanc').asString;
  Result.refCom1        := qry.fieldByName('refcom1').asString;
  Result.refCom2        := qry.fieldByName('refcom2').asString;
  Result.refCom3        := qry.fieldByName('refcom3').asString;
  Result.relatos        := qry.fieldByName('relatos').asString;
  Result.rendFam        := qry.fieldByName('rendfam').asFloat;
  Result.simples        := qry.fieldByName('simples').asString;
  Result.SPC            := qry.fieldByName('spc').asString;
  Result.suframaDt      := qry.fieldByName('suframadt').asDateTime;
  Result.suframaNr      := qry.fieldByName('suframanr').asString;
  Result.tempMora       := qry.fieldByName('tempmora').asString;
  Result.tempServ       := qry.fieldByName('tempserv').asString;
  Result.tempServConj   := qry.fieldByName('tempservconj').asString;
  Result.tipDoc         := qry.fieldByName('tipdoc').asString;
  Result.tipoCli        := qry.fieldByName('tipocli').asInteger;
  Result.tipoPessoa     := qry.fieldByName('tipopessoa').asString;
  Result.vend           := qry.fieldByName('vend').asInteger;

  qry.Close;
  FreeAndNil(qry);
end;

class function TCliente.getByNrPedZ(const nrPed: Integer): TCliente;
var qry: TMDOQuery;
begin
  qry := dm.GetQueryInstance('SELECT pedidos.codcli         '+
                             'FROM pedidos                  '+
                             'WHERE pedidos.nrped = :nrPed; ');
  qry.ParamByName('nrPed').asInteger := nrPed;
  qry.Open;

  result := self.getByNrPedZ(qry.fieldByName('codcli').asInteger);

  qry.close;
  freeAndNil(qry);
end;

class function TCliente.existeZ(codigo: Integer): Boolean;
var qry: TMDOQuery;
begin
  qry := dm.GetQueryInstance(' SELECT * FROM clientes WHERE clientes.codigo = :codigo; ');
  qry.ParamByName('codigo').asInteger := codigo;
  qry.Open;

  if not qry.IsEmpty then
    result := true
  else
    result := false;

  qry.close;
  freeAndNil(qry);
end;

procedure TCliente.saveZ;
var qry: TMDOQuery;
begin
  if verificaVazio then
  begin
    qry := dm.GetQueryInstance('INSERT INTO CLIENTES                                                              '+
                               'VALUES                                                                            '+
                               '(:CODIGO, :NOME, :NOMEFAN, :ENDER, :BAIRRO, :CIDADE, :ESTADO,                     '+
                               ' :CEP, :CPF, :RG, :FONE1, :FONE2, :OBS, :FLAG, :DTNASCI, :DTCAD,                  '+
                               ' :RESPONS, :TIPOCLI, :LOCTRAB, :TEMPSERV, :PAI, :MAE, :CONJUGUE,                  '+
                               ' :LOCTRCONJ, :TEMPSERVCONJ, :CASAPROP, :TEMPMORA, :REFCOM1, :REFCOM2,             '+
                               ' :REFCOM3, :LIMITE, :CREDITO, :PAIS, :CELULAR, :EMAIL, :RENDFAM, :REFBANC,         '+
                               ' :AGENCIA, :NRCC, :DTABERT, :MOTBLOQ, :SPC, :VEND, :SUFRAMANR, :SUFRAMADT,        '+
                               ' :OBS3, :OBS4, :OBS5, :CODVENPL, :ATACVAR, :CODROTA, :RELATOS, :DIACRITCA,        '+
                               ' :TIPOPESSOA, :SIMPLES, :TIPDOC, :NUMERO, :CONTRIB, :DTALTER, :ICMSSUB, :CADPDA,  '+
                               ' :ICMSRET, :CONSULTASINTEGRA)                                                     ');

    qry.ParamByName('codigo').AsInteger := self.codigo;
    qry.ParamByName('agencia').asString := self.agencia;
    qry.ParamByName('atacVar').asString := self.atacVar;
    qry.ParamByName('bairro').AsString := self.bairro;
    qry.ParamByName('cadPDA').asString := self.cadPDA;
    qry.ParamByName('casaProp').AsString := self.casaProp;
    qry.ParamByName('celular').AsString := self.Celular;
    qry.ParamByName('CEP').AsString := self.cep;
    qry.ParamByName('cidade').AsString := self.cidade;
    qry.ParamByName('codRota').AsInteger := self.codRota;
    qry.ParamByName('codVenPl').asInteger := self.codVenPl;
    qry.ParamByName('conjugue').asString := self.conjugue;
    qry.ParamByName('consultaSintegra').asString := self.consultaSintegra;
    qry.ParamByName('conTrib').asString := self.conTrib;
    qry.ParamByName('CPF').asString := self.cpf;
    qry.ParamByName('credito').asFloat := self.credito;
    qry.ParamByName('diaCritca').asInteger := self.diaCritca;
    qry.ParamByName('dtAbert').AsDateTime := self.dtAbert;
    qry.ParamByName('dtAlter').asDateTime := self.dtAlter;
    qry.ParamByName('dtCad').AsDateTime := self.dtCad;
    qry.ParamByName('dtNasci').AsDateTime := self.dtNasci;
    qry.ParamByName('email').asString := self.email;
    qry.ParamByName('ender').asString := self.endereco;
    qry.ParamByName('estado').asString := self.estado;
    qry.ParamByName('flag').asString := self.bloqueado;
    qry.ParamByName('fone1').asString := self.fone;
    qry.ParamByName('fone2').asString := self.fone2;
    if (self.icmsRet) then qry.ParamByName('icmsRet').asString := 'S' else qry.ParamByName('icmsRet').asString := 'N';
    if (self.icmsSub) then qry.ParamByName('icmsSub').asString := 'S' else qry.ParamByName('icmsSub').asString := 'N';
    qry.ParamByName('limite').asFloat := self.Limite;
    qry.ParamByName('locTrab').asString := self.locTrab;
    qry.ParamByName('LOCTRCONJ').asString := self.locTrConj;
    qry.ParamByName('mae').AsString := self.mae;
    qry.ParamByName('motBloq').AsString := self.motBloq;
    qry.ParamByName('nome').asString := self.nome;
    qry.ParamByName('nomeFan').asString := self.fantasia;
    qry.ParamByName('NRCC').asString := self.NRCC;
    qry.ParamByName('numero').asInteger := self.numero;
    qry.ParamByName('obs').asString := self.obs;
    qry.ParamByName('obs3').asString := self.obs3;
    qry.ParamByName('obs4').asString := self.obs4;
    qry.ParamByName('obs5').asString := self.obs5;
    qry.ParamByName('pai').asString := self.pai;
    qry.ParamByName('pais').asString := self.pais;
    qry.ParamByName('refBanc').asString := self.refBanc;
    qry.ParamByName('refCom1').asString := self.refCom1;
    qry.ParamByName('refCom2').AsString := self.refCom2;
    qry.ParamByName('refCom3').asString := self.refCom3;
    qry.ParamByName('relatos').AsString := self.relatos;
    qry.ParamByName('RENDFAM').AsFloat := self.rendFam;
    qry.ParamByName('respons').asString := self.Responsavel;
    qry.ParamByName('RG').AsString := self.rg;
    qry.ParamByName('simples').asString := self.simples;
    qry.ParamByName('SPC').AsString := self.simples;
    qry.ParamByName('suframaDt').asDateTime := self.suframaDt;
    qry.ParamByName('suframaNr').AsString := self.suframaNr;
    qry.ParamByName('tempMora').AsString := self.tempMora;
    qry.ParamByName('tempServ').asString := self.tempServ;
    qry.ParamByName('tempServConj').AsString := self.tempServConj;
    qry.ParamByName('tipDoc').asString := self.tipDoc;
    qry.ParamByName('tipoCli').asInteger := self.tipoCli;
    qry.ParamByName('tipoPessoa').AsString := self.tipoPessoa;
    qry.ParamByName('vend').asInteger := self.vend;

    qry.ExecSQL;
  end

  else
  begin
    qry := dm.GetQueryInstance('UPDATE clientes c SET c.agencia = :agencia, c.atacvar = :atacVar,                            '+
                               '                      c.bairro = :bairro, c.cadpda = :cadPDA,                                '+
                               '                      c.casaprop = :casaProp, c.celular = :celular,                          '+
                               '                      c.cep = :CEP, c.cidade = :cidade,                                      '+
                               '                      c.codigo = :codigo, c.codrota = :codRota,                              '+
                               '                      c.codvenpl = :codVenPl, c.conjugue = :conjugue,                        '+
                               '                      c.consultasintegra = :consultaSintegra, c.contrib = :contrib,          '+
                               '                      c.cpf = :CPF, c.credito = :credito,                                    '+
                               '                      c.diacritca = :diaCritca, c.dtabert = :dtAbert,                        '+
                               '                      c.dtalter = :dtAlter, c.dtcad = :dtCad,                                '+
                               '                      c.dtnasci = :dtNasci, c.email = :email,                                '+
                               '                      c.ender = :ender, c.estado = :estado,                                  '+
                               '                      c.flag = :flag, c.fone1 = :fone1,                                      '+
                               '                      c.fone2 = :fone2, c.icmsret = :icmsRet,                                '+
                               '                      c.icmssub = :icmsSub, c.limite = :limite,                              '+
                               '                      c.loctrab = :locTrab, c.loctrconj = :locTrConj,                        '+
                               '                      c.mae = :mae, c.motbloq = :motBloq,                                    '+
                               '                      c.nome = :nome, c.nomefan = :nomeFan,                                  '+
                               '                      c.nrcc = :NRCC, c.numero = :numero,                                    '+
                               '                      c.obs = :obs, c.obs3 = :obs3,                                          '+
                               '                      c.obs4 = :obs4, c.obs5 = :obs5,                                        '+
                               '                      c.pai = :pai, c.pais = :pais,                                          '+
                               '                      c.refbanc = :refBanc, c.refcom1 = :refCom1,                            '+
                               '                      c.refcom2 = :refCom2, c.refcom3 = :refCom3,                            '+
                               '                      c.relatos = :relatos, c.rendfam = :rendFam,                            '+
                               '                      c.respons = :respons, c.rg = :RG,                                      '+
                               '                      c.simples = :simples, c.spc = :SPC,                                    '+
                               '                      c.suframadt = :suframaDt, c.suframanr = :suframaNr,                    '+
                               '                      c.tempmora = :tempMora, c.tempserv = :tempServ,                        '+
                               '                      c.tempservconj = :tempServConj, c.tipdoc = :tipDoc,                    '+
                               '                      c.tipocli = :tipoCli, c.tipopessoa = :tipoPessoa,                      '+
                               '                      c.vend = :vend                                                         '+
                               'WHERE c.codigo = :codigo;                                                                    ');
    qry.ParamByName('codigo').AsInteger := self.codigo;
    qry.ParamByName('agencia').asString := self.agencia;
    qry.ParamByName('atacVar').asString := self.atacVar;
    qry.ParamByName('bairro').AsString := self.bairro;
    qry.ParamByName('cadPDA').asString := self.cadPDA;
    qry.ParamByName('casaProp').AsString := self.casaProp;
    qry.ParamByName('celular').AsString := self.Celular;
    qry.ParamByName('CEP').AsString := self.cep;
    qry.ParamByName('cidade').AsString := self.cidade;
    qry.ParamByName('codRota').AsInteger := self.codRota;
    qry.ParamByName('codVenPl').asInteger := self.codVenPl;
    qry.ParamByName('conjugue').asString := self.conjugue;
    qry.ParamByName('consultaSintegra').asString := self.consultaSintegra;
    qry.ParamByName('conTrib').asString := self.conTrib;
    qry.ParamByName('CPF').asString := self.cpf;
    qry.ParamByName('credito').asFloat := self.credito;
    qry.ParamByName('diaCritca').asInteger := self.diaCritca;
    qry.ParamByName('dtAbert').AsDateTime := self.dtAbert;
    qry.ParamByName('dtAlter').asDateTime := self.dtAlter;
    qry.ParamByName('dtCad').AsDateTime := self.dtCad;
    qry.ParamByName('dtNasci').AsDateTime := self.dtNasci;
    qry.ParamByName('email').asString := self.email;
    qry.ParamByName('ender').asString := self.endereco;
    qry.ParamByName('estado').asString := self.estado;
    qry.ParamByName('flag').asString := self.bloqueado;
    qry.ParamByName('fone1').asString := self.fone;
    qry.ParamByName('fone2').asString := self.fone2;
    if (self.icmsRet) then qry.ParamByName('icmsRet').asString := 'S' else qry.ParamByName('icmsRet').asString := 'N';
    if (self.icmsSub) then qry.ParamByName('icmsSub').asString := 'S' else qry.ParamByName('icmsSub').asString := 'N';
    qry.ParamByName('limite').asFloat := self.Limite;
    qry.ParamByName('locTrab').asString := self.locTrab;
    qry.ParamByName('locTrConj').asString := self.locTrConj;
    qry.ParamByName('mae').AsString := self.mae;
    qry.ParamByName('motBloq').AsString := self.motBloq;
    qry.ParamByName('nome').asString := self.nome;
    qry.ParamByName('nomeFan').asString := self.fantasia;
    qry.ParamByName('NRCC').asString := self.NRCC;
    qry.ParamByName('numero').asInteger := self.numero;
    qry.ParamByName('obs').asString := self.obs;
    qry.ParamByName('obs3').asString := self.obs3;
    qry.ParamByName('obs4').asString := self.obs4;
    qry.ParamByName('obs5').asString := self.obs5;
    qry.ParamByName('pai').asString := self.pai;
    qry.ParamByName('pais').asString := self.pais;
    qry.ParamByName('refBanc').asString := self.refBanc;
    qry.ParamByName('refCom1').asString := self.refCom1;
    qry.ParamByName('refCom2').AsString := self.refCom2;
    qry.ParamByName('refCom3').asString := self.refCom3;
    qry.ParamByName('relatos').AsString := self.relatos;
    qry.ParamByName('rendFam').AsFloat := self.rendFam;
    qry.ParamByName('respons').asString := self.Responsavel;
    qry.ParamByName('RG').AsString := self.rg;
    qry.ParamByName('simples').asString := self.simples;
    qry.ParamByName('SPC').AsString := self.simples;
    qry.ParamByName('suframaDt').asDateTime := self.suframaDt;
    qry.ParamByName('suframaNr').AsString := self.suframaNr;
    qry.ParamByName('tempMora').AsString := self.tempMora;
    qry.ParamByName('tempServ').asString := self.tempServ;
    qry.ParamByName('tempServConj').AsString := self.tempServConj;
    qry.ParamByName('tipDoc').asString := self.tipDoc;
    qry.ParamByName('tipoCli').asInteger := self.tipoCli;
    qry.ParamByName('tipoPessoa').AsString := self.tipoPessoa;
    qry.ParamByName('vend').asInteger := self.vend;

    qry.ExecSQL;
    freeAndNil(qry);
  end;
end;

end.

