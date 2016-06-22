unit Produto;

interface

uses Grupo, SubGrupo, DB, MDOQuery, Forms;

type
  TProduto = class
  private
    Codigo    : Integer;
    Nome      : String;
    Referencia: String;
    Cor       : String;
    Grupo     : TGrupo;
    SubGrupo  : TSubGrupo;
    PrCus     : Real;
    PrVen     : Real;
    EstFis    : Real;
    ClFiscal  : String;
    CodTrib   : Integer;
    Unidade   : String;
    Unidade2  : String;
    QtdEmb    : Integer;

    Icms      : Real;
    Ipi       : Real;
    PesoBru   : Real;
    PesoLiq   : Real;
    Flag      : String;
    Chassi    : String;

    // uso interno
    CodGrp    : Integer;
    CodSGp    : Integer;
    FPrVenAlt: String;
    FPrAtac: Real;
    FVirg: String;
    FPratel: String;
    FDtUltRj: TDatetime;
    FPrCust: Real;
    FPrCus: Real;
    FPrVend: Real;
    FUltReaj: TDateTime;
    veiculo : string;
    FPrateleira: String;
    FCustoOperac: Real;
    FPratacEspecial: Real;
    FCodBar: String;
    FPRVENPRAZO: Real;

    function  getCodGrp: Integer;
    procedure setCodGrp(nCod: Integer);

    function  getCodSGp: Integer;
    procedure setCodSGp(nCod: Integer);
    procedure SetPrVenAlt(const Value: String);
    procedure SetPrAtac(const Value: Real);
    procedure SetVirg(const Value: String);
    procedure SetDtUltRj(const Value: TDatetime);
    procedure SetPratel(const Value: String);
    procedure SetPrVend(const Value: Real);
    procedure SetPrCust(const Value: Real);
    procedure SetUltReaj(const Value: TDateTime);
    procedure SetPrateleira(const Value: String);
    procedure SetCustoOperac(const Value: Real);
    procedure SetPratacEspecial(const Value: Real);
    procedure SetCodBar(const Value: String);
    procedure SetPRVENPRAZO(const Value: Real);
  public
    function  getCodigo: Integer;
    function  getCodMod11: String;
    procedure setCodigo(nCod: Integer);

    class function getCodFromMod11(cCod,DigVer: String): Integer;

    function  getEstFis: Real;
    procedure setEstFis(nEst: Real);

    function  getNome: String;
    procedure setNome(cNom: String);

    function  getReferencia: String;
    procedure setReferencia(cRef: String);

    function  getCor: String;
    procedure setCor(cCor: String);

    function  getGrupo: TGrupo;
    procedure setGrupo(g: TGrupo);

    function  getSubGrupo: TSubGrupo;
    procedure setSubGrupo(sg: TSubGrupo);

    function  getPrCus: Real;
    procedure setPrCus(nCus: Real);

    function  getPrVen: Real;
    procedure setPrVen(nVen: Real);

    function  getClFiscal: String;
    procedure setClFiscal(cCl: String);

    function  getCodTrib: Integer;
    procedure setCodTrib(nSit: Integer);

    function  getUnidade: String;
    procedure setUnidade(cUnd: String);

    function  getUnidade2: String;
    procedure setUnidade2(cUnd2: String);

    function  getqtdEmb: integer;
    procedure setqtdEmb(cEmb: integer);

    function  getIcms: Real;
    procedure setIcms(nIcms: Real);

    function  getIpi: Real;
    procedure setIpi(nIpi: Real);

    function  getPesoBru: Real;
    procedure setPesoBru(nPeso: Real);

    function  getPesoLiq: Real;
    procedure setPesoLiq(nPeso: Real);

    function  getFlag: String;
    procedure setFlag(cFlag: String);

    function  getChassi: String;
    procedure setChassi(cChassi: String);

    function  getVeiculo: String;
    procedure setVeiculo(cVeiculo: String);

    property PrVenAlt: String read FPrVenAlt write SetPrVenAlt;
    property PrAtac: Real read FPrAtac write SetPrAtac;
    property Virg: String read FVirg write SetVirg;
    property Pratel: String read FPratel write SetPratel;
    property DtUltRj: TDatetime read FDtUltRj write SetDtUltRj;
    property PrCust: Real read FPrCust write SetPrCust;
    property PrVend: Real read FPrVend write SetPrVend;
    property UltReaj:TDateTime read FUltReaj write SetUltReaj;
    property Prateleira : String read FPrateleira write SetPrateleira;
    property CustoOperac : Real  read FCustoOperac write SetCustoOperac;
    property PratacEspecial : Real  read FPratacEspecial write SetPratacEspecial;
    property CodBar : String  read FCodBar write SetCodBar;
    property PRVENPRAZO : Real read FPRVENPRAZO write SetPRVENPRAZO;


    (* Busca no Banco pelo Código *)
    class function getFromTable(qry: TMdoQuery): TProduto;
    class function getFromCodigo(nCod: Integer): TProduto;
    class function getFromReferencia(cRef: String): TProduto;
    class function getFromCodBar(cBar: String): TProduto;
    class function getFromMod11(cCod,DigVer: String): TProduto;

    destructor Free;
  end;

