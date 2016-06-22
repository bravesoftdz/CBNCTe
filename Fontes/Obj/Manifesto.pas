unit Manifesto;

interface
  uses MdoQuery, contnrs, ValePedagio;

   Type TManifesto = Class
   private
    FCMunCarrega: String;
    FCMDF: Integer;
    FTpEmit: Integer;
    FTpAmb: Integer;
    FCod_Veic_Trac: Integer;
    FTpEmis: Integer;
    FCod_Emit: Integer;
    FModal: Integer;
    FCodValePedagio: Integer;
    FNMDF: Integer;
    FXMunDescarga: String;
    FUfFim: String;
    FVerProc: String;
    FXMunCarrega: String;
    FIDChave: String;
    FUfIni: String;
    FDhEmi: TDateTime;
    FDT_criacao: TDateTime;    

    FctesManifesto   :TObjectList;
    FveiculosReboque :TObjectList;
    Fcondutores      :TObjectList;
    FValePedagio     :TValePedagio;
    Fstatus: string;
    Fdescricao_status: String;
    Fnumero_protocolo: String;
    Finfadfisco: String;
    Finfclp: String;
    FCMunDescarga: Integer;
    FinfPercurso :String;

     Class function GetFromQuery(Qry: TMDOQuery):TManifesto;

     procedure SetCMDF(const Value: Integer);
     procedure SetCMunCarrega(const Value: String);
     procedure SetCod_Emit(const Value: Integer);
     procedure SetCod_Veic_Trac(const Value: Integer);
     procedure SetDhEmi(const Value: TDateTime);
     procedure SetIDChave(const Value: String);
     procedure SetModal(const Value: Integer);
     procedure SetNMDF(const Value: Integer);
     procedure SetTpAmb(const Value: Integer);
     procedure SetTpEmis(const Value: Integer);
     procedure SetTpEmit(const Value: Integer);
     procedure SetUfFim(const Value: String);
     procedure SetUfIni(const Value: String);
     procedure SetCodValePedagio(const Value: Integer);
     procedure SetVerProc(const Value: String);

     function GetCtesManifesto: TObjectList;
     function GetCondutores: TObjectList;
     function GetVeiculosReboque: TObjectList;
     function GetValePedagio: TValePedagio;
     procedure SetDT_criacao(const Value: TDateTime);
     procedure Setdescricao_status(const Value: String);
     procedure Setnumero_protocolo(const Value: String);
     procedure Setstatus(const Value: string);
     procedure Setinfadfisco(const Value: String);
     procedure Setinfclp(const Value: String);
    procedure SetCMunDescarga(const Value: Integer);

   public
     property CMDF             :Integer read FCMDF write SetCMDF;
     property NMDF             :Integer read FNMDF write SetNMDF;
     property IDChave          :String read FIDChave write SetIDChave;
     property TpAmb            :Integer read FTpAmb write SetTpAmb;
     property TpEmit           :Integer read FTpEmit write SetTpEmit;
     property Modal            :Integer read FModal write SetModal;
     property DhEmi            :TDateTime read FDhEmi write SetDhEmi;
     property TpEmis           :Integer read FTpEmis write SetTpEmis;
     property VerProc          :String read FVerProc write SetVerProc;
     property UfIni            :String read FUfIni write SetUfIni;
     property UfFim            :String read FUfFim write SetUfFim;
     property CMunCarrega      :String read FCMunCarrega write SetCMunCarrega;
     property CMunDescarga     :Integer read FCMunDescarga write SetCMunDescarga;
     property Cod_Emit         :Integer read FCod_Emit write SetCod_Emit;
     property Cod_Veic_Trac    :Integer read FCod_Veic_Trac write SetCod_Veic_Trac;
     property CodValePedagio   :Integer read FCodValePedagio write SetCodValePedagio;
     property DT_criacao       :TDateTime read FDT_criacao write SetDT_criacao;
     property status           :string read Fstatus write Setstatus;
     property descricao_status :String read Fdescricao_status write Setdescricao_status;
     property numero_protocolo :String read Fnumero_protocolo write Setnumero_protocolo;
     property infclp           :String read Finfclp write Setinfclp;
     property infadfisco       :String read Finfadfisco write Setinfadfisco;
     property infPercurso      :String read FinfPercurso write FinfPercurso;

     property ctesManifesto   :TObjectList read GetCtesManifesto;
     property veiculosReboque :TObjectList read GetVeiculosReboque;
     property condutores      :TObjectList read GetCondutores;
     property ValePedagio     :TValePedagio read GetValePedagio;

     function Salvar:Boolean;
     class function GetbyCodigo(Codigo: Integer):TManifesto;

