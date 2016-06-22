unit ConfFinPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, XP_Form, Buttons, pngimage;

type
  TfrmConfFinPed = class(TForm)
    Image3: TImage;
    Image1: TImage;
    Image2: TImage;
    btnInc: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Image4: TImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfFinPed: TfrmConfFinPed;

implementation

{$R *.dfm}

procedure TfrmConfFinPed.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = 27 Then
    begin
      Key := 0;
      BitBtn2.Click;
    end;
end;

end.
