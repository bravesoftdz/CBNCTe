unit Condutor;

interface
  uses MdoQuery;

   Type TCondutor = Class
   private
    Fcodigo: integer;
    Fnome: String;
    FCPF: String;

    Class function GetFromQuery(Qry: TMDOQuery):TCondutor;

    procedure Setcodigo(const Value: integer);
    procedure SetCPF(const Value: String);
    procedure Setnome(const Value: String);

   public
     property codigo :integer read Fcodigo write Setcodigo;
     property nome   :String read Fnome write Setnome;
     property CPF    :String read FCPF write SetCPF;

     function Salvar:Boolean;
     class function GetbyCodigo(Codigo: Integer):TCondutor;     

end;

implementation

uses SysUtils, DB, Modulo;

{ TCondutor }

class function TCondutor.GetbyCodigo(Codigo: Integer): TCondutor;
var qry:  TMDOQuery;
begin
  result:= nil;
  qry := dm.GetQueryInstance('select * from Condutores where  codigo = :codigo ');
  qry.ParamByName('codigo').AsInteger := Codigo;
  qry.Open;

  if NOT qry.IsEmpty then
    result:= GetFromQuery(qry);
  FreeAndNil(qry);
end;

class function TCondutor.GetFromQuery(Qry: TMDOQuery): TCondutor;
begin
   result:=  TCondutor.Create;

   if Qry.FindField('CODIGO' ) <> nil     then    result.codigo     :=  qry.FieldByName('CODIGO' ).AsInteger;
   if Qry.FindField('NOME'   ) <> nil     then    result.nome       :=  qry.FieldByName('NOME'   ).AsString;
   if Qry.FindField('CPF'    ) <> nil     then    result.CPF        :=  qry.FieldByName('CPF'    ).AsString;

end;

function TCondutor.Salvar: Boolean;
var qry:  TMDOQuery;
begin

   qry := dm.GetQueryInstance('UPDATE OR INSERT INTO CONDUTORES (CODIGO, NOME, CPF)    '+
                              '                         VALUES (:CODIGO, :NOME, :CPF)  ');


   qry.ParamByName('CODIGO'  ).AsInteger  := self.Fcodigo;
   qry.ParamByName('NOME'    ).AsString   := self.Fnome;
   qry.ParamByName('CPF'     ).AsString   := self.FCPF;

   qry.ExecSQL;
   FreeAndNil(qry);
end;

procedure TCondutor.Setcodigo(const Value: integer);
begin
  Fcodigo := Value;
end;

procedure TCondutor.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TCondutor.Setnome(const Value: String);
begin
  Fnome := Value;
end;

end.
 