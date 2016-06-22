unit HTML;

interface

uses Classes,SysUtils;

type TPropriedadesPagina = class
    public
      FPath : String;
      FPosicao : Integer;
end;

type THtml = Class
  private
    FHtml  : TStringList;
    FTitulo: String;
    FColuna: Integer;
    FLinha : Integer;
    FMaxLinha: Integer;
    FMaxColuna: Integer;
    FQtdPaginas: Integer;
    FPaginaAtual: Integer;


    procedure SetTitulo(const Value: String);
    procedure MontaHtml;
    function Espacos( ACount : Integer ):String;
    procedure SetMaxLinha(const Value: Integer);
    procedure SetMaxColuna(const Value: Integer);
    function getLinhaAtual: Integer;
    procedure NovaPagina;
    function caminhoPagina( ANumeroPagina:Integer ):String;
  public

    property Titulo:String read FTitulo write SetTitulo;
    property MaxLinha : Integer read FMaxLinha write SetMaxLinha;
    property MaxColuna: Integer  read FMaxColuna write SetMaxColuna;
    property QtdPaginas: Integer read FQtdPaginas;
    property LinhaAtual: Integer read getLinhaAtual;
    property PaginaAtual: Integer read FPaginaAtual;

    procedure AddLinhaCenter( conteudo:String );
    procedure AddLinha( conteudo:String );overload;
    procedure AddLinha( conteudo:String; colunaBase :Integer );overload;
    procedure AddLinhaCabecalho( conteudo: String; colunaBase : Integer );overload;
    procedure VisualisarImpressao;
    procedure Inicializa;
    function PulaLinha(AQtd : Integer = 1):String;

    function AbrePagina(ANumero : Integer):String;
    procedure Separacao;

end;

var RelatorioHtml : THtml;


implementation

uses URelatorio;

{ THtml }



procedure THtml.addLinha(conteudo: String; colunaBase :Integer);
begin
  addLinha(Espacos(colunaBase)+conteudo);
end;

procedure THtml.addLinha(conteudo: String);
begin
  FHtml.Add(conteudo);
end;

procedure THtml.addLinhaCenter(conteudo: String);
begin
  FHtml.Add('<center>'+conteudo+'</center>');
end;

function THtml.Espacos(ACount: Integer): String;
var nX : Integer;
begin
  if FMaxColuna > (FColuna + (ACount - FColuna)) then
    begin
      Result := '';  { Destino menos Origem igual a qtd movementada. }
      for nX := 0 to (ACount - FColuna) do
          Result := Result+' ';
    end
  else
    begin
      FColuna := 0;
      PulaLinha();
    end;
end;

function THtml.getLinhaAtual: Integer;
begin
 Result := (FQtdPaginas*MaxLinha)+FLinha;
end;

procedure THtml.Inicializa;
begin
  FQtdPaginas  := 1;
  FLinha       := 1;
  FColuna      := 1;
  FHtml        := TStringList.Create;
  FrmRelatorio := TFrmRelatorio.Create(nil);
  
end;

procedure THtml.MontaHtml;
begin
  FHtml.Add('<html>');
  FHtml.Add(FTitulo);
  FHtml.Add('<body bgcolor=#FFFFFF link=#000000 vlink=#000000 alink=#B5B5B5>');
  addLinhaCenter(FTitulo);
  PulaLinha();
  FHtml.Add('</body>');
  FHtml.Add('</html>');
end;

procedure THtml.NovaPagina;
begin
  FHtml.SaveToFile(caminhoPagina(FQtdPaginas));
  FHtml.Clear;
  FLinha := 0;
  Inc(FQtdPaginas);
end;

function THtml.AbrePagina(ANumero: Integer): String;
begin
  if ( ANumero > 0 ) and (ANumero <= QtdPaginas) then
    begin
      FHtml.Clear;
      FHtml.LoadFromFile(caminhoPagina(ANumero));
      Result := caminhoPagina(ANumero);
    end;
end;

function THtml.PulaLinha(AQtd: Integer): String;
var nX : Integer;
begin
  if FLinha < MaxLinha then
    begin
      Result := '';
      for nX := 0 to AQtd do
        begin
           Result := Result+'<BR>';
           Inc(FLinha);
        end;
    end
  else
    begin
      NovaPagina;
    end;
  FHtml.Add(Result);  
end;

procedure THtml.SetMaxColuna(const Value: Integer);
begin
  FMaxColuna := Value;
end;

procedure THtml.SetMaxLinha(const Value: Integer);
begin
  FMaxLinha := Value;
end;

procedure THtml.SetTitulo(const Value: String);
begin
  FTitulo :='<title> '+ Value+' </title>';
end;

procedure THtml.VisualisarImpressao;
begin
  if FQtdPaginas = 1 then
       FHtml.SaveToFile(caminhoPagina(FQtdPaginas));

  FrmRelatorio.Relatorio.Navigate(caminhoPagina(1));
  FrmRelatorio.ShowModal;
end;

function THtml.caminhoPagina(ANumeroPagina: Integer): String;
begin
  Result := ('C:/Relatorio_'+FTitulo+'_pagina_'+IntToStr(ANumeroPagina)+'_.html');
end;

procedure THtml.Separacao;
begin
  PulaLinha(2);
end;

procedure THtml.AddLinhaCabecalho(conteudo: String; colunaBase: Integer);
begin
  AddLinha('<h2>'+conteudo+'</h2>',colunaBase);
end;

end.
