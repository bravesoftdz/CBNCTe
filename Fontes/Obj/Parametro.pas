unit Parametro;

interface

uses MDOQuery,StrUtils;

type
  TParametro = class(TInterfacedObject)
  private
    FRaz: String;
    FFan: String;
    FEstado: String;
    FVersao: Integer;
    FIE: String;
    FCnpj: String;
    FCidade: String;
    FFone: String;
    FEnder: String;
    FCep: String;
    FDataMov: TDateTime;
    FEmail: String;
    FCodMunicipio : Integer;
    Ffax: String;
    Fsite: String;
    Fnumero: Integer;
    Fbairro: String;
    FcodEmp: String;
    FCertificado :String;
    FTipoAmbiente :integer;
    FBDRemoto :String;
    FCaminhoLogo :String;
    FSenhaCertif :String;
    FRNTRC :Integer;
    FImpPadrao :String;
    FBDPadrao :String;
    FSN :String;
    FMsgPadrao :String;
    FCaracProd :String;
    FCidadeOrig:String;
    Fresponsavel: String;
    FcpfResponsavel: String;
    Fjust_contingencia: String;
    Fcontingencia_ativa: TDateTime;
    FCIOT: String;

    procedure SetFan(const Value: String);
    procedure SetRaz(const Value: String);
    procedure SetEstado(const Value: String);
    procedure SetVersao(const Value: Integer);
    procedure SetCnpj(const Value: String);
    procedure SetIE(const Value: String);
    procedure SetCidade(const Value: String);
    procedure SetFone(const Value: String);
    procedure SetEnder(const Value: String);
    procedure SetCep(const Value: String);
    procedure SetDataMov(const Value: TDateTime);
    procedure SetEmail(const Value: String);
    procedure SetCodMunicipio(const Value: Integer);
    procedure Setfax(const Value: String);
    procedure Setsite(const Value: String);
    procedure Setbairro(const Value: String);
    procedure Setnumero(const Value: Integer);
    procedure SetcodEmp(const Value: String);
    procedure SetCertificado(const Value :String);
    procedure SetTipoAmbiente(const Value :Integer);
    procedure SetBDRemoto(const Value :String);
    procedure SetCaminhoLogo(const Value :String);
    procedure SetSenhaCertif(const Value :String);
    procedure SetRNTRC(const value :Integer);
    procedure SetImpPadrao(const value :String);
    procedure SetBDPadrao(const value :String);
    procedure SetSN(const value :String);
    procedure SetMsgPadrao(const value :String);
    procedure SetCaracProd(const value :String);
    procedure SetCidadeOrig(const value :String);
    procedure Setresponsavel(const Value: String);
    procedure SetcpfResponsavel(const Value: String);
    procedure Setjust_contingencia(const Value: String);
    procedure Setcontingencia_ativa(const Value: TDateTime);
    procedure SetCIOT(const Value: String);

  public
    property Raz                :String    read FRaz                write SetRaz;
    property Fan                :String    read FFan                write SetFan;
    property Estado             :String    read FEstado             write SetEstado;
    property Versao             :Integer   read FVersao             write SetVersao;
    property Cnpj               :String    read FCnpj               write SetCnpj;
    property IE                 :String    read FIE                 write SetIE;
    property Cidade             :String    read FCidade             write SetCidade;
    property Fone               :String    read FFone               write SetFone;
    property Ender              :String    read FEnder              write SetEnder;
    property Cep                :String    read FCep                write SetCep;
    property DataMov            :TDateTime read FDataMov            write SetDataMov;
    property Email              :String    read FEmail              write SetEmail;
    property CodMunicipio       :Integer   read FCodMunicipio       write SetCodMunicipio;
    property fax                :String    read Ffax                write Setfax;
    property site               :String    read Fsite               write Setsite;
    property numero             :Integer   read Fnumero             write Setnumero;
    property bairro             :String    read Fbairro             write Setbairro;
    property codEmp             :String    read FcodEmp             write SetcodEmp;
    PROPERTY responsavel        :String    read Fresponsavel        write Setresponsavel;
    property cpfResponsavel     :String    read FcpfResponsavel     write SetcpfResponsavel;
    property Certificado        :String    read FCertificado        write SetCertificado;
    property TipoAmbiente       :Integer   read FTipoAmbiente       write SetTipoAmbiente;
    property BDRemoto           :String    read FBDRemoto           write SetBDRemoto;
    property CaminhoLogo        :String    read FCaminhoLogo        write SetCaminhoLogo;
    property SenhaCertif        :String    read FSenhaCertif        write SetSenhaCertif;
    property RNTRC              :Integer   read FRNTRC              write SetRNTRC;
    property ImpPadrao          :String    read FImpPadrao          write SetImpPadrao;
    property BDPadrao           :String    read FBDPadrao           write SetBDPadrao;
    property SN                 :String    read FSN                 write SetSN;
    property MsgPadrao          :String    read FMsgPadrao          write SetMsgPadrao;
    property CaracProd          :String    read FCaracProd          write SetCaracProd;
    property CidadeOrig         :String    read FCidadeOrig         write SetCidadeOrig;
    property contingencia_ativa :TDateTime read Fcontingencia_ativa write Setcontingencia_ativa;
    property just_contingencia  :String    read Fjust_contingencia  write Setjust_contingencia;
    property CIOT               :String    read FCIOT               write SetCIOT;

    function existe: Boolean;
    function salvar: Boolean;

    function getNomeRem(): String;
    function getEmailRem(): String;

    class function Get: TParametro;
  end;

