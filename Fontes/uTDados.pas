unit uTDados;

interface

uses MDOQuery,DB,DBClient,modulo,DBGrids,Graphics,grids;

type
  TDados = class

  private

  public
     function qryToDataSet(QryMDO: TMDOQuery):TClientDataSet;
     function sqlToDataSet(sql: String):TDataSource;
     function criaDataSet(QryMDO : TMDOQuery):TClientDataSet;
     function dataSetToDataSource(dataSet:TDataSet):TDataSource;
     
     
  end;

implementation

uses  SysUtils;




function TDados.qryToDataSet(QryMDO: TMDOQuery):TClientDataSet;
var ClientDataSet : TClientDataSet;
    campo : Integer;
    nomeCampo:String;
begin

    ClientDataSet := TClientDataSet.Create(nil);
    ClientDataSet := criaDataSet( QryMDO );

    QryMDO.Open;
    QryMDO.First;

    while not QryMDO.Eof do
    begin
        ClientDataSet.Insert;

        for campo := 0 to QryMDO.FieldCount -1 do
        begin
            nomeCampo := QryMDO.Fields.Fields[campo].FieldName;
            ClientDataSet.FieldByName(nomeCampo).asString := QryMDO.FieldByName(nomeCampo).asString;
        end;

        ClientDataSet.Post;
        QryMDO.Next;

    end;
    QryMDO.Close;

    Result := ClientDataSet;

end;


function TDados.criaDataSet(QryMDO : TMDOQuery):TClientDataSet;
var campo : Integer;
    cds : TClientDataSet;
    field : TField;
    //Coluna : TColumn;
begin

    cds := TClientDataSet.Create(nil);
    QryMDO.Open;
    cds.FieldDefs.Clear;   // limpei a estrutura do clientdataset

    for campo:= 0 to QryMDO.FieldCount -1 do
        cds.FieldDefs.Add(QryMDO.Fields[campo].FieldName , QryMDO.Fields[campo].DataType ,QryMDO.Fields[campo].Size,false);

    cds.CreateDataSet;

    Result := cds;

end;




function TDados.sqlToDataSet(sql: String): TDataSource;
var Query : TMDOQuery;
begin
    try

      Query := TMDOQuery.Create(nil);
      Query := dm.GetQueryInstance(sql);


      Result := dataSetToDataSource(qryToDataSet( Query ));

    Except
        raise Exception.Create('SQL inválido!');
    end;

end;

function TDados.dataSetToDataSource(dataSet:TDataSet):TDataSource;
var ds : TDataSource;
begin
    ds := TDataSource.Create(nil);
    ds.DataSet := dataSet;
    Result := ds;

end;

end.

