unit AndreRelatorio;

interface

{
    André Relatório  1º de março de 2010.
}

uses MDOQuery,  RDPrint, uAndreParam , ucdsToXls,Modulo {Substituir Modulo por uma dataModule qualquer},
     SysUtils,CollectionAndreConsulta,Dialogs,DBClient,Funcoes_sgve,classes,DatasetToCSV;

type TItemCabecalho = class
      public
          campo : TStringList;
          linha,coluna:Integer;
end;

type TCampo = class
      public
          FNomeCampo   : String;
          FConlunaBase : Integer;
          FAlias       : String;
end;

type TCampoTotalizado = class(TCampo)
end;

type TCampoSemiAuto   = class(TCampo)
end;



type TAndreRelatorio = class

     private
        FCamposSemiAuto    : TList;
        FCamposTotalizados : TList;
        fMsgErro      : String;
        fconfigManual : Boolean;
        print    : TRDprint;
        pAbrir   : TOpenDialog;
        pSalvar  : TSaveDialog;
        pCDSParam: TClientDataSet;
        pRelAuto : Boolean;
        pPathTXT : String;
        pPathCSV : String;

        pComprime: Boolean;
        pTxtCab  : TStringList;
        pConsultaCab : Integer;
        pTxtRodape : TStringList;
        pConsultaRodape : Integer;
        pSalvarXLS : Boolean;
        pSalvarCSV : Boolean;
        pCompress : Boolean;
        pRel40Colunas : Boolean;

        XLS       : TCdsToXls;
        pSubTitulo,pTitulo   : String;

        consultas : TCollectionAndreConsulta;

        pColuna , pLinhasPorPagina,pColunasPorPagina,linha,pagina : Integer;
        pContinua,pfolhaContinua,pVisualisar : Boolean;
        pImpressora  : String;
        pFontePadrao : TSize;

        pExportaTXT  : Boolean;
        pRodape, pPagZebra    : Boolean;
        pSQLAuto   : String;
        pDataHora  : Boolean;
        pUsaFortes : Boolean;

        FFrom : String;
        FRelatorioHTML: Boolean;

        procedure setPathTXT(const Value: String);

        { seleciona as substrings existentes entra o caracteres chaI e charF  }
        function  entreChar(charI,charF, str: String): TStringList;
        {uso interno}
        procedure adicionaValorerCabecalho( cabecalho , valores,campos : TStringList);

        {Completa com espaços até o fim do relatorio, não usada ainda}
        function  completaEspaco(str:String):String;overload;
        function  completaEspaco(str:String;AQtd : Integer):String;overload;

        {substitui a string por espaços}
        function  StrToEspaco(str : String):String;

        { monta o cabelhado de acordo com as colunas da consulta. }
        procedure  CabecalhoDetalhe( consulta : Integer );

        function   ImprimeRelAuto(consulta : Integer):Boolean;
        procedure  ItensAuto(consulta : Integer);overload;
    procedure SetRelatorioHTML(const Value: Boolean);


     protected
        qry      :  TMDOQuery;
        
        function  formataData(Data : TDateTime; Mask : String = 'dd/mm/yyyy'):String;
        procedure ApagaLinha;
        function  AbreRelatorio:Boolean;
        function  FechaRelario:Boolean;
        procedure Regua;
        procedure NovaPagina;
        function  PulaLinha:Integer;overload;
        function  Pulalinha(aQtdLinhas : Integer ):Boolean;overload;
        procedure Separacao;


        procedure  Cabecalho; overload;virtual;
        procedure  Cabecalho(texto : TStringList);overload;virtual;
        procedure  Cabecalho(varias: Boolean);overload;


        procedure  ItensAuto;overload;


        procedure  impRodape;virtual;
        function   QtdColunasAuto:Integer;overload;
        function   QtdColunasAuto(consulta : Integer):Integer;overload;
        procedure  ReconheceParamatros;


        procedure IniciaRelatorio;

        { verifica o fim de uma determinada consulta no collection }
        function EOF(consulta : Integer ):Boolean;

        { cria uma instancia da query e adiciona o sql }
        function  IniciaConsulta( sql : String ):Integer;overload;
        { inicia uma nova consulta no collection quando varias for true e retorna a posição da consulta
          na collection }
        function  IniciaConsulta( sql : String ; Varias : Boolean ):Integer;overload;



        { retorna o valor de um campo contido na query }
        function  getValorConsulta( NomeCampo : String ):Variant;overload;
        { retorna o valor de um campo de uma consulta dentro da collection pelo indice }
        function  getValorConsulta( NomeCampo : String ; Consulta : Integer):Variant;overload;



        { retorna o valor com o qual o parametro foi setado }
        function  getValorParametro( NomeParametro : String ):Variant;overload;
        { retorna o valor de uma parametro dentro da collection }
        function  getValorParametro( NomeParametro : String ;Consulta :  Integer):Variant;overload;



        { da um next na query e retorna o valor do query.eof }
        function   pulaLinhaConsulta:Boolean;overload;
        { da um next na consulta que está na collection }
        function   pulaLinhaConsulta(Consulta : Integer):Boolean;overload;

        function   localiza(consulta : Integer;field : String; value : Variant):Boolean;


        { abre a consulta }
        function   AbreConsulta:Boolean;overload;
        function   AbreConsulta(Consulta : Integer):Boolean;overload;


        { fecha a consulta }
        function   FechaConsulta:Boolean;overload;
        function   FechaConsulta(Consulta : Integer):Boolean;overload;

        { fecha as consultas e salva em XLS os dados }
        function   FechaConsulta( Todas : Boolean ):Boolean;overload;


        { imprime o campo string com o nome passado no parametro e imprime de acordo com a coluna base }
        procedure  imprimeCampoStringConsulta( NumeroCampo , colunaBase : Integer );overload;
        procedure  imprimeCampoStringConsulta( NomeCampo   : String ; colunaBase : Integer );overload;
        procedure  imprimeCampoStringConsulta( NomeCampo   : String );overload;
        procedure  imprimeCampoStringConsulta( maxLenth : Integer; NomeCampo   : String; colunaBase : Integer);overload;
        procedure  imprimeCampoStringConsulta( maxLenth : Integer; NomeCampo   : String; colunaBase,consulta : Integer);overload;


        procedure  imprimeCampoStringConsulta( NumeroCampo , colunaBase : Integer;Consulta : Integer );overload;
        procedure  imprimeCampoStringConsulta( NomeCampo   : String ; colunaBase : Integer;Consulta : Integer );overload;


        { imprime o campo data com o nome passado no parametro e imprime de acordo com a coluna base }
        function  imprimeCampoDataConsulta( NumeroCampo , colunaBase : Integer):TDateTime;overload;
        function  imprimeCampoDataConsulta( NomeCampo : String; colunaBase : Integer ):TDateTime;overload;
        function  imprimeCampoDataConsulta( NomeCampo : String):TDateTime;overload;
        function  imprimeCampoDataConsulta( NomeCampo : String; colunaBase:Integer; Consulta : Integer ):TDateTime;overload;


        { Imprime um campo inteiro e retorna o valor do mesmo }
        function   imprimeCampoInteiroConsulta( NomeCampo : String; colunaBase : Integer ):Integer;overload;
        function   imprimeCampoInteiroConsulta( NomeCampo : String; colunaBase : Integer ;Consulta : Integer):Integer;overload;



        { imprime o campo real, e retorna o valor do mesmo para fazer um totalizador, com o nome passado no parametro e imprime de acordo com a coluna base }
        function   imprimeCampoValorConsulta(NumeroCampo , colunaBase:Integer):Real;overload;
        function   imprimeCampoValorConsulta(NomeCampo : String; colunaBase:Integer):Real;overload;
        function   imprimeCampoValorConsulta(NomeCampo : String):Real;overload;

        function   imprimeCampoValorConsulta(NumeroCampo , colunaBase:Integer; Consulta : Integer):Variant;overload;
        function   imprimeCampoValorConsulta(NomeCampo : String; colunaBase:Integer; Consulta : Integer):Variant;overload;




        { adiciona linha centralizada }
        procedure  AdicionaLinhaCabecalho( novaLinha: String );
        procedure  AdicionaLinhaCentralizada( novaLinha: String );

        { adiciona linha ao relatorio }
        procedure  AdicionaLinhaRelatorio( novaLinha: String);overload;

        { adiciona linha ao relatorio de acordo com a coluna base sem pular linha}
        procedure  AdicionaLinhaRelatorio( novaLinha: String; colunaBase :Integer; alinhada : String; espaco : Integer);overload;
        procedure  AdicionaLinhaRelatorio( novaLinha: String; colunaBase :Integer );overload;
        procedure  AdicionaLinhaRelatorio( novaLinha: String; colunaBase,linhaBase :Integer );overload;

        { adiciona linha ao relatorio de acordo com a coluna }
        procedure  AdicionaLinhaRelatorioSemPular( novaLinha: String; colunaBase:Integer );

        { adiciona valor ao relatório sem pular linha de acordo com a coluna base }
        procedure  AdicionaValorRelatorio( novoValor: Real ; colunaBase : Integer; mascara: String = '0.00' ); overload;
        procedure  AdicionaValorRelatorio( novoValor: Real; mascara: String = '0.00' ); overload;
        procedure  AdicionaValorRelatorio( novoValor: Real; colunaBase,linhaBase : Integer ); overload;

        procedure  AdicionaDataRelatorio( novaData : TDateTime; colunaBase : Integer ; mascara: String = 'dd/mm/yyyy' );overload;
        procedure  AdicionaDataRelatorio( novaData : TDateTime;  mascara: String = 'dd/mm/yyyy' );overload;

        procedure  AdicionaHoraRelatorio( novaHora : TDateTime;  mascara: String = 'hh:MM:ss'; colunaBase : Integer = 0  );

        procedure imprimirStringList(stringList : TStringList);



        property  VisualisarImpressao : Boolean read pVisualisar       write pVisualisar       default True;
        property  FontePadrao         : TSize   read pFontePadrao          write pFontePadrao  default S12cpp;
        property  LinhasPorPagina     : Integer read pLinhasPorPagina  write pLinhasPorPagina  default 66 ;
        property  ColunasPorPagina    : Integer read pColunasPorPagina write pColunasPorPagina default 80 ;
        property  Continua            : Boolean read pContinua         write pContinua         default False;
        property  FolhaContinua       : Boolean read pfolhaContinua    write pfolhaContinua    default False;
        property  Impressora          : String  read pImpressora       write pImpressora ;
        property  PaginaZebrada       : Boolean read pPagZebra         write pPagZebra         default True;
        property  Rodape              : Boolean read pRodape           write pRodape           default False;
        property  RelAuto             : Boolean read pRelAuto          write pRelAuto          default False;
        property  NaoComprime            : Boolean read pComprime         write pComprime;

     public
        procedure imprimeEmFortes;
        function ToString:String;
        property Compress : Boolean read pCompress write pCompress;

        { Imprime utilizando fortes report }
        property UsaFortes : Boolean read pUsaFortes write pUsaFortes;

        property  ExportaTXT          : Boolean read pExportaTXT       write pExportaTXT       default False;
        property  PathTXT             : String  read pPathTXT          write setPathTXT;
        property  PathCSV             : String  read pPathCSV          write pPathCSV;
        
        property  SalvaXLS            : Boolean read pSalvarXLS write pSalvarXLS default False;
        property  SalvaCSV            : Boolean read pSalvarCSV write pSalvarCSV default False;

        property  Rel40Colunas        : Boolean read pRel40Colunas write pRel40Colunas;

        property  Titulo              : String  read pTitulo    write pTitulo ;
        property  DataHora            : Boolean read pDataHora  write pDataHora;
        property  MessageErro         : String  read fMsgErro   ;

        property  TxtCabecalho        : TStringList read pTxtCab       write pTxtCab;
        property  TxtRodape           : TStringList read pTxtRodape    write pTxtRodape;
        property  ConsultaRodape      : Integer     read pConsultaRodape write pConsultaRodape;
        property  ConsultaCabecalho   : Integer     read pConsultaCab write pConsultaCab;
        property  SQLAutomatico       : String      read pSQLAuto     write pSQLAuto;
        property  SubTitulo           : String      read pSubTitulo   write pSubTitulo;

        property UsaRelatorioHTML : Boolean read FRelatorioHTML write SetRelatorioHTML;

        function  imprimir:Boolean;virtual;abstract;
        function  RelatorioAutomatico:Boolean;overload;
        function  RelatorioAutomatico(pSql: String): Boolean;overload;
        function  RelatorioAutomatico(pSql: String; pVarios:Boolean):Integer;overload;
        function  FechaRelatorioAuto:Boolean;

        { adiciona um valor aos parametros do sql adicionado }
        procedure  AdicionaParametroConsulta( NomeParametro : String; ValorParametro : Variant );overload;
        { adiciona um valor a consulta do collection }
        procedure  AdicionaParametroConsulta( NomeParametro : String; ValorParametro : Variant ; Consulta : Integer);overload;

        procedure  SQLRelAutomatico( aSql : String );
        procedure  Configuracao( verImp , pagZebra , bobina , salvaXLS , salvaTXT : Boolean );
        procedure  totalizarCampo(ANomeCampo,AAliasCampo: String;AColunaBase:Integer);
        procedure addColunaRelatorio(ANomeCampo,AAliasCampo : String;colunaBase  : Integer);

        procedure  SalvarSQL;
        procedure  AbrirSQL;
        constructor Create;



     private
        procedure NaoImplementada;
        function Center(Pe_Str:string; Pe_QtdPos:Byte; EDC :Char):string;
        function Replicate(S: String; qt: Integer): String;
        procedure localizaCondicao(ASql : String);
        procedure totalizarNumericos(ANomeCampo,AAliasCampo : String;colunaBase  : Integer);
        procedure impTotais;
