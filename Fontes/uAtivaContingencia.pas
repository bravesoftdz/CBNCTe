unit uAtivaContingencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, ComCtrls, StdCtrls, Funcoes_cte;

type
  TfrmAtivaContingencia = class(TForm)
    GroupBox1: TGroupBox;
    memMotivo: TMemo;
    Label1: TLabel;
    dtpData: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    dtpHora: TDateTimePicker;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtivaContingencia: TfrmAtivaContingencia;

implementation

{$R *.dfm}

procedure TfrmAtivaContingencia.SpeedButton1Click(Sender: TObject);
begin
  self.ModalResult := mrCancel;
end;

procedure TfrmAtivaContingencia.SpeedButton2Click(Sender: TObject);
begin
  if dtpData.DateTime < (Date - 30) then begin
    Avisar('Informe a data de entrada em contingência');
    dtpData.SetFocus;
    exit;
  end
  else if TimeToStr(dtpHora.Time) = '00:00:00' then begin
    Avisar('Informe a hora de entrada em contingência');
    dtpHora.SetFocus;
    exit;
  end
  else if (memMotivo.Text) = '' then begin
    Avisar('Informe o motivo da entrada em contingência');
    memMotivo.SetFocus;
    exit;
  end;
  
  self.ModalResult := mrOk;
end;

procedure TfrmAtivaContingencia.FormShow(Sender: TObject);
begin
  dtpData.DateTime := 0;
  dtpHora.Time     := 0;
end;

end.
