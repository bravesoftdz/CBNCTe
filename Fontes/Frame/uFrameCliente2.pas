unit uFrameCliente2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, FocusEdit,DB, funcoes_cte, DBClient;

type
  TFrameCliente2 = class(TFrame)
    StaticText1: TStaticText;
    edCodigo: TFocusEdit;
    SpbBusca: TBitBtn;
    edCliente: TFocusEdit;
    procedure SpbBuscaClick(Sender: TObject);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FCampos : TDataSet;

    procedure Limpar;
    procedure TrazDados(Codigo:Integer);

    procedure setCampos(const value :TDataSet);
  public

    property campos :TDataSet read FCampos write setCampos;
  end;

implementation

{$R *.dfm}

procedure TFrameCliente2.SpbBuscaClick(Sender: TObject);
begin
   campos :=  PesquisaSimples('select c.codigo, c.nome, c.nomefan, c.cpf, c.rg, c.fone1, c.ender, c.numero, c.bairro, c.cep, '+
                              'c.codcid, c.email, c.fone2, c.celular from clientes c where  c.flag <> ''B'' order by 1',false,850);
   if not Assigned(campos) then
    exit;

   edCodigo.Text  := TClientDataSet(campos).Fields[0].text;
   edCliente.Text := TClientDataSet(campos).Fields[1].text;
   Press(VK_TAB);
end;

procedure TFrameCliente2.edCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_return then
 begin
   campos := PesquisaSimplesLocate('select c.codigo, c.nome, c.nomefan, c.cpf, c.rg, c.fone1, c.ender, c.numero, c.bairro, c.cep, '+
                                   'c.codcid, c.email, c.fone2, c.celular from clientes c where  c.flag <> ''B'' and c.codigo = :param1 order by 1' ,edCodigo.Text);
   if trim(TClientDataSet(campos).Fields[0].Text) = '' then
   begin
     SpbBuscaClick(self);
     exit;
   end;
   edCodigo.Text := TClientDataSet(campos).Fields[0].TEXT;
   edCliente.Text := TClientDataSet(campos).Fields[1].TEXT;
   Press(VK_TAB);
 end;

end;

procedure TFrameCliente2.Limpar;
begin
   edCodigo.Text := '0';
   edCliente.Clear;
end;

procedure TFrameCliente2.TrazDados(Codigo: Integer);
var Campos : TDataSet;
begin
   campos:= PesquisaSimplesLocate('select c.codigo, c.nome, c.nomefan, c.cpf, c.rg, c.fone1, c.ender, c.numero, c.bairro, c.cep, '+
                                  'c.codcid, c.email, c.fone2, c.celular from clientes c where  c.flag <> ''B'' and c.codigo = :param1 order by 1' ,edCodigo.Text);
   if trim(TClientDataSet(campos).Fields[0].Text) = '' then
     exit;
   edCodigo.Text := TClientDataSet(campos).Fields[0].TEXT;
   edCliente.Text := TClientDataSet(campos).Fields[1].TEXT;
end;

procedure TFrameCliente2.setCampos(const value: TDataSet);
begin
  FCampos := Value;
end;

end.
