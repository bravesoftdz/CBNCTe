unit uLocaliza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Funcoes_SGVE,
  MDOCustomDataSet, MDOTable;

type
  TFrm_Localiza = class(TForm)
    GroupBox1: TGroupBox;
    Eddesc: TEdit;
    DBGrid1: TDBGrid;
    dsLocaliza: TDataSource;
    Label1: TLabel;
    IBTlocaliza: TMDOTable;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure EddescChange(Sender: TObject);
    procedure EddescKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod : Integer;
  end;

var
  Frm_Localiza: TFrm_Localiza;

implementation

uses Modulo;

{$R *.dfm}

procedure TFrm_Localiza.DBGrid1DblClick(Sender: TObject);
begin
  Eddesc.Text := DBGrid1.Columns[0].Field.AsString;
  Cod := DBGrid1.Columns[0].Field.AsInteger;
  close;
end;

procedure TFrm_Localiza.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBGrid1DblClick(Sender);
end;

procedure TFrm_Localiza.EddescChange(Sender: TObject);
begin
  with DBGrid1.DataSource.DataSet do
    Locate(DBGrid1.Columns[1].FieldName,Eddesc.Text,[loCaseInsensitive, loPartialKey]);
end;

procedure TFrm_Localiza.EddescKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
   Close;
end;

procedure TFrm_Localiza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_Localiza.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If key = #27 Then
  begin
   Frm_Localiza.Tag := 1;  //relatorio de clientes
   Close;
  end;
end;
end.
