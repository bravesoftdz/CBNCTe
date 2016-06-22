unit uFrmPer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, MarcianoBallon, StdCtrls, Mask, FocusMaskEdit;

type
  TfrmPer = class(TFrame)
    baloon: TMarcianoBallon;
    EdDataIni: TFocusMaskEdit;
    EdDataFim: TFocusMaskEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Label1: TLabel;
    Label2: TLabel;
    procedure EdDataIniExit(Sender: TObject);
    procedure EdDataFimExit(Sender: TObject);
    procedure EdDataIniEnter(Sender: TObject);
  private
    function getDataFinal: TDateTime;
    function getDataInicial: TDateTime;
    procedure setDataFinal(const Value: TDateTime);
    procedure setDataInicial(const Value: TDateTime);
    { Private declarations }
  public
    { Public declarations }
    //function dataIni:TDateTime;
    //function dataFim:TDateTime;

    property dataIni : TDateTime read getDataInicial write setDataInicial;
    property dataFim   : TDateTime read getDataFinal   write setDataFinal;
  end;

implementation

{$R *.dfm}

procedure TfrmPer.EdDataIniExit(Sender: TObject);
begin
    if strToDateDef( ( Sender as TFocusMaskEdit ).Text,0 ) = 0 then
    begin
        baloon.ShowBallon( Sender as TFocusMaskEdit ,' Data inválida! ');
        Abort;
    end;

end;

procedure TfrmPer.EdDataFimExit(Sender: TObject);
begin
    EdDataIniExit(Sender);
    if StrToDate(EdDataIni.Text) > StrToDate(EdDataFim.Text) then
    begin
        baloon.ShowBallon( Sender as TFocusMaskEdit ,' A data FINAL deve ser MAIOR que a INICIAL! ');
        Abort;
    end;
end;

procedure TfrmPer.EdDataIniEnter(Sender: TObject);
begin
    with Sender as TFocusMaskEdit do
    begin
        if Text = '  /  /    ' then
        begin
           Text := DateToStr(Date);
           SelectAll;
        end;
    end;
end;


function TfrmPer.getDataFinal: TDateTime;
var testa : TDateTime;
begin
  if not TryStrToDateTime( EdDataFim.Text, testa ) then
    setDataFinal(Date);

  Result := StrToDateTime(EdDataFim.Text);
end;

function TfrmPer.getDataInicial: TDateTime;
var testa : TDateTime;
begin
  if not TryStrToDateTime( EdDataIni.Text, testa ) then
    setDataInicial(Date);

  Result := StrToDateTime(EdDataIni.Text);
end;

procedure TfrmPer.setDataFinal(const Value: TDateTime);
begin
  EdDataFim.Text := FormatDateTime('dd/mm/yyyy',Value);
end;

procedure TfrmPer.setDataInicial(const Value: TDateTime);
begin
  EdDataIni.Text := FormatDateTime('dd/mm/yyyy',Value);
end;

end.
