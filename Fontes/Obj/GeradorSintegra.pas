unit GeradorSintegra;

interface

uses ACBrSintegra, funcoes_cte, Forms, SysUtils, MDOQuery, Variants;

type
  TGeradorSintegra = class

  private
    Fsintegra: TACBrSintegra;
    FdataFinal: TDateTime;
    FdataInicial: TDateTime;
    Ftipo: String;
    FnomeArquivo: String;
    FfinDoArq: String;
    FnumCte: Integer;
    qry70 :TMDOQuery;


    procedure Setsintegra(const Value: TACBrSintegra);
    procedure SetdataFinal(const Value: TDateTime);
    procedure SetdataInicial(const Value: TDateTime);
    procedure Settipo(const Value: String);
    procedure SetnomeArquivo(const Value: String);
    procedure SetfinDoArq(const Value: String);
    procedure SetNumCte(const Value: Integer);

    procedure gerarRegistro10;
    procedure gerarRegistro11;
    procedure gerarRegistro70;
      procedure gerarRegistro71;
    
  public
    property sintegra    :TACBrSintegra read Fsintegra     write Setsintegra;
    property dataInicial :TDateTime     read FdataInicial  write SetdataInicial;
    property dataFinal   :TDateTime     read FdataFinal    write SetdataFinal;
    property tipo        :String        read Ftipo         write Settipo;
    property nomeArquivo :String        read FnomeArquivo  write SetnomeArquivo;
    property finDoArq    :String        read FfinDoArq     write SetfinDoArq;
    property numCte      :Integer       read FNumCte       write SetNumCte;

    procedure gerarSintegra;

    constructor create(const dataInicial :TDateTime; const dataFinal :TDateTime;
                       const nomeArquivo, finDoArq :String);

    destructor destroy;
end;

implementation

uses Modulo, DB;

