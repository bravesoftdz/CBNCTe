unit Veiculo;

interface

uses SysUtils, MDOQuery;

type
  TVeiculo = class

  private
    Ftipo_carroceria: integer;
    Fcodigo: integer;
    Ftipo_veiculo: integer;
    Ftipo_rodado: integer;
    Fcapacidade_m3: Real;
    FTARA: Real;
    Fcapacidade_kg: Real;
    Fplaca: String;
    Fveiculo_proprio: String;
    Frenavam: String;
    Fuf_veiculo: String;
    FUF: String;
    FCPFCNPJ: String;
    FTipo_Proprietario: Integer;
    FIE: String;
    FRNTRC: String;
    FNome_proprietario: String;

    Class function GetFromQuery(Qry: TMDOQuery):TVeiculo;

    procedure Setcapacidade_kg(const Value: Real);
    procedure Setcapacidade_m3(const Value: Real);
    procedure Setcodigo(const Value: integer);
    procedure Setplaca(const Value: String);
    procedure Setrenavam(const Value: String);
    procedure SetTARA(const Value: Real);
    procedure Settipo_carroceria(const Value: integer);
    procedure Settipo_rodado(const Value: integer);
    procedure Settipo_veiculo(const Value: integer);
    procedure Setveiculo_proprio(const Value: String);
    procedure Setuf_veiculo(const Value: String);
    procedure SetCPFCNPJ(const Value: String);
    procedure SetIE(const Value: String);
    procedure SetNome_proprietario(const Value: String);
    procedure SetRNTRC(const Value: String);
    procedure SetTipo_Proprietario(const Value: Integer);
    procedure SetUF(const Value: String);

  public
    property codigo          :integer read Fcodigo write Setcodigo;
    property placa           :String read Fplaca write Setplaca;
    property renavam         :String read Frenavam write Setrenavam;
    property tipo_veiculo    :integer read Ftipo_veiculo write Settipo_veiculo;
    property tipo_rodado     :integer read Ftipo_rodado write Settipo_rodado;
    property tipo_carroceria :integer read Ftipo_carroceria write Settipo_carroceria;
    property veiculo_proprio :String read Fveiculo_proprio write Setveiculo_proprio;
    property uf_veiculo      :String read Fuf_veiculo write Setuf_veiculo;
    property TARA            :Real read FTARA write SetTARA;
    property capacidade_kg   :Real read Fcapacidade_kg write Setcapacidade_kg;
    property capacidade_m3   :Real read Fcapacidade_m3 write Setcapacidade_m3;
    property CPFCNPJ         :String read FCPFCNPJ write SetCPFCNPJ;
    property IE              :String read FIE write SetIE;
    property UF              :String read FUF write SetUF;
    property Nome_proprietario :String read FNome_proprietario write SetNome_proprietario;
    property RNTRC           :String read FRNTRC write SetRNTRC;
    property Tipo_Proprietario :integer read FTipo_Proprietario write SetTipo_Proprietario;

  public
    procedure salvar;
    class function GetbyCodigo(Codigo: Integer):TVeiculo;  
end;

implementation

uses Modulo, DB;

{ TVeiculo }

class function TVeiculo.GetbyCodigo(Codigo: Integer): TVeiculo;
var qry:  TMDOQuery;
begin
  result:= nil;
  qry := dm.GetQueryInstance('select * from veiculos where  Codigo = :codigo ');
  qry.ParamByName('Codigo').AsInteger := Codigo;
  qry.Open;

  if NOT qry.IsEmpty then
    result:= GetFromQuery(qry);
  FreeAndNil(qry);
end;

class function TVeiculo.GetFromQuery(Qry: TMDOQuery): TVeiculo;
begin
   result:=  TVeiculo.Create;

   if Qry.FindField('CODIGO'           ) <> nil     then    result.Codigo            :=  qry.FieldByName('CODIGO'           ).AsInteger;
   if Qry.FindField('PLACA'            ) <> nil     then    result.placa             :=  qry.FieldByName('PLACA'            ).AsString;
   if Qry.FindField('RENAVAM'          ) <> nil     then    result.renavam           :=  qry.FieldByName('RENAVAM'          ).AsString;
   if Qry.FindField('TIPO_VEICULO'     ) <> nil     then    result.tipo_veiculo      :=  qry.FieldByName('TIPO_VEICULO'     ).AsInteger;
   if Qry.FindField('TIPO_RODADO'      ) <> nil     then    result.tipo_rodado       :=  qry.FieldByName('TIPO_RODADO'      ).AsInteger;
   if Qry.FindField('TIPO_CARROCERIA'  ) <> nil     then    result.tipo_carroceria   :=  qry.FieldByName('TIPO_CARROCERIA'  ).AsInteger;
   if Qry.FindField('VEICULO_PROPRIO'  ) <> nil     then    result.veiculo_proprio   :=  qry.FieldByName('VEICULO_PROPRIO'  ).AsString;
   if Qry.FindField('UF_VEICULO'       ) <> nil     then    result.uf_veiculo        :=  qry.FieldByName('UF_VEICULO'       ).AsString;
   if Qry.FindField('TARA'             ) <> nil     then    result.TARA              :=  qry.FieldByName('TARA'             ).AsFloat;
   if Qry.FindField('CAPACIDADE_KG'    ) <> nil     then    result.capacidade_kg     :=  qry.FieldByName('CAPACIDADE_KG'    ).AsFloat;
   if Qry.FindField('CAPACIDADE_M3'    ) <> nil     then    result.capacidade_m3     :=  qry.FieldByName('CAPACIDADE_M3'    ).AsFloat;
   if Qry.FindField('CPFCNPJ'          ) <> nil     then    result.CPFCNPJ           :=  qry.FieldByName('CPFCNPJ'          ).AsString;
   if Qry.FindField('IE'               ) <> nil     then    result.IE                :=  qry.FieldByName('IE'               ).AsString;
   if Qry.FindField('UF'               ) <> nil     then    result.UF                :=  qry.FieldByName('UF'               ).AsString;
   if Qry.FindField('NOME_PROPRIETARIO') <> nil     then    result.Nome_proprietario :=  qry.FieldByName('NOME_PROPRIETARIO').AsString;
   if Qry.FindField('RNTRC'            ) <> nil     then    result.RNTRC             :=  qry.FieldByName('RNTRC'            ).AsString;
   if Qry.FindField('TIPO_PROPRIETARIO') <> nil     then    result.Tipo_Proprietario :=  qry.FieldByName('TIPO_PROPRIETARIO').AsInteger;
