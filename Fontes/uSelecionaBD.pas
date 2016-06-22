unit uSelecionaBD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, funcoes_cte, ExtCtrls, pngimage;

type
  TfrmSelecionaBD = class(TForm)
    edtCaminho: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Shape1: TShape;
    btnCancela: TSpeedButton;
    btnConfirma: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionaBD: TfrmSelecionaBD;

implementation

{$R *.dfm}

procedure TfrmSelecionaBD.SpeedButton1Click(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a Base de Dados';
  OpenDialog1.InitialDir := PathSis+'\dados\';
  OpenDialog1.Execute;
  edtCaminho.Text :=  OpenDialog1.FileName;
end;

procedure TfrmSelecionaBD.btnCancelaClick(Sender: TObject);
begin
  self.ModalResult := mrCancel;
end;

procedure TfrmSelecionaBD.btnConfirmaClick(Sender: TObject);
begin
  if trim(edtCaminho.Text) = '' then
    avisar('Nenhum caminho foi informado!')
  else
    self.ModalResult := mrOk;
end;

procedure TfrmSelecionaBD.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_escape then
    btnCancela.Click;
end;

end.
