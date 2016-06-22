unit uCadNatOp;
                                                                                                            
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, DBMarcianoZebradoGrid,
  DBMarcianoGrid, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit,
  FocusCurrEdit, FocusEdit, MDOCustomDataSet, MDOQuery, Provider, DB,
  DBClient, NatOp, MarcianoBallon, ExtCtrls, AppEvnts,
  ImgList, uPadrao;

type
  TfrmCadNatOp = class(TForm)

    pgControl: TPageControl;
    tabPesquisa: TTabSheet;
    tabDados: TTabSheet;
    gpOpcoesPesq: TGroupBox;
    grid: TDBMarcianoGrid;
    btIncluir: TBitBtn;
    btAlterar: TBitBtn;
    btBloqDesbloq: TBitBtn;
    btConfirmar: TBitBtn;
    gpLegenda: TGroupBox;
    GroupBox1: TGroupBox;
    gpOpcoesDados: TGroupBox;
    edNatureza: TFocusEdit;
    edCodigo: TFocusCurrEdit;
    edCFOP: TFocusCurrEdit;
    lbCodigo: TLabel;
    lbCFOP: TLabel;
    lbNatureza: TLabel;
    lbFlag: TLabel;
    cbBoxStatus: TComboBox;
    lbGeraPedido: TLabel;
    cbBoxGeraPedido: TComboBox;
    GroupBox2: TGroupBox;
    lbAstLeg: TLabel;
    lbCamposObrigatorio: TLabel;
    lbAstNatOp: TLabel;
    lbAstCFOP: TLabel;
    btCancelar: TSpeedButton;
    cds: TClientDataSet;
    ds: TDataSource;
    dsp: TDataSetProvider;
    qry: TMDOQuery;
    cdsCODIGO: TIntegerField;
    cdsCFOP: TIntegerField;
    cdsNAT_OP: TStringField;
    cdsFLAG: TStringField;
    cdsGERA_PEDIDO: TStringField;
    ballon: TMarcianoBallon;
    rdGpPisCofins: TRadioGroup;
    btSalvar: TSpeedButton;
    ApplicationEvents1: TApplicationEvents;
    ImageList1: TImageList;
    Image1: TImage;
    Label7: TLabel;
    Image2: TImage;
    Label1: TLabel;

    procedure btIncluirClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure btBloqDesbloqClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure gridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridBeforePesquisar(Sender: TDBMarcianoZebradoGrid;
      var Pesquisar: Boolean; var Column: TColumn; Valor: Variant);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
  private
    natOp : TNatOp;
    cfop : String;

    procedure criaObjeto;
    procedure destroiObjeto;

    procedure fechaCDS;
    procedure abreCDS;
    procedure atualizaCDS;

    procedure abreForm;
    procedure fechaForm;

    procedure mostra;
    procedure grava;
    procedure limpa;
    procedure mudaAba;

    procedure alteraSQL;

    function validaCFOP : Boolean;
    function validaCamposObrig : Boolean;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadNatOp: TfrmCadNatOp;

const
  mostrar = 1;
  incluir = 2;
  alterar = 3;
  buscar  = 4;

  sqlOriginal = ' SELECT *                   '+
                ' FROM NAT_OP                ';

  sqlBusca = ' SELECT *                   '+
             ' FROM NAT_OP                '+
             ' WHERE NAT_OP.FLAG <> ''B'' ';


implementation

uses Modulo, funcoes_cte, uDica;

{$R *.dfm}

{ TfrmCadNatOp }

procedure TfrmCadNatOp.abreCDS;
begin
   self.fechaCDS;

   if not self.cds.Active then
    begin
       self.cds.Open; 
    end;
end;

procedure TfrmCadNatOp.abreForm;
begin
   if (self.tag = 0) then
    self.tag := mostrar;

   if (self.tag <> buscar) then
    begin
      self.btConfirmar.Visible := false;

    end
   else
    begin
       self.alteraSQL; 
       self.Tag := mostrar;
       
       self.btIncluir.Visible     := false;
       self.btAlterar.Visible     := false;
       self.btBloqDesbloq.Visible := false;
       self.btCancelar.Visible    := false;
       self.btSalvar.Visible      := false;
    end;

   self.pgControl.ActivePage := tabPesquisa;
   self.abreCDS;

   if self.cds.Active then
     self.grid.SetFocus;
end;

procedure TfrmCadNatOp.atualizaCDS;
begin
   if self.cds.Active then
    begin
      self.cds.Filtered := false;
      self.cds.refresh;
    end;
end;

procedure TfrmCadNatOp.criaObjeto;
begin     
   self.destroiObjeto;
   
   if (self.natOp = nil) then
     self.natOp := TNatOp.Create;

end;

procedure TfrmCadNatOp.destroiObjeto;
begin
   if (self.natOp <> nil) then
    begin
       self.natOp.Free;
       self.natOp := nil; 
    end;
end;

procedure TfrmCadNatOp.fechaCDS;
begin
   if self.cds.Active then
    begin
      self.cds.EmptyDataSet;
      self.cds.Close;
    end;