implementation

uses Modulo, SysUtils, DB, Math, TypInfo;

const
  pNumero = 'NUMERO';
  pBairro = 'BAIRRO';
  pCodEmp = 'CODEMP';
  pDTMOV = 'DTMOV';

{ TParametro }
var p : TParametro;

class function TParametro.Get: TParametro;
var    qry: TMDOQuery;
begin
  qry := dm.GetQueryInstance('select * from parametros');
  qry.Open;

  if p = nil then
    p              := TParametro.Create;

  p.Raz            := qry.FieldByName('RAZ').AsString;
  p.Fan            := qry.FieldByName('FAN').AsString;
  p.Estado         := qry.FieldByName('ESTADO').AsString;
  p.Versao         := qry.FieldByName('VERSAO').AsInteger;
  p.Cnpj           := qry.FieldByName('CNPJ').AsString;
  p.IE             := qry.FieldByName('IE').AsString;
  p.Cidade         := qry.FieldByName('CIDADE').AsString;
  p.Fone           := qry.FieldByName('FONE').AsString;
  p.Ender          := qry.FieldByName('ENDER').AsString;
  p.Cep            := qry.FieldByName('CEP').AsString;
  p.dataMov        := qry.FieldByName('DTMOV').AsDateTime;
  p.Email          := qry.FieldByName('EMAIL').AsString;
  p.codEmp         := trim(qry.fieldByName(pCodEmp).asString);
  p.fax            := trim(qry.fieldByName('FAX').asString);
  p.site           := trim(qry.fieldByName('SITE').asString);
  p.numero         := qry.fieldByName(pNumero).AsInteger;
  p.bairro         := qry.fieldByName(pBairro).AsString;
  p.Certificado    := qry.fieldByName('certificado').AsString;
  p.TipoAmbiente   := qry.fieldByName('tipo_ambiente').AsInteger;
  p.BDRemoto       := qry.fieldByName('BD_REMOTO').AsString;
  p.CaminhoLogo    := qry.fieldByName('CAMINHO_LOGO').AsString;
  p.SenhaCertif    := qry.fieldByName('senhacertif').AsString;
  p.RNTRC          := qry.fieldByName('RNTRC').asInteger;
  p.ImpPadrao      := qry.fieldByName('IMPPADRAO').AsString;
  p.BDPadrao       := qry.fieldByName('BDPadrao').AsString;
  p.SN             := qry.fieldByName('SN').AsString;
  p.MsgPadrao      := trim(qry.fieldByName('MsgPadrao').AsString);
  p.CaracProd      := trim(qry.fieldByName('CaracProd').AsString);
  p.CidadeOrig     := qry.fieldByName('cidadeOrig').AsString;
  p.Versao         := qry.fieldByName('versao').AsInteger;
  p.CodMunicipio   := qry.FieldByName('CODMUNICIPIO').AsInteger;
  p.responsavel    := qry.fieldByName('responsavel').AsString;
  p.cpfResponsavel := qry.fieldByName('cpfresponsavel').AsString;
  p.contingencia_ativa := qry.fieldByName('contingencia_ativa').AsDateTime;
  p.just_contingencia  := qry.fieldByName('just_contingencia').AsString;


  qry.Close;
  FreeAndNil(qry);

  Result := p;
