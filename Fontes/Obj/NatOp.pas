unit NatOp;

interface

uses SysUtils, MDOQuery, Controls;

type
  TNatOp = class

  private
    Fflag: Boolean;
    FgeraPedido: Boolean;
    Fcodigo: Integer;
    FCFOP: Integer;
    FnatOp: String;
    FgeraPisCofins: Boolean;

    procedure SetCFOP(const Value: Integer);
    procedure Setcodigo(const Value: Integer);
    procedure Setflag(const Value: Boolean);
    procedure SetgeraPedido(const Value: Boolean);
    procedure SetnatOp(const Value: String);
    procedure SetgeraPisCofins(const Value: Boolean);

    function getFromTable(Qry : TMDOQuery) : TNatOp;

  public

    property codigo        : Integer read Fcodigo write Setcodigo;
    property CFOP          : Integer read FCFOP write SetCFOP;
    property natOp         : String  read FnatOp write SetnatOp;
    property flag          : Boolean read Fflag write Setflag;
    property geraPedido    : Boolean read FgeraPedido write SetgeraPedido;
    property geraPisCofins : Boolean read FgeraPisCofins write SetgeraPisCofins;

    function existeByCodigo(nCodigo : Integer) : Boolean;
    function existeByCFOP(nCFOP : Integer) : Boolean;
    function BuscaObjNatOp(const CFOP: Integer): TNatOp;
    procedure save;
    function seleciona_natop : TNatOp;

    class function getByCodigo(nCodigo : Integer) : TNatOp;
    function getByCFOP(nCFOP : Integer) : TNatOp;

    class procedure BloqDesbloq(nCodigo : Integer);
end;

implementation

uses Modulo, ucadNatOp, funcoes_cte;

const
  pGeraPisCofins = 'GERA_PIS_COFINS';

{ TNatOp }

class procedure TNatOp.BloqDesbloq(nCodigo : Integer);
var objeto : TNatOp;
begin
   try
      objeto := TNatOp.getByCodigo(nCodigo);

      if objeto.flag then
       objeto.flag := false
      else
       objeto.flag := true;

      objeto.save;
   finally
      if (objeto <> nil) then
       begin
          objeto.free;
          objeto := nil;
       end;
   end;
end;

