unit ZConsulta;

interface

uses Modulo,Classes,DB,DBTables, ZDataSet, ZConnection, funcoes_SGVE, MDOQUERY,MDODatabase;


Type TZConsulta = class
        private

            FContinua : Boolean;
            FSql : String;
            FQry : TMDOQUERY;
            FQryDBF : TQuery;
            FCount : Integer;
            FCondicaoWhere : String;
            FDatabaseDBF   : Boolean;
            FIndice: Integer;
            FDataBase : TMDODatabase;
            

            procedure adicionaSQL(const Value: String);

            { Retorena a quantidade de linhas }
            function getCount: Integer;

            procedure localizaCondicao;

            function getNumLinhaAtu: Integer;

            procedure erroNoParametro( NomeParametro : String; Valor : Variant; Erro : TObject );

            procedure SetIndice(const Value: Integer);

            procedure SetzQuery(const Value: TMDOQUERY);

            procedure iniciaConexao(const cCaminhoBase :String);

        public
            // verifica se a query está ativa.
            function estaAtivo:Boolean;

            property Indice : Integer read FIndice write SetIndice;

            function EstaVazia:Boolean;

            procedure setParametroFloat( NomeParametro : String ;Valor : Real );
            procedure setParametroInteger( NomeParametro :String; Valor :Integer);

            procedure setParametroString( NomeParametro : String ; Valor : String );

            { verifica se é o fim da query }
            function EOF:Boolean;

            { Retorna a Query do tipo TMDOQuery em uso }
            function Query: TZQuery;

            { Retorna o dataSet em uso }
            function DataSet:TDataSet;
            { Locate }
            function Localiza(field: String; value : Variant):Boolean;
            

            { inicia uma consulta com SQL }
            function  IniciaConsulta( sql : String ):Boolean;overload;
            { inicia uma consulta sem SQL }
            function  IniciaConsulta:Boolean;overload;

            { Retorna no número de linhas da consulta }
            function numeroDeLinhas :Integer;

            { abre uma consulta }
            function  AbreConsulta:Boolean;

            procedure ExecutaSQL;

            { fecha a consulta se ela estivar ativa }
            function  FechaConsulta:Boolean;

            { seta um paramentro da consulta }
            procedure setParametro( NomeParametro : String ; Valor : Variant );


            { retorna um valor não nulo de um parametro da consulta }
            function  getParametro( NomeParametro : String ):Variant;

            { retorna um valor não nulo de um campo da consulta }
            function  getCampoConsulta( NomeCampo   : String ):Variant;overload;
            function  getCampoConsulta( NumeroCampo : Integer ):Variant;overload;
            function  getNomeCampoConsulta(NumeroCampo : Integer ):Variant;

            function  getCampo( NomeCampo : String ):TField;


            { Pula para proxima linha da consulta }
            function  Proximo:Boolean;

            { Pula consulta para linha anterior }
            function  Anterior:Boolean;

            { Limpa o SQL da consulta }
            procedure LimpaSQL;

            { *Atualiza Generator* }
            function getNextGenValue(const cGen: String; const nQt: Integer = 1): Integer;
            procedure setValueGen(cGen: String; nQt: Integer);


            { ações referente a transação }
            procedure Commit;
            procedure Rollback;

            procedure NovoSQL(sql :String );

            { move a consulta para primeira linha }
            procedure PrimeiraLinha;

            { move a consulta para a ultima linha }
            procedure UltimaLinha;

            property SQL : String read fSql write adicionaSQL ;
            property Continua : Boolean read fContinua write fContinua default False;
            property Count : Integer read getCount;
            property NumeroLinhaAtual : Integer read getNumLinhaAtu;
            property zQuery: TMDOQUERY read FQry write SetzQuery;


            function Sum( ACampo : String ):Real;
            procedure databaseDBF( APAthDBF : String );

            procedure iniciaQuery;

            { *Setando caminho da base diferente do padrão* }
            constructor create(const cCaminhoBase :String); overload;
            { *Setando caminho da base padrão* }
            constructor create; overload;

end;


implementation

uses Variants, SysUtils, SGVECA;