end;

procedure TParametro.SetCep(const Value: String);
begin
  FCep := Value;
end;

procedure TParametro.SetCidade(const Value: String);
begin
  FCidade := Value;
end;

procedure TParametro.SetCnpj(const Value: String);
begin
  FCnpj := Value;
end;

procedure TParametro.SetEnder(const Value: String);
begin
  FEnder := Value;
end;

procedure TParametro.SetEstado(const Value: String);
begin
  FEstado := Value;
end;

procedure TParametro.SetFan(const Value: String);
begin
  FFan := Value;
end;

procedure TParametro.SetFone(const Value: String);
begin
  FFone := Value;
end;

procedure TParametro.SetIE(const Value: String);
begin
  FIE := Value;
end;

procedure TParametro.SetRaz(const Value: String);
begin
  FRaz := Value;
end;

procedure TParametro.SetVersao(const Value: Integer);
begin
  FVersao := Value;
end;

procedure TParametro.SetDataMov(const Value: TDateTime);
begin
  FDataMov := Value;
end;

procedure TParametro.SetEmail(const Value: String);
begin
  FEmail := Value;
end;

procedure TParametro.SetCodMunicipio(const Value: Integer);
begin
  FCodMunicipio := Value;
end;

procedure TParametro.Setfax(const Value: String);
begin
  Ffax := Value;
end;

procedure TParametro.Setsite(const Value: String);
begin
  Fsite := Value;
end;

function TParametro.existe: Boolean;
var Qry :TMDOQuery;
begin
  Qry := TMDOQuery.Create(nil);
  Qry.Database    := dm.Database;
  Qry.Transaction := dm.Transaction;
  Qry.Close;
  Qry.SQL.Text := ' SELECT * FROM PARAMETROS';
  Qry.Open;

  if Qry.isEmpty then
    result := false
  else
    result := true;

  Qry.Destroy;
  Qry := nil;
end;

function TParametro.salvar: Boolean;
var Qry :TMDOQuery;
begin
  Qry := dm.GetQueryInstance('UPDATE OR INSERT INTO PARAMETROS (CODEMP, RAZ, FAN, ENDER, CIDADE, ESTADO, CEP, CNPJ, IE, FONE, DTMOV,                   '+
                                       '                        EMAIL, VERSAO, CODMUNICIPIO, FAX, NUMERO, BAIRRO, CERTIFICADO, TIPO_AMBIENTE,          '+
                                       '                        CAMINHO_LOGO, RESPONSAVEL, CPFRESPONSAVEL, BD_REMOTO, SENHACERTIF, RNTRC, SITE,        '+
                                       '                        IMPPADRAO, BDPADRAO, SN, MSGPADRAO, CIDADEORIG, CARACPROD)                             '+
                                       '                VALUES (:CODEMP, :RAZ, :FAN, :ENDER, :CIDADE, :ESTADO, :CEP, :CNPJ, :IE, :FONE, :DTMOV, :EMAIL,'+
                                       '                        :VERSAO, :CODMUNICIPIO, :FAX, :NUMERO, :BAIRRO, :CERTIFICADO, :TIPO_AMBIENTE,          '+
                                       '                        :CAMINHO_LOGO, :RESPONSAVEL, :CPFRESPONSAVEL, :BD_REMOTO, :SENHACERTIF, :RNTRC, :SITE, '+
                                       '                        :IMPPADRAO, :BDPADRAO, :SN, :MSGPADRAO, :CIDADEORIG, :CARACPROD)                       ');


      Qry.ParamByName('codemp').AsInteger        := 1;
      Qry.ParamByName('raz').AsString            := trim(self.Raz);
      Qry.ParamByName('fan').AsString            := trim(self.Fan);
      Qry.ParamByName('cidade').AsString         := self.Cidade;
      Qry.ParamByName('ender').AsString          := self.Ender;
      Qry.ParamByName('numero').AsInteger        := self.numero;
      Qry.ParamByName('bairro').AsString         := self.bairro;
      Qry.ParamByName('codmunicipio').AsInteger  := self.CodMunicipio;
      Qry.ParamByName('estado').AsString         := self.Estado;
      Qry.ParamByName('cep').AsString            := self.Cep;
      Qry.ParamByName('cnpj').AsString           := self.Cnpj;
      Qry.ParamByName('ie').AsString             := self.IE;
      Qry.ParamByName('fone').AsString           := self.fone;
      Qry.ParamByName('fax').AsString            := self.fax;
      Qry.ParamByName('dtmov').AsDateTime        := self.DataMov;
      Qry.ParamByName('email').AsString          := self.Email;
      Qry.ParamByName('site').AsString           := self.site;
      Qry.ParamByName('caminho_logo').AsString   := self.CaminhoLogo;
      Qry.ParamByName('responsavel').AsString    := self.responsavel;
      Qry.ParamByName('cpfresponsavel').AsString := self.cpfResponsavel;            
      Qry.ParamByName('bd_remoto').asString      := self.BDRemoto;
      Qry.ParamByName('certificado').AsString    := self.Certificado;
      Qry.ParamByName('tipo_ambiente').AsInteger := self.TipoAmbiente;
      Qry.ParamByName('senhacertif').AsString    := self.SenhaCertif;
      Qry.ParamByName('RNTRC').asInteger         := self.FRNTRC;
      Qry.ParamByName('IMPPADRAO').AsString      := self.ImpPadrao;
      Qry.ParamByName('BDPadrao').AsString       := self.BDPadrao;
      Qry.ParamByName('SN').asString             := self.SN;
      Qry.ParamByName('MsgPadrao').AsString      := self.MsgPadrao;
      Qry.ParamByName('CaracProd').AsString      := self.CaracProd;
      Qry.ParamByName('CidadeOrig').AsString     := self.CidadeOrig;
      Qry.ParamByName('versao').AsInteger        := self.Versao;

      Qry.ExecSQL;
      Qry.Destroy;
      Qry := nil;
