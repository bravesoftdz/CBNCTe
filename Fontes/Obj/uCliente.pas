unit uCliente;

interface

uses SysUtils, MDOQuery;

type
  TCliente = class

  private
    FCODIGO  :integer;
    FNOME    :String;
    FNOMEFAN :String;
    FENDER   :String;
    FBAIRRO  :String;
    FCODCID  :Integer;
    FESTADO  :String;
    FCEP     :String;
    FCPF     :String;
    FRG      :String;
    FFONE1   :String;
    FFONE2   :String;
    FOBS     :String;
    FFLAG    :String;
    FDTNASCI :TDateTime;
    FDTCAD   :TDateTime;
    FPAIS    :String;
    FCELULAR :String;
    FEMAIL   :String;
    FDTABERT :TDateTime;
    FMOTBLOQ :String;
    FNUMERO  :integer;
    FDTALTER :TDateTime;

    procedure setCodigo(const Value :integer);
    procedure setNome(const Value :String);
    procedure setNomeFan(const Value :String);
    procedure setEnder(const Value :String);
    procedure setBairro(const Value :String);
    procedure setCodCid(const Value :Integer);
    procedure setEstado(const Value :String);
    procedure setCep(const Value :String);
    procedure setCpf(const Value :String);
    procedure setRG(const Value :String);
    procedure setFone1(const Value :String);
    procedure setFone2(const Value :String);
    procedure setObs(const Value :String);
    procedure setFlag(const Value :String);
    procedure setDtNasci(const Value :TDateTime);
    procedure setDtCad(const Value :TDateTime);
    procedure setPais(const Value :String);
    procedure setCelular(const Value :String);
    procedure setEmail(const Value :String);
    procedure setDtAbert(const Value :TDateTime);
    procedure setMotBloq(const Value :String);
    procedure setNumero(const Value :integer);
    procedure setDtAlter(const Value :TDateTime);

  public
   property CODIGO  :integer   read FCODIGO  write setCodigo;
   property NOME    :String    read FNOME    write setNome;
   property NOMEFAN :String    read FNOMEFAN write setNomeFan;
   property ENDER   :String    read FENDER   write setEnder;
   property BAIRRO  :String    read FBAIRRO  write setBairro;
   property CodCid  :Integer   read FCodCid  write setCodCid;
   property ESTADO  :String    read FESTADO  write setEstado;
   property CEP     :String    read FCEP     write setCep;
   property CPF     :String    read FCPF     write setCpf;
   property RG      :String    read FRG      write setRG;
   property FONE1   :String    read FFONE1   write setFone1;
   property FONE2   :String    read FFONE2   write setFone2;
   property OBS     :String    read FOBS     write setObs;
   property FLAG    :String    read FFLAG    write setFlag;
   property DTNASCI :TDateTime read FDTNASCI write setDtNasci;
   property DTCAD   :TDateTime read FDTCAD   write setDtCad;
   property PAIS    :String    read FPAIS    write setPais;
   property CELULAR :String    read FCELULAR write setCelular;
   property EMAIL   :String    read FEMAIL   write setEmail;
   property DTABERT :TDateTime read FDTABERT write setDtAbert;
   property MOTBLOQ :String    read FMOTBLOQ write setMotBloq;
   property NUMERO  :integer   read FNUMERO  write setNumero;
   property DTALTER :TDateTime read FDTALTER write setDtAlter;

   procedure salvar;
   procedure bloqDesbloq(cod :integer);
   function getFromTable(cod :integer): TCliente;

  end;

implementation

uses Modulo, DB;

{ TCliente }

procedure TCliente.bloqDesbloq(cod: integer);
var objeto :TCliente;
begin
  try
      objeto := TCliente.Create;
      objeto := getFromTable(cod);

      if objeto.flag = 'B' then
       objeto.flag := 'N'
      else
       objeto.flag := 'B';

      objeto.salvar;
      
   finally
      if (objeto <> nil) then
       begin
          objeto.free;
          objeto := nil;
       end;
   end;
end;

function TCliente.getFromTable(cod: integer): TCliente;
var qry :TMDOQuery;
    objeto :TCliente;
begin
  qry := dm.GetQueryInstance('select * from clientes where codigo = :cod');
  qry.ParamByName('cod').AsInteger := cod;
  qry.Open;

  result := nil;
  
  if not qry.IsEmpty then
   begin
     objeto := TCliente.Create;

     objeto.CODIGO   := cod;
     objeto.FNOME    := qry.fieldByName('NOME').AsString;
     objeto.FNOMEFAN := qry.fieldByName('NOMEFAN').AsString;
     objeto.FENDER   := qry.fieldByName('ENDER').AsString;
     objeto.FBAIRRO  := qry.fieldByName('BAIRRO').AsString;
     objeto.CodCid   := qry.fieldByName('CodCid').AsInteger;
     objeto.FESTADO  := qry.fieldByName('ESTADO').AsString;
     objeto.FCEP     := qry.fieldByName('CEP').AsString;
     objeto.FCPF     := qry.fieldByName('CPF').AsString;
     objeto.FRG      := qry.fieldByName('RG').AsString;
     objeto.FFONE1   := qry.fieldByName('FONE1').AsString;
     objeto.FFONE2   := qry.fieldByName('FONE2').AsString;
     objeto.FOBS     := qry.fieldByName('OBS').AsString;
     objeto.FFLAG    := qry.fieldByName('FLAG').AsString;
     objeto.FDTNASCI := qry.fieldByName('DTNASCI').AsDateTime;
     objeto.FDTCAD   := qry.fieldByName('DTCAD').AsDateTime;
     objeto.FPAIS    := qry.fieldByName('PAIS').AsString;
     objeto.FCELULAR := qry.fieldByName('CELULAR').AsString;
     objeto.FEMAIL   := qry.fieldByName('EMAIL').AsString;
     objeto.FDTABERT := qry.fieldByName('DTABERT').AsDateTime;
     objeto.FMOTBLOQ := qry.fieldByName('MOTBLOQ').AsString;
     objeto.FNUMERO  := qry.fieldByName('NUMERO').AsInteger;
     objeto.FDTALTER := qry.fieldByName('DTALTER').AsDateTime;

     result := objeto;
   end;

