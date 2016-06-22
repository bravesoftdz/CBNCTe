unit Modulo;

interface

uses
  SysUtils, Classes, MDODatabase, DB, Parametro, MDOQuery, MDOCustomDataSet, Dialogs,
  IniFiles, DBClient, Provider;
type
  Tdm = class(TDataModule)
    Database: TMDODatabase;
    Transaction: TMDOTransaction;
    qryGeneric: TMDOQuery;
    qryGeneric2: TMDOQuery;
    DBRemoto: TMDODatabase;
    TransactionR: TMDOTransaction;
    dspGeneric: TDataSetProvider;
    cdsGeneric: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    FParametro: TParametro;
    FversaoAtual: Integer;

    procedure SetParametro(const Value: TParametro);
    procedure verificaVersao;
    function  getVersao :integer;
    procedure SetversaoAtual(const Value: Integer);
  public
    Ini : TIniFile;
    cancelaInicializacao :boolean;

    property Parametro: TParametro read FParametro write SetParametro;
    property versaoAtual :Integer read FversaoAtual write SetversaoAtual;

    function GetQueryInstance: TMDOQuery; overload;
    function GetQueryInstance(cSql: String): TMDOQuery; overload;
    function getNextGenValue(cGen: String; nQt: Integer = 1): Integer;
  end;

var
  dm: Tdm;

implementation

uses uSelecionaBD, uScript, uPergunta, funcoes_cte;

{$R *.dfm}

{ Tdm }

procedure Tdm.SetParametro(const Value: TParametro);
begin
  FParametro := Value;
end;

function Tdm.GetQueryInstance: TMDOQuery;
var aQry: TMDOQuery;
begin
 { ATENÇÃO TESTE ARRISCADO! }

  {qry := consultaFactory('');
  Result :=  qry.Query;}

  aQry := TMDOQuery.Create(Self);

  aQry.Database    := dm.DataBase;
  aQry.Transaction := dm.Transaction;
  aQry.SQL.Clear;

  Result := aQry;

end;

function Tdm.GetQueryInstance(cSql: String): TMDOQuery;
var aQry : TMDOQuery;
begin
  aQry := self.GetQueryInstance;
  aQry.SQL.Add(cSql);
  Result := aQry;
end;

function Tdm.getNextGenValue(cGen: String; nQt: Integer = 1): Integer;
var qry: TMDOQuery;
begin
  qry := self.GetQueryInstance('select gen_id(' + cGen + ', ' + IntToStr(nQt) + ') from rdb$database');
  qry.Open;
  Result := qry.Fields[0].AsInteger;
  qry.Close;
  FreeAndNil(qry);
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
begin

 cancelaInicializacao := false;
 Ini := TIniFile.Create(PathSis+ 'CBNCTe.ini');

 if (Ini.ReadString('BD','CAMINHO','') = '') then begin
   frmSelecionaBD := TFrmSelecionaBD.Create(self);
   if frmSelecionaBD.ShowModal = 1 then begin
     ini.WriteString('BD','CAMINHO',trim(frmSelecionaBD.edtCaminho.Text));
     frmSelecionaBD.Release;
   end
   else begin
     frmSelecionaBD.Release;
     Self.cancelaInicializacao := true;
     exit;
   end;
 end;

 if Ini.ReadString('REMOTO','CAMINHO','') = '' then
   ini.WriteString('REMOTO','CAMINHO','');

 self.Database.Close;
 self.Database.DatabaseName := Ini.ReadString('BD','CAMINHO',''); //self.Parametro.BDPadrao;
 Self.Database.Open;

 if (trim(Ini.ReadString('REMOTO','CAMINHO','')) <> '') and (FileExists(trim(Ini.ReadString('REMOTO','CAMINHO','')))) then
  begin
    self.DBRemoto.Close;
    self.DBRemoto.DatabaseName := Ini.ReadString('REMOTO','CAMINHO','');//Self.Parametro.BDRemoto;
    self.DBRemoto.Open;
  end;
  
 FversaoAtual := getVersao;

 verificaVersao;
  
 self.Parametro := TParametro.Create;
 Self.Parametro := Parametro.Get;

 Self.Parametro.BDRemoto := Ini.ReadString('REMOTO','CAMINHO','');
 Self.Parametro.BDPadrao := Ini.ReadString('BD','CAMINHO','');
 SELF.Parametro.Salvar;

 FreeAndNil(ini);
end;

procedure Tdm.verificaVersao;
begin
  frmScript := TfrmScript.Create(nil);

  if UltimaVersaoSistema > FversaoAtual then
    begin
      frmPergunta := TFrmPergunta.Create(nil);
      frmPergunta.lblMen.Caption := '>>> Atenção <<<' + #13 + 'As atualizações que serão realizadas a seguir são irreverssíveis!' + #13 + 'Você ja fez um backup do sistema antes de atualizar?';

      If frmPergunta.ShowModal = 1 then
        begin
          if not frmScript.ExecutaAtualizacoesBanco then
            begin
              Avisar('Não foi possível atualizar o banco de dados!');
              cancelaInicializacao := true;
              exit;
            end;                                                        
        end
      else
        begin
          cancelaInicializacao := true;
          exit;
        end;

      frmPergunta.Release;
    end;

  frmScript.Release;

  if UltimaVersaoSistema < dm.versaoAtual then
    begin
      Avisar('O seu sistema encontra-se desatualizado!' + #13 + 'Favor atualizar antes de continuar!');
      cancelaInicializacao := true;
    end;
end;

function Tdm.getVersao: integer;
begin
 try
  self.qryGeneric.Close;
  self.qryGeneric.SQL.Text := 'select versao from parametros';
  self.qryGeneric.Open;

  result := self.qryGeneric.fieldByName('versao').AsInteger;
  
 finally
   self.qryGeneric.Close;
 end;
end;

procedure Tdm.SetversaoAtual(const Value: Integer);
begin
  FversaoAtual := Value;
end;

end.
