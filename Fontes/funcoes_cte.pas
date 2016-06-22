unit funcoes_cte;

interface

uses Forms, DB, windows, SysUtils, Barra, StdCtrls, Controls, FocusMaskEdit, Mask, Aguarda,
   {uses referente ACBR} pcnConversao;

  procedure Press(Key: integer);
  procedure avisar(msg: String; const segundos :integer = 15);
  procedure Bar(Qt: Integer = 100; cMens: String = 'Aguarde, realizando tarefa...'; cMens2: String = '');
  procedure FimBar;
  procedure Aguarda(cMens: String = 'Aguarde, realizando tarefa...');
  procedure FimAguarda;
  procedure MoveBar(cMens: String = '';Qt:Integer = 1);
  procedure trimCampos(form :TForm);

  function PesquisaSimples(cSql: String = ''; multipla_selecao :Boolean = false; frmWidth: integer = 500; frmHeight: integer = 400):TDataSet;
  function PesquisaSimplesLocate(cSql: String; Param1 : string; Param2 : String = ''; Param3 :String = ''):TDataSet;
  function PathSis: String;
  function Crip(Texto: String):String;
  function DesCrip(Texto: String):String;
  function RemoveChar(cS,cC: String): String;
  function Pergunta(msg :String): Boolean;
  function ZeroEsquerda(numero,digitos: integer): string;
  function RemoveCaracteres(Info:String):String;
  function retiraMascara(texto :String):String;
  function retornaSiglaUF(CodUf :Integer):string;
  function retornaCodUF(UF :String) :integer;
  function PrimeiroDiaDoMes( dData : TDateTime ):TDateTime;
  function UltimoDiaDoMes( dData : TDateTime ):TDateTime;

  function StrToTpEmis(cod :integer) :TpcnTipoEmissao;
  function StrToTpImp(cod :integer) :TpcnTipoImpressao;
  function loteAtual: Integer;
  function SomenteNumeros(const s: string): string;
  function caminhoArquivo(caminhoCompleto: String): String;
  function CBox_indice_pelo_texto(cb :TComboBox; texto :String) :integer;
  function CBox_texto_pelo_indice(cb :TComboBox; indice :integer) :String;

  function Maximo_valor_cadastrado(Tabela, Campo :String) :String;
  function Campo_por_campo(Tabela, campo_procurado, campo_referencia, valor_campo_referencia :String;
                           const campo_referencia2 :String = ''; const valor_referencia2 :String = '') :String;

implementation

uses uAvisar, uPesquisaSimples, Modulo, uPergunta;

var WindowList: Pointer;
    lAbriu    : Boolean;

function CBox_texto_pelo_indice(cb :TComboBox; indice :integer) :String;
begin
  Result := '';
  Result := cb.Items[indice];
end;

function CBox_indice_pelo_texto(cb :TComboBox; texto :String) :integer;
var i :integer;
begin
  result := 0;

  for i := 0 to cb.Items.Count -1 do begin

    if pos(texto, cb.Items[i]) > 0 then begin
      result := i;
      break;
    end;

  end;
end;

function StrToTpEmis(cod: integer): TpcnTipoEmissao;
begin
  if cod = 1 then
    result := teNormal
  else if cod = 2 then
    result := teContingencia
  else if cod = 3 then
    result := teSCAN
  else if cod = 4 then
    result := teDPEC
  else if cod = 5 then
    result := teFSDA
  else if cod = 6 then
    result := teSVCAN
  else if cod = 7 then
    result := teSVCRS
  else if cod = 8 then
    result := teSVCSP
  else if cod = 9 then
    result := teOffLine;

end;

function caminhoArquivo(caminhoCompleto: String): String;
var i :integer;
begin
  result := '';

  for i:=length(caminhoCompleto) downto 1 do begin
    if caminhoCompleto[i] = '\' then begin
      result := copy(caminhoCompleto,1,i-1);
      break;
    end;
  end;
end;

function SomenteNumeros(const s: string): string;
var
  i: integer;
begin
  result := '';
  for i := 1 to length(s) do
    if pos(s[i], '0123456789') > 0 then
      result := result + s[i];