end;

procedure TfrmCadNatOp.fechaForm;
begin
   self.fechaCDS;
   self.destroiObjeto;
end;

procedure TfrmCadNatOp.grava;
begin
   if (self.Tag = incluir) then
    begin
       self.criaObjeto;

       self.natOp.CFOP   := self.edCFOP.AsInteger;
       self.natOp.natOp  := self.edNatureza.Text;
       self.natOp.flag   := false;

       if (self.cbBoxGeraPedido.ItemIndex = 0) then
         self.natOp.geraPedido := true
       else if (self.cbBoxGeraPedido.ItemIndex = 1) then
         self.natOp.geraPedido := false;

       if (self.rdGpPisCofins.ItemIndex = 0) then
         self.natOp.geraPisCofins := true
       else if (self.rdGpPisCofins.itemIndex = 1) then
         self.natOp.geraPisCofins := false;

       self.natOp.save;

       self.destroiObjeto;
    end
   else if (self.tag = alterar) then
    begin
       self.destroiObjeto;

       self.natOp := TNatOp.getByCodigo(self.edCodigo.AsInteger);
       self.natOp.CFOP   := self.edCFOP.AsInteger;
       self.natOp.natOp  := self.edNatureza.Text;

       if (self.cbBoxStatus.ItemIndex = 0) then
         self.natOp.flag := false
       else if (self.cbBoxStatus.ItemIndex = 1) then
         self.natOp.flag := true;

       if (self.cbBoxGeraPedido.ItemIndex = 0) then
         self.natOp.geraPedido := true
       else if (self.cbBoxGeraPedido.ItemIndex = 1) then
         self.natOp.geraPedido := false;

       if (self.rdGpPisCofins.ItemIndex = 0) then
         self.natOp.geraPisCofins := true
       else if (self.rdGpPisCofins.itemIndex = 1) then
         self.natOp.geraPisCofins := false;

       self.natOp.save;

       self.destroiObjeto;
    end;
end;

procedure TfrmCadNatOp.limpa;
begin
   self.edCodigo.Clear;
   self.edNatureza.Clear;
   self.edCFOP.Clear;
   self.cbBoxStatus.ItemIndex     := 0;
   self.cbBoxGeraPedido.ItemIndex := 0;
   self.rdGpPisCofins.ItemIndex   := 0;
end;

procedure TfrmCadNatOp.mostra;
begin
   self.destroiObjeto;

   self.natOp := TNatOp.getByCodigo(self.cdsCODIGO.asInteger);
   self.edCodigo.AsInteger := self.natOp.codigo;
   self.edNatureza.Text := self.natOp.natOp;
   self.edCFOP.asInteger := self.natOp.CFOP;

   if self.natOp.flag then
    self.cbBoxStatus.ItemIndex := 1
   else
    self.cbBoxStatus.ItemIndex := 0;

   if self.natOp.geraPedido then
    self.cbBoxGeraPedido.ItemIndex := 0
   else
    self.cbBoxGeraPedido.ItemIndex := 1;

   if self.natOp.geraPisCofins then
    self.rdGpPisCofins.ItemIndex := 0
   else
    self.rdGpPisCofins.ItemIndex := 1;

end;

procedure TfrmCadNatOp.mudaAba;
begin
   if (self.pgControl.ActivePage = tabPesquisa) then
    begin
       if (self.Tag = mostrar) or (self.tag = buscar) then
        begin
           self.edCodigo.Enabled := false;
           self.edNatureza.Enabled := false;
           self.edCFOP.Enabled := false;
           self.cbBoxStatus.Enabled := false;
           self.cbBoxGeraPedido.Enabled := false;
           self.rdGpPisCofins.Enabled := false;

           self.btCancelar.Visible := false;
           self.btSalvar.Visible := false;

           self.mostra;

           self.pgControl.ActivePage := tabDados;
        end
       else if (self.tag = incluir) then
        begin
           self.edCodigo.Visible := false;
           self.cbBoxStatus.ItemIndex := 0;
           self.cbBoxStatus.Enabled := false;

           self.edNatureza.Enabled := true;
           self.edCFOP.Enabled     := true;
           self.cbBoxGeraPedido.Enabled := true;
           self.rdGpPisCofins.Enabled := true;

           self.btCancelar.Visible := true;
           self.btSalvar.Visible   := true;
           
           self.pgControl.ActivePage := tabDados;
        end
       else if (self.tag = alterar) then
        begin
          self.edCodigo.Enabled := false;
          self.edNatureza.Enabled := true;
          self.edCFOP.Enabled := true;
          self.cbBoxStatus.Enabled := true;
          self.cbBoxGeraPedido.Enabled := true;
          self.rdGpPisCofins.Enabled := true;

          self.btCancelar.Visible := true;
          self.btSalvar.Visible   := true;

          self.mostra;
          self.pgControl.ActivePage := tabDados;
        end;
    end
   else if (self.pgControl.ActivePage = tabDados) then
    begin
       self.limpa;
       self.destroiObjeto;
       self.Tag := mostrar;
       self.pgControl.ActivePage := tabPesquisa;
       self.atualizaCDS; 
    end;
