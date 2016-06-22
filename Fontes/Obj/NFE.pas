unit NFE;

interface

uses SysUtils, MdoQuery, Funcoes_Sgve, AndreConsulta, Modulo,
     uTPedido, uTCliente;

type
  TNfe = class

  private
    Fstatus       : Integer;
    FcodCli       : Integer;
    FnrPed        : Integer;
    FnrNota       : Integer;
    FCFOP         : Integer;
    
    FUFDest       : String;
    FIEEmi        : String;
    FmunDest      : String;
    Fbairro       : String;
    FfantEmi      : String;
    FCNPJEmi      : String;
    FcodMun       : String;
    FlogrEmi      : String;
    FcodMunDest   : String;
    FtpNF         : String;
    FCEPEmi       : String;
    FID           : String;
    FbairroDest   : String;
    FCNPJDest     : String;
    FfoneDest     : String;
    FrazEmi       : String;
    FtpEmiss      : String;
    FnatOp        : String;
    FmunEmi       : String;
    FCEPDest      : String;
    FUFEmi        : String;
    FIEDest       : String;
    FlogrDest     : String;
    Fserie        : String;
    FxMotivo      : String;
    FnumeroDest   : String;
    FnomeDest     : String;
    FnumeroEmi    : String;
    FImpDanfe     : String;

    Fdata         : TDateTime;
    Fboleto       : Integer;
    Fcliente      : TCliente;
    Fpedido       : TPedido;

    procedure Setbairro(const Value: String);
    procedure SetbairroDest(const Value: String);
    procedure SetCEPDest(const Value: String);
    procedure SetCEPEmi(const Value: String);
    procedure SetCFOP(const Value: Integer);
    procedure SetCNPJDest(const Value: String);
    procedure SetCNPJEmi(const Value: String);
    procedure SetcodCli(const Value: Integer);
    procedure SetcodMun(const Value: String);
    procedure SetcodMunDest(const Value: String);
    procedure Setdata(const Value: TDateTime);
    procedure SetfantEmi(const Value: String);
    procedure SetfoneDest(const Value: String);
    procedure SetID(const Value: String);
    procedure SetIEDest(const Value: String);
    procedure SetIEEmi(const Value: String);
    procedure SetlogrDest(const Value: String);
    procedure SetlogrEmi(const Value: String);
    procedure SetmunDest(const Value: String);
    procedure SetmunEmi(const Value: String);
    procedure SetnatOp(const Value: String);
    procedure SetnomeDest(const Value: String);
    procedure SetnrNota(const Value: Integer);
    procedure SetnrPed(const Value: Integer);
    procedure SetnumeroDest(const Value: String);
    procedure SetnumeroEmi(const Value: String);
    procedure SetrazEmi(const Value: String);
    procedure Setserie(const Value: String);
    procedure Setstatus(const Value: Integer);
    procedure SettpEmiss(const Value: String);
    procedure SettpNF(const Value: String);
    procedure SetUFDest(const Value: String);
    procedure SetUFEmi(const Value: String);
    procedure SetxMotivo(const Value: String);
    procedure Setboleto(const Value: Integer);
    procedure Setcliente(const Value: TCliente);
    procedure Setpedido(const Value: TPedido);
    procedure SetImpDanfe(const Value: String);

    function getPedido      : TPedido;
    function getCliente     : TCliente;
    function GetBairro      : String;
    function GetBairroDest  : String;
    function GetCEPDest     : String;
    function GetCEPEmi      : String;
    function GetCNPJDest    : String;
    function GetCNPJEmi     : String;
    function GetCodMun      : String;
    function GetCodMunDest  : String;
    function GetFantEmi     : String;
    function GetFoneDest    : String;
    function GetID          : String;
    function GetIEDest      : String;
    function GetIEEmi       : String;
    function GetImpDanfe    : String;
    function GetLogrDest    : String;
    function GetlogrEmi     : String;
    function GetMunDest     : String;
    function GetMunEmi      : String;
    function GetNatOp       : String;
    function GetNomeDest    : String;
    function GetNumeroDest  : String;
    function GetNumeroEmi   : String;
    function GetRazEmi      : String;
    function GetSerie       : String;
    function GetTpEmiss     : String;
    function GetTpNF        : String;
    function GetUFDest      : String;
    function GetUFEmi       : String;
    function GetXMotivo     : String;

    { *Funções privadas de recuperação de dados do banco de dados* }
    function getFromTable(mQry :TAndreConsulta; lMDO :Boolean): TNFE; overload;

    class function getFromTable(mQry :TMDOQuery): TNFE; overload;

  public
   { *Indentificação da NF-e* }
    property ID                 : String    read GetID          write SetID;
    property serie              : String    read GetSerie       write Setserie;
    property xMotivo            : String    read GetXMotivo     write SetxMotivo;
    property nrNota             : Integer   read FnrNota        write SetnrNota;
    property nrPed              : Integer   read FnrPed         write SetnrPed;
    property status             : Integer   read Fstatus        write Setstatus;
    property data               : TDateTime read Fdata          write Setdata;

    { *Dados do cabeçalho da NF-e* }
    property CFOP               : Integer   read FCFOP          write SetCFOP;
    property natOp              : String    read GetNatOp       write SetnatOp;
    property tpNF               : String    read GetTpNF        write SettpNF;
    property tpEmiss            : String    read GetTpEmiss     write SettpEmiss;

    { *Dados do Emitente* }
    property razEmi             : String    read GetRazEmi      write SetrazEmi;
    property fantEmi            : String    read GetFantEmi     write SetfantEmi;
    property CNPJEmi            : String    read GetCNPJEmi     write SetCNPJEmi;
    property logrEmi            : String    read GetlogrEmi     write SetlogrEmi;
    property CEPEmi             : String    read GetCEPEmi      write SetCEPEmi;
    property numeroEmi          : String    read GetNumeroEmi   write SetnumeroEmi;
    property bairro             : String    read GetBairro      write Setbairro;
    property codMun             : String    read GetCodMun      write SetcodMun;
    property munEmi             : String    read GetMunEmi      write SetmunEmi;
    property UFEmi              : String    read GetUFEmi       write SetUFEmi;
    property IEEmi              : String    read GetIEEmi       write SetIEEmi;
    property ImpDanfe           : String    read GetImpDanfe    write SetImpDanfe;

    { *Dados do Destinatário* }
    property codCli             : Integer   read FCodCli        write SetcodCli;
    property nomeDest           : String    read GetNomeDest    write SetnomeDest;
    property CNPJDest           : String    read GetCNPJDest    write SetCNPJDest;
    property logrDest           : String    read GetLogrDest    write SetlogrDest;
    property CEPDest            : String    read GetCEPDest     write SetCEPDest;
    property numeroDest         : String    read GetNumeroDest  write SetnumeroDest;
    property bairroDest         : String    read GetBairroDest  write SetbairroDest;
    property codMunDest         : String    read GetCodMunDest  write SetcodMunDest;
    property munDest            : String    read GetMunDest     write SetmunDest;
    property foneDest           : String    read GetFoneDest    write SetfoneDest;
    property UFDest             : String    read GetUFDest      write SetUFDest;
    property IEDest             : String    read GetIEDest      write SetIEDest;

    { *Dados do sistema* }
    property boleto             : Integer   read Fboleto        write Setboleto;

    { *Propiedades objetos* }
    property pedido             :TPedido    read getPedido      write Setpedido;
    property cliente            :TCliente   read getCliente     write Setcliente;

    { *Procedimento para salvar NF-e* }
    procedure save; overload;

    { *Função para salvar NF-e* }
    function save(mQry, mQryExiste : TMDOQuery): Boolean; overload;

    { *Funções de verificação* }
    class function existeByNrNota(const nNrNota :Integer) :Boolean; overload;
    class function existeByNrNota(const nNrNota :Integer; mQry : TMDOQuery) :Boolean; overload;
    class function existeByNrNota(const nNrNota :Integer; lMDO :Boolean) :Boolean; overload;
    class function existeByNrPed(const nNrPed :Integer) :Boolean;
    class function existeByID(const cID :String): Boolean;

    { *Funções construtoras* }
    class function getByNrNota(const nNrNota :Integer) :TNFE; overload;
    class function GetByNrNota(const nNrNota :Integer; lMDO :Boolean) :TNFE; overload;
    class function GetByNrNota(const nNrNota :Integer; mQry :TMDOQuery) :TNFe; overload;
    class function getByNrPed(const nNrPed :Integer) :TNFE;
    class function getByID(const cID :String) :TNFE;

    { *Procedimento destruidor* }
    destructor destroy;
