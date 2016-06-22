unit uCadSeguradora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, Buttons, ExtCtrls, DBClient, Provider,
  MDOCustomDataSet, MDOQuery, Grids, DBGrids, DBMarcianoZebradoGrid,
  DBMarcianoGrid, Modulo, funcoes_cte;

type
  TfrmCadSeguradora = class(TForm)
    PC: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    grid: TDBMarcianoGrid;
    qry: TMDOQuery;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    cdsCODIGO: TIntegerField;
    cdsNOME: TStringField;
    cdsN_APOLICE: TStringField;
    cdsN_AVERBACAO: TStringField;
    pnlDados: TPanel;
    btCancelar: TSpeedButton;
    btSalvar: TSpeedButton;
    Label3: TLabel;
    edtNAverbacao: TEdit;
    edtNApolice: TEdit;
    Label2: TLabel;
    edtNome: TEdit;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    btAlterar: TBitBtn;
    btIncluir: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edtNAverbacaoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    function persiste :Boolean;

    procedure limpa;
  public
    { Public declarations }
  end;

var
  frmCadSeguradora: TfrmCadSeguradora;

implementation

uses uDica;

{$R *.dfm}

procedure TfrmCadSeguradora.FormShow(Sender: TObject);
begin
  cds.Close;
  cds.Open;
  PC.ActivePageIndex := 0;
  self.Tag := 0;
end;

procedure TfrmCadSeguradora.btIncluirClick(Sender: TObject);
begin
  self.Tag := 1;
  pnlDados.Enabled := true;
  PC.ActivePageIndex := 1;
end;

procedure TfrmCadSeguradora.btAlterarClick(Sender: TObject);
begin
  if not(cds.IsEmpty) and (cds.RecNo > 0) then begin
    self.Tag := 2;
    pnlDados.Enabled := true;
    PC.ActivePageIndex := 1;
  end;
end;

procedure TfrmCadSeguradora.TabSheet2Enter(Sender: TObject);
begin
  edtNome.Text       := trim(cdsNome.AsString);
  edtNApolice.Text   := trim(cdsN_APOLICE.AsString);
  edtNAverbacao.Text := trim(cdsN_AVERBACAO.AsString);

  if self.Tag = 1 then
    limpa;

  edtNome.SetFocus;  
end;

procedure TfrmCadSeguradora.btCancelarClick(Sender: TObject);
begin
  PC.ActivePageIndex := 0;
  self.Tag := 0;
  pnlDados.Enabled := false;  
end;

procedure TfrmCadSeguradora.limpa;
begin
  edtNome.Text       := '';
  edtNApolice.Text   := '';
  edtNAverbacao.Text := '';
end;

procedure TfrmCadSeguradora.btSalvarClick(Sender: TObject);
var qry :TMDOQuery;
begin
 try
  if persiste then begin
    qry := dm.GetQueryInstance('update or insert into SEGURADORAS values(:cod,:nome,:n_apo,:n_ave)');

    if self.Tag = 1 then
      qry.ParamByName('cod').AsInteger := 0
    else
      qry.ParamByName('cod').AsInteger := cdsCODIGO.AsInteger;

    qry.ParamByName('nome').AsString   := trim(edtNome.Text);
    qry.ParamByName('n_apo').AsString  := trim(edtNApolice.Text);
    qry.ParamByName('n_ave').AsString  := edtNAverbacao.Text;
    qry.ExecSQL;

    avisar('Operação realizada com sucesso!');
  end;

  PC.ActivePageIndex := 0;
  self.Tag := 0;
  pnlDados.Enabled := false;
  FreeAndNil(qry);  
 except
   on e: Exception do begin
     avisar('Erro ao salvar dados'+#13#10+e.Message);
     FreeAndNil(qry);
   end;
 end;
end;

function TfrmCadSeguradora.persiste: Boolean;
begin
  result := false;

  if trim(edtNome.Text) = '' then begin
    avisar('O nome da seguradora deve ser informado!');
    edtNome.SetFocus;
  end
  else if trim(edtNApolice.Text) = '' then begin
    avisar('O Nº da apólice deve ser informado!');
    edtNApolice.SetFocus;
  end
  else
    Result := true;
end;

procedure TfrmCadSeguradora.edtNAverbacaoExit(Sender: TObject);
begin
  if (length(trim(edtNAverbacao.Text)) > 0) and (length(trim(edtNAverbacao.Text)) < 20) then begin
    avisar('O nº da averbação deve ter necessáriamente 20 caracteres!');
    edtNAverbacao.SetFocus;
  end;
end;

procedure TfrmCadSeguradora.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
