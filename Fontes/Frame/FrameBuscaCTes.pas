unit FrameBuscaCTes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, FocusEdit, MDOQuery, DB, DBClient;

type
  TbuscaCtes = class(TFrame)
    edtNumCte: TFocusEdit;
    SpbBusca: TBitBtn;
    StaticText1: TStaticText;
    procedure SpbBuscaClick(Sender: TObject);
    procedure edtNumCteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNumCteChange(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
    procedure edtNumCteEnter(Sender: TObject);
  private
   Fcds :TClientDataSet;
   Fdti  :TDateTime;
   Fdtf  :TDateTime;

    function GetCds :TClientDataSet;

    function buscaCte :Boolean;
    procedure pesquisa;

    procedure SetNumCte(const value:integer);
  public
    FStatus :String;
    
    procedure limpa;

    property numCte     :Integer        write SetNumCte;
    property cds        :TClientDataSet read getCds;
    property dti        :TDateTime      write Fdti;
    property dtf        :TDateTime      write Fdtf;
    
  end;

implementation

uses Modulo, funcoes_cte, StrUtils;

{$R *.dfm}

{ TbuscaCtes }

function TbuscaCtes.buscaCte: Boolean;
var qry :TMDOquery;
begin
  result := false;
  qry := dm.GetQueryInstance('select numcte, DATA, RAZDES, XMUNFIM        from CTE      '+
                             'left join ctes_manifesto cm on cm.codigo_cte = cte.numcte '+
                             'where numcte = :numcte and status = ''100''               '+
                             ' and cm.codigo is null                                    '+
                             ' and  data between :Dti and :Dtf                          '+
                             IfThen(FStatus <> '', ' and cte.STATUS = '+FStatus, FStatus ));
  qry.ParamByName('numcte').AsInteger := StrToInt(edtNumCte.Text);
  qry.ParamByName('Dti').AsDateTime   := self.Fdti;
  qry.ParamByName('Dtf').AsDateTime   := self.Fdtf;
  qry.Open;

  if not qry.IsEmpty then
    begin
      edtNumCte.Text := qry.fieldByName('numcte').AsString;
      self.Fcds.Append;
      self.Fcds.FieldByName('NUMCTE').AsInteger     := qry.fieldByName('NUMCTE').AsInteger;
      self.Fcds.FieldByName('DATA').AsString        := qry.fieldByName('DATA').AsString;
      self.Fcds.FieldByName('RAZDES').AsString      := qry.fieldByName('RAZDES').AsString;
      self.Fcds.FieldByName('XMUNFIM').AsString     := qry.fieldByName('XMUNFIM').AsString;
      self.Fcds.Post;
      result := true;
    end
  else
    edtNumCte.Clear;

  qry.Free;
  qry := nil;
end;

procedure TbuscaCtes.pesquisa;
var dtini, dtfim :String;
begin
  Fcds := TClientDataSet.Create(self);

  dtini := DateToStr(self.Fdti);
  dtfim := DateToStr(self.Fdtf);

  dtini := StringReplace(dtini, '/', '.', [rfReplaceAll, rfIgnoreCase]);
  dtfim := StringReplace(dtfim, '/', '.', [rfReplaceAll, rfIgnoreCase]);

  Fcds.Data :=  TClientDataSet(PesquisaSimples('SELEct numCte, data , razdes , xmunfim  from cte            '+#13#10+
                                               ' left join ctes_manifesto cm on cm.codigo_cte = cte.numcte  '+#13#10+
                                               ' where status = ''100'' and cm.codigo is null               '+#13#10+
                                               '   and  data between '''+dtini+''' and '''+dtfim+ ''''+#13#10+
                                                IfThen(FStatus <> '', ' and cte.STATUS = '+FStatus, FStatus )+' order by 1' , true, 800, 500)).Data;
  if cds = nil then
    exit;

  edtNumCte.Text :=  Fcds.Fields[0].AsString;
end;

procedure TbuscaCtes.SpbBuscaClick(Sender: TObject);
begin
  pesquisa;

  Press(VK_TAB);
end;

procedure TbuscaCtes.edtNumCteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
   begin
     if not buscaCte then
          pesquisa;
     Press(VK_TAB);     
   end;
end;

procedure TbuscaCtes.SetNumCte(const value: integer);
begin
  edtNumCte.Text := intToStr(value);

  if (edtNumCte.Text <> '')and(edtNumCte.Text <> '0') then
    buscaCte;
end;

procedure TbuscaCtes.limpa;
begin
  if assigned(Fcds) and (Fcds.Active) then  Fcds.EmptyDataSet;
  edtNumCte.Clear;
end;

function TbuscaCtes.GetCds: TClientDataSet;
begin
  Result := self.Fcds;
end;

procedure TbuscaCtes.edtNumCteChange(Sender: TObject);
begin
  if trim(edtNumCte.Text) = '' then
    edtNumCte.Text := '0';
end;

procedure TbuscaCtes.FrameEnter(Sender: TObject);
begin
  if not assigned(Fcds) then begin

    Fcds := TClientDataSet.Create(self);
    Fcds.Close;
    Fcds.FieldDefs.Clear;
    Fcds.FieldDefs.add('NUMCTE',ftInteger);
    Fcds.FieldDefs.add('DATA',ftDate);
    Fcds.FieldDefs.add('RAZDES',ftString,50);
    Fcds.FieldDefs.add('XMUNFIM',ftString,50);
    Fcds.CreateDataSet;
  end;
end;

procedure TbuscaCtes.edtNumCteEnter(Sender: TObject);
begin
  FrameEnter(nil);
end;

end.