end;

procedure TCliente.salvar;
var qry :TMDOQuery;
begin
  qry := dm.GetQueryInstance('UPDATE OR INSERT INTO CLIENTES (CODIGO, NOME, NOMEFAN, ENDER, BAIRRO, CodCid, ESTADO, CEP, CPF, RG,  '+
                             ' FONE1, FONE2, OBS, FLAG, DTNASCI, DTCAD, PAIS, CELULAR, EMAIL, DTABERT, MOTBLOQ, NUMERO, DTALTER)   '+
                             ' VALUES(:CODIGO, :NOME, :NOMEFAN, :ENDER, :BAIRRO, :CodCid, :ESTADO, :CEP, :CPF, :RG, :FONE1, :FONE2,'+
                             ' :OBS, :FLAG, :DTNASCI, :DTCAD, :PAIS, :CELULAR, :EMAIL, :DTABERT, :MOTBLOQ, :NUMERO, :DTALTER)');

  qry.ParamByName('CODIGO').AsInteger   := self.Codigo;
  qry.ParamByName('NOME').AsString      := self.NOME;
  qry.ParamByName('NOMEFAN').AsString   := self.NOMEFAN;
  qry.ParamByName('ENDER').AsString     := self.ENDER;
  qry.ParamByName('BAIRRO').AsString    := self.BAIRRO;
  qry.ParamByName('CodCid').AsInteger   := self.CodCid;
  qry.ParamByName('ESTADO').AsString    := self.ESTADO;
  qry.ParamByName('CEP').AsString       := self.CEP;
  qry.ParamByName('CPF').AsString       := self.CPF;
  qry.ParamByName('RG').AsString        := self.RG;
  qry.ParamByName('FONE1').AsString     := self.FONE1;
  qry.ParamByName('FONE2').AsString     := self.FONE2;
  qry.ParamByName('OBS').AsString       := self.OBS;
  qry.ParamByName('FLAG').AsString      := self.FLAG;
  qry.ParamByName('DTNASCI').AsDateTime := self.DTNASCI;
  qry.ParamByName('DTCAD').AsDateTime   := self.DTCAD;
  qry.ParamByName('PAIS').AsString      := self.PAIS;
  qry.ParamByName('CELULAR').AsString   := self.CELULAR;
  qry.ParamByName('EMAIL').AsString     := self.EMAIL;
  qry.ParamByName('DTABERT').AsDateTime := self.DTABERT;
  qry.ParamByName('MOTBLOQ').AsString   := self.MOTBLOQ;
  qry.ParamByName('NUMERO').AsInteger   := self.NUMERO;
  qry.ParamByName('DTALTER').AsDateTime := self.DTALTER;

  qry.ExecSQL;

end;

procedure TCliente.setBairro(const Value: String);
begin
  FBAIRRO := VALUE;
end;

procedure TCliente.setCelular(const Value: String);
begin
  FCELULAR := VALUE;
end;

procedure TCliente.setCep(const Value: String);
begin
  FCEP := VALUE;
end;

procedure TCliente.setCodCid(const Value: Integer);
begin
  FCodCid := VALUE;
end;

procedure TCliente.setCodigo(const Value: integer);
begin
  FCODIGO := VALUE;
end;

procedure TCliente.setCpf(const Value: String);
begin
  FCPF := VALUE;
end;

procedure TCliente.setDtAbert(const Value: TDateTime);
begin
  FDTABERT := VALUE;
end;

procedure TCliente.setDtAlter(const Value: TDateTime);
begin
  FDTALTER := VALUE;
end;

procedure TCliente.setDtCad(const Value: TDateTime);
begin
  FDTCAD := VALUE;
end;

procedure TCliente.setDtNasci(const Value: TDateTime);
begin
  FDTNASCI := VALUE;
end;

procedure TCliente.setEmail(const Value: String);
begin
  FEMAIL := VALUE;
end;

procedure TCliente.setEnder(const Value: String);
begin
  FENDER := VALUE;
end;

procedure TCliente.setEstado(const Value: String);
begin
  FESTADO := VALUE;
end;

procedure TCliente.setFlag(const Value: String);
begin
  FFLAG := VALUE;
end;

procedure TCliente.setFone1(const Value: String);
begin
  FFONE1 := VALUE;
end;

procedure TCliente.setFone2(const Value: String);
begin
  FFONE2 := VALUE;
end;

procedure TCliente.setMotBloq(const Value: String);
begin
  FMOTBLOQ := VALUE;
end;

procedure TCliente.setNome(const Value: String);
begin
  FNOME := VALUE;
end;

procedure TCliente.setNomeFan(const Value: String);
begin
  FNOMEFAN := VALUE;
end;

procedure TCliente.setNumero(const Value: integer);
begin
  FNUMERO := VALUE;
end;

procedure TCliente.setObs(const Value: String);
begin
  FOBS := VALUE;
end;

procedure TCliente.setPais(const Value: String);
begin
  FPAIS := VALUE;
end;

procedure TCliente.setRG(const Value: String);
begin
  FRG := VALUE;
end;

end.
