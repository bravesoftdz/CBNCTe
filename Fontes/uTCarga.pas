unit uTCarga;

interface

uses MDOQuery,DB,uTUsuario;

type
  TCarga = class
  private
      cod       : Integer;

      motorista : String;
      ajudante  : String;
      placa     : String;
      dataSaida : TDateTime;
      obs       : String;
      cep       : String;
      cidade    : String;
      uf        : String;
      situ      : String;
      hora      : String;
      dtEntreg  : TDateTime;
      vendedor  : TUsuario;
      pQtSubCarg: Integer; 

  public
      property getCod       : Integer   read cod  write cod;
      property getMotorista : String    read motorista write motorista;
      property getAjudante  : String    read ajudante  write ajudante;
      property getPlaca     : String    read placa     write placa;
      property getDataSaida : TDateTime read dataSaida write dataSaida;
      property getObs       : String    read obs       write obs;
      property getCidade    : String    read cidade    write cidade;
      property getCep       : String    read cep       write cep;
      property getUf        : String    read uf        write uf;
      property getSitu      : String    read situ      write situ;
      property getVendedor  : TUsuario  read vendedor  write vendedor;
      property getDtEntrega : TDateTime read dtEntreg  write dtEntreg;
      property getHora      : String    read hora      write hora;

      

      class function  getByPeriodo(dIni,dFim:TDateTime):TDataSource;
      class function  getByPeriodoF(dIni,dFim:TDateTime):TDataSource;
      class function  dataSource:TDataSource;
      class function  dataSourceFechadas:TDataSource;
      class function  GetById(cod : Integer) :TCarga;
      class function  GetByPedido(cod : Integer) :TCarga;
      class procedure Salvar( aux : TCarga );
      class function  exite( aux:TCarga ):Boolean;
      class function  qtSubCargas(aux: TCarga):Integer;
      class function  fecharCarga(aux: TCarga):Boolean;
      class function  abrirCarga( aux:TCarga ):Boolean;
      class function  ultAberta:TCarga;
      class function  fechada(aux: TCarga): Boolean;
      constructor     Create;
  end;
implementation

uses Modulo, uTDados, SysUtils;



{ TGrupo }

class function TCarga.abrirCarga(aux: TCarga): Boolean;
var sql : String;
q : TMDOQuery;
begin
    sql := 'update carga set '+
                 'situ = :situ  '+
                 'where codigo = :codigo ';

    q := TMDOQuery.Create(nil);
    q := dm.GetQueryInstance( sql );
    q.ParamByName('situ').AsString       := 'A';
    q.ParamByName('codigo').AsInteger    := aux.getCod;
    q.ExecSQL;
    q.Destroy;




end;

constructor TCarga.Create;
begin
   Self.situ := 'A';
end;

class function TCarga.dataSource: TDataSource;
begin

   Result := TDados.Create.sqlToDataSet('select * from carga where situ <> ''F''  ');

end;

class function TCarga.dataSourceFechadas: TDataSource;
begin
    Result := TDados.Create.sqlToDataSet('select * from carga ');
end;

class function TCarga.exite(aux: TCarga): Boolean;
   var
    qry: TMDOQuery;
    mask : String;
    existe:Boolean;
begin
  qry := dm.GetQueryInstance('select count(*) from carga where codigo = :codigo ');
  qry.ParamByName('codigo').AsInteger := aux.getCod;
  qry.Open;


  if qry.FieldByName('count').AsInteger > 0 then
     existe := True
  else
     existe := False;

  qry.Close;
  qry.Destroy;

  Result := existe;
end;


class function TCarga.fechada(aux: TCarga): Boolean;
   var
    qry: TMDOQuery;
    mask : String;
    existe:Boolean;
begin
  qry := dm.GetQueryInstance('select count(*) from carga where codigo = :codigo and situ = ''F'' ');
  qry.ParamByName('codigo').AsInteger := aux.getCod;
  qry.Open;


  if qry.FieldByName('count').AsInteger > 0 then
     existe := True
  else
     existe := False;

  qry.Close;
  qry.Destroy;

  Result := existe;
end;


