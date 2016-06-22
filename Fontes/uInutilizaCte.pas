unit uInutilizaCte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit, FocusCurrEdit,
  Buttons, FUNCOES_cte;

type
  TfrmInutilizaCte = class(TForm)
    edtAno: TFocusCurrEdit;
    edtModelo: TFocusCurrEdit;
    edtSerie: TFocusCurrEdit;
    edtNumIni: TFocusCurrEdit;
    edtNumFin: TFocusCurrEdit;
    memoJust: TMemo;
    Label9: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label5: TLabel;
    btConfirma: TBitBtn;
    btCancela: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInutilizaCte: TfrmInutilizaCte;

implementation

{$R *.dfm}

procedure TfrmInutilizaCte.FormActivate(Sender: TObject);
begin
  edtAno.Value         := strToInt(FormatDateTime('yyyy',Date));
  edtModelo.Value      := 57;
  edtSerie.Value       := 001;
end;

procedure TfrmInutilizaCte.btConfirmaClick(Sender: TObject);
begin
  if (edtModelo.Value <= 0) or (edtSerie.Value <= 0) or (edtAno.Value <=0)
  or (edtNumIni.Value <=0) or (edtNumFin.Value < edtNumIni.Value) or (Length(edtAno.Text)<4)
  or (Trim(memoJust.Text) = '') then
   begin
     Avisar('Favor preencher devidamente todos os campos!');
     exit;
   end
  else begin
    if Pergunta('ATENÇÃO! Está prestes a inutilizar os CT-es do nº '+edtNumIni.Text+' ao '+edtNumFin.Text +#13#10+
                'No total, serão inutilizados '+intToStr(edtNumFin.AsInteger - edtNumIni.AsInteger)+' CT-es, confirma?') then
      Self.ModalResult := mrOk;
  end;
end;

procedure TfrmInutilizaCte.btCancelaClick(Sender: TObject);
begin
  self.ModalResult := mrCancel;
end;

procedure TfrmInutilizaCte.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
    Press(VK_TAB)
  else if key = VK_Escape then
    btCancela.Click;  
end;

end.