end;

implementation

uses SysUtils, DB, Modulo, CondutoresManifesto, VeiculosReboque, CTesManifesto;

{ TManifesto }

class function TManifesto.GetbyCodigo(Codigo: Integer): TManifesto;
var qry:  TMDOQuery;
begin
  result:= nil;
  qry := dm.GetQueryInstance('select * from Manifesto where  CMDF = :CMDF ');
  qry.ParamByName('CMDF').AsInteger := Codigo;
  qry.Open;

  if NOT qry.IsEmpty then
    result:= GetFromQuery(qry);
  FreeAndNil(qry);
end;

function TManifesto.GetCondutores: TObjectList;
var Condutor :TCondutoresManifesto;
begin
  result := nil;

  if not assigned(self.Fcondutores) and (self.FCMDF > 0) then begin

     dm.qryGeneric.Close;
     dm.qryGeneric.SQL.Text := 'select * from condutores_manifesto where codigo_manifesto = '+intToStr(self.FCMDF);
     dm.qryGeneric.Open;

     if not dm.qryGeneric.IsEmpty then begin
       self.Fcondutores := TObjectList.Create(true);

       dm.qryGeneric.First;
       while not dm.qryGeneric.Eof do begin

         Condutor := TCondutoresManifesto.Create;
         Condutor.Codigo           := dm.qryGeneric.fieldByName('codigo').AsInteger;
         Condutor.Codigo_Manifesto := dm.qryGeneric.fieldByName('codigo_manifesto').AsInteger;
         Condutor.Codigo_Condutor  := dm.qryGeneric.fieldByName('codigo_condutor').AsInteger;

         self.Fcondutores.Add( Condutor );
         dm.qryGeneric.Next;
       end;

     end;

  end;

  result := Fcondutores;

end;

