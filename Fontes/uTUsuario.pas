unit uTUsuario;

interface

uses MDOQuery,DBClient,uTDados,modulo,DB, TNivel,Funcoes_sgve, ZDataSet;

type
  TUsuario = class
  private

    codigo    : Integer;
    nome      : String;
    tipo      : String;
    meta      : Real;
    bloqueado : String;
    senha     : String;
    nivel     : TClassNivel;
    flogado    : Boolean;
    endereco : String;
    bairro   : String;
    banco    : Integer;
    CEP      : String;
    cidade   : String;
    conta    : Integer;
    CPF      : String;
    dtAber   : TDateTime;
    dtEnt    : TDateTime;
    dtNasc   : TDateTime;
    dtSaida  : TDateTime;
    fone1    : String;
    fone2    : String;
    fone3    : String;
    obs      : String;
    pComPrz  : Real;
    pComVis  : Real;
    RG       : String;
    UF       : String;


    procedure setCodigo(const Value: Integer);
    procedure setNome(const Value: String);
    procedure setTipo(const Value: String);
    procedure setMeta(const Value: Real);
    procedure setBloqueado(const Value: String);
    procedure setNivel(const Value: TClassNivel);
    procedure setSenha(const Value: String);
    procedure setEndereco(const Value: String);
    procedure setBairro(const Value: String);
    procedure setBanco(const Value: Integer);
    procedure setCEP(const Value: String);
    procedure setCidade(const Value: String);
    procedure setConta(const Value: Integer);
    procedure setCPF(const Value: String);
    procedure setDtAber(const Value: TDateTime);
    procedure setDtEnt(const Value: TDateTime);
    procedure setDtNasc(const Value: TDateTime);
    procedure setDtSaida(const Value: TDateTime);
    procedure setFone1(const Value: String);
    procedure setFone2(const Value: String);
    procedure setFone3(const Value: String);
    procedure setObs(const Value: String);
    procedure setPComPrz(const Value: Real);
    procedure setPComVis(const Value: Real);
    procedure setRG(const Value: String);
    procedure setUF(const Value: String);
    function RetornaNome: String;

  public

    property getCodigo  : Integer   read codigo   write setCodigo;
    property getNome    : String    read RetornaNome     write setNome;
    property getTipo    : String    read tipo     write setTipo;
    property getMeta    : Real      read meta     write setMeta;
    property getBloqueado : String  read bloqueado write setBloqueado;
    property getNivel   : TClassNivel read nivel  write setNivel;
    property getSenha   : String      read senha  write setSenha;
    property logado     : Boolean     read flogado write flogado;
    property getEndereco : String   read endereco write setEndereco;
    property getBairro  : String   read bairro write setBairro;
    property getBanco   : Integer  read banco  write setBanco;
    property getCEP     : String   read CEP    write setCEP;
    property getCidade  : String   read cidade write setCidade;
    property getConta   : Integer  read conta write  setConta;
    property getCPF     : String   read CPF   write  setCPF;
    property getDtAber  : TDateTime read dtAber write setDtAber;
    property getDtEnt   : TDateTime read dtEnt  write setDtEnt;
    property getDtNasc  : TDateTime read dtNasc write setDtNasc;
    property getDtSaida : TDateTime read dtSaida write setDtSaida;
    property getFone1   : String    read fone1   write setFone1;
    property getFone2   : String    read fone2   write setFone2;
    property getFone3   : String    read fone3   write setFone3;
    property getObs     : String    read obs     write setObs;
    property getPComPrz : Real      read pComPrz  write setPComPrz;
    property getPComVis : Real      read pComVis  write setPComVis;
    property getRG      : String    read RG       write setRG;
    property getUF      : String    read UF       write setUF;

    procedure save;
    procedure saveZ;

    class function existe(codigo: Integer): Boolean;
    class function existeZ(codigo: Integer): Boolean;

    class function GetById( cod : Integer ): TUsuario;
    class function getByIdZ(cod: Integer): TUsuario;

    class function getByNrPed(const nrPed: Integer): TUsuario;
    class function getByNrPedZ(const nrPed: Integer): TUsuario;

    destructor free;

  end;

