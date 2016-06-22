unit uFortesRelCtes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Provider, DBClient, MDOCustomDataSet, MDOQuery, RLReport, Modulo,
  ExtCtrls, funcoes_cte;

type
  TfortesRelCTes = class(TForm)
    qrySintetico: TMDOQuery;
    dsSintetico: TDataSource;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    lbEmp: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    lbCnpj: TRLLabel;
    RLLabel8: TRLLabel;
    lbIe: TRLLabel;
    RLLabel10: TRLLabel;
    lbDtI: TRLLabel;
    lbDtF: TRLLabel;
    RLLabel13: TRLLabel;
    RLDraw4: TRLDraw;
    RLReport2: TRLReport;
    RLBand4: TRLBand;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText21: TRLDBText;
    RLBand5: TRLBand;
    RLDraw8: TRLDraw;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLBand6: TRLBand;
    RLLabel55: TRLLabel;
    RLDBResult6: TRLDBResult;
    RLBand7: TRLBand;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel35: TRLLabel;
    RLDraw7: TRLDraw;
    dsAnalitico: TDataSource;
    qryAnalitico: TMDOQuery;
    qrySinteticoNUMCTE: TMDOStringField;
    qrySinteticoDATA: TDateField;
    qrySinteticoSERIE: TIntegerField;
    qrySinteticoUFINI: TMDOStringField;
    qrySinteticoUFFIM: TMDOStringField;
    qrySinteticoVMERC: TMDOBCDField;
    qrySinteticoVTPREST: TMDOBCDField;
    qrySinteticoPLACA: TMDOStringField;
    qrySinteticoPICMS: TMDOBCDField;
    qrySinteticoVICMS: TMDOBCDField;
    qrySinteticoRAZREM: TMDOStringField;
    qrySinteticoRAZDES: TMDOStringField;
    qrySinteticoQTDECARGA: TMDOBCDField;
    qrySinteticoCHAVE: TMDOStringField;
    qryAnaliticoNUMCTE: TMDOStringField;
    qryAnaliticoDATA: TDateField;
    qryAnaliticoSERIE: TIntegerField;
    qryAnaliticoUFINI: TMDOStringField;
    qryAnaliticoUFFIM: TMDOStringField;
    qryAnaliticoVMERC: TMDOBCDField;
    qryAnaliticoVTPREST: TMDOBCDField;
    qryAnaliticoPLACA: TMDOStringField;
    qryAnaliticoPICMS: TMDOBCDField;
    qryAnaliticoVICMS: TMDOBCDField;
    qryAnaliticoRAZREM: TMDOStringField;
    qryAnaliticoRAZDES: TMDOStringField;
    qryAnaliticoQTDECARGA: TMDOBCDField;
    qryAnaliticoCHAVE: TMDOStringField;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDraw6: TRLDraw;
    RLDraw3: TRLDraw;
    RLLabel34: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText1: TRLDBText;
    dbserie: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText32: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText12: TRLDBText;
    RLBand8: TRLBand;
    RLLabel64: TRLLabel;
    RLDBText11: TRLDBText;
    RLBand10: TRLBand;
    RLLabel22: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLDraw5: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLLabel39: TRLLabel;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw25: TRLDraw;
    RLBand9: TRLBand;
    RLDraw9: TRLDraw;
    RLLabel23: TRLLabel;
    RLDBResult1: TRLDBResult;
    totalPrestacao: TRLLabel;
    totalICMS: TRLLabel;
    totalCarga: TRLLabel;
    totalMercadoria: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand2AfterPrint(Sender: TObject);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    total_prestacao  :Real;
    total_mercadoria :Real;
    total_icms       :Real;
    total_qtde_carga :Real;

  public
    dataInicial :TDateTime;
    dataFinal :TDateTime;
    status :String;
    condicaoImpressao :String;
    tipo :String;
    Placa :String;
    ordem :String;
    
    procedure ExecutaReport;
    procedure imprime_sintetico;
    procedure imprime_analitico;    
  end;

var
  fortesRelCTes: TfortesRelCTes;

implementation

{$R *.dfm}

