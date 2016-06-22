unit uConfigCte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, FocusMaskEdit, Modulo, Buttons, ACBrCTe, funcoes_cte;

type
  TfrmConfigCte = class(TForm)
    GroupBox1: TGroupBox;
    edtCertificado: TFocusMaskEdit;
    cbAmb: TComboBox;
    txt7: TStaticText;
    StaticText1: TStaticText;
    BitBtn1: TBitBtn;
    edtSenha: TFocusMaskEdit;
    lb: TStaticText;
    btCancelar: TBitBtn;
    btSalvar: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigCte: TfrmConfigCte;
  ACBrCTe1: TACBrCTe;

implementation

uses uDica, ACBrDFe;

{$R *.dfm}

procedure TfrmConfigCte.FormActivate(Sender: TObject);
begin
  edtCertificado.Text := dm.Parametro.Certificado;
  cbAmb.ItemIndex     := dm.Parametro.TipoAmbiente - 1;
  edtSenha.Text       := DesCrip(dm.Parametro.SenhaCertif);
end;

procedure TfrmConfigCte.BitBtn1Click(Sender: TObject);
begin
  ACBrCTe1 := TACBrCTe.Create(Self);
  edtCertificado.Text := ACBrCTe1.SSL.SelecionarCertificado;
end;

procedure TfrmConfigCte.btSalvarClick(Sender: TObject);
begin
  dm.Parametro.Certificado  := Trim(edtCertificado.Text);
  dm.Parametro.TipoAmbiente := cbAmb.ItemIndex + 1;
  dm.Parametro.SenhaCertif  := Crip(Trim(edtSenha.Text));
  dm.Parametro.salvar;
  Avisar('Salvo com sucesso!');
end;

procedure TfrmConfigCte.btCancelarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmConfigCte.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Escape then
    btCancelar.Click
  else if Key = Vk_F2 then
    btSalvar.Click;  
end;

procedure TfrmConfigCte.FormShow(Sender: TObject);
begin

  frmConfigCte.Top := (Screen.Height - Height) div 2;
  frmConfigCte.Left := (Screen.Width - Width) div 2;
end;

end.
