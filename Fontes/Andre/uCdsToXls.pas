unit uCdsToXls;

interface

uses ComObj,DBClient,DB;

type TCdsToXls = class
    private
       linha , coluna  : Integer;
       planilha : Variant;

    public
      Titulo : String;
      constructor Create;
      procedure addCDS(cds : TDataSet; cabecalho : Boolean; linCab:Integer);
      procedure exibePlanilha;

end;
implementation

uses SysUtils;

{ TCdsToXls }

procedure TCdsToXls.addCDS(cds: TDataSet; cabecalho : Boolean; linCab:Integer);
var i,i2 : integer;
var valorcampo : string;
begin
 cds.First;

 if cabecalho then
  begin
    for i := 1 to cds.FieldCount do
    begin
      coluna := i;
      valorcampo := cds.Fields[coluna - 1].DisplayLabel;
      planilha.cells[linCab,coluna] := valorcampo;
    end;
  end;

  while not cds.Eof do
   begin
      for i := 1 to cds.FieldCount do
      begin
        coluna := i;
        valorcampo := cds.Fields[coluna - 1].AsString;


        {if (Trim(valorcampo) = '(DATASET)') then
        begin
            for i2 := 1 to cds.Fields[i-1].AsVariant.FieldCount do
            begin
              coluna := i2;
              valorcampo := cds.Fields[i-1].AsVariant.Fields[coluna - 1].DisplayLabel;
              planilha.cells[1,coluna] := valorcampo;
            end;

            while not cds.Fields[i-1].DataSet.Eof do
            begin
              for i2 := 1 to cds.Fields[i-1].AsVariant.FieldCount do
              begin
                  valorcampo := cds.Fields[i-1].AsVariant.Fields[i2 - 1].AsString;
                  planilha.cells[linha,i2] := valorCampo;
              end;
              inc(linha);
              cds.Fields[i-1].AsVariant.Next;
            end;

        end;// fim if da dataset.}
        
        planilha.cells[linha,coluna] := valorCampo;
      end;
      inc(linha);
      cds.Next;
   end;



end;

constructor TCdsToXls.Create;
begin
 planilha := CreateoleObject('Excel.Application');
 planilha.WorkBooks.add(1);


 planilha.visible := true;
 linha := 4;
end;

procedure TCdsToXls.exibePlanilha;
begin
  if Trim(Titulo) = '' then
      planilha.caption := 'Exportando dados do dbGrid para o Excel'
  else
      planilha.caption := Titulo;

  planilha.columns.Autofit;
end;

end.