implementation

uses SysUtils;


class function TUsuario.GetById(cod : Integer): TUsuario;
var dados : TDados;
    query : TMDOQuery;
    u : TUsuario;
begin

   u := TUsuario.Create;
   dados := TDados.Create;
   query := TMDOQuery.Create(nil);

   query := dm.GetQueryInstance('select * from usuarios p where p.codigo = :codigo');
   query.ParamByName('codigo').AsInteger := cod;
   query.Open;

   u.endereco  := query.FieldByName('endereco').asString;
   u.codigo    := query.FieldByName('codigo').AsInteger;
   u.nome      := query.FieldByName('nome').AsString;
   u.tipo      := query.FieldByName('tipo').AsString;
   u.meta      := query.FieldByName('meta').AsFloat;
   u.bloqueado := query.FieldByName('flag').AsString;
   u.bairro    := query.FieldByName('bairro').asString;
   u.banco     := query.FieldByName('banco').asInteger;
   u.CEP       := query.FieldByName('CEP').AsString;
   u.cidade    := query.FieldByName('cidade').asString;
   u.conta     := query.FieldByName('conta').asInteger;
   u.CPF       := query.FieldByName('CPF').asString;
   u.dtAber    := query.FieldByName('dtAber').AsDateTime;
   u.dtEnt     := query.FieldByName('dtEnt').asDateTime;
   u.dtNasc    := query.fieldByName('dtNasc').asDateTime;
   u.dtSaida   := query.fieldByName('dtSaida').asDateTime;
   u.fone1     := query.fieldByName('fone1').asString;
   u.fone2     := query.FieldByName('fone2').asString;
   u.fone3     := query.fieldBYName('fone3').asString;
   u.obs       := query.fieldByName('obs').asString;
   u.pComPrz   := query.fieldByName('pComPrz').asFloat;
   u.pComVis   := query.fieldByName('pComVis').asFloat;
   u.RG        := query.fieldByName('RG').asString;
   u.UF        := query.fieldByName('UF').asString;
   u.nivel     := TClassNivel.Get( query.FieldByName('codnivel').AsInteger );

   u.setSenha( query.FieldByName('senha').AsString );
   try
      u.flogado := (query.FieldByName('logado').AsString = 'S');
   Except
      u.flogado := False;
   end;
   Result := u;

   query.Destroy;
end;

procedure TUsuario.setBanco(const Value: Integer);
begin
  self.banco := Value;
end;

procedure TUsuario.setBairro(const Value: String);
begin
  self.bairro := Value;
end;

procedure TUsuario.setCodigo(const Value: Integer);
begin
  Self.codigo := Value;
end;

procedure TUsuario.setEndereco(const Value: String);
begin
  self.endereco := Value;
end;

procedure TUsuario.setMeta(const Value: Real);
begin
  Self.meta := Value;
end;

procedure TUsuario.setNivel(const Value: TClassNivel);
begin
  Self.nivel := Value;
end;

procedure TUsuario.setNome(const Value: String);
begin
  Self.nome := Trim(Value);
end;

procedure TUsuario.setSenha(const Value: String);
begin
  Self.senha := Trim(Descripto( Value ));
end;

procedure TUsuario.setTipo(const Value: String);
begin
  Self.tipo := Value;
end;

procedure TUsuario.setCEP(const Value: String);
begin
  Self.CEP  := Value;
end;

procedure TUsuario.setCidade(const Value: String);
begin
  Self.cidade := Value;
end;

procedure TUsuario.setConta(const Value: Integer);
begin
  self.conta := Value;
end;

procedure TUsuario.setCPF(const Value: String);
begin
  self.CPF := Value;
end;

procedure TUsuario.setDtAber(const Value: TDateTime);
begin
  self.dtAber := Value;
end;