function TNatOp.BuscaObjNatOp(const CFOP: Integer): TNatOp;
begin
  try
     result := getByCFOP(CFOP);

  except
   on e: Exception do
    begin
       Avisar('Ocorreu um erro ao buscar CFOP!'+#13#10+e.Message);

       if dm.Transaction.InTransaction then
         dm.Transaction.Rollback;
    end;
  end;
end;

function TNatOp.existeByCFOP(nCFOP: Integer): Boolean;
var Qry : TMDOQuery;
begin
   try
      Qry := dm.GetQueryInstance('SELECT *                   '+
                                 ' FROM nat_op               '+
                                 ' WHERE nat_op.CFOP = :CFOP ');
      Qry.paramByName('CFOP').asInteger := nCFOP;
      Qry.Open;

      if Qry.IsEmpty then
       result := true
      else
       result := false;
   finally
      if (Qry <> nil) then
       begin
          Qry.Destroy;
          Qry := nil;
       end;
   end;
end;

function TNatOp.existeByCodigo(nCodigo: Integer): Boolean;
var Qry : TMDOQuery;
begin
   try
      Qry := dm.GetQueryInstance('SELECT *                        '+
                                 ' FROM nat_op                    '+
                                 ' WHERE nat_op.codigo = :codigo; ');
      Qry.paramByName('CODIGO').AsInteger := nCodigo;
      Qry.Open;

      if Qry.isEmpty then
       result := false
      else
       result := true;
   finally
      if (Qry <> nil) then
       begin
          Qry.Destroy;
          Qry := nil;
       end;
   end;
end;

function TNatOp.getByCFOP(nCFOP: Integer): TNatOp;
var Qry    : TMDOQuery;
begin
   try
     Qry    := nil;
     result := nil;

   {  if existeByCFOP(nCFOP) then
        exit; }

     Qry   := dm.GetQueryInstance(' SELECT *                   '+
                                  ' FROM nat_op                '+
                                  ' WHERE nat_op.CFOP = :CFOP; ');
     Qry.paramByName('CFOP').AsInteger := nCFOP;
     Qry.Open;

     if not Qry.IsEmpty then
       result := getFromTable(Qry);

   finally
     if (Qry <> nil) then
      begin
        Qry.Destroy;
        Qry := nil;
      end;
   end;
end;

class function TNatOp.getByCodigo(nCodigo: Integer): TNatOp;
var Qry    : TMDOQuery;
    objeto  : TNatOp;
begin
   try
     objeto := TNatOp.Create;

     if not objeto.existeByCodigo(nCodigo) then
        exit;

     Qry   := dm.GetQueryInstance(' SELECT *                       '+
                                  ' FROM nat_op                    '+
                                  ' WHERE nat_op.codigo = :codigo; ');
     Qry.paramByName('codigo').AsInteger := nCodigo;
     Qry.Open;

     result := objeto.getFromTable(Qry);
     
   finally
     if (Qry <> nil) then
      begin
        Qry.Destroy;
        Qry := nil;
      end;
   end;
end;

function TNatOp.getFromTable(Qry: TMDOQuery): TNatOp;
var objeto : TNatOp;
begin
   if not (Qry.isEmpty) then
    begin
       objeto := TNatOp.Create;

       objeto.codigo        := Qry.fieldByName('CODIGO').asInteger;
       objeto.CFOP          := Qry.fieldByName('CFOP').asInteger;
       objeto.natOp         := trim(Qry.fieldByName('NAT_OP').asString);
       objeto.flag          := ('B' = Qry.fieldByName('FLAG').asString );
       objeto.geraPedido    := ('S' = Qry.fieldByName('GERA_PEDIDO').asString );
       objeto.geraPisCofins := ('S' = Qry.fieldByName(pGeraPisCofins).asString);

       result := objeto;
    end;
end;

procedure TNatOp.save;
var Qry   : TMDOQuery;
begin
   Qry := TMDOQuery.Create(nil);
   Qry.Database := dm.Database;
   Qry.Transaction := dm.Transaction;

   try
      if not self.existeByCodigo(self.codigo) then
       begin
          Qry.SQL.Text := ' INSERT INTO nat_op     '+
                          ' VALUES                 '+
                          ' (NULL, :CFOP, :NAT_OP, '+
                          ' :FLAG, :GERA_PEDIDO, :GERA_PIS_COFINS)   ';
       end
      else
       begin
          Qry.SQL.Text := ' UPDATE nat_op t SET t.cfop =   :CFOP,                     '+
                          '                     t.nat_op = :NAT_OP,                   '+
                          '                     t.flag   = :FLAG,                     '+
                          '                     t.gera_pedido = :GERA_PEDIDO,         '+
                          '                     t.gera_pis_cofins = :GERA_PIS_COFINS  '+
                          ' WHERE t.codigo = :CODIGO;                                 ';
          Qry.paramByName('CODIGO').asInteger := self.codigo;
       end;

      Qry.paramByName('CFOP').asInteger := self.CFOP;
      Qry.paramByName('NAT_OP').asString := trim(self.natOp);

      if self.flag then
        Qry.paramByName('FLAG').asString := 'B'
      else
        Qry.paramByName('FLAG').asString := 'N';

      if self.geraPedido then
        Qry.paramByName('GERA_PEDIDO').asString := 'S'
      else
        Qry.paramByName('GERA_PEDIDO').asString :=  'N';

      if self.geraPisCofins then
        Qry.paramByName(pGeraPisCofins).asString := 'S'
      else
        Qry.paramByName(pGeraPisCofins).asString := 'N';

      Qry.ExecSQL;
   finally
      if (Qry <> nil) then
       begin
          Qry.Destroy;
          Qry := nil;
       end;
   end;

end;

function TNatOp.seleciona_natop: TNatOp;
begin
  result := nil;
  
  try
   frmCadNatOp := nil;

   frmCadNatOp := TfrmCadNatOp.Create(nil);
   frmCadNatOp.Tag := 4; // Buscar
   frmCadNatOp.ShowModal;

   if (frmCadNatOp.ModalResult = mrOk) and frmCadNatOp.cds.Active then
     result := TNatOp.getByCodigo(frmCadNatOp.cdsCODIGO.AsInteger);

 finally
   if Assigned(frmCadNatOp) then
    begin
       frmCadNatOp.Release;
       frmCadNatOp := nil;
    end;
 end;
end;

procedure TNatOp.SetCFOP(const Value: Integer);
begin
  FCFOP := Value;
end;

procedure TNatOp.Setcodigo(const Value: Integer);
begin
  Fcodigo := Value;
end;

procedure TNatOp.Setflag(const Value: Boolean);
begin
  Fflag := Value;
end;

procedure TNatOp.SetgeraPedido(const Value: Boolean);
begin
  FgeraPedido := Value;
end;

procedure TNatOp.SetgeraPisCofins(const Value: Boolean);
begin
  FgeraPisCofins := Value;
end;

procedure TNatOp.SetnatOp(const Value: String);
begin
  FnatOp := Value;
end;

end.
