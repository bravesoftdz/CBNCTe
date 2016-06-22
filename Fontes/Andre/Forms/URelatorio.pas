unit URelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, OleCtrls, SHDocVw, Mask, ToolEdit, CurrEdit,
  FocusCurrEdit, Buttons,HTML;

type
  TFrmRelatorio = class(TForm)
    Relatorio: TWebBrowser;
    Panel1: TPanel;
    btImprimir: TButton;
    btVisualiza: TButton;
    btConfig: TButton;
    edPaginaAtual: TFocusCurrEdit;
    btAnterior: TBitBtn;
    btProximo: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure RelatorioCommandStateChange(Sender: TObject;
      Command: Integer; Enable: WordBool);
    procedure btVisualizaClick(Sender: TObject);
    procedure btConfigClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
  private
    function getProxPag: Integer;
    function getAntPag: Integer;
  private
    { Private declarations }
    property ProximaPagina:Integer read getProxPag;
    property AnteriorPagina:Integer read getAntPag;

  public
    { Public declarations }
  end;

var
  FrmRelatorio: TFrmRelatorio;

implementation



{$R *.dfm}

procedure TFrmRelatorio.Button1Click(Sender: TObject);
var
HTML:TStringList;
begin
Relatorio.Offline := true;
HTML := TSTringList.Create;
HTML.Add('<html>');
HTML.Add('<title> Relatório de teste </title>');
HTML.Add('<body bgcolor=#FFFFFF link=#000000 vlink=#000000 alink=#B5B5B5>');
HTML.Add('<center>');
HTML.Add('<font size=6> Relatório teste </font>');
HTML.Add('<BR><BR>');
HTML.Add(' Apenas um teste ');
HTML.Add('</center>');
HTML.Add('</body>');
HTML.Add('</html>');
HTML.SaveToFile('C:\'+FormatDateTime('ddmmyy - hh mm ss', now)+'.html');
HTML.Free;

end;
procedure TFrmRelatorio.btImprimirClick(Sender: TObject);
var
pVarIn, pVarOut : OleVariant;
begin
Relatorio.ControlInterface.ExecWB(OLECMDID_PRINT,
    OLECMDEXECOPT_PROMPTUSER, pVarIn, pVarOut) ;end;

procedure TFrmRelatorio.RelatorioCommandStateChange(Sender: TObject;
  Command: Integer; Enable: WordBool);
begin
  //ShowMessage('Evento disparado!');
end;

procedure TFrmRelatorio.btVisualizaClick(Sender: TObject);
var
  vIn, vOut: OleVariant;
begin
  Relatorio.ControlInterface.ExecWB(OLECMDID_PRINTPREVIEW,
    OLECMDEXECOPT_DONTPROMPTUSER, vIn, vOut) ;
end;

procedure TFrmRelatorio.btConfigClick(Sender: TObject);
var
  vIn, vOut: OleVariant;
begin
  Relatorio.ControlInterface.ExecWB(OLECMDID_PAGESETUP,
    OLECMDEXECOPT_PROMPTUSER, vIn, vOut) ;
end;

procedure TFrmRelatorio.btAnteriorClick(Sender: TObject);
begin
    edPaginaAtual.AsInteger := AnteriorPagina;
    Relatorio.Navigate(RelatorioHtml.AbrePagina(edPaginaAtual.AsInteger) );
end;

function TFrmRelatorio.getProxPag: Integer;
begin
  Result := edPaginaAtual.AsInteger+1;
end;

function TFrmRelatorio.getAntPag: Integer;
begin
  Result := edPaginaAtual.AsInteger-1;
end;

procedure TFrmRelatorio.btProximoClick(Sender: TObject);
begin
  edPaginaAtual.AsInteger := ProximaPagina;
  Relatorio.Navigate(RelatorioHtml.AbrePagina(edPaginaAtual.AsInteger) );
end;

end.
