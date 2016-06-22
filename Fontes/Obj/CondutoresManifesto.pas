unit CondutoresManifesto;

interface
  uses MdoQuery, Condutor;

  Type TCondutoresManifesto = Class
  private

    FCodigo: Integer;
    FCodigo_Manifesto: Integer;
    FCodigo_Condutor: Integer;
    FCondutor  :TCondutor;

    Class function GetFromQuery(Qry: TMDOQuery):TCondutoresManifesto;

    procedure SetCodigo(const Value: Integer);
    procedure SetCodigo_Condutor(const Value: Integer);
    procedure SetCodigo_Manifesto(const Value: Integer);
    function GetCondutor: TCondutor;

  public
    property Codigo           :Integer read FCodigo write SetCodigo;
    property Codigo_Manifesto :Integer read FCodigo_Manifesto write SetCodigo_Manifesto;
    property Codigo_Condutor  :Integer read FCodigo_Condutor write SetCodigo_Condutor;
    property Condutor         :TCondutor read GetCondutor;

    function Salvar:Boolean;
    class function GetbyCodigo(Codigo: Integer):TCondutoresManifesto;
end;

implementation

uses SysUtils, DB, Modulo;

{ TCondutoresManifesto }

class function TCondutoresManifesto.GetbyCodigo(
  Codigo: Integer): TCondutoresManifesto;
var qry:  TMDOQuery;
begin
  result:= nil;
  qry := dm.GetQueryInstance('select * from CONDUTORES_MANIFESTO where  CODIGO = :CODIGO ');
  qry.ParamByName('CODIGO').AsInteger := Codigo;
  qry.Open;

  if NOT qry.IsEmpty then
    result:= GetFromQuery(qry);
  FreeAndNil(qry);
end;

function TCondutoresManifesto.GetCondutor: TCondutor;
begin
  result := TCondutor.GetbyCodigo(self.FCodigo_Condutor);
end;

class function TCondutoresManifesto.GetFromQuery(
  Qry: TMDOQuery): TCondutoresManifesto;
begin
   result:=  TCondutoresManifesto.Create;

   if Qry.FindField('CODIGO'           ) <> nil   then  result.Codigo            :=  qry.FieldByName('CODIGO'           ).AsInteger;
   if Qry.FindField('CODIGO_MANIFESTO' ) <> nil   then  result.Codigo_Manifesto  :=  qry.FieldByName('CODIGO_MANIFESTO' ).AsInteger;
   if Qry.FindField('CODIGO_CONDUTOR'  ) <> nil   then  result.Codigo_Condutor   :=  qry.FieldByName('CODIGO_CONDUTOR'  ).AsInteger;
end;

function TCondutoresManifesto.Salvar: Boolean;
var qry:  TMDOQuery;
begin

   qry := dm.GetQueryInstance('UPDATE OR INSERT INTO CONDUTORES_MANIFESTO (CODIGO, CODIGO_MANIFESTO, CODIGO_CONDUTOR) '+
                              '                                    VALUES (:CODIGO, :CODIGO_MANIFESTO, :CODIGO_CONDUTOR)');


   qry.ParamByName('CODIGO'           ).AsInteger  := self.FCodigo;
   qry.ParamByName('CODIGO_MANIFESTO' ).AsInteger  := self.FCodigo_Manifesto;
   qry.ParamByName('CODIGO_CONDUTOR'  ).AsInteger  := self.FCodigo_Condutor;

   qry.ExecSQL;
   FreeAndNil(qry);
end;

procedure TCondutoresManifesto.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TCondutoresManifesto.SetCodigo_Condutor(const Value: Integer);
begin
  FCodigo_Condutor := Value;
end;

procedure TCondutoresManifesto.SetCodigo_Manifesto(const Value: Integer);
begin
  FCodigo_Manifesto := Value;
end;

end.
 