unit AndreRelatorioFortes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, DBClient;

type
  TfAndreRelatorioFortes = class(TForm)
    RLReport1: TRLReport;
    rlCabecalho: TRLBand;
    rlTitulo: TRLLabel;
    rlSubTitulo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand1: TRLBand;
    rlTituloCol: TRLLabel;
    RLBand2: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLBandZebrado: TRLBand;
    cds: TClientDataSet;
    ds: TDataSource;
    cdsCORPO: TStringField;
    RLDBText1: TRLDBText;
    procedure rlDetailBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure addLinha( nLinha : String );
    procedure imprime;
  end;

var
  fAndreRelatorioFortes: TfAndreRelatorioFortes;

implementation

{$R *.dfm}

procedure TfAndreRelatorioFortes.addLinha(nLinha: String);
var i : Integer;
begin
    if not cds.Active then
      cds.CreateDataSet;

    cds.Append;
    cdsCORPO.AsString := nLinha;
    cds.Post;
    
end;

procedure TfAndreRelatorioFortes.imprime;
begin
  cds.Open;
  RLReport1.PreviewModal;
end;

procedure TfAndreRelatorioFortes.rlDetailBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

   with Sender as TRLBand do
   begin
      if (TRLReport(Parent).DataSource.DataSet.RecNo mod 2)=0 then
        Color := $00EAEAEA
      else
        Color := clWhite
   end;

end;

end.