procedure TUsuario.setDtEnt(const Value: TDateTime);
begin
  self.dtEnt := Value;
end;

procedure TUsuario.setDtNasc(const Value: TDateTime);
begin
  self.dtNasc := Value;
end;

procedure TUsuario.setDtSaida(const Value: TDateTime);
begin
  self.dtSaida := Value;
end;

procedure TUsuario.setFone1(const Value: String);
begin
  self.fone1 := Value;
end;

procedure TUsuario.setFone2(const Value: String);
begin
  self.fone2 := Value;
end;

procedure TUsuario.setFone3(const Value: String);
begin
  self.fone3 := Value;
end;

procedure TUsuario.setObs(const Value: String);
begin
  self.obs := Value;
end;

procedure TUsuario.setPComPrz(const Value: Real);
begin
  self.pComPrz := Value;
end;

procedure TUsuario.setPComVis(const Value: Real);
begin
  self.pComVis := Value;
end;

procedure TUsuario.setRG(const Value: String);
begin
  self.RG := Value;
end;

procedure TUsuario.setUF(const Value: String);
begin
  self.UF := Value;
end;

procedure TUsuario.save;
var query: TMDOQuery;
begin
  try
      query := dm.GetQueryInstance('UPDATE usuarios u SET u.bairro = :bairro, u.banco = :banco,         '+
                                   '                      u.cep = :cep, u.cidade = :cidade,             '+
                                   '                      u.codigo = :codigo, u.codnivel = :codnivel,   '+
                                   '                      u.conta = :conta, u.cpf = :cpf,               '+
                                   '                      u.dtaber = :dtAber, u.dtent = :dtEnt,         '+
                                   '                      u.dtnasc = :dtNasc, u.dtsaida = :dtSaida,     '+
                                   '                      u.endereco = :endereco, u.flag = :flag,       '+
                                   '                      u.fone1 = :fone1, u.fone2 = :fone2,           '+
                                   '                      u.fone3 = :fone3, u.logado = :logado,         '+
                                   '                      u.meta = :meta, u.nome = :nome,               '+
                                   '                      u.obs = :obs, u.pcomprz = :pComPrz,           '+
                                   '                      u.pcomvis = :pComVis, u.rg = :RG,             '+
                                   '                      u.senha = :senha, u.tipo = :tipo,             '+
                                   '                      u.uf = :UF                                    '+
                                   'WHERE u.codigo = :codigo;                                           ');

      query.ParamByName('codigo').AsInteger := self.codigo;
      query.ParamByName('bairro').asString := self.bairro;
      query.ParamByName('banco').asInteger := self.banco;
      query.ParamByName('cep').AsString := self.CEP;
      query.ParamByName('cidade').asString := self.cidade;
      query.ParamByName('codnivel').AsInteger := self.nivel.Codigo;
      query.ParamByName('conta').asInteger := self.conta;
      query.ParamByName('cpf').AsString := self.CPF;
      query.ParamByName('dtaber').AsDateTime := self.dtAber;
      query.ParamByName('dtent').asDateTime := self.dtEnt;
      query.ParamByName('dtnasc').asDateTime := self.dtNasc;
      query.ParamByName('dtsaida').AsDateTime := self.dtSaida;
      query.ParamByName('endereco').AsString := self.endereco;
      query.ParamByName('flag').asString := self.bloqueado;
      query.ParamByName('fone1').AsString := self.fone1;
      query.ParamByName('fone2').asString := self.fone2;
      query.ParamByName('fone3').asString := self.fone3;
      query.ParamByName('logado').AsBoolean := self.flogado;
      query.ParamByName('obs').AsString := self.obs;
      query.ParamByName('nome').asString := self.nome;
      query.ParamByName('pcomprz').asFloat := self.pComPrz;
      query.ParamByName('pcomvis').AsFloat := self.pComVis;
      query.ParamByName('rg').asString := self.RG;
      query.ParamByName('senha').AsString := self.senha;
      query.ParamByName('tipo').asString := self.tipo;
      query.ParamByName('UF').AsString := self.UF;

      query.ExecSQL;

      finally
        freeAndNil(query);
      end;