class function TCarga.fecharCarga(aux: TCarga): Boolean;
var sql : String;
q : TMDOQuery;
begin
    sql := 'update carga set motorista = :motorista , '+
                 'placa = :placa , '+
                 'ajudante = :ajudante, '+
                 'dataSaida = :dataSaida, '+
                 'obs = :obs, '+
                 'cep = :cep, '+
                 'cidade = :cidade, '+
                 'uf = :uf,  '+
                 'vendedor = :vendedor, '+
                 'situ = :situ,  '+
                 'hrSaida = :hora,  '+
                 'dtEntr = :dtEntr  '+
                 'where codigo = :codigo ';

    q := TMDOQuery.Create(nil);
    q := dm.GetQueryInstance( sql );
    q.ParamByName('motorista').AsString  := aux.getMotorista;
    q.ParamByName('ajudante').AsString   := aux.getAjudante;
    q.ParamByName('dataSaida').AsDate    := aux.getDataSaida;
    q.ParamByName('placa').AsString      := aux.getPlaca;
    q.ParamByName('obs').AsString        := aux.getObs;
    q.ParamByName('cidade').AsString     := aux.getCidade;
    q.ParamByName('uf').AsString         := aux.getUf;
    q.ParamByName('cep').AsString        := aux.getCep;
    q.ParamByName('vendedor').AsInteger  := aux.getVendedor.getCodigo;
    q.ParamByName('situ').AsString       := aux.getSitu;
    q.ParamByName('codigo').AsInteger    := aux.getCod;
    q.ParamByName('hora').AsString       := aux.getHora;
    q.ParamByName('dtEntr').AsDateTime   := aux.getDtEntrega;
    q.ExecSQL;
    q.Destroy;
end;

class function TCarga.GetById(cod : Integer) :TCarga;
var p  : TCarga;
    qry: TMDOQuery;
    mask : String;
begin
  qry := dm.GetQueryInstance('select * from carga where codigo = :codigo ');
  qry.ParamByName('codigo').AsInteger := cod;
  qry.Open;

  p           := TCarga.Create;
  p.cod       := qry.FieldByName('codigo').AsInteger;
  p.motorista := qry.FieldByName('motorista').AsString;
  p.ajudante  := qry.FieldByName('ajudante').AsString;
  p.placa     := qry.FieldByName('placa').AsString;
  p.dataSaida := qry.FieldByName('dataSaida').AsDateTime;
  p.obs       := qry.FieldByName('obs').AsString;
  p.cep       := qry.FieldByName('cep').AsString;
  p.cidade    := qry.FieldByName('cidade').AsString;
  p.uf        := qry.FieldByName('uf').AsString;
  p.vendedor  := TUsuario.Create.GetById(   qry.FieldByName('vendedor').AsInteger );
  p.situ      := qry.FieldByName('situ').AsString;
  p.hora      := qry.FieldByName('hrSaida').AsString;
  p.dtEntreg  := qry.FieldByName('dtEntr').AsDateTime;

  
  qry.Close;
  qry.Destroy;

  Result := p;
end;


class function TCarga.GetByPedido(cod : Integer) :TCarga;
var p  : TCarga;
    qry: TMDOQuery;
    mask : String;
begin
  qry := dm.GetQueryInstance('select * from cargas where codigo = :codigo');
  qry.ParamByName('codigo').AsInteger := cod;
  qry.Open;

  p           := TCarga.Create;
  p.cod       := qry.FieldByName('codigo').AsInteger;
  p.motorista := qry.FieldByName('motorista').AsString;
  p.ajudante  := qry.FieldByName('ajudante').AsString;
  p.placa     := qry.FieldByName('placa').AsString;
  p.dataSaida := qry.FieldByName('dataSaida').AsDateTime;
  p.obs       := qry.FieldByName('obs').AsString;

  qry.Open;
  qry.Close;
  qry.Destroy;

  Result := p;
end;




class function TCarga.getByPeriodo(dIni, dFim: TDateTime): TDataSource;
var sql : String;
q : TMDOQuery;
d : TDados;
ds: TDataSource;
begin

   sql := ' select c.codigo as "Carga" , c.datasaida as "Dt Saída", c.situ as "Situação" from carga c where c.datasaida between :dI and :dF and situ = ''A'' ';
   q := dm.GetQueryInstance( sql );
   q.ParamByName('dI').AsDateTime := dIni;
   q.ParamByName('dF').AsDateTime := dFim;

   d := TDados.Create;

   ds := d.dataSetToDataSource(d.qryToDataSet(q));

   q.Destroy;

   Result := ds;

end;