implementation

uses Modulo, SysUtils, Funcoes;

{ TProduto }

function TProduto.getCodigo: Integer;
begin
  Result := self.Codigo;
end;

function TProduto.getCodMod11: String;
begin
  Result := IntToStr(self.getCodigo) + '-' + Mod11(self.getCodigo);
end;

procedure TProduto.setCodigo(nCod: Integer);
begin
  self.Codigo := nCod;
end;

function TProduto.getNome: String;
begin
  Result := self.Nome;
end;

procedure TProduto.setNome(cNom: String);
begin
  self.Nome := cNom;
end;

function TProduto.getReferencia: String;
begin
  Result := self.Referencia;
end;

procedure TProduto.setReferencia(cRef: String);
begin
  self.Referencia := cRef;
end;

function TProduto.getCor: String;
begin
  Result := self.Cor;
end;

procedure TProduto.setCor(cCor: String);
begin
  self.Cor := cCor;
end;

(* Busca no Banco pelo Código *)
class function TProduto.getFromCodigo(nCod: Integer): TProduto;
var p  : TProduto;
    qry: TMDOQuery;
begin
  p      := Nil;
  Result := p;

  If nCod = 0 Then
    Exit;

  qry          := TMDOQuery.Create(Application);
  qry.Database := dm.DataBase;
  qry.SQL.Add('Select First 1 * From Produtos Where CODIGO = :nCod');
  qry.ParamByName('nCod').AsInteger := nCod;
  qry.Open;

  If Not qry.IsEmpty Then
    p := TProduto.getFromTable(qry);

  qry.Close;
  FreeAndNil(qry);
  qry := Nil;
  Result := p;
end;

function TProduto.getGrupo: TGrupo;
begin
  If self.Grupo = Nil Then
    self.setGrupo(TGrupo.getFromCodigo(self.getCodGrp));

  Result := self.Grupo;
end;

procedure TProduto.setGrupo(g: TGrupo);
begin
  self.Grupo := g;

  If g = Nil Then
    self.setCodGrp(0)
  Else
    self.setCodGrp(g.getCodigo);  
end;

function TProduto.getPrCus: Real;
begin
  Result := self.PrCus;
end;

procedure TProduto.setPrCus(nCus: Real);
begin
  self.PrCus := nCus;
end;







function TProduto.getClFiscal: String;
begin
  Result := self.ClFiscal;
end;

procedure TProduto.setClFiscal(cCl: String);
begin
  self.ClFiscal := cCl;
end;

function TProduto.getCodTrib: Integer;
begin
  Result := self.CodTrib;
end;

procedure TProduto.setCodTrib(nSit: Integer);
begin
  self.CodTrib := nSit;
end;

function TProduto.getUnidade: String;
begin
  Result := self.Unidade;
end;

procedure TProduto.setUnidade(cUnd: String);
begin
  self.Unidade := cUnd;
end;

function TProduto.getUnidade2: String;
begin
  Result := self.Unidade2;
end;

procedure TProduto.setUnidade2(cUnd2: String);
begin
  self.Unidade2 := cUnd2;
end;

function TProduto.getQtdEmb: integer;
begin
  Result := self.QtdEmb;
end;

procedure TProduto.setQtdEmb(cEmb: integer);
begin
  self.QtdEmb := cEmb;
end;

function TProduto.getIcms: Real;
begin
  Result := self.Icms;
end;

function TProduto.getIpi: Real;
begin
  Result := self.Ipi;
end;

procedure TProduto.setIcms(nIcms: Real);
begin
  self.Icms := nIcms;
end;

procedure TProduto.setIpi(nIpi: Real);
begin
  self.Ipi := nIpi;
end;

function TProduto.getCodGrp: Integer;
begin
  Result := self.CodGrp;
end;

procedure TProduto.setCodGrp(nCod: Integer);
begin
  self.CodGrp := nCod;