end;

procedure TUsuario.setBloqueado(const Value: String);
begin
  self.bloqueado := Value;
end;

class function TUsuario.getByNrPed(const nrPed: Integer): TUsuario;
var qry: TMDOQuery;
begin
  try
    qry := dm.GetQueryInstance('SELECT pedidos.codven         '+
                               'FROM pedidos                  '+
                               'WHERE pedidos.nrped = :nrPed; ');
    qry.ParamByName('nrPed').asInteger := nrPed;
    qry.Open;

    result := self.GetById(qry.fieldByName('codven').asInteger);
  finally
    qry.close;
    freeAndNil(qry);
  end; 
end;

class function TUsuario.existe(codigo: Integer): Boolean;
var qry: TMDOQuery;
begin
  qry := dm.GetQueryInstance(' SELECT * FROM usuarios WHERE usuarios.codigo = :codigo; ');
  qry.ParamByName('codigo').asInteger := codigo;
  qry.Open;

  if not qry.IsEmpty then
    result := true
  else
    result := false;

  qry.close;
  freeAndNil(qry);
end;

destructor TUsuario.free;
begin
  if (self.nivel <> nil) then
  begin
    self.nivel.free;
    self.nivel := nil;
  end;
end;

class function TUsuario.getByIdZ(cod: Integer): TUsuario;
var dados : TDados;
    query : TMDOQuery;
    u : TUsuario;
begin

   u := TUsuario.Create;
   dados := TDados.Create;
   query := TMDOQuery.Create(nil);

   query := dm.GetQueryInstance('select * from usuarios p where p.codigo = :codigo');
   query.ParamByName('codigo').AsInteger := cod;
   query.Open;

   u.codigo    := query.FieldByName('codigo').AsInteger;
   u.nome      := query.FieldByName('nome').AsString;
   u.tipo      := query.FieldByName('tipo').AsString;
   u.meta      := query.FieldByName('meta').AsFloat;
   u.bloqueado := query.FieldByName('flag').AsString;
   u.endereco  := query.FieldByName('endereco').asString;
   u.bairro    := query.FieldByName('bairro').asString;
   u.banco     := query.FieldByName('banco').asInteger;
   u.CEP       := query.FieldByName('CEP').AsString;
   u.cidade    := query.FieldByName('cidade').asString;
   u.conta     := query.FieldByName('conta').asInteger;
   u.CPF       := query.FieldByName('CPF').asString;
   u.dtAber    := query.FieldByName('dtAber').AsDateTime;
   u.dtEnt     := query.FieldByName('dtEnt').asDateTime;
   u.dtNasc    := query.fieldByName('dtNasc').asDateTime;
   u.dtSaida   := query.fieldByName('dtSaida').asDateTime;
   u.fone1     := query.fieldByName('fone1').asString;
   u.fone2     := query.FieldByName('fone2').asString;
   u.fone3     := query.fieldBYName('fone3').asString;
   u.obs       := query.fieldByName('obs').asString;
   u.pComPrz   := query.fieldByName('pComPrz').asFloat;
   u.pComVis   := query.fieldByName('pComVis').asFloat;
   u.RG        := query.fieldByName('RG').asString;
   u.UF        := query.fieldByName('UF').asString;
   u.nivel     := TClassNivel.getZ( query.FieldByName('codnivel').AsInteger );

   u.setSenha( query.FieldByName('senha').AsString );
   try
      u.flogado := (query.FieldByName('logado').AsString = 'S');
   Except
      u.flogado := False;
   end;
   Result := u;

   query.close;
   freeAndNil(query);

end;

class function TUsuario.existeZ(codigo: Integer): Boolean;
var qry: TMDOQuery;
begin
  qry := dm.GetQueryInstance(' SELECT * FROM usuarios WHERE usuarios.codigo = :codigo; ');
  qry.ParamByName('codigo').asInteger := codigo;
  qry.Open;

  if not qry.IsEmpty then
    result := true
  else
    result := false;

  qry.close;
  freeAndNil(qry);