const
   _where    = ' where ';
   _and      = ' and ';
   _or       = ' or  ';
   _like     = ' like ';
   _select   = ' select ';
   _update   = ' update ';
   _delete   = ' delete ';
   _from     = ' from ';
   _insertInto  = ' insert into ';
   _todosCampos = ' * ';
   _values      = ' values ';
   _set         = ' set ';
   _count       = ' count(*) ';


{ TZConsulta }

function TZConsulta.AbreConsulta: Boolean;
begin
    Self.FCount := 0;
    Self.FQry.Open;
    Self.Continua := not Self.FQry.IsEmpty;
    Result := Self.Continua;
end;

procedure TZConsulta.adicionaSQL(const Value: String);
begin
  if self.FQry <> nil then
  begin
    Self.FQry.SQL.Add(Value);
    fSql := fSql + Value;
  end;
end;

function TZConsulta.Anterior: Boolean;
begin
    if estaAtivo and (Self.FQry.RecNo > 0) then
    begin
       Self.FQry.RecNo := Self.FQry.RecNo - 1;
       Result := not Self.FQry.Eof;
       Continua := not Self.FQry.Eof;
    end
    else
    begin
       Result := False;
       Continua := False;
    end;
end;

function TZConsulta.FechaConsulta: Boolean;
begin
    if Self.FQry.Active then
    begin
        Self.FQry.Close;
    end;
end;

function TZConsulta.getCampoConsulta(NomeCampo: String): Variant;
begin
    if Self.FQry.FieldByName(NomeCampo).Value <> Null then
        Result := Self.FQry.FieldByName(NomeCampo).Value
    else
        Result := 0
end;

function TZConsulta.getParametro(NomeParametro: String): Variant;
begin
    if Self.FQry.ParamByName(NomeParametro).Value <> Null then
        Result := Self.FQry.ParamByName(NomeParametro).Value;
end;

function TZConsulta.IniciaConsulta(sql: String): Boolean;
begin
     if Self.FQry = nil then
     begin
         Self.FQry := DM.GetQueryInstance;
     end;
     LimpaSQL;
     Self.FQry.SQL.Add(sql);
end;

function TZConsulta.IniciaConsulta: Boolean;
begin
    IniciaConsulta('');
end;

procedure TZConsulta.LimpaSQL;
begin
    Self.fSql := '';
    Self.FQry.SQL.Clear;
end;

function TZConsulta.Proximo: Boolean;
begin
    Self.FQry.Next;
    Result := not Self.FQry.Eof;
    Continua := not Self.FQry.Eof;
end;

procedure TZConsulta.setParametro(NomeParametro: String;
  Valor: Variant);
  var aTesta: Extended;
begin
   try
      (* Verifico se converte para float e se tem valores até duas casas      *
      *  decimais, se tiver seto o parametro como um float, pois na conversão *
      *  de float para variante há um arredondamento, assim perdendo os       *
      * valores após a virgula.                                               *)
      //LR-I
      if Length(Valor) >=  9 then //nr.pedidos grandes
        Self.FQry.ParamByName(NomeParametro).Value := Valor
      else
      begin
      //LR-F
        if TryStrToFloat(Valor,aTesta) and ((Valor*100 mod 100)>0) then
          Self.setParametroFloat(NomeParametro,Valor)


        else
          Self.FQry.ParamByName(NomeParametro).Value := Valor;
       end;   
   except
     on e : Exception  do
       erroNoParametro(NomeParametro,Valor,e);
   end;
end;

function TZConsulta.getCampoConsulta(NumeroCampo: Integer): Variant;
begin
     Result := getCampoConsulta(Self.FQry.Fields[NumeroCampo].FieldName);
end;

procedure TZConsulta.Commit;
begin
    if dm.transaction.InTransaction then
        dm.transaction.Commit;
end;

procedure TZConsulta.Rollback;
begin
    if dm.transaction.InTransaction then
        dm.transaction.Rollback;
end;

function TZConsulta.EOF: Boolean;
begin
    Result := Self.FQry.Eof;
end;

function TZConsulta.Localiza(field: String; value: Variant): Boolean;
begin
    Result := Self.FQry.Locate(field,value,[]);
end;

function TZConsulta.DataSet: TDataSet;
begin
    Result := FQry;
end;

procedure TZConsulta.NovoSQL(sql: String);
begin
    LimpaSQL;
    if Self.FQry = nil then
        Self.FQry := dm.GetQueryInstance;

    Self.FQry.SQL.Add(sql);