end;

function loteAtual: Integer;
begin
  dm.qryGeneric.Close;
  dm.qryGeneric.SQL.Text := 'select gen_id(GEN_CTE_LOTE_ID, 0) as cod from rdb$database';
  dm.qryGeneric.Open;

  Result := dm.qryGeneric.fieldByName('cod').AsInteger + 1;
end;

function StrToTpImp(cod: integer): TpcnTipoImpressao;
begin
  if cod = 1 then
    result := tiSemGeracao
  else if cod = 2 then
    result := tiRetrato
  else if cod = 3 then
    result := tiPaisagem
  else if cod = 4 then
    result := tiSimplificado
  else if cod = 5 then
    result := tiNFCe
  {else if cod = 6 then
    result := tiResumido  }
  else if cod = 7 then
    result := tiMsgEletronica;
end;

procedure avisar(msg: String; const segundos :integer);
begin
  Application.ProcessMessages;

  frmAvisar := TfrmAvisar.Create(nil,msg,segundos);

  frmAvisar.ShowModal;
  frmAvisar.Release;
  Application.ProcessMessages;
end;

procedure Press(Key: integer);
begin
  keybd_event(Key, 0, 0, 0);
end;

function PesquisaSimples(cSql: String; multipla_selecao :Boolean; frmWidth: integer; frmHeight: integer):TDataSet;
begin
  try
    Application.CreateForm(Tfrm_PesquisaSimples,frm_PesquisaSimples);
    frm_PesquisaSimples.Width  := frmWidth;
    frm_PesquisaSimples.Height := frmHeight;
    frm_PesquisaSimples.sql := cSql;
    frm_PesquisaSimples.multipla_selecao := multipla_selecao;
    frm_PesquisaSimples.ExecutaPesquisa;
    frm_PesquisaSimples.ShowModal;
    result:= frm_PesquisaSimples.cds;

  Finally
    frm_PesquisaSimples.Release;
    frm_PesquisaSimples := nil;
  end;
end;

function PesquisaSimplesLocate(cSql: String; Param1 : string; Param2 : String = ''; Param3 :String = ''):TDataSet;
begin
  dm.qryGeneric := dm.GetQueryInstance(cSql);
  dm.qryGeneric.ParamByName('param1').AsString := Param1;

  if Param2 <> '' then    dm.qryGeneric.ParamByName('param2').AsString := Param2;
  if Param3 <> '' then    dm.qryGeneric.ParamByName('param3').AsString := Param3;

  dm.qryGeneric.Open;

  result:= dm.qryGeneric;
end;

Function PathSis: String;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

function DesCrip(Texto: String):String;
var
r : string;
i : integer;
begin
  For i := 1 to Length(texto) do
    r := r + chr(Ord(Texto[i]) - i + 47);
  result:= Copy(r,1,Length(R) - 5);
end;

function Crip(Texto: String):String;
var
r : string;
i : integer;
begin
  Texto := Texto + #13 + #27 + ' ' + #9 + #45;
  For i := 1 to Length(texto) do
    r := r + chr(Ord(Texto[i]) + i - 47);
  result:= R;
end;

function RemoveChar(cS,cC: String): String;
begin
  While Pos(cC,cS) > 0 Do
    Delete(cS,Pos(cC,cS),1);

  Result := cS;  
end;

procedure Bar(Qt: Integer = 100; cMens: String = 'Aguarde, realizando tarefa...'; cMens2: String = '');
begin
  Application.CreateForm(TfrmBar, frmBar);
  WindowList := DisableTaskWindows(frmBar.Handle);
  frmBar.Show;
  frmBar.bar.MaxValue    := Qt;
  frmBar.bar.Progress    := 00;
  frmBar.lblTit.Caption  := cMens;
  frmBar.Label2.Caption  := cMens2;
  Application.ProcessMessages;
end;

procedure FimBar;
begin
  If frmBar.Showing Then
    begin
      EnableTaskWindows(WindowList);
      Frmbar.Close;
      frmBar.Release;
    end;
  Application.ProcessMessages;