class function TCarga.getByPeriodoF(dIni, dFim: TDateTime): TDataSource;
var sql : String;
q : TMDOQuery;
d : TDados;
ds: TDataSource;
begin
   sql := ' select c.codigo as "Carga" , c.datasaida as "Dt Saída", c.situ as "Situação" from carga c where c.datasaida between :dI and :dF and situ = ''F'' ';
   q := dm.GetQueryInstance( sql );
   q.ParamByName('dI').AsDateTime := dIni;
   q.ParamByName('dF').AsDateTime := dFim;
   d := TDados.Create;
   ds := d.dataSetToDataSource(d.qryToDataSet(q));

   q.Close;
   FreeAndNil(q);
   Result := ds;
end;

class function TCarga.qtSubCargas(aux: TCarga): Integer;
   var
    qry: TMDOQuery;
    mask : String;
    qt : Integer;
begin
  qry := dm.GetQueryInstance('select count(*) from subcarga where codcarga = :codigo ');
  qry.ParamByName('codigo').AsInteger := aux.getCod;
  qry.Open;


  qt := qry.FieldByName('count').AsInteger;

  qry.Close;
  qry.Destroy;

  Result := qt ;

end;

class procedure TCarga.Salvar(aux: TCarga);
var q : TMDOQuery;
    sql : String;
begin



    if not Self.exite(aux) then
    begin

        sql := 'insert into carga( motorista,placa,ajudante,datasaida,obs,situ) '+
           'values(:motorista,:placa,:ajudante,:dataSaida,:obs,:situ) ';
        q := dm.GetQueryInstance( sql );
        q.ParamByName('motorista').AsString := aux.getMotorista;
        q.ParamByName('ajudante').AsString  := aux.getAjudante;
        q.ParamByName('dataSaida').AsDate   := aux.getDataSaida;
        q.ParamByName('placa').AsString     := aux.getPlaca;
        q.ParamByName('obs').AsString       := aux.getObs;
        q.ParamByName('situ').AsString      := aux.getSitu;


    end
    else
    begin

        sql := 'update carga set motorista = :motorista , '+
                 'placa = :placa , '+
                 'ajudante = :ajudante, '+
                 'dataSaida = :dataSaida, '+
                 'obs = :obs, '+
                 'cep = :cep, '+
                 'cidade = :cidade, '+
                 'uf = :uf,  '+
                 'vendedor = :vendedor, '+
                 'situ = :situ,  '+
                 'hrSaida = :hora,  '+
                 'dtEntr = :dtEntr  '+
                 'where codigo = :codigo ';
        q := dm.GetQueryInstance( sql );
        q := TMDOQuery.Create(nil);
        q := dm.GetQueryInstance( sql );
        q.ParamByName('motorista').AsString  := aux.getMotorista;
        q.ParamByName('ajudante').AsString   := aux.getAjudante;
        q.ParamByName('dataSaida').AsDate    := aux.getDataSaida;
        q.ParamByName('placa').AsString      := aux.getPlaca;
        q.ParamByName('obs').AsString        := aux.getObs;
        q.ParamByName('cidade').AsString     := aux.getCidade;
        q.ParamByName('uf').AsString         := aux.getUf;
        q.ParamByName('cep').AsString        := aux.getCep;
        
        q.ParamByName('situ').AsString       := aux.getSitu;
        q.ParamByName('codigo').AsInteger    := aux.getCod;
        q.ParamByName('hora').AsString       := aux.getHora;
        q.ParamByName('dtEntr').AsDateTime   := aux.getDtEntrega;

    end;

    q.ExecSQL;
    q.Destroy;



end;

class function TCarga.ultAberta: TCarga;
var
  c : TCarga;
  qry: TMDOQuery;
begin
  c := TCarga.Create;
  qry := dm.GetQueryInstance('select * from carga where situ = ''A'' ');
  qry.Open;
  qry.Last;// seleciona  ultima aberta.
  
  c.cod       := qry.FieldByName('codigo').AsInteger;
  c.motorista := qry.FieldByName('motorista').AsString;
  c.ajudante  := qry.FieldByName('ajudante').AsString;
  c.placa     := qry.FieldByName('placa').AsString;
  c.obs       := qry.FieldByName('obs').AsString;
  c.cep       := qry.FieldByName('cep').AsString;
  c.cidade    := qry.FieldByName('cidade').AsString;
  c.uf        := qry.FieldByName('uf').AsString;
  c.situ      := qry.FieldByName('situ').AsString;
  c.hora      := qry.FieldByName('HRSAIDA').AsString;
  c.dtEntreg  := qry.FieldByName('DTENTR').AsDateTime;
  c.vendedor  := TUsuario.GetById( qry.FieldByName('vendedor').AsInteger );


  qry.Close;
  qry.Destroy;

  Result := c ;
end;

end.

