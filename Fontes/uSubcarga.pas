unit uSubcarga;

interface

uses MDOQuery,uTCarga,uTPedido,uTUsuario,DB,SysUtils;

type
  TSubcarga = class
  private
      cod   : Integer;
      carga : TCarga;
      pedido: TPedido;
      situ  : String;

      dtEntr: TDateTime;
      motorista : String;
      ajudante  : String;
      placa     : String;
      dataSaida : TDateTime;
      obs       : String;
      cep       : String;
      fcidade    : String;
      uf        : String;
      hora      : String;
      dtEntreg  : TDateTime;
      vendedor  : TUsuario;
    procedure setCidade(const Value: String);
    procedure setUF(const Value: String);
    procedure setHora(const Value: String);
    procedure setDtEntrega(const Value: TDateTime);
    procedure setUsuario(const Value: TUsuario);


  public
      property getCod    : Integer read cod    write cod;
      property getCarga  : TCarga  read carga  write carga;
      property getPedido : TPedido read pedido write pedido;
      property getSitu   : String  read situ   write situ;
      property getDtEntr : TDateTime read dtEntr write dtEntr;

      property getMotorista : String    read motorista write motorista;
      property getAjudante  : String    read ajudante  write ajudante;
      property getPlaca     : String    read placa     write placa;
      property getDataSaida : TDateTime read dataSaida write dataSaida;
      property getObs       : String    read obs       write obs;
      property getCep       : String    read cep       write cep;
      property getUf        : String    read uf        write uf;
      property getVendedor  : TUsuario  read vendedor  write vendedor;
      property getDtEntrega : TDateTime read dtEntreg  write dtEntreg;
      property getHora      : String    read hora      write hora;

      property Cidade       : String    read fcidade   write setCidade;


      class function  GetById(nrped:Integer) :TSubcarga;
      class function  GetByCarga( carga:Integer ):TDataSource;
      class function  GetByCargaAnalitico( carga:Integer ):TDataSource;
      class function  DataSource:TDataSource;

      class function  GetByCargaFechadas( carga:Integer ):TDataSource;
      class procedure Salvar( aux:TSubcarga );
      class procedure Apagar(aux: TSubcarga);
      class function  fecharCarga(aux:TSubcarga):Boolean;
      constructor Create;
    

  end;
implementation

uses Modulo, uTDados;

{ TGrupo }

class function TSubcarga.GetById(nrped:Integer) :TSubcarga;
var p  : TSubcarga;
    qry: TMDOQuery;
    mask : String;
begin

  qry := dm.GetQueryInstance('select * from subcarga where codigo = :cod ');
  qry.ParamByName('cod').AsInteger := nrped;
  
  qry.Open;

  p         := TSubcarga.Create;
  p.cod     :=  qry.FieldByName('codigo').AsInteger;
  p.carga   :=  TCarga.Create.GetById( qry.FieldByName('codcarga').AsInteger );
  //p.pedido  :=  TPedido.Create.GetById( qry.FieldByName('nrped').AsInteger );
  p.situ    :=  qry.FieldByName('situ').AsString;
  p.dtEntr  :=   qry.FieldByName('dtentrega').AsDateTime;

  p.motorista := qry.FieldByName('motorista').AsString;
  p.ajudante  := qry.FieldByName('ajudante').AsString;
  p.placa     := qry.FieldByName('placa').AsString;
  p.dataSaida := qry.FieldByName('dataSaida').AsDateTime;
  p.obs       := qry.FieldByName('obs').AsString;
  p.cep       := qry.FieldByName('cep').AsString;
  p.cidade    := qry.FieldByName('cidade').AsString;
  p.uf        := qry.FieldByName('uf').AsString;
  p.vendedor  := TUsuario.Create.GetById(qry.FieldByName('vendedor').AsInteger);
  p.situ      := qry.FieldByName('situ').AsString;

  qry.Destroy;

  Result := p;
end;

class procedure TSubcarga.Salvar(aux: TSubcarga);
var q : TMDOQuery;
    qryCarga : TMDOQuery;