end;

function Pergunta(msg :String): Boolean;
begin
  Result := false;

  Application.CreateForm(TfrmPergunta,frmPergunta);

  frmPergunta.lblMen.Caption := msg;

  if frmPergunta.ShowModal = mrOk then
    result := true;

  frmPergunta.Release;
  frmPergunta := nil;   

end;

procedure Aguarda(cMens: String = 'Aguarde, realizando tarefa...');
begin
  If lAbriu Then
    FimAguarda;

  lAbriu := True;
  Application.CreateForm(TfrmAguarda,frmAguarda);
  WindowList := DisableTaskWindows(frmAguarda.Handle);
  frmAguarda.Show;

  Application.ProcessMessages;

  frmAguarda.lblMen.Caption  := cMens;

  frmAguarda.Animate1.Active := True;

  Application.ProcessMessages;
end;

procedure FimAguarda;

begin
  Application.ProcessMessages;

  If lAbriu Then
    begin
      EnableTaskWindows(WindowList);
      If frmAguarda.Showing Then
        begin
          frmAguarda.Animate1.Active := False;
          frmAguarda.Close;
        end;
      frmAguarda.Release;
      lAbriu := False;
    end;

  Application.ProcessMessages;
end;

procedure MoveBar(cMens: String = '';Qt:Integer = 1);
begin
  If frmBar.Showing Then
    begin
      frmBar.bar.Progress   := frmBar.bar.Progress + Qt;
      frmBar.Label2.Caption := cMens;
    end;
  Application.ProcessMessages;
end;

function ZeroEsquerda(numero,digitos: integer): string;
var
 i: integer;
begin
   result := inttostr(numero);
   for i := Length(Result) to digitos -1 do
      result := '0' + Result;
end;

function retiraMascara(texto :String):String;
var i :integer;
  letra : Char;
begin
  for i := 1 to Length(texto) do begin
    letra := texto[i];
    
    if letra in ['0'..'9'] then
      Result := Result + letra;
  end;
end;

function RemoveCaracteres(Info:String):String;
Begin
  Info := RemoveChar(Info,'.');
  Info := RemoveChar(Info,'-');
  Info := RemoveChar(Info,'(');
  Info := RemoveChar(Info,')');
  Info := RemoveChar(Info,':');
  Info := RemoveChar(Info,' ');
  Result := Info;
End;

function retornaCodUF(UF :String) :integer;
begin
       if UF = 'RO' then  result := 11
  else if UF = 'AC' then  result := 12
  else if UF = 'AM' then  result := 13
  else if UF = 'RR' then  result := 14
  else if UF = 'PA' then  result := 15
  else if UF = 'AP' then  result := 16
  else if UF = 'TO' then  result := 17
  else if UF = 'MA' then  result := 21
  else if UF = 'PI' then  result := 22
  else if UF = 'CE' then  result := 23
  else if UF = 'RN' then  result := 24
  else if UF = 'PB' then  result := 25
  else if UF = 'PE' then  result := 26
  else if UF = 'AL' then  result := 27
  else if UF = 'SE' then  result := 28
  else if UF = 'BA' then  result := 29
  else if UF = 'MG' then  result := 31
  else if UF = 'ES' then  result := 32
  else if UF = 'RJ' then  result := 33
  else if UF = 'SP' then  result := 35
  else if UF = 'PR' then  result := 41
  else if UF = 'SC' then  result := 42
  else if UF = 'RS' then  result := 43
  else if UF = 'MS' then  result := 50
  else if UF = 'MT' then  result := 51
  else if UF = 'GO' then  result := 52
  else if UF = 'DF' then  result := 53;
end;