procedure TfortesRelCTes.ExecutaReport;
begin
  if tipo = '0' then
    self.imprime_analitico
  else if tipo = '1' then
    self.imprime_sintetico;
end;

procedure TfortesRelCTes.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  dbserie.Text := '00'+dbserie.Text;
end;

procedure TfortesRelCTes.FormCreate(Sender: TObject);
begin
  condicaoImpressao := '';
  tipo := '';
  placa := '';
  total_prestacao  := 0;
  total_mercadoria := 0;
  total_icms       := 0;
  total_qtde_carga := 0;
end;

procedure TfortesRelCTes.imprime_sintetico;
var campo_analitico, join_analitico, condicao_placa :String;
begin
  campo_analitico := '';  {}  join_analitico := '';  {}  condicao_placa := '';

  lbEmp.Caption  := dm.Parametro.Raz;
  lbCnpj.Caption := dm.Parametro.Cnpj;
  lbIe.Caption   := dm.Parametro.IE;
  lbDtI.Caption  := dateToStr(datainicial);
  lbDtF.Caption  := DateToStr(dataFinal);
  RLLabel51.Caption := dateToStr(datainicial);
  RLLabel52.Caption := DateToStr(dataFinal);
  RLLabel42.Caption := dm.Parametro.Raz;
  RLLabel47.Caption := dm.Parametro.Cnpj;
  RLLabel49.Caption := dm.Parametro.IE;


  qrySintetico.Close;
  if condicaoImpressao = '' then
   begin
     if Placa <> '' then
       condicao_placa := ' and (v.placa = '+Placa+') ';

     qrySintetico.SQL.Text :='select distinct LPAD(cte.numcte,7,''0'') NUMCTE, cte.data, cte.serie, cte.ufini, cte.uffim, cte.vmerc, cte.vtprest, '+
                             ' v.placa, cte.picms, cte.vicms, cte.razrem, cte.razdes, qtd.qtdecarga, '''' chave                                   '+
                             ' from cte                                                                                                           '+
                             ' left join cteqtdecarga qtd on qtd.numcte = cte.numcte                                                              '+
                             ' left join veiculos     v   on v.codigo = cte.codigo_veiculo                                                        '+
                             ' where (cte.data between '''+FormatDateTime('dd.mm.yyyy',dataInicial)+''' and '''+FormatDateTime('dd.mm.yyyy',dataFinal)+''') and '+
                             '(1 = '''+ status +''' or cte.status = '''+status+''') '+
                             condicao_placa;


{     MDOQuery1.ParamByName('dti').AsDateTime := dataInicial;
     MDOQuery1.ParamByName('dtf').AsDateTime := dataFinal;
     MDOQuery1.ParamByName('stat').AsString  := status;                    }

   end
  else
   begin
     qrySintetico.SQL.Text := 'select distinct LPAD(cte.numcte,7,''0'') NUMCTE, cte.data, cte.serie, cte.ufini, cte.uffim, cte.vmerc, cte.vtprest, '+
                              ' cte.picms, cte.vicms, cte.razrem, cte.razdes, qtd.qtdecarga, v.placa '+ campo_analitico +
                              ' from cte                                                                                                           '+
                              ' left join cteqtdecarga qtd on qtd.numcte = cte.numcte                                                              '+
                              ' left join veiculos     v   on v.codigo = cte.codigo_veiculo                                                        '+
                           join_analitico +
                           condicaoImpressao;
   end;

   qrySintetico.SQL.Text := qrySintetico.SQL.Text + ' order by cte.'+ordem;

   if ordem = 'Placa' then
     RLDBText21.Font.Style := [fsBold]
   else if ordem = 'NumCte' then
     RLDBText14.Font.Style := [fsBold]
   else if ordem = 'Data' then
     RLDBText13.Font.Style := [fsBold];

  qrySintetico.Open;

  if not qrySintetico.IsEmpty then
    RLReport2.Print
  else
    Avisar('Nenhum registro foi encontrado com os filtros utilizados.');

end;

procedure TfortesRelCTes.imprime_analitico;
var campo_analitico, join_analitico, condicao_placa :String;
begin
  condicao_placa := '';

  lbEmp.Caption  := dm.Parametro.Raz;
  lbCnpj.Caption := dm.Parametro.Cnpj;
  lbIe.Caption   := dm.Parametro.IE;
  lbDtI.Caption  := dateToStr(datainicial);
  lbDtF.Caption  := DateToStr(dataFinal);
  RLLabel51.Caption := dateToStr(datainicial);
  RLLabel52.Caption := DateToStr(dataFinal);
  RLLabel42.Caption := dm.Parametro.Raz;
  RLLabel47.Caption := dm.Parametro.Cnpj;
  RLLabel49.Caption := dm.Parametro.IE;


  qryAnalitico.Close;
  if condicaoImpressao = '' then
   begin
     if Placa <> '' then
       condicao_placa := ' and (v.placa = '+Placa+') ';

     qryAnalitico.SQL.Text :='select distinct LPAD(cte.numcte,7,''0'') NUMCTE, cte.data, cte.serie, cte.ufini, cte.uffim, cte.vmerc, cte.vtprest, '+
                             ' v.placa, cte.picms, cte.vicms, cte.razrem, cte.razdes, qtd.qtdecarga , nfes.chave                                  '+
                             ' from cte                                                                                                           '+
                             ' left join cteqtdecarga qtd on qtd.numcte = cte.numcte                                                              '+
                             ' left join ctenferem nfes   on nfes.nrcte = cte.numcte                                                              '+
                             ' left join veiculos     v   on v.codigo = cte.codigo_veiculo                                                        '+
                             ' where (cte.data between '''+FormatDateTime('dd.mm.yyyy',dataInicial)+''' and '''+FormatDateTime('dd.mm.yyyy',dataFinal)+''') and '+
                             '(1 = '''+ status +''' or cte.status = '''+status+''') '+
                             condicao_placa;

   end
  else
   begin
     qryAnalitico.SQL.Text := 'select distinct LPAD(cte.numcte,7,''0'') NUMCTE, cte.data, cte.serie, cte.ufini, cte.uffim, cte.vmerc, cte.vtprest, '+
                           ' cte.picms, cte.vicms, cte.razrem, cte.razdes, qtd.qtdecarga, v.placa , nfes.chave                                     '+
                           ' from cte                                                                                                              '+
                           ' left join cteqtdecarga qtd on qtd.numcte = cte.numcte                                                                 '+
                           ' left join ctenferem nfes on nfes.nrcte = cte.numcte                                                                   '+
                           ' left join veiculos     v   on v.codigo = cte.codigo_veiculo                                                           '+
                           condicaoImpressao;
   end;

   qryAnalitico.SQL.Text := qryAnalitico.SQL.Text + ' order by cte.'+ordem;

   if ordem = 'Placa' then
     RLDBText21.Font.Style := [fsBold]
   else if ordem = 'NumCte' then
     RLDBText14.Font.Style := [fsBold]
   else if ordem = 'Data' then
     RLDBText13.Font.Style := [fsBold];

  qryAnalitico.Open;

  if not qryAnalitico.IsEmpty then
    RLReport1.Print
  else
    Avisar('Nenhum registro foi encontrado com os filtros utilizados.');
end;

procedure TfortesRelCTes.RLBand2AfterPrint(Sender: TObject);
begin
  total_prestacao  := total_prestacao  + qryAnaliticoVTPREST.AsFloat;
  total_mercadoria := total_mercadoria + qryAnaliticoVMERC.AsFloat;
  total_icms       := total_icms       + qryAnaliticoVICMS.AsFloat;
  total_qtde_carga := total_qtde_carga + qryAnaliticoQTDECARGA.AsFloat;
end;

procedure TfortesRelCTes.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  totalMercadoria.Caption  := FormatFloat('###,##0.00', total_mercadoria);
  totalPrestacao.Caption   := FormatFloat('###,##0.00', total_prestacao);
  totalICMS.Caption        := FormatFloat('###,##0.00', total_icms);
  totalCarga.Caption       := FormatFloat('###,##0.00', total_qtde_carga);
end;

end.
