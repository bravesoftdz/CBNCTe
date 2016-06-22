unit uAndreParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB,uPadrao;

type
  TfrmAndreParam = class(TFPadrao)
    ds: TDataSource;
    grid: TDBGrid;
    procedure gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAndreParam: TfrmAndreParam;

implementation

{$R *.dfm}

procedure TfrmAndreParam.gridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_Return) and ( ds.DataSet.State  in ([dsEdit,dsInsert])  )then
    ds.DataSet.Post;
end;

end.