end;

const
  maskValor = '#,##0.00';
  espacoExponencial = 5;

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

implementation

uses DB,Windows, AndreConsulta, Variants, StrUtils, MaskUtils,
  AndreRelatorioFortes, HTML;

{ TAndreRelatorio }

function TAndreRelatorio.AbreConsulta:Boolean;
begin
    try
     
        Self.qry.Open;
        Result := not Self.qry.IsEmpty;
        Continua := Result;
    except
        on E : Exception do
        begin
           Self.fMsgErro := #13+' >> SQL Incorreto <<  '+#13+#13+e.Message;
           Result := False;
        end;
    end;
    
end;

function TAndreRelatorio.AbreRelatorio: Boolean;
begin
    try
       Aguarda;
       print.TamanhoQteLinhas             := Self.LinhasPorPagina;
       print.TamanhoQteColunas            := Self.ColunasPorPagina;
       print.FonteTamanhoPadrao           := Self.FontePadrao;
       print.OpcoesPreview.Preview        := Self.VisualisarImpressao;
       print.OpcoesPreview.PaginaZebrada  := Self.PaginaZebrada;

       if Self.FolhaContinua then
          print.Impressora := Bobina;

       if not print.EstaAberto then
         Result := print.Abrir;

       if not Self.NaoComprime then
          AdicionaLinhaRelatorio(#27+'F'+#15); { caracter para compressão da fonte }

    except
      Result := False;
      FimAguarda;
    end;
end;


procedure TAndreRelatorio.AdicionaLinhaCabecalho(novaLinha: String);
begin
    Self.print.Imp(Self.PulaLinha,1, Center(novaLinha, Self.ColunasPorPagina ,'C') );
end;

procedure TAndreRelatorio.AdicionaLinhaRelatorio(novaLinha: String);
begin
    if UsaRelatorioHTML then
      begin
        RelatorioHtml.AddLinha(novaLinha);
        RelatorioHtml.PulaLinha();
      end
    else
      begin
      Self.AdicionaLinhaRelatorio( novaLinha ,pColuna);
      pColuna := pColuna + length( novaLinha );
      if (pColuna >= ColunasPorPagina) and (ColunasPorPagina > 0) then
          PulaLinha;
    end;
end;

procedure TAndreRelatorio.AdicionaValorRelatorio( novoValor: Real ; colunaBase : Integer; mascara: String = '0.00' );
begin
    Self.AdicionaLinhaRelatorio( Center(Copy(FormatFloat( mascara , novoValor ), 0, 10), 10,'D'), colunaBase );
end;

procedure TAndreRelatorio.AdicionaParametroConsulta(NomeParametro: String;
  ValorParametro: Variant);
begin
    Self.qry.ParamByName(NomeParametro).Value := ValorParametro;
end;

procedure TAndreRelatorio.AdicionaValorRelatorio(novoValor: Real; mascara: String = '0.00');
begin
    Self.AdicionaLinhaRelatorio(Center(Copy(FormatFloat( mascara , novoValor ) , 0, 10) , 10,'D') );
end;

function TAndreRelatorio.FechaRelario: Boolean;
var CSV : TDatasetToCSV;
begin
    try

        if (Self.FCamposTotalizados <> nil) and (Self.FCamposTotalizados.Count > 0) then
        begin
           Self.impTotais;
        end;


        if Self.Rodape then
            impRodape;



        if Self.FolhaContinua and Self.VisualisarImpressao then
            Self.print.TamanhoQteLinhas := linha + 8;

        if Self.ExportaTXT then
        begin
            Self.print.gerarTXT( PathTXT+Self.Titulo );
            CopyFile( Pchar( PathTXT+Self.Titulo ), Pchar( Self.Impressora + #0 ), False);
        end;

        if pSalvarXLS then
        begin
            XLS := TCdsToXls.Create;
            XLS.Titulo := Self.Titulo + ' / ' +Self.SubTitulo;
            xls.addCDS(Self.qry,true,1);
            xls.exibePlanilha;
        end;

        if pSalvarCSV then
        begin
            CSV := TDatasetToCSV.Create;
            CSV.converter(Self.qry , Self.PathCSV+Self.Titulo );
            FreeAndNil(CSV)
        end;

        if UsaRelatorioHTML then
        begin

          RelatorioHtml.VisualisarImpressao;
          Self.print.Abortar;
        end
        else if UsaFortes then
        if Self.print.EstaAberto then
        begin
            imprimeEmFortes;
            Self.print.Abortar;
        end;


        if Self.print.EstaAberto then
        begin
            if VisualisarImpressao then
              Result := Self.print.Fechar
            else
              Result := Self.print.Abortar;
        end;

        FimAguarda;
    except
        Result := False;
        FimAguarda;
    end;
end;

function TAndreRelatorio.IniciaConsulta(sql: String):Integer;
begin
    qry := dm.GetQueryInstance;
    qry.SQL.Clear;
    qry.SQL.Add(sql);
end;

function TAndreRelatorio.PulaLinha: Integer;
begin
    if (Rodape) and not UsaFortes and  ((Self.linha = Self.linhasPorPagina - 3) or ((linha = Self.linhasPorPagina - Self.TxtRodape.Count) and (Trim(Self.TxtRodape.Text)<> '') ) ) then
    begin
         impRodape;
         Rodape := True;
    end
    else if (Self.FolhaContinua) or (Self.linha < Self.linhasPorPagina) then
    begin
        if UsaRelatorioHTML then
            RelatorioHtml.PulaLinha();
            
        Inc(Self.linha);
        Result := Self.linha;
    end
    else if RelAuto then
    begin
        Self.linha := 1;
        Inc(Self.pagina);
        print.Novapagina;
        Cabecalho();//Cabecalho(relAuto);
        Result := Self.linha;
    end
    else
    begin
        Self.linha := 1;
        Inc(Self.pagina);
        print.Novapagina;
        Cabecalho;
        Result := Self.linha;
    end;

    pColuna := 1;
end;

procedure TAndreRelatorio.Separacao;
begin
    self.print.Imp(Self.PulaLinha,1,Replicate('-',Self.ColunasPorPagina));
end;

procedure TAndreRelatorio.imprimeCampoStringConsulta(NomeCampo: String;
  ColunaBase: Integer);
begin
    Self.AdicionaLinhaRelatorio( Trim(Self.qry.FieldByName(NomeCampo).AsString ) ,ColunaBase);
end;


procedure TAndreRelatorio.AdicionaLinhaRelatorio(novaLinha: String;
  colunaBase: Integer);
begin
    Self.AdicionaLinhaRelatorioSemPular( novaLinha,colunaBase);
end;

function TAndreRelatorio.FechaConsulta: Boolean;
begin
  try
    Self.qry.Close;
    Result := True;
  except
    Result := False;
  end;
end;

procedure TAndreRelatorio.AdicionaLinhaRelatorioSemPular(novaLinha: String;
  colunaBase:Integer);
begin
   if UsaRelatorioHTML then
      RelatorioHtml.AddLinha(novaLinha,colunaBase)
   else
      Self.print.Imp(linha,colunaBase,novaLinha);
end;

function TAndreRelatorio.pulaLinhaConsulta: Boolean;
begin
    Self.qry.Next;
    Result := (not Self.qry.Eof);
    Continua := (not Self.qry.Eof);
    if not Continua and Rodape then
        impRodape;

end;

function TAndreRelatorio.imprimeCampoValorConsulta(NomeCampo: String;
  colunaBase: Integer): Real;
begin
    Self.AdicionaValorRelatorio( Self.qry.FieldByName(NomeCampo).AsFloat,colunaBase );
    Result := Self.qry.FieldByName(NomeCampo).AsFloat;
end;


procedure TAndreRelatorio.IniciaRelatorio;
begin
    if FRelatorioHTML then
      begin
        RelatorioHtml := THtml.Create;
        RelatorioHtml.Inicializa;
      end;

    print   := dm.printAndre;

    { Para aparecer uma borda como rebarba }
    print.OpcoesPreview.Remalina := True;
    print.OpcoesPreview.CaptionPreview := Titulo;

    
    linha   := 1;
    pagina  := 1;
    pColuna := 1;

    (*
    *  Para impressões em impressoras de 40 colunas
    *  Selecion folha continua
    *  Visualiza impressão
    *  e manda um arquivo texto para a impressora.
    *)

    if Self.Rel40Colunas then
    begin
        Self.FolhaContinua := True;
        Self.VisualisarImpressao := True;
        Self.ExportaTXT := True;
    end;



end;

function TAndreRelatorio.imprimeCampoDataConsulta(NomeCampo: String;
  colunaBase: Integer):TDateTime;
begin
    if Self.qry.FieldByName(NomeCampo).AsDateTime > 1 then
       Self.AdicionaLinhaRelatorio( FormatDateTime('dd/mm/yy',Self.qry.FieldByName(NomeCampo).AsDateTime),ColunaBase);
    Result := Self.qry.FieldByName(NomeCampo).AsDateTime;
end;


procedure TAndreRelatorio.imprimeCampoStringConsulta(NumeroCampo ,  colunaBase: Integer);
begin
    Self.imprimeCampoStringConsulta(Self.qry.Fields[NumeroCampo].FieldName,colunaBase);
end;

function TAndreRelatorio.imprimeCampoDataConsulta(NumeroCampo,
  colunaBase: Integer):TDateTime;
begin
   Result := Self.imprimeCampoDataConsulta(Self.qry.Fields[NumeroCampo].FieldName,colunaBase);
end;

function TAndreRelatorio.imprimeCampoValorConsulta(NumeroCampo,
  colunaBase: Integer): Real;
begin
    Result := Self.imprimeCampoValorConsulta(Self.qry.Fields[NumeroCampo].FieldName,colunaBase);
end;



{ Funções }

{*************************************************************************
  Alinhar uma string em qualquer posição de
  um determinado espaço
*************************************************************************}
function TAndreRelatorio.Center(Pe_Str:string; Pe_QtdPos:Byte; EDC :Char):string;
// EDC:  C = Centralizado
//       D = Direita
//       E = Esquerda
var
L, N, R, I :integer;
S, St, CH :string;
begin
  i := Pe_qtdPos;
  St := copy(Pe_Str,1,Pe_QtdPos);
  if EDC = 'D' then
    begin
      Insert('aLeX',St,i);
      L := Pos('aLeX',St);
      if L <= i then
        begin
          for n := L to i do
            begin
              Insert(' ', St, 1);
            end;
        end;
      St := Copy(St,1,i);
      R := i;
      Ch := Copy(St,i,1);
      while (Ch = ' ') and (R <> 0) do
        begin
          if ch = ' ' then
             begin
               Insert(' ', St, 1);
             end;
          St := Copy(St, 1, i);
          R := R - 1;
          Ch := Copy(St, i, 1);
        end;
  end;
  if EDC = 'E' then
     begin
       Ch := Copy(St,1,1);
       while Ch = ' ' do
         begin
           Delete(St,1,1);
           Ch := Copy(St,1,1);
         end;
       St := Copy(St,1,i);
     end;
  if EDC = 'C' then
    begin
      S := Center(Pe_Str,Pe_QtdPos,'D');
      Ch := Copy(S,1,1);
      R := 1;
      N := 1;
      while Ch = ' ' do
        begin
          R := R + 1;
          Ch := Copy(S,R,1);
        end;
      R := Round( R / 2 );
      while n < R do
        begin
          Delete(S,1,1);
          N := N + 1;
        end;
      St := Copy(S,1,i);
    end;
  Result := St;
end;

{*****************************************
  funcao igual ao replicate do clipper
******************************************}
function TAndreRelatorio.Replicate(S: String; qt: Integer): String;
var n: Integer;
Var c: String;
begin
  c := '';
  C := S;
  For n := 1 To Qt - 1 Do
    S := S + C;

  Result := S;
end;


function TAndreRelatorio.imprimeCampoInteiroConsulta(NomeCampo: String;
  colunaBase: Integer): Integer;
begin
    Self.AdicionaLinhaRelatorio( Self.qry.FieldByName(NomeCampo).AsString,colunaBase );
    Result := Self.qry.FieldByName(NomeCampo).AsInteger;
end;

function TAndreRelatorio.getValorConsulta(NomeCampo: String): Variant;
begin
    try
      if Self.qry.FieldByName( NomeCampo ).Value <> Null then
        Result := Self.qry.FieldByName( NomeCampo ).Value
      else
        Result := 0;
    Except
      Result := 0;
    end;
end;

procedure TAndreRelatorio.AdicionaLinhaCentralizada(novaLinha: String);
begin
    Self.AdicionaLinhaCabecalho(novaLinha);
end;

function TAndreRelatorio.getValorParametro(NomeParametro: String): Variant;
begin
    Result := Self.qry.ParamByName( NomeParametro ).Value;

end;

procedure TAndreRelatorio.AdicionaDataRelatorio(novaData: TDateTime;
  colunaBase: Integer; mascara: String);
begin
     Self.AdicionaLinhaRelatorio( FormatDateTime('dd/mm/yyyy',novaData),ColunaBase);
end;



procedure TAndreRelatorio.AdicionaDataRelatorio(novaData: TDateTime;
  mascara: String);
begin
    Self.AdicionaLinhaRelatorio( FormatDateTime('dd/mm/yyyy',novaData));
end;


procedure TAndreRelatorio.AdicionaParametroConsulta(NomeParametro: String;
  ValorParametro: Variant; Consulta: Integer);
begin
    consultas.Item[Consulta].setParametro(NomeParametro,ValorParametro);
end;

function TAndreRelatorio.getValorConsulta(NomeCampo: String;
  Consulta: Integer): Variant;
begin
    Result := consultas.Item[Consulta].getCampoConsulta(NomeCampo);
end;

function TAndreRelatorio.getValorParametro(NomeParametro: String;
  Consulta: Integer): Variant;
begin
    Result := consultas.Item[Consulta].getParametro(NomeParametro);
end;

function TAndreRelatorio.pulaLinhaConsulta(Consulta: Integer): Boolean;
begin
    Result := consultas.Item[Consulta].Proximo;
    Continua := Result;
end;

function TAndreRelatorio.AbreConsulta(Consulta: Integer): Boolean;
begin
    Result := consultas.Item[Consulta].AbreConsulta;
    Continua := Result;
end;

function TAndreRelatorio.FechaConsulta(Consulta: Integer): Boolean;
begin
    Result := consultas.Item[Consulta].FechaConsulta;
end;

procedure TAndreRelatorio.imprimeCampoStringConsulta(NumeroCampo,
  colunaBase, Consulta: Integer);
begin
      Self.AdicionaLinhaRelatorio( Trim(Self.consultas.Item[Consulta].getCampoConsulta(NumeroCampo)  ) ,ColunaBase);
end;

procedure TAndreRelatorio.imprimeCampoStringConsulta(NomeCampo: String;
  colunaBase, Consulta: Integer);
begin
      Self.AdicionaLinhaRelatorio( Trim(Self.consultas.Item[Consulta].getCampoConsulta(NomeCampo)  ) ,ColunaBase);
end;

function TAndreRelatorio.imprimeCampoInteiroConsulta(NomeCampo: String;
  colunaBase, Consulta: Integer): Integer;
begin
     Self.AdicionaLinhaRelatorio( Trim(Self.consultas.Item[Consulta].getCampoConsulta(NomeCampo)  ) ,ColunaBase);
     Result := Self.consultas.Item[Consulta].getCampoConsulta(NomeCampo);
end;

function TAndreRelatorio.imprimeCampoValorConsulta(NumeroCampo, colunaBase,
  Consulta: Integer): Variant;
begin
     Self.AdicionaValorRelatorio( Self.consultas.Item[Consulta].getCampoConsulta(NumeroCampo)  ,ColunaBase);
     Result := Self.consultas.Item[Consulta].getCampoConsulta(NumeroCampo);
end;

function TAndreRelatorio.imprimeCampoValorConsulta(NomeCampo: String;
  colunaBase, Consulta: Integer): Variant;
begin
     Self.AdicionaValorRelatorio( Self.consultas.Item[Consulta].getCampoConsulta(NomeCampo) ,ColunaBase);
     Result := Self.consultas.Item[Consulta].getCampoConsulta(NomeCampo);
end;

function TAndreRelatorio.imprimeCampoDataConsulta(NomeCampo: String;
  colunaBase, Consulta: Integer): TDateTime;
begin
    Self.AdicionaDataRelatorio( Self.consultas.Item[Consulta].getCampoConsulta(NomeCampo),colunaBase );
    Result := Self.consultas.Item[Consulta].getCampoConsulta(NomeCampo);
end;

function TAndreRelatorio.IniciaConsulta(sql: String;
  Varias: Boolean): Integer;
var aux : TAndreConsulta;
begin

    if Varias then
    begin
        if consultas = nil then
        begin
            consultas := TCollectionAndreConsulta.Create(nil);
        end;

        aux := consultas.Add;
        aux.IniciaConsulta(sql);
        Result := aux.Posicao;
    end
    else
        Self.IniciaConsulta(sql);

end;

function TAndreRelatorio.FechaConsulta(Todas: Boolean): Boolean;
var i : Integer;
    CSV: TDatasetToCSV;
begin
    if pSalvarXLS then
    begin
        XLS := TCdsToXls.Create;
        for i := 0 to Self.consultas.Count - 1 do
        begin
            XLS.addCDS(Self.consultas.Item[i].DataSet,true,1);
        end;
        XLS.exibePlanilha;
    end;


    if pSalvarCSV then
    begin
        CSV:= TDatasetToCSV.Create;
        for i := 0 to Self.consultas.Count - 1 do
        begin
            CSV.converter( Self.consultas.Item[i].DataSet , pPathCSV + Self.Titulo );
        end;
        
    end;


    if Todas then
    begin
        for i := 0 to Self.consultas.Count - 1 do
        begin
            Self.consultas.Item[i].FechaConsulta;
        end;
    end;



end;

procedure TAndreRelatorio.Cabecalho;
var i : Integer;
    CabCol : String;
    col    : Integer;
    aStr : TItemCabecalho;
    aCampos,aValues:TStringList;
    cab : TStringList;
    espacoTitulo : Integer;
begin
    if RelAuto then
    begin
        if Trim(Self.TxtCabecalho.Text) <> '' then
        begin


            cab := TStringList.Create;
            i := 0 ;
            while i < Self.TxtCabecalho.Count do
            begin
              cab.Add(Self.TxtCabecalho[i]);
              Inc(i);
            end;

            aValues := TStringList.Create;
            aCampos := entreChar( '[' , ']' , Self.TxtCabecalho.Text );

            i := 0 ;
            while i < aCampos.Count do
            begin
              cab.Text := StringReplace( cab.Text , '['+aCampos[i]+']' , StrToEspaco(aCampos[i]) ,[rfReplaceAll] );
              Inc(i);
            end;


            i := 0 ;
            while i < cab.Count do
            begin
              AdicionaLinhaRelatorio(cab[i]);
              PulaLinha;
              inc(i);
            end;

            i := 0 ;
            while i < aCampos.Count do
            begin
              aValues.Add(getValorConsulta(aCampos[i],self.pConsultaCab));
              i:=i+3;
            end;

            adicionaValorerCabecalho(Self.TxtCabecalho,aValues,aCampos);
            Self.PulaLinha;

            if Self.pDataHora then
            begin

               AdicionaLinhaRelatorio('Data : ' + FormatDateTime('dd/mm/yyyy',Date) ,ColunasPorPagina - 17,2 );
               AdicionaLinhaRelatorio('hora : '+TimeToStr(Time),ColunasPorPagina - 17,3);
            end;


        end
        else
        begin
        
          if not Self.UsaFortes then
          begin

          
            if Trim(Self.Titulo) = '' then
                 Self.AdicionaLinhaCabecalho( ' Relatório Automático ' )
            else
            begin
                 Self.AdicionaLinhaCabecalho( Self.Titulo );
                 Self.PulaLinha;
                 Self.AdicionaLinhaCabecalho(Self.SubTitulo);
            end;

            Self.PulaLinha;
            AdicionaLinhaRelatorio('Data : ',ColunasPorPagina - 17 );
            AdicionaDataRelatorio(Date  ,     ColunasPorPagina - 10);
            PulaLinha;
            AdicionaLinhaRelatorio('hora : '+TimeToStr(Time),ColunasPorPagina - 17);
            PulaLinha;

            Self.Separacao;
            PulaLinha;



         end;

            col := 1;
            for i := 0 to Self.qry.FieldCount -1 do
            begin
              AdicionaLinhaRelatorio( Self.qry.Fields[i].FieldName  , col );


             if Self.qry.Fields[i].DataSize > 100 then
                   espacoTitulo :=  53

             else if Self.qry.Fields[i].DataSize > Length(Self.qry.Fields[i].FieldName) then
                   espacoTitulo := Self.qry.Fields[i].DataSize+espacoExponencial

             else
                   espacoTitulo := Length(Self.qry.Fields[i].FieldName) + espacoExponencial;

             col := col + espacoTitulo;
             if Compress then
                 col := col - 3;

             if UsaFortes then
              begin
                CabCol := CabCol + Self.qry.Fields[i].FieldName;
                CabCol := completaEspaco(CabCol,col);
              end;
              
            end;
            
            if not UsaFortes then
            begin
              Self.AdicionaLinhaRelatorio( CabCol , 1 );
              Self.Separacao;
              Self.PulaLinha;
            end

            else 
            begin
                fAndreRelatorioFortes.rlTitulo.Caption := Self.Titulo;
                fAndreRelatorioFortes.rlSubTitulo.Caption := Self.SubTitulo;
                fAndreRelatorioFortes.rlTituloCol.Caption := CabCol;
            end;

            end;
    end;
end;

procedure TAndreRelatorio.ItensAuto;
var i   : Integer;
    coluna : Integer;
begin
   while Self.Continua do
   begin

      coluna := 1;

      for i := 0 to Self.qry.FieldCount - 1 do
       begin

        try

          if Self.qry.Fields[i] is TStringField then
              Self.imprimeCampoStringConsulta( Self.qry.Fields[i].DataSize  ,Self.qry.Fields[i].FieldName , coluna )


          else if Self.qry.Fields[i] is TDateTimeField then
              Self.imprimeCampoDataConsulta( Self.qry.Fields[i].FieldName, coluna )


          else if Self.qry.Fields[i] is TIntegerField then
          begin
              //coluna := coluna + 6;
              Self.imprimeCampoInteiroConsulta( Self.qry.Fields[i].FieldName, coluna)

          end

          else if Self.qry.Fields[i].AsFloat <> Null then
          begin
               coluna := coluna - 3;
               Self.imprimeCampoValorConsulta( Self.qry.Fields[i].FieldName, coluna );
          end

          else
              Self.imprimeCampoStringConsulta( Self.qry.Fields[i].FieldName,coluna );

        Except
              Self.AdicionaLinhaRelatorio( '',coluna );
        end;

        if 100 <  Self.qry.Fields[i].DataSize then
                coluna := coluna  + espacoExponencial +  53

        else if Length(Self.qry.Fields[i].FieldName) <  Self.qry.Fields[i].DataSize then
                coluna := coluna  + espacoExponencial +  Self.qry.Fields[i].DataSize

        else
                coluna := coluna  + espacoExponencial + Length(Self.qry.Fields[i].FieldName);

        If Compress then
            coluna := coluna - 3;

      end; // for

      PulaLinha;
      pulaLinhaConsulta;

   end; // while
end;

function TAndreRelatorio.RelatorioAutomatico(pSql: String): Boolean;
begin
    try
        Self.IniciaConsulta(pSql);
        Self.ReconheceParamatros;
        Result := Self.AbreConsulta;
        if Result then
        begin
            IniciaRelatorio;
            VisualisarImpressao   := True;
            PaginaZebrada         := True;
            FolhaContinua         := False;
            RelAuto               := True;
            Rodape := True;
            Self.ColunasPorPagina := QtdColunasAuto;
            Self.LinhasPorPagina  := 66;
            AbreRelatorio;
            if Trim(TxtCabecalho.Text) <> '' then
                Cabecalho(TxtCabecalho)
            else
                Cabecalho;

            ItensAuto;
        end;
    finally
        FechaRelario;
        FechaConsulta;
    end;
end;



function TAndreRelatorio.QtdColunasAuto: Integer;
var    i : Integer;
begin
    Result:= 0;
    for i := 0 to Self.qry.FieldCount -1 do
    begin
      if (Self.qry.Fields[i].DataSize) > 100 then
          Result := Result + 53

      else if (Self.qry.Fields[i].DataSize) > Length(Self.qry.Fields[i].FieldName) then
          Result := Result + Self.qry.Fields[i].DataSize+espacoExponencial

      else
          Result := Result + Length(Self.qry.Fields[i].FieldName)+espacoExponencial;

      if Compress then
           Result := Result - 3;
    end;


    if Result < 80 then
        Result := 80;

    if Self.Rel40Colunas then
    begin
        Result := 40;
    end;    
end;

function TAndreRelatorio.imprimeCampoDataConsulta(
  NomeCampo: String): TDateTime;
begin
    if Self.qry.FieldByName(NomeCampo).AsDateTime > 1 then
       Self.AdicionaLinhaRelatorio( FormatDateTime('dd/mm/yyyy',Self.qry.FieldByName(NomeCampo).AsDateTime));
    Result := Self.qry.FieldByName(NomeCampo).AsDateTime;end;

function TAndreRelatorio.imprimeCampoValorConsulta(
  NomeCampo: String): Real;
begin
    Self.AdicionaValorRelatorio( Self.qry.FieldByName(NomeCampo).AsFloat );
    Result := Self.qry.FieldByName(NomeCampo).AsFloat;

end;

procedure TAndreRelatorio.imprimeCampoStringConsulta(NomeCampo: String);
begin
    Self.AdicionaLinhaRelatorio( Self.qry.FieldByName(NomeCampo).AsString );
end;

procedure TAndreRelatorio.SalvarSQL;
begin
    if (MessageDlg('Deseja salvar o relatório? ',mtConfirmation,[mbYes,mbNo],  0) = 1)  then;
    begin
        pSalvar := TSaveDialog.Create(nil);
        pSalvar.DefaultExt := 'sql';
        if pSalvar.Execute then
            Self.qry.SQL.SaveToFile(pSalvar.FileName);
    end;
end;

procedure TAndreRelatorio.AbrirSQL;
begin

    pAbrir := TOpenDialog.Create(nil);

    if pAbrir.Execute then
    begin
        qry := dm.GetQueryInstance;
        qry.SQL.LoadFromFile( pAbrir.FileName );

        if not Self.RelatorioAutomatico(qry.SQL.GetText) then
             ShowMessage('Nenhum registro encontrado!');
    end;
    FreeAndNil(pAbrir);
end;

procedure TAndreRelatorio.impRodape;
var i : Integer;
    aStr : TItemCabecalho;
    aCampos,aValues:TStringList;
    cab : TStringList;
    CabCol : String;
    col    : Integer;

begin
    Rodape := False;
    if Trim(Self.TxtRodape.Text) <> '' then
    begin

        Self.linha := LinhasPorPagina - TxtRodape.Count - 3;
        Separacao;
        PulaLinha;
        
        cab := TStringList.Create;
        i := 0 ;
        while i < Self.TxtRodape.Count do
        begin
            cab.Add(Self.TxtRodape[i]);
            Inc(i);
        end;
        aValues := TStringList.Create;
        aCampos := entreChar('[',']',Self.TxtRodape.Text);
        i := 0 ;
        while i < aCampos.Count do
        begin
            cab.Text := StringReplace( cab.Text , '['+aCampos[i]+']' , StrToEspaco(aCampos[i]) ,[rfReplaceAll] );
            Inc(i);
        end;
        i := 0 ;
        while i < cab.Count do
        begin
            AdicionaLinhaRelatorio(cab[i]);
            PulaLinha;
            inc(i);
        end;
        i := 0 ;
        while i < aCampos.Count do
        begin
            aValues.Add(getValorConsulta(aCampos[i],self.pConsultaRodape));
            i:=i+3;
        end;
        adicionaValorerCabecalho(Self.TxtRodape,aValues,aCampos);
        AdicionaLinhaRelatorio( 'Pagina: '+IntToStr(pagina),ColunasPorPagina - 11 );

    end
    else
    begin

        //linha := LinhasPorPagina - 3;
        PulaLinha;
        Separacao;
        PulaLinha;
        AdicionaLinhaRelatorio( 'Pagina: '+IntToStr(pagina),ColunasPorPagina - 11 );
        PulaLinha;
    end;

end;

procedure TAndreRelatorio.imprimeCampoStringConsulta(maxLenth: Integer;
  NomeCampo: String; colunaBase: Integer);
begin
    Self.AdicionaLinhaRelatorio(Copy(qry.FieldByName(NomeCampo).AsString,0,maxLenth),colunaBase);
end;

procedure TAndreRelatorio.ReconheceParamatros;
var i : Integer;
    frmParam : TfrmAndreParam;
begin
    if Self.qry.Params.Count > 0 then
    begin
        Self.pCDSParam := TClientDataSet.Create(nil);
        Self.pCDSParam.FieldDefs.Clear;

        for i := 0 to Self.qry.Params.Count - 1 do
            Self.pCDSParam.FieldDefs.Add( Self.qry.Params[i].Name , ftString , 20 , false );
        
        Self.pCDSParam.CreateDataSet;

        frmAndreParam := TfrmAndreParam.Create(nil);

        frmAndreParam.ds.DataSet := Self.pCDSParam;
        Self.pCDSParam.Open;
        frmAndreParam.ShowModal;

        if Self.pCDSParam.State  in ([dsEdit,dsInsert]) then
            Self.pCDSParam.Post;

        frmAndreParam.Release;
        Self.pCDSParam.First;
        for i := 0 to Self.qry.Params.Count - 1 do
            Self.qry.Params[i].Value := Self.pCDSParam.Fields[i].Value;

        Self.pCDSParam.EmptyDataSet;
    end;



end;



function TAndreRelatorio.EOF(consulta: Integer): Boolean;
begin
    Result := consultas.Item[consulta].eof;
end;

procedure TAndreRelatorio.setPathTXT(const Value: String);
begin
    if Length(Trim(Value))>0 then
        pPathTXT := Value
    else
        pPathTXT := 'C:/relatorio.txt';
end;

function TAndreRelatorio.entreChar(charI,charF, str: String): TStringList;
var i : Integer;
    aux : String;
begin
     Result := TStringList.Create;
     aux := '';
     i:=0;
     
     while not(i = Length(str)) do
     begin
        if str[i]=charI then
        begin
            inc(i);
            while ((str[i] <> charF) and not (i=Length(str))) do
            begin
                aux := aux + str[i];
                inc(i);
            end;
            Result.Add(aux);
            aux := '';
        end;
        inc(i);
     end;
end;


function TAndreRelatorio.PulaLinha(aQtdLinhas: Integer): Boolean;
var i : Integer;
begin
       for i := 1 to aQtdLinhas do
          PulaLinha;
end;

procedure TAndreRelatorio.NovaPagina;
begin
    Self.linha := 1;
    Inc(Self.pagina);
    Self.print.Novapagina;
    Self.Cabecalho;
end;

procedure TAndreRelatorio.Regua;
var i,i2,i3 :Integer;
    uni,dez : String;
begin
     i2 := 0;
     i3 := 1;
     for i := 1 to Self.ColunasPorPagina do
     begin
         if (i mod 10) = 0 then
         begin
            i3:=0;
            inc(i2);
            dez := dez + '         ' + IntToStr(i2);
         end;

         uni := uni+IntToStr(i3);
         Inc(i3);


     end;
     AdicionaLinhaRelatorio(dez,1);
     PulaLinha;
     AdicionaLinhaRelatorio(uni,1);
     PulaLinha;
end;

function TAndreRelatorio.localiza(consulta : Integer; field: String; value: Variant): Boolean;
begin
    Result := consultas.Item[Consulta].Localiza(field,value);
end;

procedure TAndreRelatorio.Cabecalho(texto: TStringList);
var i : Integer;
    aStr : TItemCabecalho;
    aCampos,aValues:TStringList;
    cab : TStringList;
    CabCol : String;
    col    : Integer;

begin
    cab := TStringList.Create;
    i := 0 ;
    while i < texto.Count do
    begin
        cab.Add(texto[i]);
        Inc(i);
    end;

    aValues := TStringList.Create;
    aCampos := entreChar('[',']',texto.Text);

    i := 0 ;
    while i < aCampos.Count do
    begin
        cab.Text := StringReplace( cab.Text , '['+aCampos[i]+']' , StrToEspaco(aCampos[i]) ,[rfReplaceAll] );
        Inc(i);
    end;


    i := 0 ;
    while i < cab.Count do
    begin
        AdicionaLinhaRelatorio(cab[i]);
        PulaLinha;
        inc(i);
    end;

    i := 0 ;
    while i < aCampos.Count do
    begin
        aValues.Add(getValorConsulta(aCampos[i],self.pConsultaCab));
        i:=i+3;
    end;

    adicionaValorerCabecalho(texto,aValues,aCampos);

end;

procedure TAndreRelatorio.adicionaValorerCabecalho( cabecalho, valores ,campos: TStringList);
var i,j,campo : Integer;
    aux : String;
    v : Extended;
begin
     campo :=0;
     i:=0;
     j:=0;
     while not(i = cabecalho.Count) do
     begin
        while (j < Length(cabecalho[i])) and (campo < valores.Count)  do
        begin
            if cabecalho[i][j]='[' then
            begin                                                //coluna                         //linha
                if TryStrToFloat( Trim(valores[campo]) , v ) then
                    AdicionaValorRelatorio( StrToFloat(valores[campo]) ,StrToInt(campos[(campo*3)+2]) , StrToInt(campos[(campo*3)+1]) + 1 )
                else
                    AdicionaLinhaRelatorio( Trim(valores[campo]) , StrToInt(campos[(campo*3)+2]) , StrToInt(campos[(campo*3)+1]) + 1 );

                cabecalho.Text := StringReplace( cabecalho.Text , '['+campos[campo+1]+']['+campos[campo+2]+']' , StrToEspaco('['+campos[campo+1]+']['+campos[campo+2]+']') ,[rfReplaceAll] );
                inc(campo);
            end;
            inc(j);
        end;
        j:=0;
        inc(i);
     end;
     linha := cabecalho.Count;
     

end;

procedure TAndreRelatorio.AdicionaLinhaRelatorio(novaLinha: String;
  colunaBase, linhaBase: Integer);
begin
    if UsaRelatorioHTML then
        RelatorioHtml.AddLinha(novaLinha,colunaBase)
    else
        Self.print.Imp(linhaBase,colunaBase,novaLinha);

end;

function TAndreRelatorio.completaEspaco(str: String): String;
var i : Integer;
begin
    Result := str;
    for i := length(str) to QtdColunasAuto - 10 do
    begin
        Result := Result+' ';
    end;

end;

function TAndreRelatorio.StrToEspaco(str: String): String;
var i : Integer;
begin
    Result := '';
    for i := 0  to length(str) do
    begin
        Result := Result + ' ';
    end;

end;

function TAndreRelatorio.RelatorioAutomatico(pSql: String;
  pVarios: Boolean): Integer;
begin
    Result := IniciaConsulta(pSql,pVarios);
end;

function TAndreRelatorio.ImprimeRelAuto(consulta: Integer): Boolean;
begin
    Self.CabecalhoDetalhe(consulta);
    Self.ItensAuto(consulta); 
end;

procedure TAndreRelatorio.ItensAuto(consulta: Integer);
var i   : Integer;
    coluna : Integer;
begin
   while not EOF(consulta) do
   begin

      coluna := 1;



      for i := 0 to  Self.consultas.Item[consulta].DataSet.FieldCount - 1 do
      begin

        try

          if Self.consultas.Item[consulta].DataSet.Fields[i] is TStringField then
              Self.imprimeCampoStringConsulta( Self.consultas.Item[consulta].DataSet.Fields[i].DataSize  ,Self.consultas.Item[consulta].DataSet.Fields[i].FieldName , coluna , consulta )


          else if Self.consultas.Item[consulta].DataSet.Fields[i] is TDateTimeField then
               if i > 0 then
                   Self.imprimeCampoDataConsulta( Self.consultas.Item[consulta].DataSet.Fields[i].FieldName, coluna - 5 , consulta)
               else
                   Self.imprimeCampoDataConsulta( Self.consultas.Item[consulta].DataSet.Fields[i].FieldName, coluna , consulta)


          else if Self.consultas.Item[consulta].DataSet.Fields[i] is TIntegerField then
              if i > 0 then
                  Self.imprimeCampoInteiroConsulta( Self.consultas.Item[consulta].DataSet.Fields[i].FieldName, coluna - 5 , consulta)
              else
                  Self.imprimeCampoInteiroConsulta( Self.consultas.Item[consulta].DataSet.Fields[i].FieldName, coluna , consulta)


          else if Self.consultas.Item[consulta].DataSet.Fields[i].AsFloat <> Null then
              if i > 0 then
                  Self.imprimeCampoValorConsulta( Self.consultas.Item[consulta].DataSet.Fields[i].FieldName, coluna - 5 , consulta)
              else
                  Self.imprimeCampoValorConsulta( Self.consultas.Item[consulta].DataSet.Fields[i].FieldName, coluna , consulta)


          else
              Self.imprimeCampoStringConsulta( Self.consultas.Item[consulta].DataSet.Fields[i].FieldName , coluna , consulta);

        Except
            Self.AdicionaLinhaRelatorio( 'Null',coluna );
        end;
           if (4 + Self.consultas.Item[consulta].DataSet.Fields[i].DataSize)<10 then
              coluna := coluna + 4 + 10
           else
              coluna := coluna + 4 + Self.consultas.Item[consulta].DataSet.Fields[i].DataSize;

        end;

        PulaLinha;
        pulaLinhaConsulta(consulta);

     end;

end;

procedure TAndreRelatorio.CabecalhoDetalhe(consulta: Integer);
var col , i : Integer;
    CabCol : String;
begin
        Self.Separacao;
        PulaLinha;

        col := 1;
        for i := 0 to Self.consultas.Item[consulta].DataSet.FieldCount -1 do
        begin
           AdicionaLinhaRelatorio(Self.consultas.Item[consulta].DataSet.Fields[i].FieldName  , col );
           if (Self.consultas.Item[consulta].DataSet.Fields[i].DataSize+3)<10 then
              col := col + 13
           else
              col := col + Self.consultas.Item[consulta].DataSet.Fields[i].DataSize+3 ;
        end;

        Self.AdicionaLinhaRelatorio( CabCol , 1 );
        Self.Separacao;
        Self.PulaLinha;
end;

function TAndreRelatorio.FechaRelatorioAuto: Boolean;
var i : Integer;
begin
    try
        Result := False;
        
        for i := 0 to Self.consultas.Count-1 do
        begin
            if AbreConsulta(i) then
               Result := True;
        end;


        if Result then
        begin
            IniciaRelatorio;
            VisualisarImpressao   := True;
            PaginaZebrada         := True;
            FolhaContinua         := False;
            RelAuto               := True;
            Rodape                := True;
            NaoComprime           := True;

            Self.ColunasPorPagina := QtdColunasAuto(1);
            Self.LinhasPorPagina  := 66;
            AbreRelatorio;

            Cabecalho;

            for i := 0 to Self.consultas.Count-1 do
            begin
                if (i<>Self.pConsultaCab) and (i<>Self.pConsultaRodape) then
                    ImprimeRelAuto(i);
            end;

        end;
    finally
        FechaRelario;
        FechaConsulta(True);
    end;

end;

function TAndreRelatorio.QtdColunasAuto(consulta: Integer): Integer;
var i : Integer;
begin
    Result:= 0;
    for i := 0 to Self.consultas.Item[consulta].DataSet.FieldCount -1 do
        if (Self.consultas.Item[consulta].DataSet.Fields[i].DataSize+5) <  Length(Self.consultas.Item[consulta].DataSet.Fields[i].FieldName) then
            Result := Result + Length(Self.consultas.Item[consulta].DataSet.Fields[i].FieldName)
        else
            Result := Result + Self.consultas.Item[consulta].DataSet.Fields[i].DataSize+5;

   if Result < 80 then
        Result := 80;
end;

procedure TAndreRelatorio.Cabecalho(varias: Boolean);
var col,i : Integer;
begin
    if RelAuto then
    begin
        if Trim(Self.Titulo) = '' then
            Self.AdicionaLinhaCabecalho( ' Relatório Automático ' )
        else
        begin
            Self.AdicionaLinhaCabecalho( Self.Titulo );
        end;
        Self.PulaLinha;
        Self.AdicionaLinhaCabecalho(Self.SubTitulo);
        AdicionaLinhaRelatorio('Data : ',ColunasPorPagina - 17 );
        AdicionaDataRelatorio(Date  ,     ColunasPorPagina - 10);
        PulaLinha;
        AdicionaLinhaRelatorio('hora : '+TimeToStr(Time),ColunasPorPagina - 17);
        PulaLinha;

        Self.Separacao;
        PulaLinha;

        if Self.qry <> nil then
        begin
          col := 1;
          for i := 0 to Self.qry.FieldCount -1 do
          begin
              AdicionaLinhaRelatorio( Self.qry.Fields[i].FieldName  , col );

              if Self.qry.Fields[i].DataSize > Length(Self.qry.Fields[i].FieldName) then
                   col := col + Self.qry.Fields[i].DataSize+3
              else
                   col := col + Length(Self.qry.Fields[i].FieldName)+3;

          end;

          Separacao;
          PulaLinha;
        end;

    end;
end;

procedure TAndreRelatorio.imprimeCampoStringConsulta(maxLenth: Integer;
  NomeCampo: String; colunaBase, consulta: Integer);
begin
    Self.AdicionaLinhaRelatorio(Copy( getValorConsulta(NomeCampo,consulta) ,0,maxLenth),colunaBase);
end;

constructor TAndreRelatorio.Create;
begin
    self.TxtCabecalho := TStringList.Create;
    Self.TxtRodape    := TStringList.Create;
    fAndreRelatorioFortes := TfAndreRelatorioFortes.Create(nil);

end;

procedure TAndreRelatorio.AdicionaValorRelatorio(novoValor: Real;
  colunaBase, linhaBase: Integer);
begin
    Self.print.Imp(linhaBase,colunaBase, FormatFloat( maskValor , novoValor ));
end;


procedure TAndreRelatorio.AdicionaLinhaRelatorio(novaLinha: String;
  colunaBase: Integer; alinhada: String;espaco : Integer);
var i : Integer;
begin
    if alinhada = 'D' then
      for i := length(novaLinha) to espaco do
         novaLinha := ' '+novaLinha
    else if alinhada = 'C' then
      for i := length(novaLinha) to FloatInt(espaco/2) do
         novaLinha := ' '+novaLinha+' ';


    AdicionaLinhaRelatorio( novaLinha,colunaBase );


end;

procedure TAndreRelatorio.SQLRelAutomatico(aSql: String);
begin
     Self.IniciaConsulta(aSql);
     Self.localizaCondicao(aSql);
end;

function TAndreRelatorio.RelatorioAutomatico: Boolean;
begin
  try
        Result := Self.AbreConsulta;
        if Result then
        begin
            IniciaRelatorio;
            if not Self.fconfigManual then
            begin
                Self.VisualisarImpressao   := True;
                Self.PaginaZebrada         := True;
                Self.FolhaContinua         := False;
            end;

            Self.RelAuto               := True;
            Self.Rodape                := True;

            Self.ColunasPorPagina := QtdColunasAuto;
            Self.LinhasPorPagina  := 66;

            if UsaRelatorioHTML then
              begin
                RelatorioHtml.MaxLinha := Self.LinhasPorPagina;
                RelatorioHtml.MaxColuna := Self.ColunasPorPagina;
              end;


            AbreRelatorio;
            if Trim(TxtCabecalho.Text) <> '' then
                Cabecalho(TxtCabecalho)
            else
                Cabecalho;

            ItensAuto;
        end;
    finally
        FechaRelario;
        FechaConsulta;
    end;

end;

procedure TAndreRelatorio.Configuracao(verImp, pagZebra, bobina,
  salvaXLS, salvaTXT: Boolean);
begin
    Self.VisualisarImpressao := verImp;
    Self.PaginaZebrada       := pagZebra;
    Self.FolhaContinua       := bobina;
    Self.SalvaXLS            := salvaXLS;
    Self.ExportaTXT          := salvaTXT;
    Self.fconfigManual       := True;
end;

procedure TAndreRelatorio.ApagaLinha;
var i : Integer;
    str : String;
begin
  str := '';
  for i := 1 to Self.ColunasPorPagina do
   begin
      str := str+' ';
   end;
   AdicionaLinhaRelatorioSemPular(str,1);
end;

function TAndreRelatorio.ToString: String;
const APath = '~Temp.txt';
var AStr : TStrings;
begin

    Self.print.gerarTXT(APath);
    AStr.LoadFromFile(APath);
    Result := AStr.Text;
    DeleteFile(APath);
end;

procedure TAndreRelatorio.imprimeEmFortes;
const APath = '~Temp.txt';
var AStr : TStrings;
    nX : Integer;
begin
    Self.print.gerarTXT(APath);
    AStr := TStringList.Create;
    AStr.LoadFromFile(APath);
    for nX := 0 to AStr.Count - 1 do
    begin
        fAndreRelatorioFortes.addLinha( AStr[nX] );
    end;
    fAndreRelatorioFortes.imprime;
    //DeleteFile(APath);
end;

function TAndreRelatorio.completaEspaco(str: String;
  AQtd: Integer): String;
  var i : Integer;
begin
    Result := str;
    for i := length(str) to aqtd do
    begin
        Result := Result+' ';
    end;

end;

procedure TAndreRelatorio.localizaCondicao(ASql: String);
var nX : Integer;
    nY : Integer;
begin
    FFrom := ASql;
    for nX := 1 to length(ASql) do
    begin
        (* Copia tudo apartir do From
        *)
        if UpperCase(_from) = UpperCase(' '+copy(ASql,nX,4)+' ') then
          FFrom := copy(ASql,nX,length(ASql));

        (* Remove o order by
        *)

        if UpperCase('order by') = UpperCase(copy(FFrom,nX,8)) then
          FFrom := copy(FFrom,1,nX-1);
    end;
end;

procedure TAndreRelatorio.totalizarNumericos(ANomeCampo, AAliasCampo : String; colunaBase  : Integer );
var AQryTot : TAndreConsulta;
    ASql : String;
    nParams : Integer;
begin
  ASql := _select+' sum( '+ANomeCampo+') '+FFrom;
  AQryTot := TAndreConsulta.Create(nil);
  AQryTot.IniciaConsulta(ASql);
  for nParams := 0 to Self.qry.Params.Count - 1 do
  begin
      AQryTot.setParametro(Self.qry.Params[nParams].Name,Self.qry.Params[nParams].Value);
  end;

  If AQryTot.AbreConsulta then
  begin
      AdicionaLinhaRelatorio('Total de '+AAliasCampo+': ' ,1);
      AdicionaValorRelatorio(AQryTot.getCampoConsulta(0), length(ANomeCampo)+15);
      Self.PulaLinha;
  end;
  FreeAndNil(AQryTot);   
end;

procedure TAndreRelatorio.totalizarCampo(ANomeCampo,AAliasCampo: String;AColunaBase:Integer);
var totCampo :TCampoTotalizado;
begin
   if FCamposTotalizados = nil then
      FCamposTotalizados := TList.Create;

   totCampo := TCampoTotalizado.Create;
   totCampo.FNomeCampo := ANomeCampo;
   totCampo.FConlunaBase := AColunaBase;
   totCampo.FAlias := AAliasCampo;

   FCamposTotalizados.Add(totCampo);
end;

procedure TAndreRelatorio.impTotais;
var nX : Integer;
begin
   if Self.FCamposTotalizados <> nil then
   begin
      for nX := 0 to Self.FCamposTotalizados.Count-1 do
      begin
              totalizarNumericos( TCampoTotalizado(FCamposTotalizados[nX]).FNomeCampo ,
                                  TCampoTotalizado(FCamposTotalizados[nX]).FAlias, 
                                  TCampoTotalizado(FCamposTotalizados[nX]).FConlunaBase );
      end;

   end;
end;

procedure TAndreRelatorio.addColunaRelatorio(ANomeCampo,
  AAliasCampo: String; colunaBase: Integer);
var ACampo : TCampoSemiAuto;
begin
   Self.NaoImplementada;
   
   if FCamposSemiAuto = nil then
      FCamposSemiAuto := TList.Create;

   ACampo := TCampoSemiAuto.Create;
   ACampo.FNomeCampo := ANomeCampo;
   ACampo.FConlunaBase := colunaBase;
   ACampo.FAlias := AAliasCampo;

   FCamposSemiAuto.Add(ACampo);
end;

procedure TAndreRelatorio.NaoImplementada;
begin
   raise Exception.Create('Função ainda não implementada!');
end;

procedure TAndreRelatorio.SetRelatorioHTML(const Value: Boolean);
begin
  FRelatorioHTML := Value;
end;

function TAndreRelatorio.formataData(Data: TDateTime;
  Mask: String): String;
begin
  Result := FormatDateTime(Mask,Data);
end;

procedure TAndreRelatorio.AdicionaHoraRelatorio(novaHora: TDateTime;
  mascara: String; colunaBase : Integer);
begin
    Self.AdicionaLinhaRelatorio( FormatDateTime(mascara,novaHora),colunaBase);
end;

procedure TAndreRelatorio.imprimirStringList(stringList: TStringList);
var
  x : Integer;
begin
    for x := 0  to stringList.Count-1 do
    begin
        AdicionaLinhaRelatorio(stringList[x], 1);
        PulaLinha;
    end;

end;

end.
