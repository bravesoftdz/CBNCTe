unit uScript;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MDOScript, MDOQuery, StdCtrls, funcoes_cte;

type
  TfrmScript = class(TForm)
    qry2: TMDOScript;
    Versao0: TMemo;
    versao1: TMemo;
    versao2: TMemo;
    versao3: TMemo;
    versao4: TMemo;
    versao5: TMemo;
    versao6: TMemo;
    versao7: TMemo;
    versao8: TMemo;
    versao9: TMemo;
    versao10: TMemo;
    versao11: TMemo;
    versao12: TMemo;
    versao13: TMemo;
    versao14: TMemo;
    versao15: TMemo;
    versao16: TMemo;
    versao17: TMemo;
    versao18: TMemo;
    versao19: TMemo;
    versao20: TMemo;
    versao21: TMemo;
    versao22: TMemo;
    versao23: TMemo;
    versao24: TMemo;
    versao25: TMemo;
    versao26: TMemo;
    procedure qry2ExecuteError(Sender: TObject; Error, SQLText: String;
      LineIndex: Integer; var Ignore: Boolean);
    procedure qry2ParseError(Sender: TObject; Error, SQLText: String;
      LineIndex: Integer);
  private
    function ExecutaAtualizacao(nomemem: String; versao: Integer): Boolean;

    procedure ExecutarAntes(nVersao: Integer);
    procedure ExecutarDepois(nVersao: Integer);

  public
    function ExecutaAtualizacoesBanco: Boolean;
  end;

var
  frmScript: TfrmScript;

const
  UltimaVersaoSistema = 26;
  ScriptExterno = '<<SCRIPT EXTERNO>>';

implementation

uses Modulo, Parametro;

{$R *.dfm}

function TfrmScript.ExecutaAtualizacao(nomemem: String;
  versao: Integer): Boolean;
var
    qry : TMDOQuery;
    mem : TMemo;
begin
  try

    Result := true;

    if dm.versaoAtual >= versao then
      exit;

    //Aguarda('Aguarde, atualizando p/ versão: ' + IntToStr(versao));

    mem := (self.FindComponent(nomemem) as TMemo);

    if dm.Transaction.InTransaction then
      dm.Transaction.Commit;

    dm.Transaction.StartTransaction;

    if mem <> nil then
      begin
        // Executar antes
        self.ExecutarAntes(versao);

        if mem.Lines[0] = ScriptExterno then
          begin
            if not FileExists(PathSis + 'scripts\' + mem.Lines[1]) then
              raise Exception.Create('Arquivo de script externo não encontrado!');

            qry2.Script.LoadFromFile(PathSis + 'scripts\' + mem.Lines[1])
          end
        else
          qry2.Script := mem.Lines;

        if qry2.ValidateScript then
          qry2.ExecuteScript
        else
          raise Exception.Create('Erro no script!');
      end
    else
      begin
        Result := false;
        exit;
      end;

    // Executar Depois
    self.ExecutarDepois(versao);

    if dm.Transaction.InTransaction then
      dm.Transaction.Commit;

    dm.Transaction.StartTransaction;

    qry := dm.GetQueryInstance('update parametros set versao = :versao');
    qry.ParamByName('versao').AsInteger := versao;
    qry.ExecSQL;
    FreeAndNil(qry);

    if dm.Transaction.InTransaction then
      dm.Transaction.Commit;

  except
    showmessage('ERRO');

    Result := false;

    if mem = nil then
      Avisar('>>> Atenção <<<' + #13 + 'Erro ao executar script da versão: ' + IntToStr(versao))
    else
      Avisar('>>> Atenção <<<' + #13 + 'Erro ao executar script da versão: ' + IntToStr(versao) + #13 + mem.Text);
  end;

end;

function TfrmScript.ExecutaAtualizacoesBanco: Boolean;
var nX: Integer;
begin
  try
  Result := true;
  Aguarda;
  FimAguarda;

  Bar(UltimaVersaoSistema,'Atualizando sistema...');
  for nX := 1 to UltimaVersaoSistema do
    begin
      Application.ProcessMessages;
      Result := ExecutaAtualizacao('versao' + IntToStr(nX), nX);
      MoveBar('Aguarde, atualizando p/ versão: ' + IntToStr(nX));
      if not Result then
        break;
    end;

    FimBar;
    Aguarda;
  except
    FimBar;
  end;

end;

procedure TfrmScript.ExecutarAntes(nVersao: Integer);
begin
  //se versao for tal , então cria função que faz algo necessário antes
  //if      (nVersao = 80)   then self.ExecutarAntesVersao80
end;

procedure TfrmScript.ExecutarDepois(nVersao: Integer);
begin
  //se versao for tal , então cria função que faz algo necessário após
  //if      (nVersao = 90)   then self.ExecutarAntesVersao90
end;

procedure TfrmScript.qry2ExecuteError(Sender: TObject; Error, SQLText: String;
  LineIndex: Integer; var Ignore: Boolean);
begin
  raise Exception.Create('Erro no script: Execute Error: ' + Error);
end;

procedure TfrmScript.qry2ParseError(Sender: TObject; Error, SQLText: String;
  LineIndex: Integer);
begin
  raise Exception.Create('Erro no script: Parse Error: ' + Error);
end;

end.

