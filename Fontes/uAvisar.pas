unit uAvisar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmAvisar = class(TForm)
    panCorpo: TPanel;
    Shape3: TShape;
    lblMem: TMemo;
    panRodape: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    btnOk: TBitBtn;
    timEspera: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure timEsperaTimer(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    espera :Integer;
    
    procedure ajustaTamanho;
  public
    constructor Create(AOwner: TComponent; mensagem: String; const tempoEspera:Integer = 0); overload; virtual;
  end;

var
  frmAvisar: TfrmAvisar;

implementation

{$R *.dfm}

{ TfrmAvisar }

procedure TfrmAvisar.ajustaTamanho;
begin
  // 2 é a qtd de linhas padrão
  // 13 é a altura de cada linha
  self.Height := self.Height + ((lblMem.Lines.Count - trunc(lblMem.Height/13)) * 13);
end;

constructor TfrmAvisar.Create(AOwner: TComponent; mensagem: String;
  const tempoEspera: Integer);
begin
  self.Create(aOwner);
  self.lblMem.Text := mensagem;
  espera := tempoEspera;
end;

procedure TfrmAvisar.FormCreate(Sender: TObject);
begin
  if lblMem.Lines.Count > 2 then
    ajustaTamanho;

  if espera > 0 then begin
    timEspera.Enabled  := true;
    btnOk.Caption := '<ENTER> OK ['+intToStr(espera)+']';
  end;

end;

procedure TfrmAvisar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
    btnOk.Click;
end;

procedure TfrmAvisar.timEsperaTimer(Sender: TObject);
begin
  Dec(espera);
  btnOk.Caption := '<ENTER> OK ['+intToStr(espera)+']';
  if espera = 0 then
    btnOk.Click;
end;

procedure TfrmAvisar.btnOkClick(Sender: TObject);
begin
  Close;
end;

end.
