unit uFrameCidade2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, funcoes_cte, 
  Dialogs, StdCtrls, Buttons, FocusEdit, Db, MDOQuery, Modulo, DBClient;

type
  TFrameCidade2 = class(TFrame)
    edCidade: TFocusEdit;
    Label1: TLabel;
    edestado: TFocusEdit;
    edCodigoMunicipio: TFocusEdit;
    SpbBusca: TBitBtn;
    procedure SpbBuscaClick(Sender: TObject);
    procedure edCodigoMunicipioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCodigoMunicipioChange(Sender: TObject);

  private
    function buscaMunicipio :Boolean;
    procedure pesquisa;

    procedure SetCodMun(const value:string);

  public
    procedure limpa;

    property codMun :string write SetCodMun;
  end;

implementation

{$R *.dfm}

function TFrameCidade2.buscaMunicipio :Boolean;
var qry :TMDOquery;
begin
  result := false;
  qry := dm.GetQueryInstance('select nome, coduf, codigo from municipios where codigo = :cod');
  qry.ParamByName('cod').AsInteger := StrToInt(edCodigoMunicipio.Text);
  qry.Open;

  if not qry.IsEmpty then
    begin
      edCidade.Text := qry.fieldByName('nome').AsString;
      edestado.Text := qry.fieldByName('coduf').AsString;
      result := true;
    end;

  qry.Free;
  qry := nil;  
end;

procedure TFrameCidade2.pesquisa;
var lista : TDataSet;
begin
  lista:=  PesquisaSimples('select nome, coduf, codigo from municipios order by 3,2');
   if lista = nil then
    exit;

   edCidade.Text :=  TClientDataSet(lista).Fields[0].AsString;
   edestado.Text :=  TClientDataSet(lista).Fields[1].AsString;
   edCodigoMunicipio.Text :=  TClientDataSet(lista).Fields[2].AsString;
end;

procedure TFrameCidade2.SpbBuscaClick(Sender: TObject);
begin
  pesquisa;

  Press(VK_TAB);
end;

procedure TFrameCidade2.edCodigoMunicipioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
   begin
     if not buscaMunicipio then
          pesquisa;
     Press(VK_TAB);     
   end;
end;

procedure TFrameCidade2.SetCodMun(const value: string);
begin
  edCodigoMunicipio.Text := trim(value);

  if (edCodigoMunicipio.Text <> '')and(edCodigoMunicipio.Text <> '0') then
    buscaMunicipio;
end;

procedure TFrameCidade2.limpa;
begin
  edCodigoMunicipio.Clear;
  edCidade.Clear;
  edestado.Clear;
end;

procedure TFrameCidade2.edCodigoMunicipioChange(Sender: TObject);
begin
  if trim(edCodigoMunicipio.Text) = '' then
    edCodigoMunicipio.Text := '0';
end;

end.
