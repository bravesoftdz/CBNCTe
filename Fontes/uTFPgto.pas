unit uTFPgto;

interface

uses FUNCOES, NatOp, MDOQuery,DBClient,uTDados,modulo,DB, ZDataSet;

type
  TFPgto = class
  private

    codigo     : Integer;
    descr      : String;
    acresc     : Real;
    desconto   : Real;
    livre      : String;
    diasEnt    : Integer;
    perEnt     : Real;
    qtParc     : Integer;
    intDias    : Integer;
    senha      : String;
    tipoPagto  : String;
    tipo       : String;
    FBloq      : Boolean;
    FmoedaDinheiro: Boolean;
    FmoedaCheque: Boolean;
    FmoedaChequePre: Boolean;
    FmoedaCartao: Boolean;
    FmoedaOutros: Boolean;
    FBaixaEstoque: Boolean;
    FNatOp: TNatOp;
    FALIQUOTA_CARTAO: Real;
    FDESCRECF: String;

    procedure setTipoPagto(const Value: String);
    procedure setTipo(const Value: String);

    function getBloq: Boolean;
    function boolToStr(value: Boolean): String;
    procedure SetmoedaDinheiro(const Value: Boolean);
    procedure SetmoedaCheque(const Value: Boolean);
    procedure SetmoedaChequePre(const Value: Boolean);
    procedure SetmoedaCartao(const Value: Boolean);
    procedure SetmoedaOutros(const Value: Boolean);
    procedure SetBaixaEstoque(const Value: Boolean);
    procedure SetNatOp(const Value: TNatOp);
    function getNatOp: TNatOp;
    procedure SetALIQUOTA_CARTAO(const Value: Real);
    procedure SetDESCRECF(const Value: String);

  public

    procedure setCodigo(const Value: Integer);
    procedure setDescr(const Value: String);
    procedure setAcresc(const Value: Real);
    procedure setDesconto(const Value: Real);
    procedure setLivre(const Value: String);
    procedure setDiasEnt(const Value: Integer);
    procedure setPerEnt(const Value: Real);
    procedure setQtParc(const Value: Integer);
    procedure setIntDias(const Value: Integer);
    procedure setSenha(const Value: String);

    procedure salvarMoedas;


    property getCodigo    : Integer    read codigo    write setCodigo;
    property getDescr     : String     read descr     write setDescr;
    property getAcres     : Real       read acresc    write setAcresc;
    property getDesconto  : Real       read desconto  write setDesconto;
    property getLivre     : String     read livre     write setLivre;
    property getDiasEnt   : Integer    read diasEnt   write setDiasEnt;
    property getPerEnt    : Real       read perEnt    write setPerEnt;
    property getQtParc    : Integer    read qtParc    write setQtParc;
    property getIntDias   : Integer    read intDias   write setIntDias;
    property getSenha     : String     read senha     write setSenha;
    property getTipoPagto : String     read tipoPagto write setTipoPagto;
    property getTipo      : String     read tipo      write setTipo;
    property Bloqueado    : Boolean    read getBloq     write FBloq;
    property moedaDinheiro : Boolean   read FmoedaDinheiro write SetmoedaDinheiro;
    property moedaCheque  : Boolean    read FmoedaCheque write SetmoedaCheque;
    property moedaChequePre : Boolean  read FmoedaChequePre write SetmoedaChequePre;
    property moedaCartao  : Boolean    read FmoedaCartao write SetmoedaCartao;
    property moedaOutros  : Boolean    read FmoedaOutros write SetmoedaOutros;
    property BaixaEstoque : Boolean read FBaixaEstoque write SetBaixaEstoque;
    property NatOp        : TNatOp     read getNatOp write SetNatOp;
    property ALIQUOTA_CARTAO  : Real read FALIQUOTA_CARTAO write SetALIQUOTA_CARTAO;
    property DESCRECF : String read FDESCRECF write SetDESCRECF;

    class function GetById(cod : Integer) :TFPgto;
    class function GetByIdZ(cod : Integer) :TFPgto;

    function AddRelFpagtoCFOP(NatOp :TNatOp): Boolean;
    function DelRelFpagtoCFOP(NatOp :TNatOp): Boolean;
  end;

implementation

uses SysUtils;

const
  SQL_INSERE_CFOP = ' INSERT INTO fpagto_has_natop    '+
                    ' VALUES                          '+
                    ' (NULL, :COD_FPAGTO, :Cod_NATOP) ';

  SQL_REMOVE_CFOP = ' DELETE FROM fpagto_has_natop f      '+
                    ' WHERE f.cod_fpagto IN (:COD_FPAGTO) '+
                    '   AND f.cod_natop  IN (:COD_NATOP)  ';


