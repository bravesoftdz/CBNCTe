{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00999999}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE ON}
{$WARN UNSAFE_CODE ON}
{$WARN UNSAFE_CAST ON}
unit uTPedido;

interface

uses MDOQuery,uTCliente,DBClient,uTUsuario,uTFPgto,uTDados,uTCarga,DB,AndreConsulta, ZDataSet, Transportadora;

type
  TPedido = class
  private

    codigo   : Integer;
    data     : TDateTime;
    cliente  : TCliente;
    vendedor : TUsuario;
    fpagto   : TFPgto;
    dados    : TDados;
    tipo     : String;
    situ     : String;
    vlrTot   : Real;
    qtParc   : Integer;
    vlrProd  : Real;
    entregue : String;
    obs      : String;
    acresFin : Real;
    descFin  : Real;

    fAcresFpag: Real;
    fDescFpag : Real;

    promotor : String;
    pNrdoc    : Integer;
    
    CDS      : TClientDataSet;
    Qry      : TMDOQuery;
    FQry     : TAndreConsulta;
    FMotDev  : String;
    FOcorrencias : String;
    FDesconOcorrencia : Real;
    FQtdItens      : Integer;
    FPedidoPai     : Integer;
    FCarga: Integer;
    FSubcarga: Integer;
    FidCliente: Integer;
    FidEndereco: Integer;
    FPedidoConferido: Boolean;
    Fcupom: string;
    Ftransportadora: TTransportadora;
    FdesconTroca: Real;
    FcodCartao: String;
    FPartic: String;

    procedure criaDataSet(QryMDO : TMDOQuery);
    function qryToDataSet(QryMDO: TMDOQuery):TClientDataSet;
    function getPerDesc: Real;
    function getPerAcresc: Real;
    function getMotivoDev: String;
    function getOcorrencias: String;
    function getDesconOcorrencia: Real;
    function getQtdItens: Integer;
    function getPedidoPai: Integer;
    procedure SetCarga(const Value: Integer);
    procedure SetSubcarga(const Value: Integer);
    procedure SetidCliente(const Value: Integer);
    procedure SetidEndereco(const Value: Integer);
    procedure SetPedidoConferido(const Value: Boolean);
    procedure Setcupom(const Value: string);
    procedure Settransportadora(const Value: TTransportadora);
    procedure SetdesconTroca(const Value: Real);
    procedure SetcodCartao(const Value: String);
    procedure Setpartic(const Value: String);



  public

    procedure setVlrProd(const Value: Real);
    procedure setVendedor(const Value: TUsuario);
    procedure setFPgto(const Value: TFPgto);
    procedure setCodigo(const Value: Integer);
    procedure setData(const Value: TDateTime);
    procedure setSitu(const Value: String);
    procedure setCliente(const Value: TCliente);
    procedure setDados(const Value: TDados);
    procedure setTipo(const Value: String);
    procedure setVlrTot(const Value: Real);
    procedure setQtParc(const Value: Integer);
    procedure setEntr(const Value: String);

    property getCodigo   : Integer       read codigo   write setCodigo;
    property getData     : TDateTime   read data     write setData;
    property getSitu     : String      read situ     write setSitu;
    property getCliente  : TCliente    read cliente  write setCliente;
    property getVendedor : TUsuario    read vendedor write setVendedor;
    property getFPgto    : TFPgto      read fpagto   write setFPgto;
    property getDados    : TDados      read dados    write setDados;
    property getTipo     : String      read tipo     write setTipo;
    property getVlrTot   : Real        read vlrTot   write setVlrTot;
    property getQtParc   : Integer     read qtParc   write setQtParc;
    property getEntr     : String      read entregue write setEntr;
    property getVlrProd  : Real        read vlrProd  write setVlrProd;
    property getObs      : String      read obs      write obs;
    property getAcrescFin: Real        read acresFin write acresFin;
    property getDescFin  : Real        read descFin  write descFin;
    property getPromotor : String      read promotor write promotor;
    property NrDoc       : Integer     read pNrdoc   write pNrdoc;
    property DescFPag    : Real        read fDescFpag write fDescFpag;
    property AcresFpag   : Real        read fAcresFpag write fAcresFpag;
    property PercDesc    : Real        read getPerDesc;
    property PercAcresc  : Real        read getPerAcresc;
    property MotivoDev   : String      read getMotivoDev write FMotDev;
    property Ocorrencias : String      read getOcorrencias write FOcorrencias;
    property DesconOcorrencia : Real   read getDesconOcorrencia write FDesconOcorrencia;
    property QtdItens         : Integer read getQtdItens;
    property PedidoPai        : Integer read getPedidoPai write FPedidoPai;
    property Carga            : Integer   read FCarga write SetCarga;
    property Subcarga         : Integer    read FSubcarga write SetSubcarga;
    property idEndereco       : Integer read FidEndereco write SetidEndereco;
    property PedidoConferido  : Boolean read FPedidoConferido write SetPedidoConferido;
    property cupom            : String read Fcupom write Setcupom;
    property transportadora   : TTransportadora read Ftransportadora write Settransportadora;
    property desconTroca      : Real read FdesconTroca write SetdesconTroca;
    property codCartao        : String read FcodCartao write SetcodCartao;
    property partic           : String read FPartic write Setpartic;

    constructor Create;

    procedure ById(ANrped : Integer);
    procedure ByIdZ(ANrped : Integer);

    procedure ByIdLite(ANrped : Integer );
    procedure ByIdLiteZ(ANrPed : Integer );
    procedure AlteraTipoPedido(NrPedido: Integer;Tipo:Char = 'O');
    procedure ZeraTerminal(NrPedido: Integer);

    procedure salvar; overload;

    procedure Destroy;

    class function GetById(cod : Integer) :TPedido;
    class function getByIdZ(cod: Integer): TPedido;

    class function getByNrNota(nrNota: Integer) :TPedido;
    class function getByNrNotaZ(nrNota: Integer) :TPedido;

    class function getByCodCartaoZ(codCartao :String) :TPedido;


    class function generatorPedido :Integer;

    class function salvar( aux : TPedido ):Boolean;overload;

    class function apagarAnt( aux: TPedido ):Boolean; overload;
    class function apagarAnt( aux: TPedido; cancelado: String ):Boolean; overload;
    class function buscar(nrped:Integer; dI, dF : TDateTime):TDataSource; overload;
    class function buscar(nrped:Integer):TDataSet; overload;

    class function existe( ANrPed : Integer ):Boolean;
    class function existeZ( ANrPed : Integer ):Boolean;

    class function existeCodCartaoZ(codCartao: String):Boolean; overload;
    class function existeCodCartaoZ(codCartao: String; fake: Boolean ):Boolean; overload;

    class function existeCodCartao(codCartao: String; fake: Boolean):Boolean; overload;
    class function existeCodCartao(codCartao: String):Boolean; overload;

    class function getValorCampo( ANrPed : Integer; campo : String ):TField;
    class function getUltimoNrPed: Integer;

    class procedure salvaMotDev(pNrped: Integer;pMotivo: String);
    class procedure salvarOcorrencia(pNrped: Integer;pOcorrencia: String;pDescon:Real);
    class procedure setValorCampo( ANrPed : Integer; campo : String; valor : Variant );

    destructor free;
  end;

