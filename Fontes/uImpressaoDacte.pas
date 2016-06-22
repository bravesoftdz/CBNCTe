unit uImpressaoDacte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, DB, DBClient, Grids, DBGrids, DBMarcianoZebradoGrid,
  DBMarcianoGrid, MDOQuery, uframePeriodo, Buttons, ExtCtrls, ACBrCTe,
  ACBrCTeDACTEClass, funcoes_cte, StdCtrls, ACBrBase,
  ACBrDFe, ACBrCTeDACTEFR, ACBrCTeDACTeRLClass;

type
  TfrmImpressaoDacte = class(TForm)
    GridCtes: TDBMarcianoGrid;
    dsCtes: TDataSource;
    cdsCtes: TClientDataSet;
    dspCtes: TDataSetProvider;
    Panel1: TPanel;
    btnImprimir: TSpeedButton;
    btCancela: TSpeedButton;
    cdsCtesCODIGO: TIntegerField;
    cdsCtesNRCTE: TIntegerField;
    cdsCtesXML: TMemoField;
    cdsCtesDATA: TDateField;
    cdsCtesRAZDES: TStringField;
    cdsCtesVTPREST: TBCDField;
    cdsCtesCARGA: TStringField;
    ACBrCTe1: TACBrCTe;
    btbuscar: TBitBtn;
    cdsCtesTAG: TIntegerField;
    gbOpcoes: TGroupBox;
    lbSelTodos: TLabel;
    Label1: TLabel;
    gbPeriodo: TGroupBox;
    framePeriodo1: TframePeriodo;
    rgTipoImp: TRadioGroup;
    OpenDialog1: TOpenDialog;
    ACBrCTeDACTeRL1: TACBrCTeDACTeRL;
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure GridCtesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridCtesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btbuscarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    selecionados :integer;
    marcarTodos  :Boolean;

    procedure marcaDesmarca;
    procedure imprimePorArquivo;
    procedure impressaoNormal;
  public
    { Public declarations }
  end;

var
  frmImpressaoDacte: TfrmImpressaoDacte;

implementation

uses modulo;

{$R *.dfm}

procedure TfrmImpressaoDacte.FormShow(Sender: TObject);
begin
  framePeriodo1.edtDtI.Text := dateToStr(date);
  framePeriodo1.edtDtF.Text := dateToStr(date);  

  cdsCtes.Close;
  dspCtes.DataSet := dm.qryGeneric;

  TMDOQuery(dspCtes.DataSet).SQL.Text := 'select cte_xml.codigo ,cte_xml.nrcte, cte_xml.xml, cte.data, cte.razdes, '+
                                         'cte.vtprest, cte.carga  from cte_xml                                     '+
                                         'left join cte on cte.numcte = cte_xml.nrcte                              '+
                                         'where (cte.status = ''100'') and (cte.data between :dti and :dtf)        ';

  TMDOQuery(dspCtes.DataSet).ParamByName('dti').AsDateTime := strToDate(framePeriodo1.edtDtI.Text);
  TMDOQuery(dspCtes.DataSet).ParamByName('dtf').AsDateTime := strToDate(framePeriodo1.edtDtF.Text);
  cdsCtes.Open;

  selecionados := 0;
  marcarTodos  := false;

end;

procedure TfrmImpressaoDacte.btnImprimirClick(Sender: TObject);
begin
  if rgTipoImp.ItemIndex = 0 then
    impressaoNormal
  else
    imprimePorArquivo;  
end;

procedure TfrmImpressaoDacte.GridCtesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_space then begin
    cdsCtes.Edit;

    if cdsCtesTAG.AsInteger = 0 then begin
      cdsCtesTAG.AsInteger := 1;
      inc(selecionados);
    end
    else begin
      cdsCtesTAG.AsInteger := 0;
      Dec(selecionados);
    end;

    cdsCtes.Post;
  end;
end;

