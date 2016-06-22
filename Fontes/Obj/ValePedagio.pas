unit ValePedagio;

interface
  uses MdoQuery;

  Type TValePedagio = Class
  private
    FCodigo: Integer;
    FN_compra: String;
    FCnpj_pg: String;
    FCnpj_forn: String;

    Class function GetFromQuery(Qry: TMDOQuery):TValePedagio;

    procedure SetCnpj_forn(const Value: String);
    procedure SetCnpj_pg(const Value: String);
    procedure SetCodigo(const Value: Integer);
    procedure SetN_compra(const Value: String);

  public
    property Codigo      :Integer read FCodigo write SetCodigo;
    property Cnpj_forn   :String read FCnpj_forn write SetCnpj_forn;
    property Cnpj_pg     :String read FCnpj_pg write SetCnpj_pg;
    property N_compra    :String read FN_compra write SetN_compra;

    function Salvar:Boolean;
    class function GetbyCodigo(Codigo: Integer):TValePedagio;    
end;

implementation

uses SysUtils, DB, Modulo;

{ TValePedagio }

class function TValePedagio.GetbyCodigo(Codigo: Integer): TValePedagio;
var qry:  TMDOQuery;
begin
  result:= nil;
  qry := dm.GetQueryInstance('select * from vale_pedagio where  Codigo = :Codigo ');
  qry.ParamByName('Codigo').AsInteger := Codigo;
  qry.Open;

  if NOT qry.IsEmpty then
    result:= GetFromQuery(qry);
  FreeAndNil(qry);
end;

class function TValePedagio.GetFromQuery(Qry: TMDOQuery): TValePedagio;
begin
   result:=  TValePedagio.Create;

   if Qry.FindField('CODIGO'    ) <> nil     then    result.Codigo      :=  qry.FieldByName('CODIGO'    ).AsInteger;
   if Qry.FindField('CNPJ_FORN' ) <> nil     then    result.Cnpj_forn   :=  qry.FieldByName('CNPJ_FORN' ).AsString;
   if Qry.FindField('CNPJ_PG'   ) <> nil     then    result.Cnpj_pg     :=  qry.FieldByName('CNPJ_PG'   ).AsString;
   if Qry.FindField('N_COMPRA'  ) <> nil     then    result.N_compra    :=  qry.FieldByName('N_COMPRA'  ).AsString;
end;

function TValePedagio.Salvar: Boolean;
var qry:  TMDOQuery;
begin

   qry := dm.GetQueryInstance('UPDATE OR INSERT INTO VALE_PEDAGIO (CODIGO, CNPJ_FORN, CNPJ_PG, N_COMPRA) '+
                              '                            VALUES (:CODIGO, :CNPJ_FORN, :CNPJ_PG, :N_COMPRA)');


   qry.ParamByName('CODIGO'    ).AsInteger  := self.FCodigo;
   qry.ParamByName('CNPJ_FORN' ).AsString   := self.FCnpj_forn;
   qry.ParamByName('CNPJ_PG'   ).AsString   := self.FCnpj_pg;
   qry.ParamByName('N_COMPRA'  ).AsString   := Self.FN_compra;

   qry.ExecSQL;
   FreeAndNil(qry);
end;

procedure TValePedagio.SetCnpj_forn(const Value: String);
begin
  FCnpj_forn := Value;
end;

procedure TValePedagio.SetCnpj_pg(const Value: String);
begin
  FCnpj_pg := Value;
end;

procedure TValePedagio.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TValePedagio.SetN_compra(const Value: String);
begin
  FN_compra := Value;
end;

end.
 