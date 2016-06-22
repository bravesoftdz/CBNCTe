unit uCadCondutor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DB, DBClient, Provider, MDOCustomDataSet, MDOQuery,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBMarcianoZebradoGrid,
  DBMarcianoGrid, ComCtrls;

type
  TfrmCadCondutor = class(TForm)
    PC: TPageControl;
    TabSheet1: TTabSheet;
    grid: TDBMarcianoGrid;
    TabSheet2: TTabSheet;
    pnlDados: TPanel;
    btCancelar: TSpeedButton;
    btSalvar: TSpeedButton;
    Label2: TLabel;
    Label1: TLabel;
    edtNome: TEdit;
    GroupBox1: TGroupBox;
    btAlterar: TBitBtn;
    btIncluir: TBitBtn;
    qry: TMDOQuery;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    cdsCODIGO: TIntegerField;
    cdsNOME: TStringField;
    cdsCPF: TStringField;
    medtCPF: TMaskEdit;
    procedure btIncluirClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PCChange(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
  private
    procedure limpa;
    function persiste :Boolean;
  public
    { Public declarations }
  end;

var
  frmCadCondutor: TfrmCadCondutor;

implementation

uses Modulo, funcoes_cte;

{$R *.dfm}

procedure TfrmCadCondutor.btIncluirClick(Sender: TObject);
begin
  self.Tag           := 1;
  pnlDados.Enabled   := true;
  PC.ActivePageIndex := 1;
  limpa;
  edtNome.SetFocus;
end;

procedure TfrmCadCondutor.btAlterarClick(Sender: TObject);
begin
  if not(cds.IsEmpty) and (cds.RecNo > 0) then begin
    self.Tag           := 2;
    pnlDados.Enabled   := true;
    PC.ActivePageIndex := 1;
    edtNome.SetFocus;
  end;
end;

procedure TfrmCadCondutor.TabSheet2Enter(Sender: TObject);
begin
  edtNome.Text  := trim(cdsNome.AsString);
  medtCPF.Text  := trim(cdsCPF.AsString);

  if self.Tag = 1 then
    limpa;

  edtNome.SetFocus;
end;

procedure TfrmCadCondutor.limpa;
begin
  edtNome.Clear;
  medtCPF.Clear;
end;

procedure TfrmCadCondutor.btCancelarClick(Sender: TObject);
begin
  PC.ActivePageIndex := 0;
  self.Tag           := 0;
  pnlDados.Enabled   := false;
  cds.Close;
  cds.Open;
end;

procedure TfrmCadCondutor.FormShow(Sender: TObject);
begin
  cds.Close;
  cds.Open;
  PC.ActivePageIndex := 0;
  self.Tag           := 0;
  grid.setfocus;
end;

function TfrmCadCondutor.persiste: Boolean;
begin
  result := false;

  if trim(edtNome.Text) = '' then begin
    avisar('O nome da seguradora deve ser informado!');
    edtNome.SetFocus;
  end
  else if length(medtCPF.Text) < 11 then begin
    avisar('O CPF deve ser informado!');
    medtCPF.SetFocus;
  end
  else
    Result := true;
end;

procedure TfrmCadCondutor.btSalvarClick(Sender: TObject);
var qry :TMDOQuery;
begin
 try
  if persiste then begin
    qry := dm.GetQueryInstance('update or insert into CONDUTORES(CODIGO, NOME, CPF) values(:cod,:nome,:CPF)');

    if self.Tag = 1 then
      qry.ParamByName('cod').AsInteger := 0
    else
      qry.ParamByName('cod').AsInteger := cdsCODIGO.AsInteger;

    qry.ParamByName('nome').AsString  := trim(edtNome.Text);
    qry.ParamByName('CPF').AsString   := trim(medtCPF.Text);
    qry.ExecSQL;

    avisar('Operação realizada com sucesso!');
  end;

  PC.ActivePageIndex := 0;
  self.Tag := 0;
  pnlDados.Enabled := false;
  btCancelar.Click;
  FreeAndNil(qry);  
 except
   on e: Exception do begin
     avisar('Erro ao salvar dados'+#13#10+e.Message);
     FreeAndNil(qry);
   end;
 end;
end;

procedure TfrmCadCondutor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_Return then
    press(vk_tab)
  else if key = VK_Escape then
    self.close
  else if key = VK_F3 then
    btIncluir.Click
  else if key = VK_F4 then
    btAlterar.Click
  else if (key = VK_F6)and(pnlDados.Enabled) then
    btSalvar.Click
  else if (key = VK_escape)and(pnlDados.Enabled) then
    btCancelar.Click;
end;

procedure TfrmCadCondutor.PCChange(Sender: TObject);
begin
  if PC.ActivePageIndex = 1 then
    TabSheet2Enter(nil);
end;

procedure TfrmCadCondutor.cdsAfterScroll(DataSet: TDataSet);
begin
  edtNome.Text := cdsNOME.AsString;
  medtCPF.Text := cdsCPF.AsString;
end;

end.