end;

procedure TZConsulta.ExecutaSQL;
begin
  if Self.FQry <> nil then
    Self.FQry.ExecSQL;
end;

function TZConsulta.getNomeCampoConsulta(
  NumeroCampo: Integer): Variant;
begin
    Result := Self.FQry.Fields[NumeroCampo].FieldName ;
end;

function TZConsulta.getCount: Integer;
var ACount:TZConsulta;
    nX : Integer;
begin
  //(Self.FCount <= 0) and
  if estaAtivo then
  begin
    Self.localizaCondicao;
    ACount := TZConsulta.create;
    Self.localizaCondicao;
    ACount.IniciaConsulta(_select+_count+FCondicaoWhere);
    for nX := 0 to (Self.FQry.Params.Count -1) do
    begin
        ACount.setParametro(Self.FQry.Params[nX].Name,Self.FQry.Params[nX].AsString);
    end;
    ACount.AbreConsulta;
    Self.FCount := ACount.getCampoConsulta(0);
    ACount.FechaConsulta;
    FreeAndNil(ACount);
    ACount := nil;
  end;
  
  Result := Self.FCount;

end;

procedure TZConsulta.localizaCondicao;
var nX : Integer;
    nY : Integer;
begin
    fSql := Self.FQry.SQL.GetText;
    FCondicaoWhere := fSql;
    for nX := 1 to length(fSql) do
    begin
        (* Copia tudo apartir do From
        *)
        if UpperCase(_from) = UpperCase(' '+copy(fSql,nX,4)+' ') then
          FCondicaoWhere := copy(fSql,nX,length(fSql));

        (* Remove o order by
        *)
        if UpperCase('order by') = UpperCase(copy(FCondicaoWhere,nX,8)) then
          FCondicaoWhere := copy(FCondicaoWhere,1,nX-1);
    end;
end;

function TZConsulta.getNumLinhaAtu: Integer;
begin
    if estaAtivo then
    if not FDatabaseDBF then
      Result := Self.FQry.RecNo
    else
      Result := Self.FQryDBF.RecNo

end;

procedure TZConsulta.PrimeiraLinha;
begin
    if estaAtivo then
    if not FDatabaseDBF then
        Self.FQry.First
    else
        Self.FQryDBF.First

end;

function TZConsulta.estaAtivo: Boolean;
begin
  if FDatabaseDBF then
    Result := (FQryDBF <> nil) and Self.FQryDBF.Active
  else
    Result := (Self.FQry <> nil)and Self.FQry.Active

end;

procedure TZConsulta.databaseDBF(APAthDBF: String);
begin
    if not DirectoryExists(APAthDBF)then
      raise Exception.Create(' Diretório Invalido ');

    if estaAtivo then
        FQryDBF.DatabaseName := APAthDBF;

end;

procedure TZConsulta.setParametroFloat(NomeParametro: String;
  Valor: Real);
begin
   try
     Self.FQry.ParamByName(NomeParametro).AsFloat := Valor;
   except
      on e : Exception do
        erroNoParametro(NomeParametro,Valor,e);
   end;

end;

procedure TZConsulta.setParametroString(NomeParametro, Valor: String);
begin
   try
     Valor := Trim(StringReplace( Valor ,chr(39),'',[rfReplaceAll,rfIgnoreCase]));
     Self.FQry.ParamByName(NomeParametro).AsString := Valor;
   except
     on e : Exception do
      erroNoParametro(NomeParametro,Valor,e);
   end;

end;

procedure TZConsulta.erroNoParametro(NomeParametro: String;
  Valor: Variant; Erro: TObject);