end;


class function TUsuario.getByNrPedZ(const nrPed: Integer): TUsuario;
var qry: TMDOQuery;
begin
  try
    qry := dm.GetQueryInstance('SELECT pedidos.codven         '+
                               'FROM pedidos                  '+
                               'WHERE pedidos.nrped = :nrPed; ');
    qry.ParamByName('nrPed').asInteger := nrPed;
    qry.Open;

    result := self.getByIdZ(qry.fieldByName('codven').asInteger);
  finally
    qry.close;
    freeAndNil(qry);
  end;
end;

procedure TUsuario.saveZ;
var query: TMDOQuery;
begin
  query := dm.GetQueryInstance('UPDATE usuarios u SET u.bairro = :bairro, u.banco = :banco,         '+
                               '                      u.cep = :cep, u.cidade = :cidade,             '+
                               '                      u.codigo = :codigo, u.codnivel = :codnivel,   '+
                               '                      u.conta = :conta, u.cpf = :cpf,               '+
                               '                      u.dtaber = :dtAber, u.dtent = :dtEnt,         '+
                               '                      u.dtnasc = :dtNasc, u.dtsaida = :dtSaida,     '+
                               '                      u.endereco = :endereco, u.flag = :flag,       '+
                               '                      u.fone1 = :fone1, u.fone2 = :fone2,           '+
                               '                      u.fone3 = :fone3, u.logado = :logado,         '+
                               '                      u.meta = :meta, u.nome = :nome,               '+
                               '                      u.obs = :obs, u.pcomprz = :pComPrz,           '+
                               '                      u.pcomvis = :pComVis, u.rg = :RG,             '+
                               '                      u.senha = :senha, u.tipo = :tipo,             '+
                               '                      u.uf = :UF                                    '+
                               'WHERE u.codigo = :codigo;                                           ');

  query.ParamByName('codigo').AsInteger          := self.codigo;
  query.ParamByName('bairro').asString           := trim(self.bairro);
  query.ParamByName('banco').asInteger           := self.banco;
  query.ParamByName('cep').AsString              := trim(self.CEP);
  query.ParamByName('cidade').asString           := trim(self.cidade);
  query.ParamByName('codnivel').AsInteger        := self.nivel.Codigo;
  query.ParamByName('conta').asInteger           := self.conta;
  query.ParamByName('cpf').AsString              := trim(self.CPF);
  query.ParamByName('dtaber').AsDateTime         := self.dtAber;
  query.ParamByName('dtent').asDateTime          := self.dtEnt;
  query.ParamByName('dtnasc').asDateTime         := self.dtNasc;
  query.ParamByName('dtsaida').AsDateTime        := self.dtSaida;
  query.ParamByName('endereco').AsString         := trim(self.endereco);
  query.ParamByName('flag').asString             := trim(self.bloqueado);
  query.ParamByName('fone1').AsString            := trim(self.fone1);
  query.ParamByName('fone2').asString            := trim(self.fone2);
  query.ParamByName('fone3').asString            := trim(self.fone3);
  query.ParamByName('logado').AsBoolean          := self.flogado;
  query.ParamByName('obs').AsString              := trim(self.obs);
  query.ParamByName('nome').asString             := trim(self.nome);
  query.ParamByName('pcomprz').asFloat           := self.pComPrz;
  query.ParamByName('pcomvis').AsFloat           := self.pComVis;
  query.ParamByName('rg').asString               := trim(self.RG);
  query.ParamByName('senha').AsString            := trim(self.senha);
  query.ParamByName('tipo').asString             := trim(self.tipo);
  query.ParamByName('UF').AsString               := trim(self.UF);

  query.ExecSQL;

  freeAndNil(query);
end;

function TUsuario.RetornaNome: String;
begin
   result := Trim(self.nome); 
end;

end.

