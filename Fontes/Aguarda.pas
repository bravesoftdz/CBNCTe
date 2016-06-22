unit Aguarda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, XP_Form, ComCtrls, pngimage, JvGIF, ACBrGIF,
  Gradpan;

type
  TfrmAguarda = class(TForm)
    imageSuperiorEsquerdo: TImage;
    imageInferiorReto2: TImage;
    lblMen: TLabel;
    Animate1: TAnimate;
    Timer1: TTimer;
    linhaesquerda: TImage;
    imageInferiorEsquerdo: TImage;
    Image2: TImage;
    imageSuperDireito: TImage;
    linhadireita: TImage;
    imageInferiorDireito: TImage;
    topo_cor: TGradPan;
    Image1: TImage;
    ACBrGIF1: TACBrGIF;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AnStart(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAguarda: TfrmAguarda;

implementation

{$R *.dfm}

procedure TfrmAguarda.Timer1Timer(Sender: TObject);
begin
  Application.ProcessMessages;
end;

procedure TfrmAguarda.FormShow(Sender: TObject);
begin
  //ShowMessage(IntToStr(lblMen.Width));
  Animate1.Active := True;
  Application.ProcessMessages;
  ACBrGIF1.Filename := ExtractFilePath(Application.ExeName)+'gifLoading.gif';
  ACBrGIF1.Active := True;

  //lblMen.ClientWidth := Length(lblMen.Caption);
end;

procedure TfrmAguarda.FormActivate(Sender: TObject);
begin
  Application.ProcessMessages;
end;

procedure TfrmAguarda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.ProcessMessages;
  Animate1.Active := False;
end;

procedure TfrmAguarda.AnStart(Sender: TObject);
begin
  Application.ProcessMessages;
end;


end.
