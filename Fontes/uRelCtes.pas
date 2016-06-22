unit uRelCtes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, uframePeriodo, ExtCtrls, DB,
  MDOCustomDataSet, MDOQuery, DBCtrls, funcoes_cte;

type
  TfrmRelCtes = class(TForm)
    GroupBox1: TGroupBox;
    RadioGroup1: TRadioGroup;
    framePeriodo1: TframePeriodo;
    Label1: TLabel;
    Label2: TLabel;
    qryPlaca: TMDOQuery;
    dsPlaca: TDataSource;
    GroupBox3: TGroupBox;
    Campo: TLabel;
    cbOrdem: TComboBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DBLPlaca: TDBLookupComboBox;
    rgTipo: TRadioGroup;
    btImprimir: TBitBtn;
    btCancelar: TBitBtn;
    Label4: TLabel;
    Shape1: TShape;
    procedure btCancelarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCtes: TfrmRelCtes;

implementation

uses uFortesRelCtes;

{$R *.dfm}

procedure TfrmRelCtes.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRelCtes.btImprimirClick(Sender: TObject);
begin
  fortesRelCTes := TfortesRelCTes.Create(Self);
  fortesRelCTes.dataInicial := StrToDate(framePeriodo1.edtDtI.Text);
  fortesRelCTes.dataFinal   := StrToDate(framePeriodo1.edtDtF.Text);
  fortesRelCTes.tipo        := intToStr(rgTipo.ItemIndex);

  if trim(cbOrdem.Text) = 'Nº CTe' then
    fortesRelCTes.ordem       := 'NumCte'
  else
    fortesRelCTes.ordem       := trim(cbOrdem.Text);

  if trim(DBLPlaca.Text) <> '< todas >' then
    fortesRelCTes.Placa       := DBLPlaca.Text;

  case RadioGroup1.ItemIndex of
   0: fortesRelCTes.status := '100';
   1: fortesRelCTes.status := '101';
   2: fortesRelCTes.status := '321';
   3: fortesRelCTes.status := '102';
   4: fortesRelCTes.status := '1';
  end;

  fortesRelCTes.ExecutaReport;

  fortesRelCTes.Release;
end;  
procedure TfrmRelCtes.FormActivate(Sender: TObject);
var data :string;
begin
  data := '01/'+FormatDateTime('mm/yyyy',Date);
  framePeriodo1.edtDtI.Text := data;
  framePeriodo1.edtDtF.Text := DateToStr(Date);
end;

procedure TfrmRelCtes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Escape then
    btCancelar.Click
  else if Key = Vk_F2 then
    btImprimir.Click
  else if key = VK_Return then
    press(VK_TAB);
end;

procedure TfrmRelCtes.FormShow(Sender: TObject);
begin
  qryPlaca.Close;
  qryPlaca.Open;

  qryPlaca.Last;
  qryPlaca.First;

  if not qryPlaca.IsEmpty then
    DBLPlaca.KeyValue := 0;

  frmRelCtes.Top := (Screen.Height - Height) div 2;
  frmRelCtes.Left := (Screen.Width - Width) div 2;
end;

end.