end;

function TProduto.getPrVen: Real;
begin
  Result := self.PrVen;
end;

procedure TProduto.setPrVen(nVen: Real);
begin
  self.PrVen := nVen;
end;

function TProduto.getCodSGp: Integer;
begin
  Result := self.CodSGp;
end;

procedure TProduto.setCodSGp(nCod: Integer);
begin
  self.CodSGp := nCod;
end;

function TProduto.getSubGrupo: TSubGrupo;
var g: TGrupo;
begin
  If (self.SubGrupo = Nil) Then
    begin
      g := self.getGrupo;

      If g <> Nil Then
        self.setSubGrupo(TSubGrupo.getFromCodigo(g,self.getCodSGp));
    end;

  Result := self.SubGrupo;
end;

procedure TProduto.setSubGrupo(sg: TSubGrupo);
begin
  self.SubGrupo := sg;

  self.setCodSGp(0);
  If sg <> Nil Then
    self.setCodSGp(sg.getCodigo);
end;

class function TProduto.getFromTable(qry: TMdoQuery): TProduto;
var p: TProduto;
begin
  p := TProduto.Create;
  p.setCodigo(qry.FieldByName('CODIGO').AsInteger);
  p.setNome(qry.FieldByName('DESCR').AsString);
  p.setReferencia(qry.FieldByName('REF').AsString);
  p.setCor(qry.FieldByName('COR').AsString);
  p.setCodGrp(qry.FieldByName('GRUPO').AsInteger);
  p.setCodSGp(qry.FieldByName('SUBGRUPO').AsInteger);
  p.setPrCus(qry.FieldByName('PRCUS').AsFloat);
  p.setEstFis(qry.FieldByName('ESTFIS').AsFloat);
  p.setClFiscal(qry.FieldByName('CLASFISC').AsString);
  p.setCodTrib(qry.FieldByName('CODTRIB').AsInteger);
  p.setUnidade(qry.FieldByName('UNDVEN').AsString);
  p.setUnidade2(qry.FieldByName('UNDVEN2').AsString);
  p.setQtdEmb(qry.FieldByName('QTDEMB').AsInteger);
  p.setIcms(qry.FieldByName('ICMS').AsFloat);
  p.setIpi(qry.FieldByName('IPI').AsFloat);
  p.setPrVen(qry.FieldByName('PRVEN').AsFloat);
  p.setPesoBru(qry.FieldByName('PESOBRU').AsFloat);
  p.setPesoLiq(qry.FieldByName('PESOLIQ').AsFloat);
  p.setFlag(qry.FieldByName('FLAG').AsString);
  p.setChassi(qry.FieldByName('CHASSI').AsString);
  try
  p.SetPrateleira(qry.FieldByName('Pratel').AsString);
  except
  end;

  p.PrVenAlt := qry.FieldByName('PRVENALT').AsString;
  p.PrAtac   := qry.FieldByName('PRATAC').AsFloat;
  p.Virg     := qry.FieldByName('VIRG').AsString;
  p.Pratel   := qry.fieldByname('PRATEL').AsString;
  P.DtUltRj  := qry.fieldByname('ULTRJ').AsDateTime;
  P.PrCust    := qry.fieldbyname('PRCUS').AsFloat;
  P.PrVend   := qry.fieldByname('PRVEN').AsFloat;
  P.UltReaj  := qry.fieldByname('ULTRJ').AsDateTime;
  p.veiculo  := qry.fieldByname('AUTOMOTOR').AsString;
  p.CustoOperac    := qry.fieldByname('CUSTOPERAC').AsFloat;
  p.PratacEspecial := qry.fieldByname('PRATACESPECIAL').AsFloat;
  p.CodBar         := qry.fieldByname('CODBAR').Asstring;
  p.PRVENPRAZO     := qry.fieldByname('PRVENPRAZO').AsFloat;
  Result := p;
end;

class function TProduto.getFromReferencia(cRef: String): TProduto;
var p  : TProduto;
    qry: TMDOQuery;
begin
  p      := Nil;
  Result := p;

  If (Trim(cRef) = '') Then
    Exit;

  qry          := TMDOQuery.Create(Application);
  qry.Database := dm.DataBase;
  qry.SQL.Add('Select First 1 * From Produtos Where REF = :cRef');
  qry.ParamByName('cRef').AsString := cRef;
  qry.Open;

  If Not qry.IsEmpty Then
    p := TProduto.getFromTable(qry);

  qry.Close;
  FreeAndNil(qry);
  Result := p;
end;