implementation

uses Modulo, SysUtils, TypInfo, uSubcarga, Auditoria;
  



class function TPedido.apagarAnt(aux: TPedido): Boolean;
var sql : String;
q : TMDOQuery;
begin
   sql := 'delete from parcelas pa where pa.nrped = :nrped'; // apaga todas as parcelas
   q := dm.GetQueryInstance(sql);
   q.ParamByName('nrped').AsInteger := aux.getCodigo;
   q.ExecSQL;

   sql := 'delete from receber pa where pa.nrdoc = :nrped'; // apaga todas as contas a receber
   q := dm.GetQueryInstance(sql);
   q.ParamByName('nrped').AsInteger := aux.getCodigo;
   q.ExecSQL;

   sql := 'delete from chequepre pa where pa.nrdoc = :nrped'; // apaga todos os cheques
   q := dm.GetQueryInstance(sql);
   q.ParamByName('nrped').AsInteger := aux.getCodigo;
   q.ExecSQL;

   sql := 'delete from itens i where i.nrped = :nrped';  // apaga todos os itens
   q := dm.GetQueryInstance(sql);
   q.ParamByName('nrped').AsInteger := aux.getCodigo;
   q.ExecSQL;

   sql := 'delete from pedidos p where p.nrped = :nrped';  // apaga o pedido
   q := dm.GetQueryInstance(sql);
   q.ParamByName('nrped').AsInteger := aux.getCodigo;
   q.ExecSQL;

   TAuditoria.Log_Exluir_Pedido(inttostr(aux.getCodigo) ,0{nCodUsuGlobal});

   q.Destroy;
end;

class function TPedido.buscar(nrped: Integer;  dI , dF: TDateTime): TDataSource;
var ds : TDataSource;
    dados : TDados;
    q : TMDOQuery;
