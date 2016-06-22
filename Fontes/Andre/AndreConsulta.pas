unit AndreConsulta;

interface

uses MDOQuery,Modulo,Classes,DB,DBTables, ZDataSet;


Type TAndreConsulta = class(TCollectionItem)
        private
            
            FContinua : Boolean;
            FSql : String;
            FQry : TMDOQuery;
            FQryDBF : TQuery;
            FCount : Integer;
            FCondicaoWhere : String;
            FDatabaseDBF   : Boolean;
            FIndice: Integer;
            

            function GetDisplayName: String; override;
            procedure Assign(Source: TPersistent);override;
            procedure adicionaSQL(const Value: String);

            { retorna a posição do item na coleção }
            function getPosicao: Integer;

            { Retorena a quantidade de linhas }
            function getCount: Integer;
            procedure localizaCondicao;


            function getNumLinhaAtu: Integer;



            procedure erroNoParametro( NomeParametro : String; Valor : Variant; Erro : TObject );
            procedure SetIndice(const Value: Integer);
    

        public
            // verifica se a query está ativa.
            function estaAtivo:Boolean;

            procedure salvarSQL(caminho :String);

            property Indice : Integer read FIndice write SetIndice;

            function EstaVazia:Boolean;

            procedure setParametroFloat( NomeParametro : String ;Valor : Real );
            procedure setParametroInteiro( NomeParametro : String ;Valor : Integer );

            procedure setParametroString( NomeParametro : String ; Valor : String );

            { verifica se é o fim da query }
            function EOF:Boolean;

            { Retorna a Query do tipo TMDOQuery em uso }
            function Query: TMDOQuery;

            { Retorna o dataSet em uso }
            function DataSet:TDataSet;
            { Locate }
            function Localiza(field: String; value : Variant):Boolean;

            { inicia uma consulta com SQL }
            function  IniciaConsulta( sql : String ):Boolean;overload;
            { inicia uma consulta sem SQL }
            function  IniciaConsulta:Boolean;overload;

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

            { ações referente a transação }
            procedure Commit;
            procedure Rollback;

            procedure NovoSQL(sql :String );

            { move a consulta para primeira linha }
            procedure PrimeiraLinha;

            property SQL : String read fSql write adicionaSQL ;
            property Continua : Boolean read fContinua write fContinua default False;
            property Posicao  : Integer read getPosicao ;
            property Count : Integer read getCount;
            property NumeroLinhaAtual : Integer read getNumLinhaAtu;


            function Sum( ACampo : String ):Real;
            procedure databaseDBF( APAthDBF : String );


end;

function consultaFactory( ASql : String ):TAndreConsulta;

implementation

uses Variants, MDODatabase, SysUtils, CollectionAndreConsulta;

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


{ TAndreConsulta }

var VQry: TCollectionAndreConsulta;

function consultaFactory( ASql : String ):TAndreConsulta;
begin
  if VQry = nil then
    VQry := TCollectionAndreConsulta.Create(nil);

  Result := VQry.Add(ASql);
end;


function TAndreConsulta.AbreConsulta: Boolean;
begin
    Self.FCount := 0;
    Self.FQry.Prepare;
    Self.FQry.Open;
    Self.Continua := not Self.FQry.IsEmpty;
    Result := Self.Continua;
end;

procedure TAndreConsulta.adicionaSQL(const Value: String);
begin
  if self.FQry <> nil then
  begin
    Self.FQry.SQL.Add(Value);
    fSql := fSql + Value;
  end;
end;

function TAndreConsulta.Anterior: Boolean;
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

procedure TAndreConsulta.Assign(Source: TPersistent);
begin

  if Source is TAndreConsulta then
    FQry  := TAndreConsulta(Source).FQry

  else
    inherited Assign(Source);

end;

function TAndreConsulta.FechaConsulta: Boolean;
begin
    if Self.FQry.Active then
    begin
        //self.FQry.UnPrepare;
        Self.FQry.Close;
    end;
end;

function TAndreConsulta.getCampoConsulta(NomeCampo: String): Variant;
begin
    if Self.FQry.FieldByName(NomeCampo).Value <> Null then
        Result := Self.FQry.FieldByName(NomeCampo).Value
    else
        Result := 0
end;

function TAndreConsulta.GetDisplayName: String;
begin
    Result := inherited GetDisplayName;
end;

function TAndreConsulta.getParametro(NomeParametro: String): Variant;
begin
    if Self.FQry.ParamByName(NomeParametro).Value <> Null then
        Result := Self.FQry.ParamByName(NomeParametro).Value;
end;

function TAndreConsulta.IniciaConsulta(sql: String): Boolean;
begin
     if Self.FQry = nil then
     begin
         Self.FQry := TMDOQuery.Create(nil);
         Self.FQry.Database    := dm.DataBase;
         Self.FQry.Transaction := dm.Transaction;
     end;
     LimpaSQL;
     Self.FQry.SQL.Add(sql);
end;

function TAndreConsulta.getPosicao: Integer;
begin
  Result := inherited Index;
end;

function TAndreConsulta.IniciaConsulta: Boolean;
begin
    IniciaConsulta('');
end;

procedure TAndreConsulta.LimpaSQL;
begin
    Self.fSql := '';
    Self.FQry.SQL.Clear;
end;

function TAndreConsulta.Proximo: Boolean;
begin
    Self.FQry.Next;
    Result := not Self.FQry.Eof;
    Continua := not Self.FQry.Eof;
