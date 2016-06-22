unit Transportadora;

interface

Type
  TTransportadora = class
  private
    Codigo  : Integer;
    Nome    : String;
    Placa   : String;
    Endereco: String;
    Cidade  : String;
    Uf      : String;
  public
    function  getCodigo: Integer;
    procedure setCodigo(nCod: Integer);

    function  getNome: String;
    procedure setNome(cNom: String);

    function  getPlaca: String;
    procedure setPlaca(cPlaca: String);

    function  getEndereco: String;
    procedure setEndereco(cEnder: String);

    function  getCidade: String;
    procedure setCidade(cCid: String);

    function  getUf: String;
    procedure setUf(cUf: String);

    class function getFromCodigo(nCod: Integer): TTransportadora;
  end;

implementation

uses Modulo, MDOQuery, SysUtils, Forms;

function TTransportadora.getCodigo: Integer;
begin
  Result := self.Codigo;
end;

function TTransportadora.getNome: String;
begin
  Result := self.Nome;
end;

procedure TTransportadora.setCodigo(nCod: Integer);
begin
  self.Codigo := nCod;
end;

procedure TTransportadora.setNome(cNom: String);
begin
  self.Nome := cNom;
end;

class function TTransportadora.getFromCodigo(nCod: Integer): TTransportadora;
var qry: TMDOQuery;
    t  : TTransportadora;
begin
  t := Nil;

  qry          := TMDOQuery.Create(Application);
  qry.Database := dm.DataBase;
  qry.SQL.Add('Select * From Transportadora Where CODIGO = ' + IntToStr(nCod));
  qry.Open;

  If Not qry.IsEmpty Then
    begin
      t := TTransportadora.Create;
      t.setCodigo(qry.FieldByName('CODIGO').AsInteger);
      t.setNome(qry.FieldByName('DESCRICAO').AsString);
      t.setPlaca(qry.FieldByName('PLACA').AsString);
      t.setEndereco(qry.FieldByName('ENDERECO').AsString);
      t.setCidade(qry.FieldByName('CIDADE').AsString);
      t.setUf(qry.FieldByName('ESTADO').AsString);
    end
  else
    begin
      t := TTransportadora.Create;
      t.setCodigo(0);
      t.setNome('');
      t.setPlaca('');
      t.setEndereco('');
      t.setCidade('');
      t.setUf('');
    end;


  qry.Close;
  qry.Free;

  Result := t;
end;

function TTransportadora.getPlaca: String;
begin
  Result := self.Placa;
end;

procedure TTransportadora.setPlaca(cPlaca: String);
begin
  self.Placa := cPlaca;
end;

function TTransportadora.getCidade: String;
begin
  Result := self.Cidade;
end;

function TTransportadora.getEndereco: String;
begin
  Result := self.Endereco;
end;

function TTransportadora.getUf: String;
begin
  Result := self.Uf;
end;

procedure TTransportadora.setCidade(cCid: String);
begin
  self.Cidade := cCid;
end;

procedure TTransportadora.setEndereco(cEnder: String);
begin
  self.Endereco := cEnder;
end;

procedure TTransportadora.setUf(cUf: String);
begin
  self.Uf := cUf;
end;

end.