end;

procedure TfrmCadNatOp.btIncluirClick(Sender: TObject);
begin
  self.Tag := incluir;
  self.mudaAba;
end;

procedure TfrmCadNatOp.btAlterarClick(Sender: TObject);
begin
   self.tag := alterar;
   self.mudaAba;
   cfop := cdsCFOP.AsString;
end;

procedure TfrmCadNatOp.btConfirmarClick(Sender: TObject);
begin
   self.ModalResult := mrOk;
end;

procedure TfrmCadNatOp.btBloqDesbloqClick(Sender: TObject);
begin
  inherited;

  if pergunta('Deseja Bloquear/Desbloquear essa natureza de operação?') then
     TNatOp.BloqDesbloq(self.cdsCODIGO.AsInteger);

  self.atualizaCDS;
end;

procedure TfrmCadNatOp.btCancelarClick(Sender: TObject);
begin
  inherited;

  self.mudaAba;
end;

procedure TfrmCadNatOp.btSalvarClick(Sender: TObject);
begin
  inherited;

  if pergunta('Deseja prosseguir com essa operação?') and self.validaCamposObrig and self.validaCFOP then
   begin
      self.grava;
      self.mudaAba;
      self.atualizaCDS;
   end;
end;

procedure TfrmCadNatOp.FormShow(Sender: TObject);
begin
  inherited;

  self.abreForm;
  frmCadNatOp.Top := (Screen.Height - Height) div 2;
  frmCadNatOp.Left := (Screen.Width - Width) div 2;
end;

procedure TfrmCadNatOp.pgControlChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;

  self.mudaAba;
end;

procedure TfrmCadNatOp.gridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  if Column.Field = cdsFLAG then begin
    TDBMarcianoGrid(Sender).Canvas.FillRect(Rect);

    if cdsFLAG.asString = 'B' then
      ImageList1.Draw(TDBMarcianoGrid(Sender).Canvas, Rect.Left +12, Rect.Top , 1, true)
    else
      ImageList1.Draw(TDBMarcianoGrid(Sender).Canvas, Rect.Left +12, Rect.Top , 0, true);
  end;


end;

function TfrmCadNatOp.validaCamposObrig: Boolean;
begin
   if (self.edNatureza.Text = '') then
    begin
       self.ballon.ShowBallon(self.edNatureza, 'Natureza de Operação é um campo obrigatório!');
       abort;
    end;

   if (self.edCFOP.AsInteger = 0) then
    begin
       self.ballon.ShowBallon(self.edCFOP, 'CFOP é um campo obrigatório!');
       abort; 
    end;

  result := true;
end;

function TfrmCadNatOp.validaCFOP: Boolean;
begin
   self.criaObjeto;

   if not (self.tag = alterar) or (cfop <> edCFOP.Text) then
     if not (self.natOp.existeByCFOP(self.edCFOP.AsInteger)) then
      begin
         self.ballon.ShowBallon(self.edCFOP, 'CFOP já cadastrado no sistema! Verifique...');
         abort;
      end;
   cfop := '0';
   result := true;
end;

procedure TfrmCadNatOp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if (self.pgControl.ActivePage = tabPesquisa) then
   begin
      if (key = VK_F2) then
        self.mudaAba  
      else if (key = VK_F3) then
        self.btIncluirClick(sender)
      else if key = VK_Escape then
        self.close
      else if (key = VK_F4) then
        self.btAlterarClick(sender)
      else if (key = VK_F5) then
        self.btBloqDesbloqClick(sender)
      else if (key = VK_ESCAPE) then
        self.ModalResult := mrCancel;
   end
  else if (self.pgControl.ActivePage = tabDados) then
   begin
      if (key = VK_F1) then
       self.btCancelarClick(sender)
      else if (key = VK_ESCAPE) then
       self.btCancelarClick(sender)
      else if (key = VK_F6) and  ((self.Tag = incluir) or (self.tag = alterar)) then
       self.btSalvarClick(sender);
   end;
end;

procedure TfrmCadNatOp.gridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

 { Com esse tratamento significará que estara com tag de busca } 
 if self.btConfirmar.Visible and (key = VK_RETURN) then
    self.btConfirmarClick(sender);
end;

procedure TfrmCadNatOp.alteraSQL;
begin
   if (self.tag = buscar) then
    begin
       self.qry.SQL.Clear;
       self.qry.SQL.Add(sqlBusca); 
    end;
end;

procedure TfrmCadNatOp.gridBeforePesquisar(Sender: TDBMarcianoZebradoGrid;
  var Pesquisar: Boolean; var Column: TColumn; Valor: Variant);
var lLike : Boolean;
begin
  inherited;

  self.cds.Filtered := false;

  if (Column.Field = self.cdsNAT_OP) then
   begin
      pesquisar := false;

      self.cds.Filter := 'NAT_OP like ''%' + Valor + '%''';
      self.cds.Filtered := true;
   end;
end;

procedure TfrmCadNatOp.ApplicationEvents1Message(var Msg: tagMSG;
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

end.
