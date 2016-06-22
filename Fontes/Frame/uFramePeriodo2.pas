unit uFramePeriodo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFramePeriodo2 = class(TFrame)
    eddi: TDateTimePicker;
    eddf: TDateTimePicker;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure getData;
  end;

implementation

{$R *.dfm}

procedure TFramePeriodo2.getData;
var dia, mes, ano : word;
    data: Tdatetime;
begin
 eddi.Date := Date;
 eddf.Date := Date;
end;

end.