end;

procedure TVeiculo.salvar;
var qry :TMDOQuery;
begin
  qry := dm.GetQueryInstance('UPDATE OR INSERT INTO VEICULOS (CODIGO, PLACA, RENAVAM, TIPO_VEICULO, TIPO_RODADO, TIPO_CARROCERIA,            '+
                             '                                UF_VEICULO, VEICULO_PROPRIO, TARA, CAPACIDADE_KG, CAPACIDADE_M3, CPFCNPJ,      '+
                             '                                IE, UF, NOME_PROPRIETARIO, RNTRC, TIPO_PROPRIETARIO)                           '+
                             '                        VALUES (:CODIGO, :PLACA, :RENAVAM, :TIPO_VEICULO, :TIPO_RODADO, :TIPO_CARROCERIA,      '+
                             '                               :UF_VEICULO, :VEICULO_PROPRIO, :TARA, :CAPACIDADE_KG, :CAPACIDADE_M3, :CPFCNPJ, '+
                             '                               :IE, :UF, :NOME_PROPRIETARIO, :RNTRC, :TIPO_PROPRIETARIO)                       ');

  qry.ParamByName('CODIGO'           ).AsInteger  := self.Codigo;
  qry.ParamByName('PLACA'            ).AsString   := self.placa;
  qry.ParamByName('RENAVAM'          ).AsString   := self.renavam;
  qry.ParamByName('TIPO_VEICULO'     ).AsInteger  := self.Ftipo_veiculo;
  qry.ParamByName('TIPO_RODADO'      ).AsInteger  := self.Ftipo_rodado;
  qry.ParamByName('TIPO_CARROCERIA'  ).AsInteger  := self.Ftipo_carroceria;
  qry.ParamByName('VEICULO_PROPRIO'  ).AsString   := self.Fveiculo_proprio;
  qry.ParamByName('UF_VEICULO'       ).AsString   := self.Fuf_veiculo;
  qry.ParamByName('TARA'             ).AsFloat    := self.FTARA;
  qry.ParamByName('CAPACIDADE_KG'    ).AsFloat    := self.Fcapacidade_kg;
  qry.ParamByName('CAPACIDADE_M3'    ).AsFloat    := self.Fcapacidade_m3;
  qry.ParamByName('CPFCNPJ'          ).AsString   := self.CPFCNPJ;
  qry.ParamByName('IE'               ).AsString   := self.IE;
  qry.ParamByName('UF'               ).AsString   := self.UF;
  qry.ParamByName('NOME_PROPRIETARIO').AsString   := self.Nome_proprietario;
  qry.ParamByName('RNTRC'            ).AsString   := self.RNTRC;
  qry.ParamByName('TIPO_PROPRIETARIO').AsInteger  := self.Tipo_Proprietario;

  qry.ExecSQL;
end;

procedure TVeiculo.Setcapacidade_kg(const Value: Real);
begin
  Fcapacidade_kg := Value;
end;

procedure TVeiculo.Setcapacidade_m3(const Value: Real);
begin
  Fcapacidade_m3 := Value;
end;

procedure TVeiculo.Setcodigo(const Value: integer);
begin
  Fcodigo := Value;
end;

procedure TVeiculo.SetCPFCNPJ(const Value: String);
begin
  FCPFCNPJ := Value;
end;

procedure TVeiculo.SetIE(const Value: String);
begin
  FIE := Value;
end;

procedure TVeiculo.SetNome_proprietario(const Value: String);
begin
  FNome_proprietario := Value;
end;

procedure TVeiculo.Setplaca(const Value: String);
begin
  Fplaca := Value;
end;

procedure TVeiculo.Setrenavam(const Value: String);
begin
  Frenavam := Value;
end;

procedure TVeiculo.SetRNTRC(const Value: String);
begin
  FRNTRC := Value;
end;

procedure TVeiculo.SetTARA(const Value: Real);
begin
  FTARA := Value;
end;

procedure TVeiculo.Settipo_carroceria(const Value: integer);
begin
  Ftipo_carroceria := Value;
end;

procedure TVeiculo.SetTipo_Proprietario(const Value: Integer);
begin
  FTipo_Proprietario := Value;
end;

procedure TVeiculo.Settipo_rodado(const Value: integer);
begin
  Ftipo_rodado := Value;
end;

procedure TVeiculo.Settipo_veiculo(const Value: integer);
begin
  Ftipo_veiculo := Value;
end;

procedure TVeiculo.SetUF(const Value: String);
begin
  FUF := Value;
end;

procedure TVeiculo.Setuf_veiculo(const Value: String);
begin
  Fuf_veiculo := Value;
end;

procedure TVeiculo.Setveiculo_proprio(const Value: String);
begin
  Fveiculo_proprio := Value;
end;

end.
