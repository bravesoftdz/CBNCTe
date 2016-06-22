unit uPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, funcoes_cte;

type
  TFPadrao = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Mensagem(str : String);
  end;

var
  FPadrao: TFPadrao;

implementation

{$R *.dfm}

procedure TFPadrao.Mensagem(str: String);
begin
    Avisar(str);
end;

procedure TFPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
    Press(VK_TAB)
  else if Key = VK_ESCAPE then
    Self.Close;
end;

end.
