unit uGeradorXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, DB, Grids, DBGrids, Provider, DBClient,
  MDOCustomDataSet, MDOQuery, uFrmPer, FileCtrl, DBMarcianoZebradoGrid,
  DBMarcianoGrid, funcoes_cte, AppEvnts;

type
  TfrmGeradorXML = class(TForm)
    GroupBox1: TGroupBox;
    qryCtes: TMDOQuery;
    dsCtes: TDataSource;
    cdsCtes: TClientDataSet;
    cdsCtesCODIGO: TIntegerField;
    cdsCtesNRCTE: TIntegerField;
    cdsCtesDATA: TDateField;
    cdsCtesRAZDES: TStringField;
    cdsCtesVTPREST: TBCDField;
    dspCtes: TDataSetProvider;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    frmPer1: TfrmPer;
    GroupBox2: TGroupBox;
    btGerar: TSpeedButton;
    edtCaminho: TEdit;
    btSelecionar: TSpeedButton;
    GridCTes: TDBMarcianoGrid;
    cdsCtesCARGA: TStringField;
    cdsCtesXML: TMemoField;
    ApplicationEvents1: TApplicationEvents;
    lbSelTodos: TLabel;
    procedure btSelecionarClick(Sender: TObject);
    procedure frmPer1EdDataFimExit(Sender: TObject);
    procedure GridCTesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridCTesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btGerarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure lbSelTodosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbSelTodosMouseLeave(Sender: TObject);
    procedure lbSelTodosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeradorXML: TfrmGeradorXML;

implementation

{$R *.dfm}

procedure TfrmGeradorXML.btSelecionarClick(Sender: TObject);
var S: string;
begin
  SelectDirectory('Selecionar Pasta','',S);
  edtCaminho.Text := S;
end;

procedure TfrmGeradorXML.frmPer1EdDataFimExit(Sender: TObject);
begin
  frmPer1.EdDataFimExit(Sender);
  cdsCtes.Close;
  qryCtes.ParamByName('dti').AsDateTime := frmPer1.dataIni;
  qryCtes.ParamByName('dtf').AsDateTime := frmPer1.dataFim;
  cdsCtes.Open;

  if cdsCtes.IsEmpty then
    begin
      Avisar('Nenhum registro encontrado no período especificado.');
      frmPer1.EdDataIni.SetFocus;
    end;
end;

procedure TfrmGeradorXML.GridCTesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Space) and (not cdsCtes.IsEmpty) then
    begin
      cdsCtes.Edit;

      if (cdsCtesCARGA.AsString <> 'X') then
        cdsCtesCARGA.AsString := 'X'
      else
        cdsCtesCARGA.AsString := '';

      cdsCtes.Post;
    end;
end;

procedure TfrmGeradorXML.GridCTesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if cdsCtesCARGA.AsString = 'X' then
    begin
      GridCTes.Canvas.Font.Color := $00FFFDF9;
      GridCTes.Canvas.Brush.Color := $00AD8361;
      GridCTes.DefaultDrawDataCell(Rect, GridCTes.columns[datacol].field, State);
    end;  
end;

procedure TfrmGeradorXML.btGerarClick(Sender: TObject);
var memo :TMemo;
begin
 try
   if trim(edtCaminho.Text) = '' then
     begin
       Avisar('Favor, selecionar o diretório de destino.');
       exit;
     end;
     
   if not DirectoryExists(trim(edtCaminho.Text)) then
     begin
       Avisar('Caminho especificado inválido!');
       exit;
     end;

   cdsCtes.Filtered := false;
   cdsCtes.Filter   := 'CARGA = ''X''';
   cdsCtes.Filtered := true;

   if cdsCtes.IsEmpty then
     begin
       cdsCtes.Filtered := false;
       cdsCtes.Open;
       avisar('Para geração selecione ao menos uma CTe.');
       GridCTes.SetFocus;
       exit;
     end;

   memo := TMemo.Create(self);
   cdsCtes.First;

   while not cdsCtes.Eof do begin
     memo.Text := cdsCtesXML.AsString;
     memo.Lines.SaveToFile(edtCaminho.Text+'\CTe-'+cdsCtesNRCTE.AsString+'.xml');
     cdsCtes.Next;
   end;

   memo.free;
   memo := nil;
   cdsCtes.Filtered := false;
   cdsCtes.Open;
   avisar('Operação realizada com sucesso!');

   if lbSelTodos.Caption = '[ F4 ] Desmarcar Todos' then
     lbSelTodosClick(self);
   
 except on e : exception do 
   Avisar('Ocorreu o seguinte erro: '+ e.message);
 end;
end;

procedure TfrmGeradorXML.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
    Press(VK_TAB)
  else if Key = VK_Escape then
    Close
  else if Key = VK_F2 then
    btSelecionarClick(self)
  else if Key = VK_F3 then
    btGerarClick(self)
  else if Key = VK_F4 then
    lbSelTodosClick(self);
end;

procedure TfrmGeradorXML.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
var  i: SmallInt;
begin
  if Msg.message = WM_MOUSEWHEEL then
  begin

    Msg.message := WM_KEYDOWN;
    Msg.lParam := 0;

    i := HiWord(Msg.wParam) ;

    if i > 0 then
      Msg.wParam := VK_UP
    else
      Msg.wParam := VK_DOWN;

    Handled := False;
   end;
end;

procedure TfrmGeradorXML.lbSelTodosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  lbSelTodos.Font.Color := clBlue;
  lbSelTodos.Font.Style := [fsBold,fsUnderline];
end;

procedure TfrmGeradorXML.lbSelTodosMouseLeave(Sender: TObject);
begin
  lbSelTodos.Font.Color := $00A00000;
  lbSelTodos.Font.Style := [fsBold];
end;

procedure TfrmGeradorXML.lbSelTodosClick(Sender: TObject);
begin
  if cdsCtes.IsEmpty then
    exit;

  cdsCtes.DisableControls;
  cdsCtes.First;
  while not cdsCtes.Eof do begin
    cdsCtes.Edit;
    
    if trim(lbSelTodos.Caption) = '[ F4 ] Marcar Todos' then
      cdsCtesCARGA.AsString := 'X'
    else
      cdsCtesCARGA.AsString := '';

    cdsCtes.Post;

    cdsCtes.Next;
  end;

  if trim(lbSelTodos.Caption) = '[ F4 ] Marcar Todos' then
    lbSelTodos.Caption := '[ F4 ] Desmarcar Todos'
  else
    lbSelTodos.Caption := '[ F4 ] Marcar Todos';

  cdsCtes.EnableControls;
end;

procedure TfrmGeradorXML.FormShow(Sender: TObject);
begin
  frmGeradorXML.Top := (Screen.Height - Height) div 2;
  frmGeradorXML.Left := (Screen.Width - Width) div 2;
end;

end.