function retornaSiglaUF(CodUf :Integer):string;
begin
       if CodUF = 11 then  result := 'RO'
  else if CodUF = 12 then  result := 'AC'
  else if CodUF = 13 then  result := 'AM'
  else if CodUF = 14 then  result := 'RR'
  else if CodUF = 15 then  result := 'PA'
  else if CodUF = 16 then  result := 'AP'
  else if CodUF = 17 then  result := 'TO'
  else if CodUF = 21 then  result := 'MA'
  else if CodUF = 22 then  result := 'PI'
  else if CodUF = 23 then  result := 'CE'
  else if CodUF = 24 then  result := 'RN'
  else if CodUF = 25 then  result := 'PB'
  else if CodUF = 26 then  result := 'PE'
  else if CodUF = 27 then  result := 'AL'
  else if CodUF = 28 then  result := 'SE'
  else if CodUF = 29 then  result := 'BA'
  else if CodUF = 31 then  result := 'MG'
  else if CodUF = 32 then  result := 'ES'
  else if CodUF = 33 then  result := 'RJ'
  else if CodUF = 35 then  result := 'SP'
  else if CodUF = 41 then  result := 'PR'
  else if CodUF = 42 then  result := 'SC'
  else if CodUF = 43 then  result := 'RS'
  else if CodUF = 50 then  result := 'MS'
  else if CodUF = 51 then  result := 'MT'
  else if CodUF = 52 then  result := 'GO'
  else if CodUF = 53 then  result := 'DF';
end;

procedure trimCampos(form :TForm);
var i :integer;
begin
  for i := form.ComponentCount -1 downto 0 do
    begin
      if (form.Components[i] is TEdit) then
        (form.Components[i] as TEdit).text := Trim((form.Components[i] as TEdit).text)
      else if (form.Components[i] is TFocusMaskEdit) then
        (form.Components[i] as TFocusMaskEdit).text := Trim((form.Components[i] as TFocusMaskEdit).text)
      else if (form.Components[i] is TMaskEdit) then
        (form.Components[i] as TMaskEdit).text := Trim((form.Components[i] as TMaskEdit).text);
    end;
end;

function PrimeiroDiaDoMes( dData : TDateTime ):TDateTime;
var  ano, mes, dia : Word;
begin
  DecodeDate(dData, ano, mes, dia);
  Result := EncodeDate(ano, mes, 1);
end;

function UltimoDiaDoMes( dData : TDateTime ):TDateTime;
var  ano, mes, dia : Word;
begin
  DecodeDate(dData, ano, mes, dia);
  mes := mes + 1;
  if mes = 13 then
    begin
      mes := 1;
      ano := ano + 1;
    end;
  Result := EncodeDate(ano, mes, 1)-1;
end;

function Maximo_valor_cadastrado(Tabela, Campo :String) :String;
begin
  Result := '';

  dm.qryGeneric.Close;
  dm.qryGeneric.SQL.Text := 'Select MAX('+Campo+') from '+Tabela;
  dm.qryGeneric.Open;

  Result := dm.qryGeneric.Fields[0].AsString;
end;

function Campo_por_campo(Tabela, campo_procurado, campo_referencia, valor_campo_referencia :String;
                         const campo_referencia2 :String = ''; const valor_referencia2 :String = '') :String;
var segunda_condicao :String;
begin
  Result := '';

  if campo_referencia2 <> '' then
    segunda_condicao := ' AND '+campo_referencia2+' = :param2';

  dm.qryGeneric.Close;
  dm.qryGeneric.SQL.Text := 'SELECT first 1 '+campo_procurado+' FROM '+Tabela+
                            ' WHERE '+campo_referencia+' = :param1'+
                            segunda_condicao;

  if strToIntDef(valor_campo_referencia, 0) > 0 then // se for numero
    dm.qryGeneric.ParamByName('param1').AsInteger := strToInt(valor_campo_referencia)
  else
    dm.qryGeneric.ParamByName('param1').AsString  := valor_campo_referencia;

  if campo_referencia2 <> '' then begin
    if strToIntDef(valor_referencia2, 0) > 0 then // se for numero
      dm.qryGeneric.ParamByName('param2').AsInteger := strToInt(valor_referencia2)
    else
      dm.qryGeneric.ParamByName('param2').AsString := valor_referencia2;

  end;
  dm.qryGeneric.Open;

  if not dm.qryGeneric.IsEmpty then
    Result := dm.qryGeneric.fieldByName(campo_procurado).AsString;
end;

end.

