unit uPergunta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmPergunta = class(TForm)
    Shape1: TShape;
    btnNao: TBitBtn;
    lblMen: TLabel;
    btnSim: TBitBtn;
    Splitter3: TSplitter;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    procedure btnSimClick(Sender: TObject);
    procedure btnNaoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPergunta: TfrmPergunta;

implementation

{$R *.dfm}

procedure TfrmPergunta.btnSimClick(Sender: TObject);
begin
  self.ModalResult := mrOk;
end;

procedure TfrmPergunta.btnNaoClick(Sender: TObject);
begin
  self.ModalResult := mrCancel;
end;

procedure TfrmPergunta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
    btnnao.Click;

end;

end.