end;

implementation

uses DB;

const
  { *Parâmetros* }
  pID          = 'ID';          pXMotivo = 'xMotivo';       pStatus = 'status';     pNrPed = 'nrPed';
  pSerie       = 'serie';       pData = 'data';             pCFOP = 'CFOP';         pNatOp = 'natOp';
  pTpNF        = 'tpNF';        pTpEmiss = 'tpEmiss';       pRazEmi = 'razEmi';     pNrNota = 'nrNota';
  pFantEmi     = 'fantEmi';     pCNPJEmi = 'CNPJEmi';       pLogrEmi = 'logrEmi';
  pCEPEmi      = 'CEPEmi';      pNumeroEmi = 'numeroEmi';   pBairro = 'bairro';
  pCodMun      = 'codMun';      pMunEmi = 'munEmi';         pUFEmi = 'UFEmi';
  pCodCli      = 'codCli';      pNomeDest = 'nomeDest';     pCNPJDest = 'CNPJDEST';
  pLogrDest    = 'logrDest';    pCEPDest = 'CEPDest';       pNumeroDest = 'numeroDest';
  pBairroDest  = 'BairroDest';  pCodMunDest = 'codMunDest'; pIEEmi = 'IEEmi';
  pMunDest     = 'munDest';     pFoneDest = 'foneDest';     pUFDest = 'UFDest';
  pIEDest      = 'IEDest';      pBoleto = 'boleto';         pImpDanfe = 'impdanfe';

  { *SQL's* }

  //Inserção
  insere = 'INSERT INTO nfe (ID, xMotivo, status, nrPed, nrNota, serie, data,                                                                                                      '+
           '                 CFOP, natOp, tpNF, tpEmiss,                                                                                                                           '+
           '                 razEmi, fantEmi, CNPJEmi, logrEmi, CEPEmi, numeroEmi, bairro, codMun, munEmi, UFEmi, IEEmi,                                                           '+
           '                 codCli, nomeDest, CNPJDest, logrDest, CEPDest, numeroDest, bairroDest, codMunDest, munDest, foneDest, UFDest, IEDest, boleto, IMPDANFE)               '+
           'VALUES                                                                                                                                                                 '+
           '                (:ID, :xMotivo, :status, :nrPed, :nrNota, :serie, :data,                                                                                               '+
           '                 :CFOP, :natOp, :tpNF, :tpEmiss,                                                                                                                       '+
           '                :razEmi, :fantEmi, :CNPJEmi, :logrEmi, :CEPEmi, :numeroEmi, :bairro, :codMun, :munEmi, :UFEmi, :IEEmi,                                                 '+
           '                 :codCli, :nomeDest, :CNPJDest, :logrDest, :CEPDest, :numeroDest, :bairroDest, :codMunDest, :munDest, :foneDest, :UFDest, :IEDest, :boleto, :IMPDANFE) ';

  //Alteração
  altera = ' UPDATE nfe n SET                   '+
           '        n.xmotivo = :xMotivo,       '+
           '        n.status = :status,         '+
           '        n.nrPed = :nrPed,           '+
           '        n.ID = :ID,                 '+
           '        n.serie = :serie,           '+
           '        n.data = :data,             '+
           '        n.cfop = :CFOP,             '+
           '        n.natop = :natOp,           '+
           '        n.tpnf = :tpNF,             '+
           '        n.tpemiss = :tpEmiss,       '+
           '                                    '+
           '        n.razemi = :razEmi,         '+
           '        n.fantEmi = :fantEmi,       '+
           '        n.cnpjemi = :CNPJEmi,       '+
           '        n.logremi = :logrEmi,       '+
           '        n.cepemi = :CEPEmi,         '+
           '        n.numeroemi = :numeroEmi,   '+
           '        n.bairro = :bairro,         '+
           '        n.codmun = :codMun,         '+
           '        n.munemi = :munEmi,         '+
           '        n.ufemi = :UFEmi,           '+
           '        n.IEEmi = :IEEmi,           '+
           '                                    '+
           '        n.codcli = :codCli,         '+
           '        n.nomedest = :nomeDest,     '+
           '        n.CNPJDest = :CNPJDest,     '+
           '        n.logrDest = :logrDest,     '+ 
           '        n.cepdest = :CEPDest,       '+
           '        n.numerodest = :numeroDest, '+
           '        n.bairrodest = :bairroDest, '+
           '        n.codmundest = :codMunDest, '+
           '        n.mundest = :munDest,       '+
           '        n.fonedest = :foneDest,     '+
           '        n.ufdest = :UFDest,         '+
           '        n.IEDest = :IEDest,         '+
           '        n.boleto = :boleto,         '+
           '        n.IMPDANFE = :IMPDANFE      '+ 
           ' WHERE n.nrNota = :nrNota           ';
  //Busca
  buscaPorNrNota = ' SELECT * from NFE WHERE NFE.NrNota = :nrNota';
  buscaPorID = ' SELECT * from NFE WHERE NFE.ID = :ID';
  buscaPorNrPed = ' SELECT * from NFE WHERE NFE.nrPed = :nrPed';

{ TNfe }

destructor TNfe.destroy;
begin
   if Assigned(Fpedido) then
    begin
       Fpedido.free;
       Fpedido := nil;
    end;

   if Assigned(Fcliente) then
    begin
       Fcliente.free;
       Fcliente := nil; 
    end;
end;

function TNFe.getFromTable(mQry :TAndreConsulta; lMDO :Boolean): TNFE;
var objeto :TNFE;
begin
   if mQry.estaAtivo then
    begin
       objeto                  := TNfe.Create;

       { *Dados gerais da NF-e* }
       objeto.nrNota           := mQry.getCampoConsulta(pNrNota);
       objeto.ID               := trim(mQry.getCampoConsulta(pID));
       objeto.xMotivo          := trim(mQry.getCampoConsulta(pXMotivo));
       objeto.status           := mQry.getCampoConsulta(pStatus);
       objeto.nrPed            := mQry.getCampoConsulta(pNrPed);
       objeto.serie            := trim(mQry.getCampoConsulta(pSerie));
       objeto.data             := mQry.getCampoConsulta(pData);
       objeto.CFOP             := mQry.getCampoConsulta(pCFOP);
       objeto.natOp            := trim(mQry.getCampoConsulta(pNatOp));
       objeto.tpNF             := trim(mQry.getCampoConsulta(pTpNF));
       objeto.tpEmiss          := trim(mQry.getCampoConsulta(pTpEmiss));

       { *Dados do emitente* }
       objeto.razEmi           := trim(mQry.getCampoConsulta(pRazEmi));
       objeto.fantEmi          := trim(mQry.getCampoConsulta(pFantEmi));
       objeto.CNPJEmi          := trim(mQry.getCampoConsulta(pCNPJEmi));
       objeto.logrEmi          := trim(mQry.getCampoConsulta(pLogrEmi));
       objeto.CEPEmi           := trim(mQry.getCampoConsulta(pCEPEmi));
       objeto.numeroEmi        := trim(mQry.getCampoConsulta(pNumeroEmi));
       objeto.bairro           := trim(mQry.getCampoConsulta(pBairro));
       objeto.codMun           := trim(mQry.getCampoConsulta(pCodMun));
       objeto.munEmi           := trim(mQry.getCampoConsulta(pMunEmi));
       objeto.UFEmi            := trim(mQry.getCampoConsulta(pUFEmi));
       objeto.IEEmi            := trim(mQry.getCampoConsulta(pIEEmi));

       { *Dados do destinatário* }
       objeto.codCli           := mQry.getCampoConsulta(pCodCli);
       objeto.nomeDest         := trim(mQry.getCampoConsulta(pNomeDest));
       objeto.CNPJDest         := trim(mQry.getCampoConsulta(pCNPJDest));
       objeto.logrDest         := trim(mQry.getCampoConsulta(pLogrDest));
       objeto.CEPDest          := trim(mQry.getCampoConsulta(pCEPDest));
       objeto.numeroDest       := trim(mQry.getCampoConsulta(pNumeroDest));
       objeto.bairroDest       := trim(mQry.getCampoConsulta(pBairroDest));
       objeto.codMunDest       := trim(mQry.getCampoConsulta(pCodMunDest));
       objeto.munDest          := trim(mQry.getCampoConsulta(pMunDest));
       objeto.foneDest         := trim(mQry.getCampoConsulta(pFoneDest));
       objeto.UFDest           := trim(mQry.getCampoConsulta(pUFDest));
       objeto.IEDest           := trim(mQry.getCampoConsulta(pIEDest));
       objeto.ImpDanfe         := trim(mQry.getCampoConsulta(pImpDanfe));

       result := objeto;
    end;
end;

class function TNfe.existeByID(const cID: String): Boolean;
var Qry :TMDOQuery;
begin
   try
      Qry := dm.GetQueryInstance(buscaPorID);
      Qry.paramByName(pID).AsString := cID;
      Qry.Open;

      if Qry.isEmpty then
        result := false
      else
        result := true;
   finally
      if Qry.Active then
        Qry.Close;

      if assigned(Qry) then
       begin
         Qry.Destroy;
         Qry := nil;
       end;
   end;
end;

class function TNfe.existeByNrNota(const nNrNota: Integer): Boolean;
var Qry :TMDOQuery;
begin
   try
      Qry := dm.GetQueryInstance(buscaPorNrNota);
      Qry.paramByName(pNrNota).AsInteger := nNrNota;
      Qry.Open;

      if Qry.IsEmpty then
        result := false
      else
        result := true;
   finally
      if Qry.Active then
        Qry.Close;

      if assigned(Qry) then
       begin
          Qry.Destroy;
          Qry := nil;
       end;
   end;
end;

class function TNfe.existeByNrNota(const nNrNota: Integer;
  lMDO: Boolean): Boolean;
var mQry :TAndreConsulta;
begin
   try
      mQry := TAndreConsulta.Create(nil);

      mQry.IniciaConsulta(buscaPorNrNota);
      mQry.setParametro(pNrNota, nNrNota);
      mQry.AbreConsulta;

      if mQry.EstaVazia then
        result := false
      else
        result := true;
   finally
      if mQry.estaAtivo then
        mQry.FechaConsulta;

      if assigned(mQry) then
       begin
          mQry.Destroy;
          mQry := nil;
       end;
   end;

end;

class function TNfe.existeByNrNota(const nNrNota: Integer;
  mQry: TMDOQuery): Boolean;
begin
   try
      result := false;

      if not Assigned(mQry) then
        raise Exception.Create('Objeto de conexão com o banco de dados não instânciado!');

      mQry.SQL.Clear;
      mQry.SQL.Add(buscaPorNrNota);
      mQry.ParamByName(pNrNota).AsInteger := nNrNota;
      mQry.Open;

      result := not mQry.IsEmpty;
   finally
      if Assigned(mQry) and mQry.Active then
        mQry.Close;
   end;
end;

class function TNfe.existeByNrPed(const nNrPed: Integer): Boolean;
var zQry :TMDOQuery;
begin
   try
      zQry := dm.GetQueryInstance(buscaPorNrPed);
      zQry.paramByname(pNrPed).AsInteger := nNrPed;
      zQry.Open;

      if zQry.isEmpty then
        result := false
      else
        result := true;
   finally
      if zQry.Active then
        zQry.Close;

      if assigned(zQry) then
       begin
          zQry.Destroy;
          zQry := nil;
       end;
   end;
end;

function TNfe.GetBairro: String;
begin
   result := Trim(self.Fbairro);
end;

function TNfe.GetBairroDest: String;
begin
   result := Trim(self.FbairroDest);
end;

class function TNfe.getByID(const cID: String): TNFE;
var zQry :TMDOQuery;
    objeto :TNFE;
begin
   try
      zQry   := dm.GetQueryInstance('');
      objeto := TNfe.Create;

      if self.existeByID(cID) then
       begin
          zQry.SQL.Text := buscaPorID;
          zQry.parambyname(pID).AsString := cID;
          zQry.Open;

          objeto := objeto.getFromTable(zQry);

          result := objeto;
       end;
      finally
      if zQry.active then
        zQry.Close;

      if assigned(zQry) then
       begin
          zQry.Destroy;
          zQry := nil;
       end;
   end;
end;

class function TNfe.getByNrNota(const nNrNota: Integer): TNFE;
var zQry :TMDOQuery;
    objeto :TNFE;
begin
   try
      zQry   := dm.GetQueryInstance('');
      objeto := TNfe.Create;

      if self.existeByNrNota(nNrNota) then
       begin
          zQry.SQL.Text := buscaPorNrNota;
          zQry.paramByName(pNrNota).AsInteger := nNrNota;
          zQry.Open;

          objeto := objeto.getFromTable(zQry);

          result := objeto;
       end;
      finally
      if zQry.Active then
        zQry.Close;

      if assigned(zQry) then
       begin
          zQry.Destroy;
          zQry := nil;
       end;
   end;
end;

class function TNfe.getByNrNota(const nNrNota: Integer;
  lMDO: Boolean): TNFE;
var mQry :TAndreConsulta;
    objeto :TNFE;
begin
   try
      mQry   := TAndreConsulta.Create(nil);
      objeto := TNfe.Create;

      if self.existeByNrNota(nNrNota, true) then
       begin
          mQry.IniciaConsulta(buscaPorNrNota);
          mQry.setParametro(pNrNota, nNrNota);
          mQry.AbreConsulta;

          objeto := objeto.getFromTable(mQry, true);

          result := objeto;
       end;
      finally
      if mQry.estaAtivo then
        mQry.FechaConsulta;

      if assigned(mQry) then
       begin
          mQry.Destroy;
          mQry := nil;
       end;
   end;
end;

class function TNfe.getByNrNota(const nNrNota: Integer;
  mQry: TMDOQuery): TNFe;
begin
   result := nil;

   if ((nNrNota <= 0) or (not Assigned(mQry))) then
     raise Exception.Create('Número da NF-e inválido, ou objeto de consulta não assinado!');

   mQry.SQL.Clear;
   mQry.SQL.Add(buscaPorNrNota);

   mQry.ParamByName(pNrNota).AsInteger := nNrNota;
   mQry.Open;

   if ( (not mQry.Active) or (mQry.IsEmpty)) then
     exit;

   result := TNfe.getFromTable(mQry);
end;

class function TNfe.getByNrPed(const nNrPed: Integer): TNFE;
var zQry :TMDOQuery;
    objeto :TNFE;
begin
   try
      zQry   := dm.GetQueryInstance('');
      objeto := TNfe.Create;

      if self.existeByNrPed(nNrPed) then
       begin
          zQry.SQL.Text := buscaPorNrPed;
          zQry.parambyname(pNrPed).AsInteger := nNrPed;
          zQry.Open;

          objeto := objeto.getFromTable(zQry);

          result := objeto;
       end;
      finally
      if zQry.Active then
        zQry.Close;

      if assigned(zQry) then
       begin
          zQry.Destroy;
          zQry := nil;
       end;
   end;
end;

function TNfe.GetCEPDest: String;
begin
   result := Trim(self.FCEPDest);
end;

function TNfe.GetCEPEmi: String;
begin
   result := Trim(self.FCEPEmi);
end;

function TNfe.getCliente: TCliente;
begin
   if ((self.Fcliente = nil) and (self.codCli > 0)) or (self.Fcliente.getCodigo = self.codCli) then
    begin
       self.Fcliente := TCliente.getByIdZ(self.codCli);
       result := Fcliente;
    end
   else
    result := nil;
end;

function TNfe.GetCNPJDest: String;
begin
   result := Trim(self.FCNPJDest);
end;

function TNfe.GetCNPJEmi: String;
begin
   result := Trim(self.FCNPJEmi);
end;

function TNfe.GetCodMun: String;
begin
   result := Trim(self.FcodMun);
end;

function TNfe.GetCodMunDest: String;
begin
   result := Trim(self.FcodMunDest);
end;

function TNfe.GetFantEmi: String;
begin
   result := Trim(self.FfantEmi);
end;

function TNfe.GetFoneDest: String;
begin
   result := Trim(self.FfoneDest);
end;

class function TNfe.getFromTable(mQry: TMDOQuery): TNFE;
var objeto :TNFE;
begin
   if mQry.Active then
    begin
       objeto                  := TNfe.Create;

       { *Dados gerais da NF-e* }
       objeto.nrNota           := mQry.fieldByName(pNrNota).AsInteger;
       objeto.ID               := trim(mQry.fieldByName(pID).AsString);
       objeto.xMotivo          := trim(mQry.fieldByName(pXMotivo).AsString);
       objeto.status           := mQry.fieldByName(pStatus).AsInteger;
       objeto.nrPed            := mQry.fieldByName(pNrPed).AsInteger;
       objeto.serie            := trim(mQry.fieldByName(pSerie).AsString);
       objeto.data             := mQry.fieldByName(pData).AsDateTime;
       objeto.CFOP             := mQry.fieldByName(pCFOP).AsInteger;
       objeto.natOp            := trim(mQry.fieldByName(pNatOp).AsString);
       objeto.tpNF             := trim(mQry.fieldByName(pTpNf).AsString);
       objeto.tpEmiss          := trim(mQry.fieldByName(pTpEmiss).AsString);

       { *Dados do emitente* }
       objeto.razEmi           := trim(mQry.fieldByName(pRazEmi).AsString);
       objeto.fantEmi          := trim(mQry.fieldByName(pFantEmi).AsString);
       objeto.CNPJEmi          := trim(mQry.fieldByName(pCNPJEmi).AsString);
       objeto.logrEmi          := trim(mQry.fieldByName(pLogrEmi).AsString);
       objeto.CEPEmi           := trim(mQry.fieldByName(pCEPEmi).AsString);
       objeto.numeroEmi        := trim(mQry.fieldByName(pNumeroEmi).AsString);
       objeto.bairro           := trim(mQry.fieldByName(pBairro).AsString);
       objeto.codMun           := trim(mQry.fieldByName(pCodMun).AsString);
       objeto.munEmi           := trim(mQry.fieldByName(pMunEmi).AsString);
       objeto.UFEmi            := trim(mQry.fieldByName(pUFEmi).AsString);
       objeto.IEEmi            := trim(mQry.fieldByName(pIEEmi).AsString);

       { *Dados do destinatário* }
       objeto.codCli           := mQry.fieldByName(pCodCli).AsInteger;
       objeto.nomeDest         := trim(mQry.fieldByName(pNomeDest).AsString);
       objeto.CNPJDest         := trim(mQry.fieldByName(pCNPJDest).AsString);
       objeto.logrDest         := trim(mQry.fieldByName(pLogrDest).AsString);
       objeto.CEPDest          := trim(mQry.fieldByName(pCEPDest).AsString);
       objeto.numeroDest       := trim(mQry.fieldByName(pNumeroDest).AsString);
       objeto.bairroDest       := trim(mQry.fieldByName(pBairroDest).AsString);
       objeto.codMunDest       := trim(mQry.fieldByName(pCodMunDest).AsString);
       objeto.munDest          := trim(mQry.fieldByName(pMunDest).AsString);
       objeto.foneDest         := trim(mQry.fieldByName(pFoneDest).AsString);
       objeto.UFDest           := trim(mQry.fieldByName(pUFDest).AsString);
       objeto.IEDest           := trim(mQry.fieldByName(pIEDest).AsString);

       { *Dados para controle interno do sistema* }
       objeto.boleto           := mQry.FieldByName(pBoleto).AsInteger;
       objeto.ImpDanfe         := trim(mQry.fieldByName(pImpDanfe).AsString);

       result := objeto;
    end;
end;

function TNfe.GetID: String;
begin
   result := Trim(self.FID);
end;

function TNfe.GetIEDest: String;
begin
   result := Trim(self.FIEDest);
end;

function TNfe.GetIEEmi: String;
begin
   result := Trim(self.FIEEmi);
end;

function TNfe.GetImpDanfe: String;
begin
   result := Trim(self.FImpDanfe);
end;

function TNfe.GetLogrDest: String;
begin
   result := Trim(self.FlogrDest);
end;

function TNfe.GetlogrEmi: String;
begin
   result := Trim(self.FlogrEmi);
end;

function TNfe.GetMunDest: String;
begin
   result := Trim(self.FmunDest);
end;

function TNfe.GetMunEmi: String;
begin
   result := Trim(self.FmunEmi);
end;

function TNfe.GetNatOp: String;
begin
   result := Trim(self.FnatOp);
end;

function TNfe.GetNomeDest: String;
begin
   result := Trim(Self.FnomeDest);
end;

function TNfe.GetNumeroDest: String;
begin
   result := Trim(self.FnumeroDest);
end;

function TNfe.GetNumeroEmi: String;
begin
   result := Trim(self.FnumeroEmi);
end;

function TNfe.getPedido: TPedido;
begin
   if ((self.Fpedido = nil) and (self.nrPed > 0)) or (self.Fpedido.getCodigo = self.nrPed) then
    begin
       self.Fpedido := TPedido.getByIdZ(self.nrPed);
       result := Fpedido;
    end
   else
    result := nil;
end;

procedure TNfe.save;
var zQry: TMDOQuery;
begin
  try
    zQry := dm.GetQueryInstance('');

    if not TNfe.existeByNrNota(self.nrNota) then
     begin
        zQry.SQL.Text := insere;
        zQry.parambyname(pNrNota).AsInteger := 0+1;

        { *Salvando número da nota* }
        dm.Parametro.salvar;
     end
    else
     begin
        zQry.SQL.Text := altera;
        zQry.parambyname(pNrNota).AsInteger := self.nrNota;
     end;

    { *Dados gerais da NF-e* }
    zQry.parambyname(pID).AsString         := trim(self.ID); //qry.ParamByName('ID').asString := self.ID;
    zQry.parambyname(pXMotivo).AsString    := trim(self.xMotivo);  //qry.ParamByName('xMotivo').AsString := self.xMotivo;
    zQry.parambyname(pStatus).asInteger     := self.status;  //qry.ParamByName('status').asInteger := self.status;
    zQry.parambyname(pNrPed).AsInteger     := self.nrPed; //qry.ParamByName('nrPed').AsInteger := self.nrPed;
    zQry.parambyname(pSerie).AsString      := trim(self.serie); //qry.ParamByName('serie').asString := self.serie;
    zQry.ParamByName('data').asDateTime    := self.data; //qry.ParamByName('data').asDateTime := self.data;
    zQry.ParamByName('CFOP').AsInteger     := self.CFOP; //qry.ParamByName('CFOP').AsInteger := self.CFOP;
    zQry.ParamByName('natOp').AsString     := self.natOp; //qry.ParamByName('natOp').AsString := self.natOp;
    zQry.ParamByName('tpNF').asString      := self.tpNF; //qry.ParamByName('tpNF').asString := self.tpNF;
    zQry.ParamByName('tpEmiss').asString   := self.tpNF; //qry.ParamByName('tpEmiss').asString := self.tpNF;

    { *Dados do emitente* }
    zQry.ParamByName('razEmi').AsString    := trim(self.razEmi);
    zQry.ParamByName('fantEmi').asString   := trim(self.fantEmi);
    zQry.ParamByName('CNPJEmi').AsString   := trim(self.CNPJEmi);
    zQry.ParamByName('logrEmi').AsString   := trim(self.logrEmi);
    zQry.ParamByName('CEPEmi').asString    := trim(self.CEPEmi);
    zQry.ParamByName('numeroEmi').AsString := trim(self.numeroEmi);
    zQry.ParamByName('bairro').asString    := trim(self.bairro);
    zQry.ParamByName('codMun').asString    := trim(self.codMun);
    zQry.ParamByName('munEmi').AsString    := trim(self.munEmi);
    zQry.ParamByName('UFEmi').asString     := trim(self.UFEmi);
    zQry.ParamByName('IEEmi').asString     := trim(self.IEEmi);

    { *Dados do destinatário* }
    zQry.ParamByName('codCli').asInteger    := self.codCli;
    zQry.ParamByName('nomeDest').AsString   := trim(self.nomeDest);
    zQry.ParamByName('CNPJDest').asString   := trim(self.CNPJDest);
    zQry.ParamByName('logrDest').asString   := trim(self.logrDest);
    zQry.ParamByName('CEPDest').AsString    := trim(self.CEPDest);
    zQry.ParamByName('numeroDest').AsString := trim(self.numeroDest);
    zQry.ParamByName('bairroDest').asString := trim(self.bairroDest);
    zQry.ParamByName('codMunDest').asString := trim(self.codMunDest);
    zQry.ParamByName('munDest').AsString    := trim(self.munDest);
    zQry.ParamByName('foneDest').asString   := trim(self.foneDest);
    zQry.ParamByName('UFDest').asString     := trim(self.UFDest);
    zQry.ParamByName('IEDest').asString     := trim(self.IEDest);

    { *Dados para controle interno no sistema* }
    zQry.ParamByName(pBoleto).AsInteger := self.boleto;

    zQry.ExecSQL;
  finally
    if assigned(zQry) then
     begin
        zQry.Destroy;
        zQry := nil;
     end;
  end;

end;


function TNfe.GetRazEmi: String;
begin
   result := Trim(self.FrazEmi);
end;

function TNfe.GetSerie: String;
begin
   result := Trim(self.Fserie);
end;

function TNfe.GetTpEmiss: String;
begin
   result := Trim(self.FtpEmiss);
end;

function TNfe.GetTpNF: String;
begin
   result := Trim(self.FtpNF);
end;

function TNfe.GetUFDest: String;
begin
   result := Trim(self.FUFDest);
end;

function TNfe.GetUFEmi: String;
begin
   result := Trim(self.FUFEmi);
end;

function TNfe.GetXMotivo: String;
begin
   result := Trim(self.FxMotivo);
end;

function TNfe.save(mQry, mQryExiste : TMDOQuery): Boolean;
begin
   result := false;

   if not Assigned(mQry) then
     raise Exception.Create('Objeto de conexão com banco de dados não instânciado!');


   mQry.SQL.Clear;

   if not TNfe.existeByNrNota(self.nrNota, mQryExiste) then
    begin
       mQry.SQL.Add(insere);
       mQry.ParamByName(pNrNota).AsInteger := 0;

       { *Salvando número da nota* }
       dm.Parametro.salvar;
    end
   else
    begin
       mQry.SQL.Add(altera);
       mQry.ParamByName(pNrNota).AsInteger := self.nrNota;
    end;

   { *Dados gerais da NF-e* }
   mQry.ParamByName('ID').asString           := self.ID;
   mQry.ParamByName('xMotivo').AsString      := self.xMotivo;
   mQry.ParamByName('status').asInteger      := self.status;
   mQry.ParamByName('nrPed').AsInteger       := self.nrPed;
   mQry.ParamByName('serie').asString        := self.serie;
   mQry.ParamByName('data').asDateTime       := self.data;
   mQry.ParamByName('CFOP').AsInteger        := self.CFOP;
   mQry.ParamByName('natOp').AsString        := self.natOp;
   mQry.ParamByName('tpNF').asString         := self.tpNF;
   mQry.ParamByName('tpEmiss').asString      := self.tpNF;

   { *Dados do emitente* }
   mQry.ParamByName('razEmi').AsString       := self.razEmi;
   mQry.ParamByName('fantEmi').asString      := self.fantEmi;
   mQry.ParamByName('CNPJEmi').AsString      := self.CNPJEmi;
   mQry.ParamByName('logrEmi').AsString      := self.logrEmi;
   mQry.ParamByName('CEPEmi').asString       := self.CEPEmi;
   mQry.ParamByName('numeroEmi').AsString    := self.numeroEmi;
   mQry.ParamByName('bairro').asString       := self.bairro;
   mQry.ParamByName('codMun').asString       := self.codMun;
   mQry.ParamByName('munEmi').AsString       := self.munEmi;
   mQry.ParamByName('UFEmi').asString        := self.UFEmi;
   mQry.ParamByName('IEEmi').asString        := self.IEEmi;

   { *Dados do destinatário* }
   mQry.ParamByName('codCli').asInteger      := self.codCli;
   mQry.ParamByName('nomeDest').AsString     := self.nomeDest;
   mQry.ParamByName('CNPJDest').asString     := self.CNPJDest;
   mQry.ParamByName('logrDest').asString     := self.logrDest;
   mQry.ParamByName('CEPDest').AsString      := self.CEPDest;
   mQry.ParamByName('numeroDest').AsString   := self.numeroDest;
   mQry.ParamByName('bairroDest').asString   := self.bairroDest;
   mQry.ParamByName('codMunDest').asString   := self.codMunDest;
   mQry.ParamByName('munDest').AsString      := self.munDest;
   mQry.ParamByName('foneDest').asString     := self.foneDest;
   mQry.ParamByName('UFDest').asString       := self.UFDest;
   mQry.ParamByName('IEDest').asString       := self.IEDest;

   { *Dados para controle interno no sistema* }
   mQry.ParamByName(pBoleto).asInteger  := self.boleto;
   mQry.ParamByName(pImpDanfe).AsString := self.ImpDanfe;

   mQry.ExecSQL;

   result := true;
end;

procedure TNfe.Setbairro(const Value: String);
begin
  Fbairro := Value;
end;

procedure TNfe.SetbairroDest(const Value: String);
begin
  FbairroDest := Value;
end;

procedure TNfe.Setboleto(const Value: Integer);
begin
  Fboleto := Value;
end;

procedure TNfe.SetCEPDest(const Value: String);
begin
  FCEPDest := Value;
end;

procedure TNfe.SetCEPEmi(const Value: String);
begin
  FCEPEmi := Value;
end;

procedure TNfe.SetCFOP(const Value: Integer);
begin
  FCFOP := Value;
end;

procedure TNfe.Setcliente(const Value: TCliente);
begin
  Fcliente := Value;
end;

procedure TNfe.SetCNPJDest(const Value: String);
begin
  FCNPJDest := Value;
end;

procedure TNfe.SetCNPJEmi(const Value: String);
begin
  FCNPJEmi := Value;
end;

procedure TNfe.SetcodCli(const Value: Integer);
begin
  FcodCli := Value;
end;

procedure TNfe.SetcodMun(const Value: String);
begin
  FcodMun := Value;
end;

procedure TNfe.SetcodMunDest(const Value: String);
begin
  FcodMunDest := Value;
end;

procedure TNfe.Setdata(const Value: TDateTime);
begin
  Fdata := Value;
end;

procedure TNfe.SetfantEmi(const Value: String);
begin
  FfantEmi := Value;
end;

procedure TNfe.SetfoneDest(const Value: String);
begin
  FfoneDest := Value;
end;

procedure TNfe.SetID(const Value: String);
begin
  FID := Value;
end;

procedure TNfe.SetIEDest(const Value: String);
begin
  FIEDest := Value;
end;

procedure TNfe.SetIEEmi(const Value: String);
begin
  FIEEmi := Value;
end;

procedure TNfe.SetImpDanfe(const Value: String);
begin
  FImpDanfe := Value;
end;

procedure TNfe.SetlogrDest(const Value: String);
begin
  FlogrDest := Value;
end;

procedure TNfe.SetlogrEmi(const Value: String);
begin
  FlogrEmi := Value;
end;

procedure TNfe.SetmunDest(const Value: String);
begin
  FmunDest := Value;
end;

procedure TNfe.SetmunEmi(const Value: String);
begin
  FmunEmi := Value;
end;

procedure TNfe.SetnatOp(const Value: String);
begin
  FnatOp := Value;
end;

procedure TNfe.SetnomeDest(const Value: String);
begin
  FnomeDest := Value;
end;

procedure TNfe.SetnrNota(const Value: Integer);
begin
  FnrNota := Value;
end;

procedure TNfe.SetnrPed(const Value: Integer);
begin
  FnrPed := Value;
end;

procedure TNfe.SetnumeroDest(const Value: String);
begin
  FnumeroDest := Value;
end;

procedure TNfe.SetnumeroEmi(const Value: String);
begin
  FnumeroEmi := Value;
end;

procedure TNfe.Setpedido(const Value: TPedido);
begin
  Fpedido := Value;
end;

procedure TNfe.SetrazEmi(const Value: String);
begin
  FrazEmi := Value;
end;

procedure TNfe.Setserie(const Value: String);
begin
  Fserie := Value;
end;

procedure TNfe.Setstatus(const Value: Integer);
begin
  Fstatus := Value;
end;

procedure TNfe.SettpEmiss(const Value: String);
begin
  FtpEmiss := Value;
end;

procedure TNfe.SettpNF(const Value: String);
begin
  FtpNF := Value;
end;

procedure TNfe.SetUFDest(const Value: String);
begin
  FUFDest := Value;
end;

procedure TNfe.SetUFEmi(const Value: String);
begin
  FUFEmi := Value;
end;

procedure TNfe.SetxMotivo(const Value: String);
begin
  FxMotivo := Value;
end;

end.
