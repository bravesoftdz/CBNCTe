unit VeiculosReboque;

interface
  uses MdoQuery, Veiculo;

  Type TVeiculosReboque = Class
  private
    FCodigo_Veiculo: Integer;
    FCodigo: Integer;
    FCodigo_Manifesto: Integer;
    FVeiculo  :TVeiculo;

    Class function GetFromQuery(Qry: TMDOQuery):TVeiculosReboque;

    procedure SetCodigo(const Value: Integer);
    procedure SetCodigo_Manifesto(const Value: Integer);
    procedure SetCodigo_Veiculo(const Value: Integer);
    function GetVeiculo: TVeiculo;

  public
    property Codigo           :Integer read FCodigo write SetCodigo;
    property Codigo_Manifesto :Integer read FCodigo_Manifesto write SetCodigo_Manifesto;
    property Codigo_Veiculo   :Integer read FCodigo_Veiculo write SetCodigo_Veiculo;
    property Veiculo          :TVeiculo read GetVeiculo;

    function Salvar:Boolean;
    class function GetbyCodigo(Codigo: Integer):TVeiculosReboque;    

end;

implementation

uses SysUtils, DB, Modulo;

{ TVeiculosReboque }

class function TVeiculosReboque.GetbyCodigo(
  Codigo: Integer): TVeiculosReboque;
var qry:  TMDOQuery;
begin
  result:= nil;
  qry := dm.GetQueryInstance('select * from VEICULOS_REBOQUE where  CODIGO = :CODIGO ');
  qry.ParamByName('COD_MANIFESTO').AsInteger := Codigo;
  qry.Open;

  if NOT qry.IsEmpty then
    result:= GetFromQuery(qry);
  FreeAndNil(qry);
end;

class function TVeiculosReboque.GetFromQuery(
  Qry: TMDOQuery): TVeiculosReboque;
begin
   result:=  TVeiculosReboque.Create;

   if Qry.FindField('CODIGO'           ) <> nil   then  result.Codigo            :=  qry.FieldByName('CODIGO'           ).AsInteger;
   if Qry.FindField('CODIGO_MANIFESTO' ) <> nil   then  result.Codigo_Manifesto  :=  qry.FieldByName('CODIGO_MANIFESTO' ).AsInteger;
   if Qry.FindField('CODIGO_VEICULO'   ) <> nil   then  result.Codigo_Veiculo    :=  qry.FieldByName('CODIGO_veiculo'  ).AsInteger;
end;

function TVeiculosReboque.GetVeiculo: TVeiculo;
begin
  result := TVeiculo.GetbyCodigo(self.FCodigo_Veiculo);
end;

function TVeiculosReboque.Salvar: Boolean;
var qry:  TMDOQuery;
begin

   qry := dm.GetQueryInstance('UPDATE OR INSERT INTO VEICULOS_REBOQUE (CODIGO, CODIGO_MANIFESTO, CODIGO_VEICULO)   '+
                              '                                VALUES (:CODIGO, :CODIGO_MANIFESTO, :CODIGO_VEICULO)');


   qry.ParamByName('CODIGO'           ).AsInteger  := self.FCodigo;
   qry.ParamByName('CODIGO_MANIFESTO' ).AsInteger  := self.FCodigo_Manifesto;
   qry.ParamByName('CODIGO_VEICULO'   ).AsInteger  := self.FCodigo_Veiculo;

   qry.ExecSQL;
   FreeAndNil(qry);
end;

procedure TVeiculosReboque.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TVeiculosReboque.SetCodigo_Manifesto(const Value: Integer);
begin
  FCodigo_Manifesto := Value;
end;

procedure TVeiculosReboque.SetCodigo_Veiculo(const Value: Integer);
begin
  FCodigo_Veiculo := Value;
end;

end.
 