class function TProduto.getFromCodBar(cBar: String): TProduto;
var p  : TProduto;
    qry: TMDOQuery;
begin
  p      := Nil;
  Result := p;

  If (Trim(cBar) = '') Then
    Exit;

  qry          := TMDOQuery.Create(Application);
  qry.Database := dm.DataBase;
  qry.SQL.Add('Select First 1 * From Produtos Where CODBAR = :cBar');
  qry.ParamByName('cBar').AsString := cBar;
  qry.Open;

  If Not qry.IsEmpty Then
    p := TProduto.getFromTable(qry);

  qry.Close;
  FreeAndNil(qry);
  Result := p;
end;

class function TProduto.getCodFromMod11(cCod,DigVer:String): Integer;
var nCod: Integer;
    cDig: String;
begin
  Result := 0;

  If Pos('-',cCod) > 0 Then
    Delete(cCod,Pos('-',cCod),1);

  nCod := 0;
  If Not TryStrToInt(cCod,nCod) Then
    Exit;

  cCod := IntToStr(nCod);

  If DigVer = 'S' Then
  Begin
    If Length(cCod) < 2 Then
      Exit;
  End;

  cDig   := Copy(cCod,Length(cCod),1);
  If DigVer = 'S' Then
    cCod   := Copy(cCod,1,Length(cCod) - 1);

  If DigVer = 'S' Then
  Begin
    If Mod11(StrToInt(cCod)) <> cDig Then
    Begin
      Avisar('Digito verificador inválido!');
      Exit;
    End;
  End;

  Result := StrToInt(cCod);
end;

class function TProduto.getFromMod11(cCod,DigVer: String): TProduto;
begin
  Result := TProduto.getFromCodigo(TProduto.getCodFromMod11(cCod,DigVer));
end;

function TProduto.getPesoBru: Real;
begin
  Result := self.PesoBru;
end;

procedure TProduto.setPesoBru(nPeso: Real);
begin
  self.PesoBru := nPeso;
end;

function TProduto.getPesoLiq: Real;
begin
  Result := self.PesoLiq;
end;

procedure TProduto.setPesoLiq(nPeso: Real);
begin
  self.PesoLiq := nPeso;
end;

function TProduto.getFlag: String;
begin
  Result := self.Flag;
end;

procedure TProduto.setFlag(cFlag: String);
begin
  self.Flag := cFlag;
end;

function TProduto.getChassi: String;
begin
  Result := self.Chassi;
end;

function TProduto.getVeiculo: String;
begin
  Result := self.veiculo;
end;


procedure TProduto.setVeiculo(cVeiculo: String);
begin
  self.Veiculo := cVeiculo;
end;


procedure TProduto.setChassi(cChassi: String);
begin
  self.Chassi := cChassi;
end;

function TProduto.getEstFis: Real;
begin
  Result := self.EstFis;
end;

procedure TProduto.setEstFis(nEst: Real);
begin
  self.EstFis := nEst;
end;

destructor TProduto.Free;
begin
  If self.Grupo <> Nil Then
    self.Grupo.Free;

  If self.SubGrupo <> Nil Then
    self.SubGrupo.Free;
end;

procedure TProduto.SetPrVenAlt(const Value: String);
begin
  FPrVenAlt := Value;
end;

procedure TProduto.SetPrAtac(const Value: Real);
begin
  FPrAtac := Value;
end;

procedure TProduto.SetVirg(const Value: String);
begin
  FVirg := Value;
end;

procedure TProduto.SetDtUltRj(const Value: TDatetime);
begin
  FDtUltRj := Value;
end;

procedure TProduto.SetPratel(const Value: String);
begin
  FPratel := Value;
end;

procedure TProduto.SetPrVend(const Value: Real);
begin
  FPrVend := Value;
end;

procedure TProduto.SetPrCust(const Value: Real);
begin
  FPrCust := Value;
end;

procedure TProduto.SetUltReaj(const Value: TDatetime);
begin
  FUltReaj := Value;
end;

procedure TProduto.SetPrateleira(const Value: String);
begin
  FPrateleira := Value;
end;

procedure TProduto.SetCustoOperac(const Value: Real);
begin
  FCustoOperac := Value;
end;

procedure TProduto.SetPratacEspecial(const Value: Real);
begin
  FPratacEspecial := Value;
end;

procedure TProduto.SetCodBar(const Value: String);
begin
  FCodBar := Value;
end;

procedure TProduto.SetPRVENPRAZO(const Value: Real);
begin
  FPRVENPRAZO := Value;
end;

end.
