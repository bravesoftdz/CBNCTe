unit uPesquisaSimples;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, DBMarcianoZebradoGrid, DB,
  Provider, DBClient, MDOCustomDataSet, MDOQuery, Buttons,
  DBMarcianoGrid;

type
  Tfrm_PesquisaSimples = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    QryPesquisa: TMDOQuery;
    cdsPesquisa: TClientDataSet;
    DataSetProvider: TDataSetProvider;
    DataSource: TDataSource;
    BitSelecionar: TBitBtn;
    Label1: TLabel;
    DBMarcianoGrid1: TDBMarcianoGrid;
    btCadNovo: TSpeedButton;
    cds: TClientDataSet;
    Label2: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ExecutaPesquisa;
    procedure c(Sender: TObject);
    procedure DBMarcianoGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btCadNovoClick(Sender: TObject);
    procedure DBMarcianoGrid1DblClick(Sender: TObject);
    procedure DBMarcianoGrid1DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BitSelecionarClick(Sender: TObject);
  private
    procedure adicionaRemove_campos;
  public
    sql              :String;
    multipla_selecao :Boolean;
  end;

var
  frm_PesquisaSimples: Tfrm_PesquisaSimples;

implementation

uses cadCli, funcoes_cte;

{$R *.dfm}

procedure Tfrm_PesquisaSimples.ExecutaPesquisa;
var i , j :integer;
begin
  try
    cdsPesquisa.Close;
    QryPesquisa.SQL.text := sql;
    cdsPesquisa.Open;

    cds.Data := cdsPesquisa.Data;
    cds.EmptyDataSet;

  Except
   On E: Exception Do
    begin
      Avisar(E.Message);
    end;
End;
end;

procedure Tfrm_PesquisaSimples.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #27 then
    close;
  if Key = #13 then
    BitSelecionar.Click;
end;

procedure Tfrm_PesquisaSimples.c(Sender: TObject);
begin
  DBMarcianoGrid1.SetFocus;
  if UpperCase(copy(Sql,pos('from',sql)+5,8)) = 'CLIENTES' then
    btCadNovo.Visible := true;
end;

procedure Tfrm_PesquisaSimples.DBMarcianoGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
   BitSelecionar.Click;
end;

procedure Tfrm_PesquisaSimples.btCadNovoClick(Sender: TObject);
begin
    frmCadCli := TfrmCadCli.Create(Self);
    frmCadCli.ShowModal;
    frmCadCli.Release;
    frmCadCli := nil;
    self.ExecutaPesquisa;
end;

procedure Tfrm_PesquisaSimples.DBMarcianoGrid1DblClick(Sender: TObject);
begin
  adicionaRemove_campos;
end;

procedure Tfrm_PesquisaSimples.adicionaRemove_campos;
var i:integer;
begin
  if cdsPesquisa.IsEmpty then Exit;
  
  if not self.multipla_selecao then begin
    cds.EmptyDataSet;
  end;

  if cds.Locate(cdsPesquisa.Fields[0].FieldName, cdsPesquisa.Fields[0].AsVariant, []) then
    cds.Delete
  else begin
    cds.Append;

    for i := 0 to cdsPesquisa.Fields.Count - 1 do
      cds.Fields[i].AsVariant := cdsPesquisa.Fields[i].AsVariant;

    cds.Post;
  end;

  DBMarcianoGrid1.Repaint;
end;

procedure Tfrm_PesquisaSimples.DBMarcianoGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  if cds.Locate(cds.Fields[0].FieldName, cdsPesquisa.Fields[0].AsVariant, []) then begin
    TDBMarcianoGrid(Sender).Canvas.FillRect(Rect);
    TDBMarcianoGrid(Sender).Canvas.Brush.Color := $008EBA72; // coloque aqui a cor desejada
  end;

  TDBMarcianoGrid(Sender).Canvas.FillRect(Rect);
  TDBMarcianoGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure Tfrm_PesquisaSimples.BitSelecionarClick(Sender: TObject);
begin
  if cds.IsEmpty then
    adicionaRemove_campos;
end;

end.