end;

procedure TAndreConsulta.setParametro(NomeParametro: String;
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

function TAndreConsulta.getCampoConsulta(NumeroCampo: Integer): Variant;
begin
     Result := getCampoConsulta(Self.FQry.Fields[NumeroCampo].FieldName);
end;

procedure TAndreConsulta.Commit;
begin
    if dm.transaction.InTransaction then
        dm.transaction.Commit;
end;

procedure TAndreConsulta.Rollback;
begin
    if dm.transaction.InTransaction then
        dm.transaction.Rollback;
end;

function TAndreConsulta.EOF: Boolean;
begin
    Result := Self.FQry.Eof;
end;

function TAndreConsulta.Localiza(field: String; value: Variant): Boolean;
begin
    Result := Self.FQry.Locate(field,value,[]);
end;

function TAndreConsulta.DataSet: TDataSet;
begin
    Result := FQry;
end;

procedure TAndreConsulta.NovoSQL(sql: String);
begin
    LimpaSQL;
    if Self.FQry = nil then
        Self.FQry := dm.GetQueryInstance;

    Self.FQry.SQL.Add(sql);
end;

procedure TAndreConsulta.ExecutaSQL;
begin
  if Self.FQry <> nil then
    Self.FQry.ExecSQL;
end;

function TAndreConsulta.getNomeCampoConsulta(
  NumeroCampo: Integer): Variant;
begin
    Result := Self.FQry.Fields[NumeroCampo].FieldName ;
end;

function TAndreConsulta.getCount: Integer;
var ACount:TAndreConsulta;
    nX : Integer;
begin
  //(Self.FCount <= 0) and
  if estaAtivo then
  begin
    Self.localizaCondicao;
    ACount := TAndreConsulta.Create(nil);
    Self.localizaCondicao;
    ACount.IniciaConsulta(_select+_count+FCondicaoWhere);
    for nX := 0 to (Self.FQry.ParamCount-1) do
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

procedure TAndreConsulta.localizaCondicao;
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

function TAndreConsulta.getNumLinhaAtu: Integer;
begin
    if estaAtivo then
    if not FDatabaseDBF then
      Result := Self.FQry.RecNo
    else
      Result := Self.FQryDBF.RecNo

end;

procedure TAndreConsulta.PrimeiraLinha;
begin
    if estaAtivo then
    if not FDatabaseDBF then
        Self.FQry.First
    else
        Self.FQryDBF.First

end;

function TAndreConsulta.estaAtivo: Boolean;
begin
  if FDatabaseDBF then
    Result := (FQryDBF <> nil) and Self.FQryDBF.Active
  else
    Result := (Self.FQry <> nil)and Self.FQry.Active

end;

procedure TAndreConsulta.databaseDBF(APAthDBF: String);
begin
    if not DirectoryExists(APAthDBF)then
      raise Exception.Create(' Diretório Invalido ');

    if estaAtivo then
        FQryDBF.DatabaseName := APAthDBF;

end;

procedure TAndreConsulta.setParametroFloat(NomeParametro: String;
  Valor: Real);
begin
   try
     Self.FQry.ParamByName(NomeParametro).AsFloat := Valor;
   except
      on e : Exception do
        erroNoParametro(NomeParametro,Valor,e);
   end;

end;

procedure TAndreConsulta.setParametroString(NomeParametro, Valor: String);
begin
   try
     Valor := Trim(StringReplace( Valor ,chr(39),'',[rfReplaceAll,rfIgnoreCase]));
     Self.FQry.ParamByName(NomeParametro).AsString := Valor;
   except
     on e : Exception do
      erroNoParametro(NomeParametro,Valor,e);
   end;

end;

procedure TAndreConsulta.erroNoParametro(NomeParametro: String;
  Valor: Variant; Erro: TObject);
begin
   Raise Exception.Create('Parametro '+NomeParametro+ ': '+Valor+' não encotrado!'+#13+ Exception(Erro).Message);
end;

function TAndreConsulta.Sum(ACampo: String): Real;
var qrySum : TAndreConsulta;
    nX: Integer;
begin
   if estaAtivo then
   begin
     Self.localizaCondicao;
     qrySum := TAndreConsulta.Create(nil);
     qrySum.IniciaConsulta(_select+' Sum( '+ACampo+')'+FCondicaoWhere);
     for nX := 0 to (Self.FQry.ParamCount-1) do
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

function TAndreConsulta.EstaVazia: Boolean;
begin
  Result := Self.FQry.IsEmpty;
  
end;

procedure TAndreConsulta.SetIndice(const Value: Integer);
begin
  FIndice := Value;
end;

function TAndreConsulta.Query: TMDOQuery;
begin
  Result := Pointer(FQry);
end;


function TAndreConsulta.getCampo(NomeCampo: String): TField;
begin
  Result := Self.FQry.FieldByName(NomeCampo);
end;

procedure TAndreConsulta.salvarSQL(caminho: String);
begin
  self.FQry.SQL.SaveToFile(caminho);
end;

procedure TAndreConsulta.setParametroInteiro(NomeParametro: String;
  Valor: Integer);
begin
   try
     Self.FQry.ParamByName(NomeParametro).AsInteger := Valor;
   except
      on e : Exception do
        erroNoParametro(NomeParametro,Valor,e);
   end;
end;

end.