procedure TfrmImpressaoDacte.GridCtesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if cdsCtesTAG.AsInteger = 1 then begin
     GridCTes.Canvas.Font.Color  := clWhite;
     GridCTes.Canvas.Brush.Color := $00A79574;
  end;

  GridCTes.Canvas.FillRect(Rect);
  GridCTes.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmImpressaoDacte.btbuscarClick(Sender: TObject);
begin
  cdsCtes.Close;
  TMDOQuery(dspCtes.DataSet).ParamByName('dti').AsDateTime := strToDate(framePeriodo1.edtDtI.Text);
  TMDOQuery(dspCtes.DataSet).ParamByName('dtf').AsDateTime := strToDate(framePeriodo1.edtDtF.Text);
  cdsCtes.Open;
  GridCtes.SetFocus;
end;

procedure TfrmImpressaoDacte.marcaDesmarca;
begin
  if cdsCtes.IsEmpty then
    exit;

  if marcarTodos then  marcarTodos := false
  else                 marcarTodos := true;

  cdsCtes.DisableControls;
  cdsCtes.First;
  while not cdsCtes.Eof do begin
    cdsCtes.Edit;
    
    if marcarTodos then  cdsCtesTAG.AsInteger := 1
    else                 cdsCtesTAG.AsInteger := 0;

    cdsCtes.Post;

    cdsCtes.Next;
  end;

  if marcarTodos then begin
    selecionados := cdsCtes.RecordCount;
    lbSelTodos.Caption := '[ F4 ] Desmarca todos os registros'
  end  
  else begin
    selecionados := 0;
    lbSelTodos.Caption := '[ F4 ] Marca todos os registros';
  end;

  cdsCtes.EnableControls;
end;

procedure TfrmImpressaoDacte.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F2 then
    btbuscar.Click
  else if key = vk_F6 then
    btnImprimir.Click
  else if key = vk_Escape then
    self.Close
  else if Key = VK_F4 then
    marcaDesmarca
  else if Key = VK_Return then
    Press(VK_TAB);  

end;

procedure TfrmImpressaoDacte.imprimePorArquivo;
var cte :string;
begin
  cte := '';

  OpenDialog1.Title := 'Selecione o CTe';
  OpenDialog1.DefaultExt := '*.xml';
  OpenDialog1.Filter := 'Arquivos CTe (*.xml)|*.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName)+'XML\';
  ACBrCTeDACTeRL1.MostrarPreview := True;

  if OpenDialog1.Execute then
    cte := OpenDialog1.FileName;


  if cte <> '' then
   begin
     ACBrCTe1.Conhecimentos.Clear;
     ACBrCTe1.Conhecimentos.LoadFromFile(cte);
     self.ACBrCTeDACTeRL1.Logo := dm.Parametro.CaminhoLogo;
     ACBrCTe1.Conhecimentos.Imprimir;
   end;
end;

procedure TfrmImpressaoDacte.impressaoNormal;
var caminho :String;
    memo    :TMemo;
begin
  caminho := ExtractFilePath(Application.ExeName)+'CTe-temp.xml';

  if selecionados < 1 then begin
    avisar('Favor, selecionar ao menos um CT-e (Barra de Espaço)');
    exit;
  end
  else begin
    cdsCtes.Filtered := false;
    cdsCtes.Filter   := 'TAG = 1';
    cdsCtes.Filtered := true;

    cdsCtes.first;
  end;

  memo := TMemo.Create(self);

  while not cdsCtes.Eof do begin

     memo.Text := cdsCtesXML.AsString;
     memo.Lines.SaveToFile(caminho);

     ACBrCTe1.Conhecimentos.Clear;
     ACBrCTe1.Conhecimentos.LoadFromFile(caminho);

     self.ACBrCTeDACTeRL1.Logo     := dm.Parametro.CaminhoLogo;
     self.ACBrCTeDACTeRL1.MostrarPreview := false;
     ACBrCTe1.Conhecimentos.Imprimir;

     cdsCtes.Next;
   end;

  cdsCtes.Filtered := false;
  marcarTodos := true;
  marcaDesmarca;
end;

end.