class function TManifesto.GetFromQuery(Qry: TMDOQuery): TManifesto;
begin
   result:=  TManifesto.Create;

   if Qry.FindField('CMDF'            ) <> nil     then    result.CMDF               :=  qry.FieldByName('CMDF'            ).AsInteger;
   if Qry.FindField('NMDF'            ) <> nil     then    result.NMDF               :=  qry.FieldByName('NMDF'            ).AsInteger;
   if Qry.FindField('IDCHAVE'         ) <> nil     then    result.IDChave            :=  qry.FieldByName('IDCHAVE'         ).AsString;
   if Qry.FindField('TPAMB'           ) <> nil     then    result.TpAmb              :=  qry.FieldByName('TPAMB'           ).AsInteger;
   if Qry.FindField('TPEMIT'          ) <> nil     then    result.TpEmit             :=  qry.FieldByName('TPEMIT'          ).AsInteger;
   if Qry.FindField('MODAL'           ) <> nil     then    result.Modal              :=  qry.FieldByName('MODAL'           ).AsInteger;
   if Qry.FindField('DHEMI'           ) <> nil     then    result.dhEmi              :=  qry.FieldByName('DHEMI'           ).AsDateTime;
   if Qry.FindField('TPEMIS'          ) <> nil     then    result.TpEmis             :=  qry.FieldByName('TPEMIS'          ).AsInteger;
   if Qry.FindField('VERPROC'         ) <> nil     then    result.VerProc            :=  qry.FieldByName('VERPROC'         ).AsString;
   if Qry.FindField('UFINI'           ) <> nil     then    result.UfIni              :=  qry.FieldByName('UFINI'           ).AsString;
   if Qry.FindField('UFFIM'           ) <> nil     then    result.UfFim              :=  qry.FieldByName('UFFIM'           ).AsString;
   if Qry.FindField('CMUNCARREGA'     ) <> nil     then    result.CMunCarrega        :=  qry.FieldByName('CMUNCARREGA'     ).AsString;
   if Qry.FindField('CMUNDESCARGA'    ) <> nil     then    result.CMunDescarga       :=  qry.FieldByName('CMUNDESCARGA'    ).AsInteger;
   if Qry.FindField('COD_EMIT'        ) <> nil     then    result.Cod_Emit           :=  qry.FieldByName('COD_EMIT'        ).AsInteger;
   if Qry.FindField('COD_VEIC_TRAC'   ) <> nil     then    result.Cod_Veic_Trac      :=  qry.FieldByName('COD_VEIC_TRAC'   ).AsInteger;
   if Qry.FindField('VALE_PEDAGIO'    ) <> nil     then    result.CodValePedagio     :=  qry.FieldByName('VALE_PEDAGIO'    ).AsInteger;
   if Qry.FindField('DT_CRIACAO'      ) <> nil     then    result.DT_criacao         :=  qry.FieldByName('DT_CRIACAO'      ).AsDateTime;
   if Qry.FindField('STATUS'          ) <> nil     then    result.status             :=  qry.FieldByName('STATUS'          ).AsString;
   if Qry.FindField('DESCRICAO_STATUS') <> nil     then    result.descricao_status   :=  qry.FieldByName('DESCRICAO_STATUS').AsString;
   if Qry.FindField('NUMERO_PROTOCOLO') <> nil     then    result.numero_protocolo   :=  qry.FieldByName('NUMERO_PROTOCOLO').AsString;
   if Qry.FindField('INFCLP'          ) <> nil     then    result.infclp             :=  qry.FieldByName('INFCLP'          ).AsString;
   if Qry.FindField('INFADFISCO'      ) <> nil     then    result.infadfisco         :=  qry.FieldByName('INFADFISCO'      ).AsString;
   if Qry.FindField('infPercurso'     ) <> nil     then    result.infPercurso        :=  qry.FieldByName('infPercurso'      ).AsString;
end;

function TManifesto.GetVeiculosReboque: TObjectList;
var Veiculo :TVeiculosReboque;
begin
  result := nil;

  if not assigned(self.FveiculosReboque) and (self.FCMDF > 0) then begin

     dm.qryGeneric.Close;
     dm.qryGeneric.SQL.Text := 'select * from veiculos_reboque where codigo_manifesto = '+intToStr(self.FCMDF);
     dm.qryGeneric.Open;

     if not dm.qryGeneric.IsEmpty then begin
       self.FveiculosReboque := TObjectList.Create(true);

       dm.qryGeneric.First;
       while not dm.qryGeneric.Eof do begin

         Veiculo := TVeiculosReboque.Create;
         Veiculo.Codigo           := dm.qryGeneric.fieldByName('codigo').AsInteger;
         Veiculo.Codigo_Manifesto := dm.qryGeneric.fieldByName('codigo_manifesto').AsInteger;
         Veiculo.Codigo_Veiculo   := dm.qryGeneric.fieldByName('codigo_veiculo').AsInteger;

         self.FveiculosReboque.Add( Veiculo );
         dm.qryGeneric.Next;
       end;

     end;
     
  end;

  result := FveiculosReboque;
end;
                                                                                                        
