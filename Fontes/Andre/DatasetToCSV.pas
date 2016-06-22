unit DatasetToCSV;


interface

uses DB,SysUtils;

type TDatasetToCSV = class
     public
        function converter( aDataSet : TDataSet ; Titulo : String ): Boolean;

end;
implementation


{ TDatasetToCSV }

function TDatasetToCSV.converter(aDataSet: TDataSet;
  Titulo: String): Boolean;
var
    i : Integer;
    F : TextFile;
    Arquivo : string;
Begin
  Arquivo := ChangeFileExt( Titulo , '.CSV' );
  AssignFile( F, Arquivo );
  ReWrite( F );
  // Cabeçalho
  For i := 0 To Pred(  aDataSet.FieldCount ) Do Begin
    Write( F, aDataSet.Fields[ i ].FieldName ) ;
    If ( i < Pred( aDataSet.FieldCount ) ) Then
      Write( F, ';' );
  End;
  WriteLn( F );
  aDataSet.First;
  While ( Not aDataSet.Eof ) Do Begin
    For i := 0 To Pred( aDataSet.FieldCount ) Do Begin
      Write( F, trim(aDataSet.Fields[ i ].AsString) ) ;
      If ( i < Pred( aDataSet.FieldCount ) ) Then
        Write( F, ';' );
    End;
    WriteLn( F );
    aDataSet.Next;
  End;
   
  Flush( F );
  Close( F );

End;


end.
 