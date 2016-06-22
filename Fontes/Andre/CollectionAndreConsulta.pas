{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit CollectionAndreConsulta;

interface
 uses AndreConsulta,Classes;
 type TCollectionAndreConsulta = class(TCollection)

          private
              procedure  setConsulta( index : Integer ; Consulta :TAndreConsulta);
              function   getConsulta( index : Integer ):TAndreConsulta;

          public
              function    Add(sql : String):TAndreConsulta;overload;
              constructor Create(Component: TCollectionAndreConsulta);
              function    Add: TAndreConsulta;overload;
              property    Item[Index: Integer]: TAndreConsulta read getConsulta write setConsulta;


 end;

implementation

uses TypInfo, SysUtils;

{ TCollectionAndreConsulta }

function TCollectionAndreConsulta.Add: TAndreConsulta;
begin
     Result := TAndreConsulta(inherited Add);
end;

function TCollectionAndreConsulta.Add(sql: String): TAndreConsulta;
var nX : Integer;
begin
  Result := nil;
  for nX := 0 to Self.Count - 1 do
  begin
      if ((Self.Item[nX] = nil) or not Self.Item[nX].EstaAtivo) and (Result = nil) then
      begin

          if Self.Item[nX] = nil then
            Self.Item[nX] := TAndreConsulta.Create(nil);
              
          Result := Self.Item[nX];
          Result.Indice := nX;
      end
  end;
  
  if Result = nil then
  begin
    Result := Add;
    Result.Indice := Self.Count-1
  end;
  Result.IniciaConsulta(sql);  

end;

constructor TCollectionAndreConsulta.Create(
  Component: TCollectionAndreConsulta);
begin
   inherited Create(TAndreConsulta);
end;


function TCollectionAndreConsulta.getConsulta(
  index: Integer): TAndreConsulta;
begin
    Result := TAndreConsulta(inherited GetItem(Index));
end;


procedure TCollectionAndreConsulta.setConsulta(index: Integer;
  Consulta: TAndreConsulta);
begin
     inherited SetItem(Index, Consulta);
end;

end.
