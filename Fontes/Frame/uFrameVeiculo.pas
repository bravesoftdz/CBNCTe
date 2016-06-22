unit uFrameVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, FocusEdit, DB, funcoes_cte, DBClient, MDOquery;

type
  TFrameVeiculo = class(TFrame)
    edCodigo: TFocusEdit;
    StaticText1: TStaticText;
    SpbBusca: TBitBtn;
    edtPlaca: TEdit;
    StaticText2: TStaticText;
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpbBuscaClick(Sender: TObject);
    procedure edCodigoChange(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
  private
   Fcds :TClientDataSet;
    FCapM3: Integer;
    FCapKG: Integer;
    FTara: Integer;
    FtipoRodado: Integer;
    FtipoCarroceria: Integer;
    FUF :String;

    function GetCds :TClientDataSet;

    function buscaVeiculo :Boolean;
    procedure pesquisa;

    procedure SetCodigo(const Value: Integer);

  public
    procedure limpa;

    property codigo         :Integer        write SetCodigo;
    property cds            :TClientDataSet read getCds;
    property Tara           :Integer read FTara;
    property CapKG          :Integer read FCapKG;
    property CapM3          :Integer read FCapM3;
    property tipoRodado     :Integer read FtipoRodado;
    property tipoCarroceria :Integer read FtipoCarroceria;
    property UF             :String  read FUF;
  end;

implementation

uses Modulo;

{$R *.dfm}

{ TFrameVeiculo }

function TFrameVeiculo.buscaVeiculo: Boolean;
var qry :TMDOquery;
begin
  result := false;
  qry := dm.GetQueryInstance('select codigo, placa, tara, capacidade_KG CAPKG, capacidade_m3 CAPM3, rntrc, '+
                             ' tipo_rodado, tipo_carroceria, UF_VEICULO,                                   '+
                             ' RENAVAM, TIPO_VEICULO, TIPO_RODADO , TIPO_CARROCERIA, VEICULO_PROPRIO ,     '+
                             ' CPFCNPJ, IE, NOME_PROPRIETARIO, TIPO_PROPRIETARIO, UF                      '+
                             ' from veiculos where codigo = :codigo');
  qry.ParamByName('codigo').AsInteger := StrToInt(edCodigo.Text);
  qry.Open;

  if not qry.IsEmpty then
    begin
      edCodigo.Text   := qry.fieldByName('codigo').AsString;
      edtPlaca.Text   := qry.fieldByName('placa').AsString;
      FTara           := qry.fieldByName('tara').AsInteger;
      FCapKG          := qry.fieldByName('capKG').AsInteger;
      FCapM3          := qry.fieldByName('capm3').AsInteger;
      FtipoRodado     := qry.fieldByName('tipo_rodado').AsInteger;
      FtipoCarroceria := qry.fieldByName('tipo_carroceria').AsInteger;
      FUF             := qry.fieldByName('UF_VEICULO').AsString;

      if not assigned(FCds) then FrameEnter(nil);
      
      self.Fcds.Append;
      self.Fcds.FieldByName('codigo').AsInteger           := qry.fieldByName('codigo').AsInteger;
      self.Fcds.FieldByName('PLACA').AsString             := qry.fieldByName('PLACA').AsString;
      self.Fcds.FieldByName('TARA').AsInteger             := qry.fieldByName('TARA').AsInteger;
      self.Fcds.FieldByName('capacidade_KG').AsInteger    := qry.fieldByName('CAPKG').AsInteger;
      self.Fcds.FieldByName('capacidade_m3').AsInteger    := qry.fieldByName('CAPM3').AsInteger;
      self.Fcds.FieldByName('RNTRC').AsString             := qry.fieldByName('RNTRC').AsString;
      self.Fcds.FieldByName('UF_VEICULO').AsString        := qry.fieldByName('UF_VEICULO').AsString;
      self.Fcds.FieldByName('RENAVAM').AsString           := qry.fieldByName('RENAVAM').AsString;
      self.Fcds.FieldByName('TIPO_VEICULO').AsInteger     := qry.fieldByName('TIPO_VEICULO').AsInteger;
      self.Fcds.FieldByName('TIPO_RODADO').AsInteger      := qry.fieldByName('TIPO_RODADO').AsInteger;
      self.Fcds.FieldByName('TIPO_CARROCERIA').AsInteger  := qry.fieldByName('TIPO_CARROCERIA').AsInteger;
      self.Fcds.FieldByName('VEICULO_PROPRIO').AsString   := qry.fieldByName('VEICULO_PROPRIO').AsString;
      self.Fcds.FieldByName('CPFCNPJ').AsString           := qry.fieldByName('CPFCNPJ').AsString;
      self.Fcds.FieldByName('IE').AsString                := qry.fieldByName('IE').AsString;
      self.Fcds.FieldByName('UF').AsString                := qry.fieldByName('UF').AsString;
      self.Fcds.FieldByName('NOME_PROPRIETARIO').AsString := qry.fieldByName('NOME_PROPRIETARIO').AsString;
      self.Fcds.FieldByName('TIPO_PROPRIETARIO').AsString := qry.fieldByName('TIPO_PROPRIETARIO').AsString;
      self.Fcds.Post;
      result := true;
    end
  else
    limpa;

  qry.Free;
  qry := nil;
end;

procedure TFrameVeiculo.edCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
   begin
     if not buscaVeiculo then
          pesquisa;
     Press(VK_TAB);
   end;
end;

function TFrameVeiculo.GetCds: TClientDataSet;
begin
  Result := self.Fcds;
end;

procedure TFrameVeiculo.limpa;
begin
  if assigned(Fcds) and (Fcds.Active) then  Fcds.EmptyDataSet;
  edCodigo.Clear;
  edtPlaca.Clear;
  FTara  := 0;
  FCapM3 := 0;
  FCapKG := 0;
end;

procedure TFrameVeiculo.pesquisa;
begin
  Fcds := TClientDataSet.Create(self);

  Fcds.Data :=  TClientDataSet(PesquisaSimples('select v.codigo, v.placa,tara, capacidade_KG, capacidade_m3, rntrc, UF_VEICULO, '+
                                               ' RENAVAM, TIPO_VEICULO, TIPO_RODADO , TIPO_CARROCERIA, VEICULO_PROPRIO ,        '+
                                               ' CPFCNPJ, IE, NOME_PROPRIETARIO, TIPO_PROPRIETARIO, UF                         '+
                                               ' from veiculos v '
                                               , true, 800, 500)).Data;
  if Fcds = nil then
    exit;

  edCodigo.Text :=  Fcds.Fields[0].AsString;
  edtPlaca.Text :=  Fcds.Fields[1].AsString;
end;

procedure TFrameVeiculo.SetCodigo(const Value: Integer);
begin
  edCodigo.Text := intToStr(value);

  if (edCodigo.Text <> '')and(edCodigo.Text <> '0') then
    buscaVeiculo;
end;

procedure TFrameVeiculo.SpbBuscaClick(Sender: TObject);
begin
  pesquisa;

  Press(VK_TAB);
end;

procedure TFrameVeiculo.edCodigoChange(Sender: TObject);
begin
  if trim(edCodigo.Text) = '' then
    edCodigo.Text := '0';
end;

procedure TFrameVeiculo.FrameEnter(Sender: TObject);
begin
  if not assigned(Fcds) then begin

    Fcds := TClientDataSet.Create(self);
    Fcds.Close;
    Fcds.FieldDefs.Clear;
    Fcds.FieldDefs.add('CODIGO',ftInteger);
    Fcds.FieldDefs.add('PLACA',ftString,7);
    Fcds.FieldDefs.add('TARA',ftInteger);
    Fcds.FieldDefs.add('capacidade_KG',ftInteger);
    Fcds.FieldDefs.add('capacidade_m3',ftInteger);
    Fcds.FieldDefs.add('RNTRC',ftString,14);
    Fcds.FieldDefs.add('UF_VEICULO',ftString,2);
    Fcds.FieldDefs.add('RENAVAM', ftString,14);
    Fcds.FieldDefs.add('TIPO_VEICULO', ftInteger);
    Fcds.FieldDefs.add('TIPO_RODADO', ftInteger);
    Fcds.FieldDefs.add('TIPO_CARROCERIA', ftInteger);
    Fcds.FieldDefs.add('VEICULO_PROPRIO', ftString, 1);
    Fcds.FieldDefs.add('CPFCNPJ', ftString, 14);
    Fcds.FieldDefs.add('IE', ftString, 12);
    Fcds.FieldDefs.add('UF', ftString, 2);    
    Fcds.FieldDefs.add('NOME_PROPRIETARIO', ftString, 100);
    Fcds.FieldDefs.add('TIPO_PROPRIETARIO', ftInteger);
    Fcds.CreateDataSet;
  end;
end;

end.
