unit uFrameBuscaCFOP;

interface

uses
  NatOp, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, FocusCurrEdit, Buttons, FUNCOES_cte;

type
  TframeBuscaCFOP = class(TFrame)
    edCFOP: TFocusCurrEdit;
    lbCFOP: TStaticText;
    btBuscar: TBitBtn;
    procedure BtBuscarClick(Sender: TObject);
    procedure edCFOPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCFOPKeyPress(Sender: TObject; var Key: Char);
  private
    FNatOp: TNatOp;
    procedure SetNatOp(const Value: TNatOp);
    function getNatOp: TNatOp;
    { Private declarations }
  public
    property NatOp :TNatOp read getNatOp write SetNatOp;
    procedure Mostra;
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TframeBuscaCFOP }

function TframeBuscaCFOP.getNatOp: TNatOp;
begin
   result := self.FNatOp;
end;

procedure TframeBuscaCFOP.Mostra;
begin
  self.edCFOP.AsInteger := self.FNatOp.CFOP;
end;

procedure TframeBuscaCFOP.SetNatOp(const Value: TNatOp);
begin
  FNatOp := Value;

  if not (FNatop = nil) then   self.Mostra;
end;

procedure TframeBuscaCFOP.BtBuscarClick(Sender: TObject);
begin
  self.NatOp := NatOp.seleciona_natop;
end;

procedure TframeBuscaCFOP.edCFOPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Return) then btbuscar.click;
 //   if (self.edCFOP.AsInteger > 0) then
   //   self.NatOp := NatOp.BuscaObjNatOp(edCFOP.AsInteger);



end;

procedure TframeBuscaCFOP.edCFOPKeyPress(Sender: TObject; var Key: Char);
begin
  self.NatOp := NatOp.BuscaObjNatOp(edCFOP.AsInteger);
end;

end.
