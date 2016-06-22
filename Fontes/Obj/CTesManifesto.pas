unit CTesManifesto;

interface
  uses MdoQuery, ClasseCte;

  Type TCTesManifesto = Class
  private
    FCodigo_Cte: Integer;
    FCodigo: Integer;
    FCodigo_Manifesto: Integer;

    FCTe   :TClasseCTe;

    Class function GetFromQuery(Qry: TMDOQuery): TCTesManifesto;

    procedure SetCodigo(const Value: Integer);
    procedure SetCodigo_Cte(const Value: Integer);
    procedure SetCodigo_Manifesto(const Value: Integer);
    function GetCTe: TClasseCte;

  public
    property Codigo           :Integer read FCodigo write SetCodigo;
    property Codigo_Manifesto :Integer read FCodigo_Manifesto write SetCodigo_Manifesto;
    property Codigo_Cte       :Integer read FCodigo_Cte write SetCodigo_Cte;

    property CTe              :TClasseCte read GetCTe;

    function Salvar:Boolean;
    class function GetbyCodigo(Codigo: Integer): TCTesManifesto;

end;

implementation

uses SysUtils, DB, Modulo;

{ TCTesManifesto }

class function TCTesManifesto.GetbyCodigo(
  Codigo: Integer): TCTesManifesto;
var qry:  TMDOQuery;
begin
  result:= nil;
  qry := dm.GetQueryInstance('select * from CTES_MANIFESTO where  CODIGO = :CODIGO ');
  qry.ParamByName('CODIGO').AsInteger := Codigo;
  qry.Open;

  if NOT qry.IsEmpty then
    result:= GetFromQuery(qry);
  FreeAndNil(qry);
end;

function TCTesManifesto.GetCTe: TClasseCte;
begin
  Result := TClasseCTE.GetbyCodigo(self.FCodigo_Cte);
end;

class function TCTesManifesto.GetFromQuery(Qry: TMDOQuery): TCTesManifesto;
begin
   result:=  TCTesManifesto.Create;

   if Qry.FindField('CODIGO'           ) <> nil   then  result.Codigo            :=  qry.FieldByName('CODIGO'           ).AsInteger;
   if Qry.FindField('CODIGO_MANIFESTO' ) <> nil   then  result.Codigo_Manifesto  :=  qry.FieldByName('CODIGO_MANIFESTO' ).AsInteger;
   if Qry.FindField('CODIGO_CTE'       ) <> nil   then  result.Codigo_Cte        :=  qry.FieldByName('CODIGO_CTE'       ).AsInteger;
end;

function TCTesManifesto.Salvar: Boolean;
var qry:  TMDOQuery;
begin

   qry := dm.GetQueryInstance('UPDATE OR INSERT INTO CTES_MANIFESTO (CODIGO, CODIGO_MANIFESTO, CODIGO_CTE) '+
                              '                              VALUES (:CODIGO, :CODIGO_MANIFESTO, :CODIGO_CTE)');


   qry.ParamByName('CODIGO'           ).AsInteger  := self.FCodigo;
   qry.ParamByName('CODIGO_MANIFESTO' ).AsInteger  := self.FCodigo_Manifesto;
   qry.ParamByName('CODIGO_CTE'       ).AsInteger  := self.FCodigo_Cte;

   qry.ExecSQL;
   FreeAndNil(qry);

end;

procedure TCTesManifesto.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TCTesManifesto.SetCodigo_Cte(const Value: Integer);
begin
  FCodigo_Cte := Value;
end;

procedure TCTesManifesto.SetCodigo_Manifesto(const Value: Integer);
begin
  FCodigo_Manifesto := Value;
end;

end.
 