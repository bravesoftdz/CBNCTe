unit uLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TfrmLog = class(TForm)
    m100: TRichEdit;
    Panel1: TPanel;
    btCancelar: TBitBtn;
    procedure btCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private

  public
    procedure preencheLog(RE :TRichEdit);
  end;

var
  frmLog: TfrmLog;

implementation

{$R *.dfm}

procedure TfrmLog.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLog.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Escape then
    btCancelar.Click;
end;

procedure TfrmLog.preencheLog(RE: TRichEdit);
var i :integer;
begin
  SendMessage(RE.Handle, EM_LIMITTEXT, 0, $FFFFFF);

  for i := 0 to RE.Lines.Count - 1 do begin

    if (i mod 2) <> 0 then
      m100.SelAttributes.Color := $00411417;

      m100.Lines.Add(RE.Lines.Strings[i]);

  end;

end;

end.
