unit frameBuscaCondutor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, FocusEdit, MDOQuery, DB, DBClient;

type
  TBuscaCondutor = class(TFrame)
    StaticText1: TStaticText;
    edtCodigo: TFocusEdit;
    SpbBusca: TBitBtn;
    procedure SpbBuscaClick(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodigoChange(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
  private
   Fcds :TClientDataSet;
   Fnome :String;
   FCPF  :String;

    function GetCds :TClientDataSet;

    function buscaCondutor :Boolean;
    procedure pesquisa;

    procedure SetCodigo(const Value: Integer);
  public
    procedure limpa;

    property codigo     :Integer        write SetCodigo;
    property nome       :String         read FNome;
    property cpf        :String         read FCPF;
    property cds        :TClientDataSet read getCds;
  end;

implementation

uses Modulo, funcoes_cte;

{$R *.dfm}

{ TBuscaCondutor }

function TBuscaCondutor.buscaCondutor: Boolean;
var qry :TMDOquery;
begin
  result := false;
  qry := dm.GetQueryInstance('select codigo, nome, cpf from Condutores where codigo = :codigo');
  qry.ParamByName('codigo').AsInteger := StrToInt(edtCodigo.Text);
  qry.Open;

  if not qry.IsEmpty then
    begin
      edtCodigo.Text := qry.fieldByName('codigo').AsString;
      self.Fcds.Append;
      self.Fcds.FieldByName('código').AsInteger := qry.fieldByName('codigo').AsInteger;
      self.Fcds.FieldByName('condutor').AsString    := qry.fieldByName('nome').AsString;
      self.Fcds.FieldByName('cpf').AsString     := qry.fieldByName('cpf').AsString;
      self.Fcds.Post;
      result := true;
    end
  else
    edtCodigo.Clear;

  qry.Free;
  qry := nil;
end;

function TBuscaCondutor.GetCds: TClientDataSet;
begin
  Result := self.Fcds;
end;

procedure TBuscaCondutor.limpa;
begin
  if Fcds.Active then  Fcds.EmptyDataSet;
  edtCodigo.Clear;
  FNome := '';
  FCPF  := '';
end;

procedure TBuscaCondutor.pesquisa;
begin

  Fcds.Data :=  TClientDataSet(PesquisaSimples('SELEct Codigo "Código", Nome "Condutor", CPF from condutores order by 1'
                                               , true, 800, 500)).Data;
  if cds = nil then
    exit;

  edtCodigo.Text :=  Fcds.Fields[0].AsString;
end;

procedure TBuscaCondutor.SetCodigo(const value: integer);
begin
  edtCodigo.Text := intToStr(value);

  if (edtCodigo.Text <> '')and(edtCodigo.Text <> '0') then
    buscaCondutor;
end;

procedure TBuscaCondutor.SpbBuscaClick(Sender: TObject);
begin
  pesquisa;

  Press(VK_TAB);
end;

procedure TBuscaCondutor.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
   begin
     if not buscaCondutor then
          pesquisa;
     Press(VK_TAB);     
   end;
end;

procedure TBuscaCondutor.edtCodigoChange(Sender: TObject);
begin
  if trim(edtCodigo.Text) = '' then
    edtCodigo.Text := '0';
end;

procedure TBuscaCondutor.FrameEnter(Sender: TObject);
begin
  if not assigned(Fcds) then begin

    Fcds := TClientDataSet.Create(self);
    Fcds.Close;
    Fcds.FieldDefs.Clear;
    Fcds.FieldDefs.add('CÓDIGO',ftInteger);
    Fcds.FieldDefs.add('Condutor',ftString,50);
    Fcds.FieldDefs.add('CPF',ftString,11);
    Fcds.CreateDataSet;
  end;
end;

end.