function TManifesto.Salvar: Boolean;                                                                    
var qry:  TMDOQuery;
begin

   qry := dm.GetQueryInstance('UPDATE OR INSERT INTO MANIFESTO (CMDF, NMDF, IDCHAVE, TPAMB, TPEMIT, MODAL, DHEMI, TPEMIS, VERPROC,          '+
                              '                                 UFINI, UFFIM, CMUNCARREGA, CMUNDESCARGA,                                    '+
                              '                                 COD_EMIT, COD_VEIC_TRAC, VALE_PEDAGIO, DT_CRIACAO, STATUS,                  '+
                              '                                 DESCRICAO_STATUS, NUMERO_PROTOCOLO, INFCLP, INFADFISCO, infPercurso )       '+
                              '                         VALUES (:CMDF, :NMDF, :IDCHAVE, :TPAMB, :TPEMIT, :MODAL, :DHEMI, :TPEMIS, :VERPROC, '+
                              '                                 :UFINI, :UFFIM, :CMUNCARREGA, :CMUNDESCARGA,                                '+
                              '                                 :COD_EMIT, :COD_VEIC_TRAC, :VALE_PEDAGIO, :DT_CRIACAO, :STATUS,             '+
                              '                                 :DESCRICAO_STATUS, :NUMERO_PROTOCOLO, :INFCLP, :INFADFISCO, :infPercurso)   ');


   qry.ParamByName('CMDF'            ).AsInteger  := self.FCMDF;
   qry.ParamByName('NMDF'            ).AsInteger  := self.FNMDF;
   qry.ParamByName('IDCHAVE'         ).AsString   := self.FIDChave;
   qry.ParamByName('TPAMB'           ).AsInteger  := Self.FTpAmb;
   qry.ParamByName('TPEMIT'          ).AsInteger  := Self.FTpEmit;
   qry.ParamByName('MODAL'           ).AsInteger  := Self.FModal;
   qry.ParamByName('DHEMI'           ).AsDateTime := Self.DhEmi;
   qry.ParamByName('TPEMIS'          ).AsInteger  := Self.FTpEmis;
   qry.ParamByName('VERPROC'         ).AsString   := Self.FVerProc;
   qry.ParamByName('UFINI'           ).AsString   := Self.FUfIni;
   qry.ParamByName('UFFIM'           ).AsString   := Self.FUfFim;
   qry.ParamByName('CMUNCARREGA'     ).AsString   := Self.FCMunCarrega;
   qry.ParamByName('CMUNDESCARGA'    ).AsInteger  := Self.FCMunDescarga;
   qry.ParamByName('COD_EMIT'        ).AsInteger  := Self.FCod_Emit;
   qry.ParamByName('COD_VEIC_TRAC'   ).AsInteger  := Self.FCod_Veic_Trac;

   if Self.FCodValePedagio > 0 then
     qry.ParamByName('VALE_PEDAGIO'  ).AsInteger  := Self.FCodValePedagio;

   qry.ParamByName('DT_CRIACAO'      ).AsDateTime := Self.DT_criacao;
   qry.ParamByName('STATUS'          ).AsString   := Self.Fstatus;
   qry.ParamByName('DESCRICAO_STATUS').AsString   := Self.Fdescricao_status;
   qry.ParamByName('NUMERO_PROTOCOLO').AsString   := Self.Fnumero_protocolo;
   qry.ParamByName('STATUS'          ).AsString   := Self.Fstatus;
   qry.ParamByName('STATUS'          ).AsString   := Self.Fstatus;
   qry.ParamByName('DESCRICAO_STATUS').AsString   := Self.Fdescricao_status;
   qry.ParamByName('NUMERO_PROTOCOLO').AsString   := Self.Fnumero_protocolo;
   qry.ParamByName('INFCLP'          ).AsString   := Self.Finfclp;
   qry.ParamByName('INFADFISCO'      ).AsString   := Self.Finfadfisco;
   qry.ParamByName('infPercurso'     ).AsString   := Self.FinfPercurso;

   qry.ExecSQL;
   FreeAndNil(qry);
end;

procedure TManifesto.SetCMDF(const Value: Integer);
begin
  FCMDF := Value;
end;

procedure TManifesto.SetCMunCarrega(const Value: String);
begin
  FCMunCarrega := Value;
end;

procedure TManifesto.SetCod_Emit(const Value: Integer);
begin
  FCod_Emit := Value;
end;

procedure TManifesto.SetCod_Veic_Trac(const Value: Integer);
begin
  FCod_Veic_Trac := Value;
end;

procedure TManifesto.SetDhEmi(const Value: TDateTime);
begin
  FDhEmi := Value;
end;