begin

   q := dm.GetQueryInstance( ' select p.nrped ,p.data ,p.codcli ,c.nome , '+
                             ' p.vlrtot  , IIF((p.tipo = ''P''),''Pedido'', IIF((p.tipo = ''O''),''Orçamento'','''')) as "Tipo"  '+
                             ' from pedidos p , clientes c '+
                             '  where (p.data between :dI and :dF)       '+
                             '  and p.codcli = c.codigo    '+
                             '  and ((p.nrped = :nrped) or ( :nrped = 0 )) ');

   q.ParamByName('dI').AsDateTime := dI;
   q.ParamByName('dF').AsDateTime := dF; 
   q.ParamByName('nrped').AsInteger := nrped;

   q.Open;

   dados := TDados.Create;
   ds := dados.dataSetToDataSource( dados.qryToDataSet( q ));
   q.Destroy;
   Result := ds;
   TCurrencyField( Result.DataSet.FieldByName('vlrtot') ).DisplayFormat  := ' ,#0.00';
end;

class function TPedido.buscar(nrped: Integer): TDataSet;
var q :TMDOQuery;
   dados : TDados;
begin

   q := dm.GetQueryInstance( 'select * from pedidos p where p.nrped = :nrped' );//  and ( (p.nrped = :nrped) or ( :nrped = 0 )
   q.ParamByName('nrped').AsDateTime := nrped;
   q.Open;
   dados  := TDados.Create;
   Result := dados.qryToDataSet( q );
   q.Destroy;

end;

procedure TPedido.ById(ANrped: Integer);
begin
  if FQry = nil then
    FQry := TAndreConsulta.Create(nil);

  FQry.IniciaConsulta('select * from pedidos where nrped = :codigo');
  FQry.setParametro('codigo',ANrped);
  FQry.AbreConsulta;

  FQtdItens       := 0;
  Self.codigo     := FQry.getCampoConsulta('nrped');
  Self.data       := FQry.getCampoConsulta('data');
  Self.situ       := FQry.getCampoConsulta('situ');

  Self.cliente    := TCliente.GetById(FQry.getCampoConsulta('codcli'));
  Self.vendedor   := TUsuario.Create.GetById( FQry.getCampoConsulta('codven') );
  Self.fpagto     := TFPgto.Create.GetById( FQry.getCampoConsulta('fpagto') );
  Self.descFin    := FQry.getCampoConsulta('descon');
  Self.acresFin   := FQry.getCampoConsulta('acres');

  Self.tipo       := FQry.getCampoConsulta('tipo');
  Self.situ       := FQry.getCampoConsulta('situ');
  Self.vlrTot     := FQry.getCampoConsulta('vlrTot');
  Self.vlrProd    := FQry.getCampoConsulta('vlrTot') -  FQry.getCampoConsulta('acresfpg') +  FQry.getCampoConsulta('desconfpg');
  Self.qtParc     := FQry.getCampoConsulta('qtparc');
  Self.entregue   := FQry.getCampoConsulta('entr');
  //Self.obs        := FQry.getCampoConsulta('obs');
  Self.promotor   := FQry.getCampoConsulta('promot');
  Self.NrDoc      := FQry.getCampoConsulta('nrdoc');
  Self.AcresFpag  := FQry.getCampoConsulta('acresfpg');
  Self.DescFPag   := FQry.getCampoConsulta('desconfpg');
  self.idEndereco := FQry.getCampoConsulta('id_Endereco');

  Self.DesconOcorrencia := FQry.getCampoConsulta('DESCON_OCORRENCIA');

end;

procedure TPedido.ByIdLite(ANrped: Integer);
begin
  FQry.IniciaConsulta('select * from pedidos where nrped = :codigo');
  FQry.setParametro('codigo',ANrped);
  FQry.AbreConsulta;

  FQtdItens       := 0;
  Self.codigo     := FQry.getCampoConsulta('nrped');
  Self.vlrTot     := FQry.getCampoConsulta('vlrTot');
  Self.vlrProd    := FQry.getCampoConsulta('vlrTot') -  FQry.getCampoConsulta('acresfpg') +  FQry.getCampoConsulta('desconfpg');
  Self.DesconOcorrencia := FQry.getCampoConsulta('DESCON_OCORRENCIA');
end;

constructor TPedido.Create;
begin
  Self.CDS              := TClientDataSet.Create(nil);
  Self.Qry              := TMDOQuery.Create(nil);
  Self.FQry             := TAndreConsulta.Create(nil);
  Self.cliente          := TCliente.Create;
  Self.vendedor         := TUsuario.Create;
  Self.fpagto           := TFPgto.Create;
  Self.dados            := TDados.Create;
  self.transportadora   := TTransportadora.Create;
  Self.tipo             := 'O';
  Self.entregue         := 'N';
  FQtdItens             := 0;
end;

procedure TPedido.criaDataSet(QryMDO : TMDOQuery);
var campo : Integer;
begin

    CDS := TClientDataSet.Create(nil);
    CDS.CreateDataSet;

    while QryMDO.FieldCount <>  campo do
    begin
        CDS.Fields.Add( QryMDO.Fields.FieldByNumber( campo ) );
        campo := campo + 1 ;
    end;
end;



procedure TPedido.Destroy;
begin
  FreeAndNilProperties(Self);
end;

class function TPedido.existe(ANrPed: Integer): Boolean;
var qry : TAndreConsulta;
begin
   qry := consultaFactory(' select * from pedidos where nrped = :nrped ');
   qry.setParametro('nrped',ANrPed);
   Result := qry.AbreConsulta;
   qry.FechaConsulta;
  
end;



class function TPedido.generatorPedido: Integer;
var  qry: TMDOQuery;
     cod: Integer;
begin
  qry := TMDOQuery.Create(nil);
  qry := dm.GetQueryInstance('SELECT GEN_ID (gen_pedido, 1) nNrPed from rdb$database;');
  qry.Open;
  cod := qry.FieldByName('nNrPed').AsInteger;
  qry.Destroy;

  Result := cod;
end;



class function TPedido.GetById(cod : Integer) :TPedido;
var p  : TPedido;
    qry : TMDOQuery;
begin

  qry := dm.GetQueryInstance('select * from pedidos where nrped = :codigo');
  qry.ParamByName('codigo').AsInteger := cod;
  qry.Open;

  Result            := TPedido.Create;
  p := Result;
  p.codigo     := qry.FieldByName('nrped').AsInteger;
  p.data       := qry.FieldByName('data').AsDateTime;
  p.situ       := qry.FieldByName('situ').AsString;

  p.cliente    := TCliente.Create.GetById( qry.FieldByName('codcli').AsInteger );
  p.vendedor   := TUsuario.getById( qry.FieldByName('codven').AsInteger );
  p.fpagto     := TFPgto.GetById( qry.FieldByName('fpagto').AsInteger );
  p.descFin    := qry.FieldByName('descon').AsFloat;
  p.acresFin   := qry.FieldByName('acres').AsFloat;

  p.tipo       := qry.FieldByName('tipo').AsString;
  p.situ       := qry.FieldByName('situ').AsString;
  p.vlrTot     := qry.FieldByName('vlrTot').AsFloat;
  p.vlrProd    := qry.FieldByName('vlrTot').AsFloat -  qry.FieldByName('acresfpg').AsFloat +  qry.FieldByName('desconfpg').AsFloat;
  p.qtParc     := qry.FieldByName('qtparc').AsInteger;
  p.entregue   := qry.FieldByName('entr').AsString;

  p.getObs     := qry.FieldByName('obs').AsString;

  p.promotor   := qry.FieldByName('promot').AsString;
  p.NrDoc      := qry.FieldByName('nrdoc').AsInteger;
  p.AcresFpag  := qry.FieldByName('acresfpg').AsFloat;
  p.DescFPag   := qry.FieldByName('desconfpg').AsFloat;
  p.MotivoDev  := qry.FieldByName('MOTIVODEV').AsString;
  p.Ocorrencias := qry.FieldByName('Ocorrencias').AsString;
  p.DesconOcorrencia := qry.FieldByName('DESCON_OCORRENCIA').AsFloat;

  p.Carga            := qry.FieldByName('carga').AsInteger;
  p.Subcarga         := qry.FieldByName('Subcarga').AsInteger;
  p.idEndereco       := qry.fieldByName('id_Endereco').asInteger;
  p.PedidoConferido  := ('S' = qry.FieldByName('CONFERIDO').asString);
  p.cupom            := qry.FieldByName('CUPOM').asString;
  p.transportadora   := TTransportadora.getFromCodigo(qry.fieldByName('CODTRANSP').asInteger);
  p.desconTroca      := qry.fieldByName('DESCONTROCA').asFloat;
  p.codCartao        := qry.fieldByName('COD_CARTAO').asString;
  p.partic           := qry.fieldByName('PARTIC').asString;
  qry.Close;
  FreeAndNil(qry);

  Result := p;
end;




class function TPedido.getByNrNota(nrNota: Integer): TPedido;
var qry: TMDOQuery;
begin
  try
    qry := dm.GetQueryInstance('SELECT nfe.nrped            '+
                               'FROM nfe                    '+
                               'WHERE nfe.nrnota = :nrNota; ');
    qry.ParamByName('nrNota').AsInteger := nrNota;
    qry.Open;

    result := self.GetById(qry.fieldByName('NRPED').asInteger);
  finally
    qry.close;
    freeAndNil(qry);
  end;
end;

function TPedido.getDesconOcorrencia: Real;
begin
  Result := FDesconOcorrencia;
end;

function TPedido.getMotivoDev: String;
begin
  Result := FMotDev;
end;

function TPedido.getOcorrencias: String;
begin
  Result := FOcorrencias;
end;

function TPedido.getPedidoPai: Integer;
begin
  Result := FPedidoPai;
end;

function TPedido.getPerAcresc: Real;
begin
   if Self.acresFin > 0 then
      Result := Self.acresFin/Self.vlrTot
   else
      Result := 0;
end;

function TPedido.getPerDesc: Real;
begin
    if Self.descFin > 0 then
        Result := Self.descFin/Self.vlrTot
    else
        Result := 0;
end;

function TPedido.getQtdItens: Integer;
var qry : TAndreConsulta;
begin
   if FQtdItens <= 0 then
   begin
     qry := TAndreConsulta.Create(nil);
     qry.IniciaConsulta(' select count(*) as qtd from itens i where i.nrped = :nrped ');
     qry.setParametro('nrped',codigo);
     if qry.AbreConsulta then
       FQtdItens := qry.getCampoConsulta('qtd')
     else
       FQtdItens := 0;
     qry.FechaConsulta;
     FreeAndNil(qry);
   end;
   Result := FQtdItens;
end;

class function TPedido.getValorCampo(ANrPed: Integer;
  campo: String): TField;
var qry : TAndreConsulta;
begin

   qry := consultaFactory('Select '+campo+' from pedidos where nrped = :nrped ');
   qry.setParametro('nrped',ANrPed);
   qry.AbreConsulta;
   Result := qry.getCampo(campo);
   
end;

function TPedido.qryToDataSet(QryMDO: TMDOQuery):TClientDataSet;
var ClientDataSet : TClientDataSet;
    campo : Integer;
begin

    ClientDataSet := TClientDataSet.Create(nil);
    campo := 0;

    if not ClientDataSet.Active then
        ClientDataSet.CreateDataSet;

    QryMDO.First;    
    while not QryMDO.Eof do
    begin

        ClientDataSet.Insert;

        while QryMDO.FieldCount <> campo do
        begin
            ClientDataSet.Fields.FieldByNumber(campo).AsString  := QryMDO.Fields.FieldByNumber(campo).AsString;
            campo := campo + 1 ;
        end;

        ClientDataSet.Post;
        QryMDO.Next;

    end;
    QryMDO.Close;
    
    Result := ClientDataSet;

end;

class procedure TPedido.salvaMotDev(pNrped: Integer;pMotivo: String);
var qry : TAndreConsulta;
    sql : String;
begin
    sql := 'update pedidos p set p.motivodev = :motiv where p.nrped = :nrped; ';
    qry := TAndreConsulta.Create(nil);
    qry.IniciaConsulta(sql);
    qry.setParametro('nrped',pNrped);
    qry.setParametro('motiv',pMotivo);
    qry.ExecutaSQL;
    FreeAndNil(qry);

end;

class function TPedido.salvar(aux: TPedido): Boolean;
var qry : TMDOQuery;
    sql : String;
begin
  try
    Self.apagarAnt(aux);

    sql := 'insert into pedidos (data,nrped,tipo,fpagto,codcli,vlrtot,acresfpg,desconfpg,flag_ped,qtparc,codven,entr,descon,acres,obs,promot,nrpedpai,id_endereco, CONFERIDO, DESCONTROCA, COD_CARTAO, CUPOM, CODTRANSP) '+
            'values (:data,:nrped,:tipo,:fpagto,:codcli,:vlrtot,:acrescfpg,:desconfpg,:flag_ped,:qtparc,:codven,:entr,:descon,:acres,:obs,:promot,:nrpedpai,:id_endereco, :CONFERIDO, '+
            '        :DESCONTROCA, :COD_CARTAO, :CUPOM, :CODTRANSP) ';

    qry := TMDOQuery.Create(nil);
    qry := dm.GetQueryInstance(sql);

    qry.ParamByName('data').AsDate       := aux.getData;
    qry.ParamByName('nrped').AsInteger   := aux.getCodigo;
    qry.ParamByName('tipo').AsString     := aux.getTipo;
    qry.ParamByName('fpagto').AsInteger  := aux.getFPgto.getCodigo;
    qry.ParamByName('codcli').AsInteger  := aux.getCliente.getCodigo;
    qry.ParamByName('vlrtot').AsFloat    := aux.getVlrTot;
    qry.ParamByName('acrescfpg').AsFloat     := aux.getFPgto.getAcres;// salva a diferença em valor .
    qry.ParamByName('desconfpg').AsFloat     := aux.getFPgto.getDesconto;
    qry.ParamByName('flag_ped').AsString     := 'N';
    qry.ParamByName('qtparc').AsInteger      := aux.getQtParc;
    qry.ParamByName('codven').AsInteger      := aux.getVendedor.getCodigo;
    qry.ParamByName('entr').AsString         := aux.getEntr;
    qry.ParamByName('acres').AsFloat         := aux.getDescFin;
    qry.ParamByName('descon').AsFloat        := aux.acresFin;
    qry.ParamByName('obs').AsString          := aux.getObs;
    qry.ParamByName('promot').AsString       := aux.getPromotor;
    qry.ParamByName('nrpedpai').AsInteger    := aux.PedidoPai;
    qry.ParamByName('id_endereco').asInteger := aux.idEndereco;
    qry.ParamByName('CUPOM').asString  := aux.cupom;
    qry.ParamByName('CODTRANSP').AsInteger   := aux.transportadora.getCodigo;
    qry.ParamByName('DESCONTROCA').asFloat   := aux.desconTroca;
    qry.ParamByName('COD_CARTAO').asString   := aux.codCartao; 

    if aux.PedidoConferido then
      qry.ParamByName('CONFERIDO').asString := 'S'
    else
      qry.ParamByName('CONFERIDO').asString := 'N';

    qry.ExecSQL;
    qry.Destroy;

    Result := True;
  Except
    Result := False;
  end;


end;

procedure TPedido.salvar;
var q: TMDOQuery;
begin

    q := dm.GetQueryInstance(' Update pedidos p set p.data = :data, p.tipo = :tipo,                                            '+
           '                     p.fpagto = :fpagto, p.codcli = :codCli, p.vlrtot = :vlrTot,                 '+
           '                     p.acresfpg = :acrescfpg, p.desconfpg = :desconFpg, p.flag_ped = :flag_ped,  '+
           '                     p.qtparc = :qtParc, p.codven = :codVen, p.entr = :entr, p.descon = :descon, '+
           '                     p.acres = :acres, p.obs = :obs, p.promot = :promot, p.nrpedpai = :nrPedPai, '+
           '                     p.id_endereco = :id_endereco, p.CONFERIDO = :CONFERIDO, p.DESCONTROCA = :DESCONTROCA,             '+
           '                     p.CODTRANSP = :CODTRANSP, p.CUPOM = :CUPOM, p.COD_CARTAO = :COD_CARTAO                                                  '+    
           '       where p.nrped = :nrPed;                                                                   ');

    q.ParamByName('data').AsDateTime   := Self.getData;
    q.ParamByName('nrped').AsInteger   := Self.getCodigo;
    q.ParamByName('tipo').AsString     := Self.getTipo;
    q.ParamByName('fpagto').AsInteger  := Self.getFPgto.getCodigo;
    q.ParamByName('codcli').AsInteger  := Self.getCliente.getCodigo;
    q.ParamByName('vlrtot').AsFloat    := Self.getVlrTot;
    q.ParamByName('acrescfpg').AsFloat     := Self.getFPgto.getAcres;// salva a diferença em valor .
    q.ParamByName('desconfpg').AsFloat     := Self.getFPgto.getDesconto;
    q.ParamByName('flag_ped').AsString     := 'N';
    q.ParamByName('qtparc').AsInteger      := Self.getQtParc;
    q.ParamByName('codven').AsInteger      := Self.getVendedor.getCodigo;
    q.ParamByName('entr').AsString         := Self.getEntr;
    q.ParamByName('acres').AsFloat         := Self.getAcrescFin;
    q.ParamByName('descon').AsFloat        := Self.getDescFin;
    q.ParamByName('obs').AsString          := Self.getObs;
    q.ParamByName('promot').AsString       := Self.getPromotor;
    q.ParamByName('nrpedpai').AsInteger    := Self.PedidoPai;
    q.ParamByName('CUPOM').AsString    := Self.cupom;
    q.ParamByName('CODTRANSP').asInteger := self.transportadora.getCodigo;
    q.ParamByName('DESCONTROCA').asFloat   := self.desconTroca;
    q.ParamByName('COD_CARTAO').asString   := self.codCartao; 
    if self.PedidoConferido then
      q.ParamByName('CONFERIDO').asString := 'S'
    else
      q.ParamByName('CONFERIDO').asString := 'N';

    if (self.idEndereco > 0) then
      q.paramByName('ID_ENDERECO').AsInteger  := self.idEndereco
    else
      q.ParamByName('ID_ENDERECO').Clear;



    q.ExecSQL;

    freeAndNil(q);



end;

class procedure TPedido.salvarOcorrencia(pNrped: Integer;
  pOcorrencia: String;pDescon:Real); 
var qry : TAndreConsulta;
    sql : String;
begin
    sql := ' update pedidos p set p.ocorrencias = :motiv , p.DESCON_OCORRENCIA = :DESCON_OCORRENCIA where p.nrped = :nrped; ';
    qry := TAndreConsulta.Create(nil);
    qry.IniciaConsulta(sql);
    qry.setParametro('nrped',pNrped);
    qry.setParametro('motiv',pOcorrencia);
    qry.setParametro('DESCON_OCORRENCIA',pDescon);
    qry.ExecutaSQL;
    FreeAndNil(qry);
end;

procedure TPedido.SetCarga(const Value: Integer);
begin
  FCarga := Value;
end;

procedure TPedido.setCliente(const Value: TCliente);
begin
 cliente := Value;
end;

procedure TPedido.setCodigo(const Value: Integer);
begin
  codigo := Value;
end;


procedure TPedido.setDados(const Value: TDados);
begin
  dados := Value;
end;

procedure TPedido.setData(const Value: TDateTime);
begin
  data := Value;
end;

procedure TPedido.setEntr(const Value: String);
begin
  Self.entregue := Value;
end;

procedure TPedido.setFPgto(const Value: TFPgto);
begin
  Self.fpagto := Value;
end;

procedure TPedido.SetidCliente(const Value: Integer);
begin
  FidCliente := Value;
end;

procedure TPedido.SetidEndereco(const Value: Integer);
begin
  FidEndereco := Value;
end;

procedure TPedido.setQtParc(const Value: Integer);
begin
  Self.qtParc := Value;
end;

procedure TPedido.setSitu(const Value: String);
begin
  situ := Value;
end;

procedure TPedido.SetSubcarga(const Value: Integer);
begin
  FSubcarga := Value;
end;

procedure TPedido.setTipo(const Value: String);
begin
  Self.tipo := Value;
end;

class procedure TPedido.setValorCampo(ANrPed: Integer; campo: String;
  valor: Variant);
var qry : TAndreConsulta;
begin
   qry := consultaFactory(' update pedidos p set '+campo+' = :'+campo+' where p.nrped = :nrped ');
   qry.setParametro(campo,valor);
   qry.ExecutaSQL;
   qry.FechaConsulta;
end;

procedure TPedido.setVendedor(const Value: TUsuario);
begin
  Self.vendedor := Value;
end;

procedure TPedido.setVlrProd(const Value: Real);
begin
  Self.vlrProd := Value;
end;

procedure TPedido.setVlrTot(const Value: Real);
begin
  Self.vlrTot := Value;
end;

class function TPedido.apagarAnt(aux: TPedido; cancelado: string): Boolean;
var sql : String;
q : TMDOQuery;
begin
   sql := 'delete from parcelas pa where pa.nrped = :nrped'; // apaga todas as parcelas
   q := dm.GetQueryInstance(sql);
   q.ParamByName('nrped').AsInteger := aux.getCodigo;
   q.ExecSQL;

   sql := 'delete from receber pa where pa.nrdoc = :nrped'; // apaga todas as contas a receber
   q := dm.GetQueryInstance(sql);
   q.ParamByName('nrped').AsInteger := aux.getCodigo;
   q.ExecSQL;

   sql := 'delete from chequepre pa where pa.nrdoc = :nrped'; // apaga todos os cheques
   q := dm.GetQueryInstance(sql);
   q.ParamByName('nrped').AsInteger := aux.getCodigo;
   q.ExecSQL;

   sql := 'delete from itens i where i.nrped = :nrped';  // apaga todos os itens
   q := dm.GetQueryInstance(sql);
   q.ParamByName('nrped').AsInteger := aux.getCodigo;
   q.ExecSQL;

   sql := ' Update pedidos set pedidos.tipo = :cancelado where pedidos.nrped = :nrped ';  // apaga o pedido
   q := dm.GetQueryInstance(sql);
   q.ParamByName('cancelado').asString := cancelado;
   q.ParamByName('nrped').AsInteger := aux.getCodigo;
   q.ExecSQL;

   q.Destroy;
end;


destructor TPedido.free;
begin
  if (self.cliente <> nil) then
  begin
    self.cliente.free;
    self.cliente := nil;
  end;

  if (self.vendedor <> nil) then
  begin
    self.vendedor.free;
    self.vendedor := nil;
  end;

  if (self.fpagto <> nil) then
  begin
    self.fpagto.free;
    self.fpagto := nil;
  end;

  if (self.dados <> nil) then
  begin
    self.dados.free;
    self.dados := nil;
  end;

  if (self.CDS <> nil) then
  begin
    self.CDS.free;
    self.CDS := nil;
  end;

  if (self.Qry <> nil) then
  begin
    self.Qry.free;
    self.Qry := nil;
  end;

  if (self.FQry <> nil) then
  begin
    self.FQry.free;
    self.FQry := nil;
  end;
end;

class function TPedido.getByIdZ(cod: Integer): TPedido;
var p  : TPedido;
    qry : TMDOQuery;
begin
  qry := dm.GetQueryInstance(' select * from pedidos where pedidos.nrped = :codigo ');
  qry.ParamByName('codigo').AsInteger := cod;
  qry.Open;

  p := TPedido.Create;
  p.codigo     := qry.FieldByName('nrped').AsInteger;
  p.data       := qry.FieldByName('data').AsDateTime;
  p.situ       := qry.FieldByName('situ').AsString;

  p.cliente    := TCliente.Create.getByIdZ( qry.FieldByName('codcli').AsInteger );
  p.vendedor   := TUsuario.getByIdZ( qry.FieldByName('codven').AsInteger );
  p.fpagto     := TFPgto.GetByIdZ( qry.FieldByName('fpagto').AsInteger );
  p.descFin    := qry.FieldByName('descon').AsFloat;
  p.acresFin   := qry.FieldByName('acres').AsFloat;

  p.tipo       := qry.FieldByName('tipo').AsString;
  p.situ       := qry.FieldByName('situ').AsString;
  p.vlrTot     := qry.FieldByName('vlrTot').AsFloat;
  p.vlrProd    := qry.FieldByName('vlrTot').AsFloat -  qry.FieldByName('acresfpg').AsFloat +  qry.FieldByName('desconfpg').AsFloat;
  p.qtParc     := qry.FieldByName('qtparc').AsInteger;
  p.entregue   := qry.FieldByName('entr').AsString;

  p.getObs     := qry.FieldByName('obs').AsString;

  p.promotor   := qry.FieldByName('promot').AsString;
  p.NrDoc      := qry.FieldByName('nrdoc').AsInteger;
  p.AcresFpag  := qry.FieldByName('acresfpg').AsFloat;
  p.DescFPag   := qry.FieldByName('desconfpg').AsFloat;
  p.MotivoDev  := qry.FieldByName('MOTIVODEV').AsString;
  p.Ocorrencias := qry.FieldByName('Ocorrencias').AsString;
  p.DesconOcorrencia := qry.FieldByName('DESCON_OCORRENCIA').AsFloat;

  p.Carga    := qry.FieldByName('carga').AsInteger;
  p.Subcarga := qry.FieldByName('Subcarga').AsInteger;
  p.idEndereco := qry.fieldByName('id_Endereco').asInteger;
  p.PedidoConferido  := ('S' = qry.FieldByName('CONFERIDO').asString);
  p.cupom           := qry.FieldByName('CUPOM').asString;
  p.transportadora   := TTransportadora.getFromCodigo(qry.fieldByName('CODTRANSP').AsInteger);
  p.desconTroca      := qry.fieldByName('DESCONTROCA').asFloat;
  p.codCartao        := qry.fieldByName('COD_CARTAO').asString;

  qry.Close;
  FreeAndNil(qry);

  Result := p;
end;

class function TPedido.getByNrNotaZ(nrNota: Integer): TPedido;
var qry: TMDOQuery;
begin
  try
    qry := dm.GetQueryInstance('SELECT nfe.nrped            '+
                               'FROM nfe                    '+
                               'WHERE nfe.nrnota = :nrNota; ');
    qry.ParamByName('nrNota').AsInteger := nrNota;
    qry.Open;

    result := self.GetById(qry.fieldByName('NRPED').asInteger);
  finally
    qry.close;
    freeAndNil(qry);
  end;

end;

class function TPedido.existeZ(ANrPed: Integer): Boolean;
var Qry: TMDOQuery;
begin
  Qry := dm.GetQueryInstance(' SELECT *                        '+
                            ' FROM pedidos                    '+
                            ' WHERE pedidos.nrped = :aNrPed; ');
  Qry.ParamByName('aNrPed').asInteger := aNrPed;
  Qry.Open;

  if not Qry.IsEmpty then
    result := true
  else
    result := false;

  Qry.Close;
  freeAndNil(Qry);
end;

procedure TPedido.SetPedidoConferido(const Value: Boolean);
begin
  FPedidoConferido := Value;
end;

procedure TPedido.Setcupom(const Value: string);
begin
  Fcupom := Value;
end;

procedure TPedido.Settransportadora(const Value: TTransportadora);
begin
  Ftransportadora := Value;
end;

procedure TPedido.SetdesconTroca(const Value: Real);
begin
  FdesconTroca := Value;
end;

procedure TPedido.SetcodCartao(const Value: String);
begin
  FcodCartao := Value;
end;

class function TPedido.existeCodCartaoZ(codCartao: String): Boolean;
var Qry :TMDOQuery;
begin
  Qry := dm.GetQueryInstance(' SELECT *                           '+
                             ' FROM pedidos ped                   '+
                             ' WHERE ped.cod_cartao = :codCartao; ');
  Qry.paramByName('codCartao').asString := codCartao;
  Qry.Open;

  if Qry.isEmpty then
    result := false
  else
   begin
      result := true;
      raise Exception.Create('Já existe esse código de cartão cadastrado!');
   end;

  Qry.Close;
  Qry.Destroy;
  Qry := nil;
end;

class function TPedido.getByCodCartaoZ(codCartao: String): TPedido;
var Qry :TMDOQuery;
begin
  if not self.existeCodCartaoZ(codCartao, true) then
    raise Exception.Create('Não existe pedido com esse código de cartão cadastrado')
  else
   begin
     Qry := dm.GetQueryInstance(' SELECT pedidos.nrped                   '+
                                ' FROM pedidos                           '+
                                ' WHERE pedidos.cod_cartao = :codCartao; ');
     Qry.ParamByName('codCartao').asString := codCartao;
     Qry.Open;

     result := TPedido.getByIdZ(Qry.fieldByName('NRPED').asInteger);

     Qry.Close;
     Qry.Destroy;
     Qry := nil;
   end;
end;

class function TPedido.existeCodCartaoZ(codCartao: String;
  fake: Boolean): Boolean;
var Qry :TMDOQuery;
begin
  Qry := dm.GetQueryInstance(' SELECT *                           '+
                             ' FROM pedidos ped                   '+
                             ' WHERE ped.cod_cartao = :codCartao; ');
  Qry.parambyname('codCartao').asString := codCartao;
  Qry.Open;

  if Qry.isEmpty then
    result := false
  else
   begin
      result := true;
   end;

  Qry.Close;
  Qry.Destroy;
  Qry := nil;
end;

class function TPedido.existeCodCartao(codCartao: String;
  fake: Boolean): Boolean;
var Qry :TAndreConsulta;
begin
  Qry := TAndreConsulta.Create(nil);
  Qry.IniciaConsulta(' SELECT *                           '+
                     ' FROM pedidos ped                   '+
                     ' WHERE ped.cod_cartao = :codCartao; ');
  Qry.setParametroString('codCartao', codCartao);
  Qry.AbreConsulta;

  if Qry.EstaVazia then
    result := false
  else
   begin
      result := true;
   end;

  Qry.FechaConsulta;
  Qry.Destroy;
  Qry := nil;
end;

class function TPedido.existeCodCartao(codCartao: String): Boolean;
var Qry :TAndreConsulta;
begin
  Qry := TAndreConsulta.Create(nil);
  Qry.IniciaConsulta(' SELECT *                           '+
                      ' FROM pedidos ped                   '+
                      ' WHERE ped.cod_cartao = :codCartao; ');
  Qry.setParametroString('codCartao', codCartao);
  Qry.AbreConsulta;

  if Qry.EstaVazia then
    result := false
  else
   begin
      result := true;
      raise Exception.Create('Já existe esse código de cartão cadastrado!');
   end;

  Qry.FechaConsulta;
  Qry.Destroy;
  Qry := nil;
end;

class function TPedido.getUltimoNrPed: Integer;
var mQry :TAndreConsulta;
begin
  mQry := TAndreConsulta.Create(nil);
  mQry.IniciaConsulta(' SELECT MAX(PEDIDOS.NRPED) as nrPedMax '+
                      ' FROM PEDIDOS;                         ');
  mQry.abreConsulta;

  result := mQry.getCampoConsulta('nrPedMax');

  mQry.FechaConsulta;
  mQry.Destroy;
  mQry := nil;
end;

procedure TPedido.ByIdZ(ANrped: Integer);
begin
  if Qry = nil then
    begin
      Qry := TMDOQuery.create(nil);
      Qry.Database := dm.Database;
      Qry.Transaction := dm.Transaction;
    end;

  Qry.SQL.text := 'select * from pedidos where nrped = :codigo';
  Qry.paramByName('codigo').asInteger := ANrped;
  Qry.Open;

  FQtdItens       := 0;
  Self.codigo     := Qry.fieldByName('nrped').asInteger;
  Self.data       := Qry.fieldByName('data').asDateTime;
  Self.situ       := Qry.fieldByName('situ').asString;

  Self.cliente    := TCliente.GetByIdZ(Qry.fieldByName('codcli').asInteger);
  Self.vendedor   := TUsuario.Create.GetByIdZ( Qry.fieldByName('codven').asInteger );
  Self.fpagto     := TFPgto.Create.GetByIdZ( Qry.fieldByName('fpagto').asInteger );
  Self.descFin    := Qry.fieldByName('descon').asFloat;
  Self.acresFin   := Qry.fieldByName('acres').asFloat;

  Self.tipo       := Qry.fieldByName('tipo').asString;
  Self.vlrTot     := Qry.fieldByName('vlrTot').asFloat;
  Self.vlrProd    := Qry.fieldByName('vlrTot').asFloat - Qry.fieldByName('acresfpg').asFloat + Qry.fieldByName('desconfpg').asFloat;
  Self.qtParc     := Qry.fieldByName('qtParc').asInteger;
  Self.entregue   := Qry.fieldByName('entr').asString;
  //Self.obs        := FQry.getCampoConsulta('obs');
  Self.promotor   := Qry.fieldByName('promot').asString;
  Self.NrDoc      := Qry.fieldByName('nrdoc').asInteger;
  Self.AcresFpag  := Qry.fieldByName('acresfpg').asFloat;
  Self.DescFPag   := Qry.fieldByName('desconfpg').asFloat;
  self.idEndereco := Qry.fieldByName('id_Endereco').asInteger;

  Self.DesconOcorrencia := Qry.fieldByName('DESCON_OCORRENCIA').asFloat;

end;

procedure TPedido.ByIdLiteZ(ANrPed: Integer);
begin
  if (Qry = nil) then
    begin
      Qry := TMDOQuery.create(nil);
      Qry.Database := dm.Database;
      Qry.Transaction := dm.Transaction;
    end;

  Qry.Close;
  Qry.SQL.Text := 'select * from pedidos where nrped = :codigo';
  Qry.paramByName('codigo').asInteger := ANrped;
  Qry.Open;

  FQtdItens       := 0;
  Self.codigo     := Qry.fieldByName('nrped').asInteger;
  Self.vlrTot     := Qry.fieldByName('vlrTot').asFloat;
  Self.vlrProd    := Qry.fieldByName('vlrTot').asFloat - Qry.fieldByName('acresfpg').asFloat + Qry.fieldByName('desconfpg').asFloat;
  Self.DesconOcorrencia := Qry.fieldByName('DESCON_OCORRENCIA').asFloat;

end;

procedure TPedido.Setpartic(const Value: String);
begin
  FPartic := Value;
end;

procedure TPedido.AlteraTipoPedido(NrPedido: Integer;Tipo:Char = 'O');
var qry:  TMDOQuery;
begin
  qry := dm.GetQueryInstance('update pedidos set pedidos.tipo = :pTipo  where pedidos.nrped = :pNrped');
  qry.ParamByName('pTipo').AsString     := Tipo;
  qry.ParamByName('pNrped').AsInteger   := NrPedido;
  qry.ExecSQL;
  FreeAndNil(Qry);
end;

procedure TPedido.ZeraTerminal(NrPedido: Integer);
var qry:  TMDOQuery;
begin
  qry := dm.GetQueryInstance('update pedidos set pedidos.terminal = ''''  where pedidos.nrped = :pNrped');
  qry.ParamByName('pNrped').AsInteger   := NrPedido;
  qry.ExecSQL;
  FreeAndNil(Qry);
end;

end.