end;

procedure TParametro.Setbairro(const Value: String);
begin
  Fbairro := Value;
end;

procedure TParametro.Setnumero(const Value: Integer);
begin
  Fnumero := Value;
end;

procedure TParametro.SetcodEmp(const Value: String);
begin
  FcodEmp := Value;
end;

function TParametro.getEmailRem: String;
begin
   result := Trim(self.FEmail);
end;

function TParametro.getNomeRem: String;
begin
   result := Trim(self.FFan);
end;

procedure TParametro.SetCertificado(const Value: String);
begin
  FCertificado := Value;
end;

procedure TParametro.SetTipoAmbiente(const Value: Integer);
begin
  FTipoAmbiente := Value;
end;

procedure TParametro.SetBDRemoto(const Value: String);
begin
  FBDRemoto := value;
end;

procedure TParametro.SetCaminhoLogo(const Value: String);
begin
  FCaminhoLogo := Value;
end;

procedure TParametro.SetSenhaCertif(const Value: String);
begin
  FSenhaCertif := Value;
end;

procedure TParametro.SetRNTRC(const value: Integer);
begin
  FRNTRC := Value;
end;

procedure TParametro.SetImpPadrao(const value: String);
begin
  FImpPadrao := Value;
end;

procedure TParametro.SetBDPadrao(const value: String);
begin
  FBDPadrao := value;
end;

procedure TParametro.SetSN(const value: String);
begin
  FSN := value;
end;

procedure TParametro.SetMsgPadrao(const value: String);
begin
  FMsgPadrao := value;
end;

procedure TParametro.SetCaracProd(const value: String);
begin
  FCaracProd := Value;
end;

procedure TParametro.SetCidadeOrig(const value: String);
begin
  FCidadeOrig := Value;
end;

procedure TParametro.Setresponsavel(const Value: String);
begin
  Fresponsavel := Value;
end;

procedure TParametro.SetcpfResponsavel(const Value: String);
begin
  FcpfResponsavel := Value;
end;

procedure TParametro.Setjust_contingencia(const Value: String);
begin
  Fjust_contingencia := Value;
end;

procedure TParametro.Setcontingencia_ativa(const Value: TDateTime);
begin
  Fcontingencia_ativa := Value;
end;

procedure TParametro.SetCIOT(const Value: String);
begin
  FCIOT := Value;
end;

end.