procedure TManifesto.SetIDChave(const Value: String);
begin
  FIDChave := Value;
end;

procedure TManifesto.SetModal(const Value: Integer);
begin
  FModal := Value;
end;

procedure TManifesto.SetNMDF(const Value: Integer);
begin
  FNMDF := Value;
end;

procedure TManifesto.SetTpAmb(const Value: Integer);
begin
  FTpAmb := Value;
end;

procedure TManifesto.SetTpEmis(const Value: Integer);
begin
  FTpEmis := Value;
end;

procedure TManifesto.SetTpEmit(const Value: Integer);
begin
  FTpEmit := Value;
end;

procedure TManifesto.SetUfFim(const Value: String);
begin
  FUfFim := Value;
end;

procedure TManifesto.SetUfIni(const Value: String);
begin
  FUfIni := Value;
end;

procedure TManifesto.SetCodValePedagio(const Value: Integer);
begin
  FCodValePedagio := Value;
end;

procedure TManifesto.SetVerProc(const Value: String);
begin
  FVerProc := Value;
end;

function TManifesto.GetValePedagio: TValePedagio;
var Vale :TValePedagio;
begin
  result := nil;

  if not assigned(self.FValePedagio) and (self.FCodValePedagio > 0) then begin

     self.FValePedagio := nil;

     dm.qryGeneric.Close;
     dm.qryGeneric.SQL.Text := 'select * from vale_pedagio where codigo = '+intToStr(self.FCodValePedagio);
     dm.qryGeneric.Open;

     if dm.qryGeneric.IsEmpty then Exit;

     self.FValePedagio := TValePedagio.Create;
     self.FValePedagio.Codigo     := dm.qryGeneric.fieldByName('codigo').AsInteger;
     self.FValePedagio.Cnpj_forn  := dm.qryGeneric.fieldByName('CNPJ_FORN').AsString;
     self.FValePedagio.Cnpj_pg    := dm.qryGeneric.fieldByName('CNPJ_PG').AsString;
     self.FValePedagio.N_compra   := dm.qryGeneric.fieldByName('N_COMPRA').AsString;

  end;

  result := self.FValePedagio;

end;

function TManifesto.GetCtesManifesto: TObjectList;
var CTe :TCTesManifesto;
begin
  result := nil;

  if not assigned(self.FctesManifesto) and (self.FCMDF > 0) then begin

     dm.qryGeneric.Close;
     dm.qryGeneric.SQL.Text := 'select * from CTES_manifesto where codigo_manifesto = '+intToStr(self.FCMDF);
     dm.qryGeneric.Open;

     if not dm.qryGeneric.IsEmpty then begin
       FctesManifesto := TObjectList.Create(true);

       dm.qryGeneric.First;
       while not dm.qryGeneric.Eof do begin

         CTe := TCTesManifesto.Create;
         CTe.Codigo           := dm.qryGeneric.fieldByName('codigo').AsInteger;
         CTe.Codigo_Manifesto := dm.qryGeneric.fieldByName('codigo_manifesto').AsInteger;
         CTe.Codigo_Cte       := dm.qryGeneric.fieldByName('codigo_cte').AsInteger;

         FctesManifesto.Add( CTe );
         dm.qryGeneric.Next;
       end;

     end;

  end;

  result := FctesManifesto;

end;

procedure TManifesto.SetDT_criacao(const Value: TDateTime);
begin
  FDT_criacao := Value;
end;

procedure TManifesto.Setdescricao_status(const Value: String);
begin
  Fdescricao_status := Value;
end;

procedure TManifesto.Setnumero_protocolo(const Value: String);
begin
  Fnumero_protocolo := Value;
end;

procedure TManifesto.Setstatus(const Value: string);
begin
  Fstatus := Value;
end;

procedure TManifesto.Setinfadfisco(const Value: String);
begin
  Finfadfisco := Value;
end;

procedure TManifesto.Setinfclp(const Value: String);
begin
  Finfclp := Value;
end;

procedure TManifesto.SetCMunDescarga(const Value: Integer);
begin
  FCMunDescarga := Value;
end;

end.