begin
   Raise Exception.Create('Parametro '+NomeParametro+ ': '+Valor+' não encotrado!'+#13+ Exception(Erro).Message);
end;

function TZConsulta.Sum(ACampo: String): Real;
var qrySum : TZConsulta;
    nX: Integer;
begin
   if estaAtivo then
   begin
     Self.localizaCondicao;
     qrySum := TZConsulta.Create;
     qrySum.IniciaConsulta(_select+' Sum( '+ACampo+')'+FCondicaoWhere);
     for nX := 0 to (Self.FQry.Params.Count -1) do
      begin
          qrySum.setParametro(Self.FQry.Params[nX].Name,Self.FQry.Params[nX].AsString);
      end;
     qrySum.AbreConsulta;
     Result := qrySum.getCampoConsulta(0);
     qrySum.FechaConsulta;
     FreeAndNil(qrySum);
     qrySum := nil;
   end;
end;

function TZConsulta.EstaVazia: Boolean;
begin
  Result := Self.FQry.IsEmpty;
  
end;

procedure TZConsulta.SetIndice(const Value: Integer);
begin
  FIndice := Value;
end;

function TZConsulta.Query: TZQuery;
begin
  Result := Pointer(FQry);
end;


function TZConsulta.getCampo(NomeCampo: String): TField;
begin
  Result := Self.FQry.FieldByName(NomeCampo);
end;

procedure TZConsulta.iniciaQuery;
begin
  FQry := TMDOQuery.Create(nil);
  FQry.Database    := FDataBase;
  FQry.Transaction := FDataBase.DefaultTransaction;
end;

procedure TZConsulta.SetzQuery(const Value: TMDOQUERY);
begin
  FQry := Value;
end;



procedure TZConsulta.iniciaConexao(const cCaminhoBase :String);
begin

   try
      if not assigned(self.FDatabase) then
        begin
          self.FDatabase := TMDODatabase.Create(nil);
          self.FDataBase.DefaultTransaction := TMDOTransaction.Create(nil);

        end;

      if self.FDatabase.Connected then
        self.FDatabase.Connected := false;

      self.FDatabase.Params.Text  := 'user_name=sysdba'+#13+
                                     'password=masterkey';
      self.FDataBase.LoginPrompt := false;
      self.FDataBase.ClientLib := clAutoDetect;

      if (cCaminhoBase <> '') then
        self.FDataBase.DatabaseName  := cCaminhoBase
      else
        self.FDataBase.DatabaseName  := cArqIni.ReadString(TERM,'BASE','');

      self.FDataBase.Connected   := true;
   except
     on E: Exception do
      begin
        if self.FDatabase.DefaultTransaction.InTransaction then
          self.FDatabase.DefaultTransaction.Commit;

        if self.FDataBase.Connected then
          self.FDataBase.Connected := false;

        avisar(E.Message);
      end;
   end;
end;

constructor TZConsulta.create(const cCaminhoBase: String);
begin
   self.iniciaConexao(cCaminhoBase);

   if assigned(self.FQry) then
    begin
       self.FQry := DM.GetQueryInstance;
    end;
end;

constructor TZConsulta.create;
begin
   self.iniciaConexao('');

   if assigned(self.FQry) then
    begin
       self.FQry := DM.GetQueryInstance;
    end;

end;

function TZConsulta.getNextGenValue(const cGen: String;
  const nQt: Integer): Integer;
begin
  try

    if self.FQry.Active then
      self.FQry.Close;
      

    self.FQry.SQL.Clear;
    self.FQry.SQL.Add('select gen_id(' + cGen + ', ' + IntToStr(nQt) + ') from rdb$database');
    self.FQry.Open;

    Result := self.FQry.Fields[0].AsInteger;
  finally
    if self.FQry.Active then
      self.FQry.Close;
  end;
end;

procedure TZConsulta.setValueGen(cGen: String; nQt: Integer);
begin
  try
    if self.FQry.Active then
        self.FQry.Close;


    self.FQry.SQL.Clear;
    self.FQry.SQL.Add('SET GENERATOR '+cGen+' TO '+IntToStr(nQt));
    self.FQry.ExecSQL;
  finally
    if self.FQry.Active then
      self.FQry.Close;
  end;
end;

procedure TZConsulta.UltimaLinha;
begin
   if estaAtivo then
   if not FDatabaseDBF then
        Self.FQry.Last
    else
        Self.FQryDBF.Last
end;

function TZConsulta.numeroDeLinhas: Integer;
begin
   if Self.estaAtivo then
    begin
       self.FQry.Bookmark;
       self.FQry.Last;
       result := self.FQry.RecordCount;
       self.FQry.GetBookmark;
    end;
end;

procedure TZConsulta.setParametroInteger(NomeParametro: String;
  Valor: Integer);
begin
   try
     Self.FQry.ParamByName(NomeParametro).asInteger := Valor;
   except
      on e : Exception do
        erroNoParametro(NomeParametro,Valor,e);
   end;

end;

end.