function TFPgto.AddRelFpagtoCFOP(NatOp: TNatOp): Boolean;
var mQry :TMDOQuery;
begin
   try
      try
          result := false;

          if not Assigned(NatOp) or ( (NatOp.codigo <= 0) or (self.codigo <= 0)) then
            exit;

          if dm.Transaction.InTransaction then
            dm.Transaction.Commit;

          mQry := dm.GetQueryInstance(SQL_INSERE_CFOP);
          mQry.ParamByName('COD_FPAGTO').AsInteger     := self.Codigo;
          mQry.ParamByName('COD_NATOP').AsInteger      := NatOp.codigo;
          mQry.ExecSQL;

          if dm.Transaction.InTransaction then
            dm.Transaction.Commit;

          result := true;

      except
       on e: Exception do
        begin
           result := false;

           Avisar('Erro ao salvar relação de forma de pagamento com CFOP. '+#13+'Erro :'+#13+e.Message);

           if dm.Transaction.InTransaction then
            dm.Transaction.Rollback;

           if Assigned(mQry) then
             FreeAndNil(mQry);
        end;
      end;
   finally
      if Assigned(mQry) then
        FreeAndNil(mQry);
   end;
end;

function TFPgto.boolToStr(value: Boolean): String;
begin
  if value then
    result := 'S'
  else
    result := 'N';
end;

function TFPgto.DelRelFpagtoCFOP(NatOp: TNatOp): Boolean;
var mQry :TMDOQuery;
begin
   try
      try
          result := false;

          if not Assigned(NatOp) or ( (NatOp.codigo <= 0) or (self.codigo <= 0)) then
            exit;

          if dm.Transaction.InTransaction then
            dm.Transaction.Commit;

          mQry := dm.GetQueryInstance(SQL_REMOVE_CFOP);
          mQry.ParamByName('COD_FPAGTO').AsInteger     := self.Codigo;
          mQry.ParamByName('COD_NATOP').AsInteger      := NatOp.codigo;
          mQry.ExecSQL;

          if dm.Transaction.InTransaction then
            dm.Transaction.Commit;

          result := true;

      except
       on e: Exception do
        begin
           result := false;

           Avisar('Erro ao remover relação de forma de pagamento com CFOP. '+#13+'Erro :'+#13+e.Message);

           if dm.Transaction.InTransaction then
            dm.Transaction.Rollback;

           if Assigned(mQry) then
             FreeAndNil(mQry);
        end;
      end;
   finally
      if Assigned(mQry) then
        FreeAndNil(mQry);
   end;

end;

function TFPgto.getBloq: Boolean;
begin
  Result := FBloq;
end;

class function TFPgto.GetById(cod: Integer):TFPgto;
var dados : TDados;
    query : TMDOQuery;
    f : TFPgto;
begin
   dados := TDados.Create;
   f := TFPgto.Create;

   query := TMDOQuery.Create(nil);
   query := dm.GetQueryInstance('select * from  fpagtos p where p.codigo = :codigo');
   query.ParamByName('codigo').AsInteger := cod;

   query.Open;


   f.codigo   := query.FieldByName('codigo').AsInteger;
   f.descr    := Trim(query.FieldByName('descr').AsString);
   f.acresc   := query.FieldByName('acress').AsFloat;
   f.desconto := query.FieldByName('descon').AsFloat;
   f.livre    := query.FieldByName('plivre').AsString;
   f.diasEnt  := query.FieldByName('diasent').AsInteger;
   f.perEnt   := query.FieldByName('perent').AsFloat;
   f.qtParc   := query.FieldByName('qtparc').AsInteger;
   f.intDias  := query.FieldByName('intdias').AsInteger;
   f.senha    := query.FieldByName('senha').AsString;
   f.tipoPagto:= query.FieldByName('tipopgto').AsString;
   f.tipo     := query.FieldByName('tipo').AsString;
   f.Bloqueado := ( 'B' = query.FieldByName('flag').AsString );
   f.moedaDinheiro := ( copy(query.fieldByName('moedas').AsString, 1, 1) = 'S');
   f.moedaCheque := ( copy(query.fieldByName('moedas').AsString, 2, 1) = 'S');
   f.moedaChequePre := ( copy(query.fieldByName('moedas').AsString, 3, 1) = 'S');
   f.moedaCartao := ( copy(query.fieldByName('moedas').AsString, 4, 1) = 'S');
   f.moedaOutros := ( copy(query.fieldByName('moedas').AsString, 5, 1) = 'S');
   f.BaixaEstoque := (query.FieldByName('BAIXA_ESTOQUE').AsString = 'S');
   f.DESCRECF     := query.FieldByName('DESCRECF').AsString;

   query.Destroy;

   Result := f ;

end;

class function TFPgto.GetByIdZ(cod: Integer): TFPgto;
var dados : TDados;
    query : TMDOQuery;
    f : TFPgto;
begin
   dados := TDados.Create;
   f := TFPgto.Create;

   query := dm.GetQueryInstance('select * from  fpagtos p where p.codigo = :codigo');
   query.ParamByName('codigo').AsInteger := cod;

   query.Open;


   f.codigo   := query.FieldByName('codigo').AsInteger;
   f.descr    := Trim(query.FieldByName('descr').AsString);
   f.acresc   := query.FieldByName('acress').AsFloat;
   f.desconto := query.FieldByName('descon').AsFloat;
   f.livre    := query.FieldByName('plivre').AsString;
   f.diasEnt  := query.FieldByName('diasent').AsInteger;
   f.perEnt   := query.FieldByName('perent').AsFloat;
   f.qtParc   := query.FieldByName('qtparc').AsInteger;
   f.intDias  := query.FieldByName('intdias').AsInteger;
   f.senha    := query.FieldByName('senha').AsString;
   f.tipoPagto:= query.FieldByName('tipopgto').AsString;
   f.tipo     := query.FieldByName('tipo').AsString;
   f.Bloqueado := ( 'B' = query.FieldByName('flag').AsString );
   f.moedaDinheiro := ( copy(query.fieldByName('moedas').AsString, 1, 1) = 'S');
   f.moedaCheque := ( copy(query.fieldByName('moedas').AsString, 2, 1) = 'S');
   f.moedaChequePre := ( copy(query.fieldByName('moedas').AsString, 3, 1) = 'S');
   f.moedaCartao := ( copy(query.fieldByName('moedas').AsString, 4, 1) = 'S');
   f.moedaOutros := ( copy(query.fieldByName('moedas').AsString, 5, 1) = 'S');
   f.BaixaEstoque := (query.FieldByName('BAIXA_ESTOQUE').AsString = 'S');

   query.Close;
   freeAndNil(query);

     Result := f ;

end;

function TFPgto.getNatOp: TNatOp;
var mQry : TMDOQuery;
    nCodNatOp :Integer;
begin
   try
     nCodNatOp := 0;
     
     mQry := dm.GetQueryInstance('Select f.cod_natop from fpagto_has_natop f where f.cod_fpagto in (:CODIGO) ');
     mQry.ParamByName('CODIGO').AsInteger := self.codigo;
     mQry.Open;

     if not mQry.IsEmpty then
       nCodNatOp := mQry.FieldByName('COD_NATOP').AsInteger;

     mQry.Close;

     if not Assigned(self.FNatOp) and (nCodNatOp > 0) then
       self.FNatOp := TNatOp.getByCodigo(nCodNatOp);

     result := self.FNatOp;
   finally
     if Assigned(mQry) then
       freeAndNil(mQry); 
   end;
end;

procedure TFPgto.salvarMoedas;
var qry: TMDOQuery;
    moedas: String;
begin
    moedas := '';

    moedas := boolToStr(self.moedaDinheiro)+
              boolToStr(self.moedaCheque)+
              boolToStr(self.moedaChequePre)+
              boolToStr(self.moedaCartao)+
              boolToStr(self.moedaOutros);

    qry := dm.GetQueryInstance(' UPDATE fpagtos SET fpagtos.moedas = :moedas '+
                               ' WHERE fpagtos.codigo = :codigo              ');
    qry.ParamByName('moedas').asString := moedas;
    qry.ParamByName('codigo').AsInteger := self.codigo;

    qry.ExecSQL;
    freeAndNil(qry);
end;

procedure TFPgto.setAcresc(const Value: Real);
begin
  acresc := Value;
end;

procedure TFPgto.SetALIQUOTA_CARTAO(const Value: Real);
begin
  FALIQUOTA_CARTAO := Value;
end;

procedure TFPgto.SetBaixaEstoque(const Value: Boolean);
begin
  FBaixaEstoque := Value;
end;

procedure TFPgto.setCodigo(const Value: Integer);
begin
  Self.codigo := Value;
end;


procedure TFPgto.setDesconto(const Value: Real);
begin
  desconto := Value;
end;

procedure TFPgto.setDescr(const Value: String);
begin
  descr := Value;
end;

procedure TFPgto.SetDESCRECF(const Value: String);
begin
  FDESCRECF := Value;
end;

procedure TFPgto.setDiasEnt(const Value: Integer);
begin
  diasEnt := Value;
end;

procedure TFPgto.setIntDias(const Value: Integer);
begin
   intDias := Value;
end;

procedure TFPgto.setLivre(const Value: String);
begin
  livre := Value;
end;

procedure TFPgto.SetmoedaCartao(const Value: Boolean);
begin
  FmoedaCartao := Value;
end;

procedure TFPgto.SetmoedaCheque(const Value: Boolean);
begin
  FmoedaCheque := Value;
end;

procedure TFPgto.SetmoedaChequePre(const Value: Boolean);
begin
  FmoedaChequePre := Value;
end;

procedure TFPgto.SetmoedaDinheiro(const Value: Boolean);
begin
  FmoedaDinheiro := Value;
end;

procedure TFPgto.SetmoedaOutros(const Value: Boolean);
begin
  FmoedaOutros := Value;
end;

procedure TFPgto.SetNatOp(const Value: TNatOp);
begin
  FNatOp := Value;
end;

procedure TFPgto.setPerEnt(const Value: Real);
begin
  perEnt := Value;
end;

procedure TFPgto.setQtParc(const Value: Integer);
begin
  qtParc := Value;
end;

procedure TFPgto.setSenha(const Value: String);
begin
   senha := Value;
end;

procedure TFPgto.setTipo(const Value: String);
begin
  Self.tipo :=Value;
end;

procedure TFPgto.setTipoPagto(const Value: String);
begin
  tipoPagto := Value;
end;

end.

