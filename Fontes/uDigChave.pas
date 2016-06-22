unit uDigChave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, funcoes_cte;

type
  TfrmDigChave = class(TForm)
    edtChave: TEdit;
    btnConfirma: TBitBtn;
    Label10: TLabel;
    btnCancela: TBitBtn;
    procedure edtChaveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    chave :String;
  end;

var
  frmDigChave: TfrmDigChave;

implementation

{$R *.dfm}

procedure TfrmDigChave.edtChaveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
    btnConfirma.Click
  else if Key = Vk_Escape then
    btnCancela.Click;  
end;

procedure TfrmDigChave.btnConfirmaClick(Sender: TObject);
begin
  if Length(trim(edtChave.Text)) <> 44 then
    begin
      avisar('Tamanho da chave inválido.');
      edtChave.SetFocus;
      exit;
    end;

  chave := trim(edtChave.Text);
  self.ModalResult := mrOk;
end;

procedure TfrmDigChave.FormCreate(Sender: TObject);
begin
  chave := '';
end;

procedure TfrmDigChave.btnCancelaClick(Sender: TObject);
begin
  self.ModalResult := mrCancel;
end;

end.
