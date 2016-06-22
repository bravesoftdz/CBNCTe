unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, pngimage, ExtCtrls, jpeg, uCadNatOp, ComCtrls, ToolWin,
  ImgList, XPMan, ACBrGIF, StdCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastrar1: TMenuItem;
    CTe1: TMenuItem;
    NF1: TMenuItem;
    Image1: TImage;
    CriarEnviarCTe1: TMenuItem;
    Parametros1: TMenuItem;
    Relatrios1: TMenuItem;
    CTesEnviadas1: TMenuItem;
    NaturezaOperao1: TMenuItem;
    ToolBar1: TToolBar;
    StatusBar1: TStatusBar;
    Utilitrios1: TMenuItem;
    Backup1: TMenuItem;
    Clientes1: TMenuItem;
    ImageList1: TImageList;
    GerarXML1: TMenuItem;
    Seguradoras1: TMenuItem;
    GerarSintegra1: TMenuItem;
    Veculos1: TMenuItem;
    Condutores1: TMenuItem;
    procedure NF1Click(Sender: TObject);
    procedure CriarEnviarCTe1Click(Sender: TObject);
    procedure Parametros1Click(Sender: TObject);
    procedure CTesEnviadas1Click(Sender: TObject);
    procedure NaturezaOperao1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Backup1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure GerarXML1Click(Sender: TObject);
    procedure Seguradoras1Click(Sender: TObject);
    procedure GerarSintegra1Click(Sender: TObject);
    procedure Veculos1Click(Sender: TObject);
    procedure Condutores1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  nCodUsuGlobal: Integer;

implementation

uses uNfes, uCriaCTe, uCadParametros, uConfigCte, uRelCtes, Modulo, uCadVeiculo,
  uBackup, cadCli, uGeradorXML, uCadSeguradora, uGeradorSintegra, uPergunta, uDica, uCadCondutor;

{$R *.dfm}

procedure TfrmPrincipal.NF1Click(Sender: TObject);
begin
  frmConfigCte := TfrmConfigCte.create(self);
  frmConfigCte.ShowModal;
  frmConfigCte.Release;
  frmConfigCte := nil;
end;

procedure TfrmPrincipal.CriarEnviarCTe1Click(Sender: TObject);
begin
  frmCriaCTe := TfrmCriaCTe.create(self);
  frmCriaCTe.ShowModal;
  frmCriaCTe.Release;
  frmCriaCTe := nil;
end;

procedure TfrmPrincipal.Parametros1Click(Sender: TObject);
begin
  frmCadParametros := TfrmCadParametros.create(self);
  frmCadParametros.ShowModal;
  frmCadParametros.Release;
  frmCadParametros := nil;
end;

procedure TfrmPrincipal.CTesEnviadas1Click(Sender: TObject);
begin
  frmRelCtes := TfrmRelCtes.Create(Self);
  frmRelCtes.ShowModal;
  frmRelCtes.Release;
  frmRelCtes := nil;
end;

procedure TfrmPrincipal.NaturezaOperao1Click(Sender: TObject);
begin
  frmCadNatOp := TfrmCadNatOp.Create(Self);
  frmCadNatOp.ShowModal;
  frmCadNatOp.Release;
  frmCadNatOp := nil;
end;

procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key = vk_escape) then begin
   frmPergunta := TfrmPergunta.Create(self);
   frmPergunta.lblMen.Caption := 'Deseja sair do sistema?';
   if frmPergunta.ShowModal = mrOk then
    begin
      dm.Transaction.Commit;
      dm.Database.Connected := false;

      dm.DBRemoto.Connected := false;
      Application.Terminate
    end;
   frmPergunta.Release; 
 end;

end;

procedure TfrmPrincipal.Backup1Click(Sender: TObject);
begin
  frm_Backup := Tfrm_Backup.Create(Self);
  frm_Backup.ShowModal;
  frm_Backup.Release;
  frm_Backup := nil;
end;

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
  frmCadCli := TfrmCadCli.Create(Self);
  frmCadCli.ShowModal;
  frmCadCli.Release;
  frmCadCli := nil;
end;

procedure TfrmPrincipal.GerarXML1Click(Sender: TObject);
begin
  frmGeradorXML := TfrmGeradorXML.Create(Self);
  frmGeradorXML.ShowModal;
  frmGeradorXML.Release;
  frmGeradorXML := nil;
end;

procedure TfrmPrincipal.Seguradoras1Click(Sender: TObject);
begin
  frmCadSeguradora := TfrmCadSeguradora.Create(Self);
  frmCadSeguradora.ShowModal;
  frmCadSeguradora.Release;
  frmCadSeguradora := nil;
end;

procedure TfrmPrincipal.GerarSintegra1Click(Sender: TObject);
begin
  frmGeradorSintegra := TfrmGeradorSintegra.Create(Self);
  frmGeradorSintegra.ShowModal;
  frmGeradorSintegra.Release;
  frmGeradorSintegra := nil;
end;

procedure TfrmPrincipal.Veculos1Click(Sender: TObject);
begin
  frmCadVeiculo := TfrmCadVeiculo.Create(Self);
  frmCadVeiculo.ShowModal;
  frmCadVeiculo.Release;
  frmCadVeiculo := nil;
end;

procedure TfrmPrincipal.Condutores1Click(Sender: TObject);
begin
  frmCadCondutor := TfrmCadCondutor.Create(Self);
  frmCadCondutor.ShowModal;
  frmCadCondutor.Release;
  frmCadCondutor := nil;
end;

end.