const
  { *SQL's* }
  sqlRegistro70 = 'select cte.cnpjrem, cte.cnpjdes, cte.ierem, cte.iedes, cte.dataemis, cte.ufrem, cte.ufdes, cte.moddoc, cte.serie,       '+
                  'cte.numcte, cte.cfop, cte.vtprest, cte.vbc, cte.vicms, cte.status, cte.Toma, cte.cnpjtom, cte.ietom, cte.uftom from cte '+
                  'where cte.status <> ''321'' and cte.dataemis between :dtini and :dtfin                                                  ';

  sqlRegistro71 = 'select cn.chave ,cn."MOD", cn.serie, cn.demi, cn.vnf from ctenferem cn '+
                  'where cn.nrcte = :nCte                                                 ';


{ TGeradorSintegra }

constructor TGeradorSintegra.create(const dataInicial :TDateTime; const dataFinal :TDateTime;
                                    const nomeArquivo, finDoArq :String);
begin
   self.sintegra     := TACBrSintegra.Create(nil);

   self.dataInicial  := dataInicial;
   self.dataFinal    := dataFinal;
   self.tipo         := tipo;
   self.finDoArq     := finDoArq;
   self.nomeArquivo  := nomeArquivo;
end;

procedure TGeradorSintegra.gerarRegistro10;
begin
   if assigned(self.sintegra) then
     begin
        if not assigned(self.sintegra.Registro10) then
          self.sintegra.Registro10 := TRegistro10.Create;

        self.sintegra.Registro10.CNPJ                := trim(dm.Parametro.Cnpj);
        self.sintegra.Registro10.Inscricao           := trim(dm.Parametro.IE);
        self.sintegra.Registro10.RazaoSocial         := trim(dm.Parametro.Raz);
        self.sintegra.Registro10.Cidade              := trim(dm.Parametro.Cidade);
        self.sintegra.Registro10.Estado              := trim(dm.Parametro.Estado);
        self.sintegra.Registro10.Telefone            := trim(dm.Parametro.Fone);
        self.sintegra.Registro10.DataInicial         := self.dataInicial;
        self.sintegra.Registro10.DataFinal           := self.dataFinal;
        self.sintegra.Registro10.CodigoConvenio      := '3';  { 3 - Convênio 57/95 Alt. 76/03 }
        self.sintegra.Registro10.NaturezaInformacoes := '3'; { 3 - Totalidade das operações do informante }
        self.sintegra.Registro10.FinalidadeArquivo   := self.finDoArq;

     end;
end;

procedure TGeradorSintegra.gerarRegistro11;
begin
  if assigned(self.sintegra) then
    begin
       if not assigned(self.sintegra.Registro11) then
         self.sintegra.Registro11 := TRegistro11.Create;

       self.sintegra.Registro11.Endereco         := trim(dm.Parametro.Ender);
       self.sintegra.Registro11.Numero           := trim(intToStr(dm.Parametro.numero));
       self.sintegra.Registro11.Bairro           := trim(dm.Parametro.bairro);
       self.sintegra.Registro11.Cep              := trim(dm.Parametro.Cep);
       self.sintegra.Registro11.Responsavel      := trim(dm.Parametro.responsavel);
       self.sintegra.Registro11.Telefone         := RemoveChar(trim(dm.Parametro.Fone),'-');
    end;
end;


destructor TGeradorSintegra.destroy;
begin
  { if assigned(self.FzQry) then
    begin
       self.FzQry.Destroy;
       self.FzQry := nil;
    end;

   if assigned(self.FzQryItens) then
    begin
       self.FzQryItens.Destroy;
       self.FzQryItens := nil;
    end;

   if Assigned(self.sintegra) then
    begin
       self.sintegra.Destroy;
       self.sintegra := nil;
    end;}
end;



procedure TGeradorSintegra.gerarRegistro70;
var registro70 :TRegistro70;
begin
 try
   if assigned(self.sintegra) then
    begin

       if not assigned(self.sintegra.Registros70) then
          self.sintegra.Registros70 := TRegistros70.Create;

       qry70 := dm.GetQueryInstance(sqlRegistro70);
       qry70.ParamByName('dtIni').AsDateTime := self.FdataInicial;
       qry70.ParamByName('dtFin').AsDateTime := self.FdataFinal;
       qry70.Open;



       Bar(qry70.RecordCount, 'Gerando registro 70/71...');

       if not qry70.isEmpty then
        begin
           qry70.first;

           while not qry70.EOF do
            begin
               Application.ProcessMessages;

               registro70 := TRegistro70.Create;

               if qry70.fieldByName('toma').AsInteger = 0 then begin //tomador eh o remetente
                 registro70.CPFCNPJ       := qry70.fieldByName('cnpjrem').AsString;
                 registro70.Inscricao     := qry70.fieldByName('ierem').AsString;
                 registro70.UF            := qry70.fieldByName('ufrem').AsString;
               end
               else if qry70.fieldByName('toma').AsInteger = 3 then begin  //tomador eh o destinatario
                 registro70.CPFCNPJ       := qry70.fieldByName('cnpjdes').AsString;
                 registro70.Inscricao     := qry70.fieldByName('iedes').AsString;
                 registro70.UF            := qry70.fieldByName('ufdes').AsString;
               end
               else if qry70.fieldByName('toma').AsInteger = 4 then begin //se tomador é outros
                 registro70.CPFCNPJ       := dm.Parametro.Cnpj;
                 registro70.Inscricao     := dm.Parametro.IE;
                 registro70.UF            := dm.Parametro.Estado;
               end;

               registro70.DataDocumento := qry70.fieldByName('dataemis').AsDateTime;

               registro70.Modelo        := '07';//transporte rodoviario
               registro70.Serie         := '  '+copy(qry70.fieldByName('serie').AsString,length(qry70.fieldByName('serie').AsString),1);
               registro70.SubSerie      := '0';
               registro70.Numero        := qry70.fieldByName('numcte').AsString;
               registro70.Cfop          := qry70.fieldByName('cfop').AsString;
               registro70.ValorContabil := qry70.fieldByName('vtprest').AsFloat;
               registro70.BasedeCalculo := qry70.fieldByName('vbc').AsFloat;
               registro70.Icms          := qry70.fieldByName('vicms').AsFloat;
               registro70.Isentas       := 0;
               registro70.Outras        := 0;

               if qry70.fieldByName('toma').AsInteger = 0 then //se tomador é o remetente
                 registro70.CifFobOutros  := '1'
               else
                 registro70.CifFobOutros  := '2';

               if qry70.fieldByName('status').AsString = '100' then
                 registro70.Situacao      := 'N'
               else if qry70.fieldByName('status').AsString = '101' then
                 registro70.Situacao      := 'S'
               else if qry70.fieldByName('status').AsString = '102' then
                 registro70.Situacao      := '4';

               self.numCte := qry70.fieldByName('numcte').AsInteger;

               self.gerarRegistro71;

               self.sintegra.Registros70.Add(registro70);

              qry70.next;
            end; // Fim do While
        end; // Fim do segundo If   }

    end; // Fim do primeiro If

 finally
   FimBar;
 end;
end;

procedure TGeradorSintegra.gerarRegistro71;
var qry :TMDOQuery;
    registro71 :TRegistro71;
    nrNf :integer;
begin

  if not assigned(self.sintegra.Registros71) then
     self.sintegra.Registros71 := TRegistros71.Create;

  qry := dm.GetQueryInstance(sqlRegistro71);
  qry.ParamByName('nCte').AsInteger := self.FnumCte;
  qry.Open;

  if not qry.isEmpty then
   begin
     qry.first;

     while not qry.EOF do
      begin
        registro71 := TRegistro71.Create;

        if qry70.fieldByName('toma').AsInteger = 0 then begin //se tomador é o remetente
          registro71.CPFCNPJ       := qry70.fieldByName('cnpjrem').AsString;
          registro71.Inscricao     := qry70.fieldByName('ierem').AsString;
          registro71.UF            := qry70.fieldByName('ufrem').AsString;
        end
        else if qry70.fieldByName('toma').AsInteger = 3 then begin //se tomador é o destinatario
          registro71.CPFCNPJ       := qry70.fieldByName('cnpjdes').AsString;
          registro71.Inscricao     := qry70.fieldByName('iedes').AsString;
          registro71.UF            := qry70.fieldByName('ufdes').AsString;
        end
        else if qry70.fieldByName('toma').AsInteger = 4 then begin //se tomador é outros
          registro71.CPFCNPJ       := qry70.fieldByName('cnpjtom').AsString;
          registro71.Inscricao     := qry70.fieldByName('ietom').AsString;
          registro71.UF            := qry70.fieldByName('uftom').AsString;
        end;

        registro71.DataDocumento := qry70.fieldByName('dataemis').AsDateTime;
        registro71.Modelo        := '07';//transporte rodoviario
        registro71.SubSerie      := '  ';
        registro71.Numero        := qry70.fieldByName('numcte').AsString;

        //se o remetente for o tomador = receber dados do destinatario e vice versa
        if qry70.fieldByName('toma').AsInteger = 0 then begin //se tomador é o remetente
          registro71.CPFCNPJNF     := qry70.fieldByName('cnpjdes').AsString;
          registro71.InscricaoNF   := qry70.fieldByName('iedes').AsString;
          registro71.UFNF          := qry70.fieldByName('ufdes').AsString;
        end
        else begin //se tomador é o destinatario
          registro71.CPFCNPJNF     := qry70.fieldByName('cnpjrem').AsString;
          registro71.InscricaoNF   := qry70.fieldByName('ierem').AsString;
          registro71.UFNF          := qry70.fieldByName('ufrem').AsString;
        end;
        
        registro71.DataNF        := qry.fieldByName('demi').AsDateTime;
        registro71.ModeloNF      := qry.fieldByName('mod').AsString;
        registro71.SerieNF       := qry.fieldByName('serie').AsString;

        if length(qry.fieldByName('chave').AsString) > 39 then begin
          nrNf := strToInt(copy(qry.fieldByName('chave').AsString,length(qry.fieldByName('chave').AsString)-6, 6));
          registro71.Serie         := '  1';//tipo
        end
        else begin
          nrNf := strToInt(copy(qry.fieldByName('chave').AsString,length(qry.fieldByName('chave').AsString)-5, 6));
          registro71.Serie         := '  U';
        end;

        registro71.NumeroNF      := intToStr(nrNf);
        registro71.ValorNF       := qry.fieldByName('vnf').AsFloat;

        self.sintegra.Registros71.Add(registro71);

        qry.next;
      end;
   end;

end;

procedure TGeradorSintegra.gerarSintegra;
begin
  if not DirectoryExists(PathSis + '\Sintegra') then
    CreateDir(PathSis + '\Sintegra');

  if FileExists(PathSis + '\Sintegra\' + Self.nomeArquivo) then
    DeleteFile(PathSis + '\Sintegra\' + Self.nomeArquivo);

  self.sintegra.FileName := PathSis + '\Sintegra\' + Self.nomeArquivo;

  
  self.gerarRegistro10;
  self.gerarRegistro11;
  self.gerarRegistro70;

  self.sintegra.GeraArquivo;

end;

procedure TGeradorSintegra.SetdataFinal(const Value: TDateTime);
begin
  FdataFinal := Value;
end;

procedure TGeradorSintegra.SetdataInicial(const Value: TDateTime);
begin
  FdataInicial := Value;
end;

procedure TGeradorSintegra.SetfinDoArq(const Value: String);
begin
  FfinDoArq := Value;
end;

procedure TGeradorSintegra.SetnomeArquivo(const Value: String);
begin
  FnomeArquivo := Value;
end;

procedure TGeradorSintegra.SetNumCte(const Value: Integer);
begin
  FNumCte := Value;
end;

procedure TGeradorSintegra.Setsintegra(const Value: TACBrSintegra);
begin
  Fsintegra := Value;
end;

procedure TGeradorSintegra.Settipo(const Value: String);
begin
  Ftipo := Value;
end;

end.