begin

   //Apaga todas as subcargas referentes ao pedido para envitar duplicidade.
   //Self.Apagar(aux);


   q := dm.GetQueryInstance(' insert into carga (codigo,situ,dtentr,motorista,placa,ajudante,datasaida,obs,cidade,cep,uf,hrsaida,vendedor) '+
                            ' values(null,:situ,:dtentrega,:motorista,:placa,:ajudante,:datasaida,:obs,:cidade,:cep,:uf,:hrsaida,:vendedor)  ');

   //q.ParamByName('nrped').AsInteger      := aux.getPedido.getCodigo;
   q.ParamByName('situ').AsString        := aux.getSitu;
   q.ParamByName('dtentrega').AsDateTime := aux.getDtEntr;

   q.ParamByName('motorista').AsString  := aux.getMotorista;
   q.ParamByName('placa').AsString      := aux.getPlaca;
   q.ParamByName('ajudante').AsString   := aux.getAjudante;

   q.ParamByName('dataSaida').AsDate    := aux.getDataSaida;
   q.ParamByName('obs').AsString        := aux.getObs;
   q.ParamByName('cidade').AsString     := aux.Cidade;
   q.ParamByName('cep').AsString        := aux.getCep;
   q.ParamByName('uf').AsString         := aux.getUf;

   q.ParamByName('hrsaida').AsString    := aux.getHora;
   q.ParamByName('vendedor').AsInteger  := aux.getVendedor.getCodigo;


   q.ExecSQL;
   q.Destroy;



end;

class procedure TSubcarga.Apagar(aux: TSubcarga);
var q : TMDOQuery;
begin


   q := dm.GetQueryInstance('delete from subcarga where codigo = :codigo ');
   q.ParamByName('codigo').AsInteger   := aux.getCod;
   
   q.ExecSQL;
   q.Destroy;



end;




class function TSubcarga.GetByCarga(carga: Integer): TDataSource;
begin
      Result := TDados.Create.sqlToDataSet(' select sc.codigo as "Subcarga" , sc.datasaida as "Dt Saída" , sc.dtentrega as "Dt Entr."  '+
                                           ' from subcarga sc  '+
                                           '   where ((sc.codcarga = '+IntToStr(carga)+' ) or ( '+IntToStr(carga)+' = 0 )) '+
                                           '     and   sc.situ = ''A'' ' );
end;

class function TSubcarga.GetByCargaFechadas(carga: Integer): TDataSource;
var sql : String;
begin
      sql := ' select sc.codcarga as "Carga", sc.codigo as "Subcarga" , sc.datasaida as "Dt Saída" , sc.dtentrega as "Dt Entr."  '+
             ' from subcarga sc  '+
             '   where ((sc.codcarga = '+IntToStr(carga)+' ) or ( '+IntToStr(carga)+' = 0 )) '+
             '     and   sc.situ = ''F'' ';
      Result := TDados.Create.sqlToDataSet(sql);
end;


class function TSubcarga.fecharCarga(aux: TSubcarga): Boolean;
var q : TMDOQuery;
begin
 try
    q := dm.GetQueryInstance('update subcarga set '+
                                            'situ = :situ      '+
                                            'where codcarga = :codcarga');
    q.ParamByName('situ').AsString      := aux.getSitu;
    q.ParamByName('codcarga').AsInteger := aux.getCarga.getCod;

    q.ExecSQL;
    q.Destroy;
    Result := True;
 except
    Result := False;
 end;

end;


constructor TSubcarga.Create;
begin
  Self.situ := 'A';
  Self.carga  := TCarga.Create;
  Self.pedido := TPedido.Create;
end;


class function TSubcarga.GetByCargaAnalitico(carga: Integer): TDataSource;
var sql : String;
begin

   sql :=  'select sc.*,p.codven ,p.vlrtot,u.nome from subcarga sc, pedidos p,usuarios u where sc.codcarga = '+IntToStr(carga)+'   and sc.situ = ''A'' ';
   Result := TDados.Create.sqlToDataSet( sql );
end;

class function TSubcarga.DataSource: TDataSource;
var qry : TMDOQuery;
begin
    Result := TDados.Create.sqlToDataSet('select * from subcarga sc ');
end;

procedure TSubcarga.setCidade(const Value: String);
begin
  fcidade := Value;
end;

procedure TSubcarga.setUF(const Value: String);
begin
  uf := Value;
end;

procedure TSubcarga.setHora(const Value: String);
begin
  hora := Value;
end;

procedure TSubcarga.setDtEntrega(const Value: TDateTime);
begin
  dtEntreg := Value;
end;

procedure TSubcarga.setUsuario(const Value: TUsuario);
begin
  vendedor := Value;
end;

end.

