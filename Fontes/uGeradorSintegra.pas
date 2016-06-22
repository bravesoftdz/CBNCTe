unit uGeradorSintegra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uFramePeriodo2, Buttons, ExtCtrls, GeradorSintegra, funcoes_cte;

type
  TfrmGeradorSintegra = class(TForm)
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    rgFinArq: TRadioGroup;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    FramePeriodo21: TFramePeriodo2;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeradorSintegra: TfrmGeradorSintegra;

implementation

{$R *.dfm}

procedure TfrmGeradorSintegra.BitBtn1Click(Sender: TObject);
var gerSintegra :TGeradorSintegra;
    nomeArq :String;
begin
  if rgFinArq.ItemIndex < 0 then begin
    avisar('Selecione a modalidade de frete!');
    exit;
  end;
 try
  nomeArq := copy(dateToStr(FramePeriodo21.eddi.DateTime),4,2)+copy(dateToStr(FramePeriodo21.eddi.DateTime),7,4)+'_Sintegra.txt';
  gerSintegra := TGeradorSintegra.create(FramePeriodo21.eddi.DateTime,
                                         FramePeriodo21.eddf.DateTime,
                                         nomeArq,
                                         intToStr(rgFinArq.ItemIndex+1));
  gerSintegra.gerarSintegra;

  avisar('Arquivo gerado com sucesso!');
 except
   on e: Exception do begin
     avisar('Erro ao gerar Sintegra!'+#13#10+e.Message);
     gerSintegra.destroy;
   end;
 end;
end;

procedure TfrmGeradorSintegra.FormShow(Sender: TObject);
begin
  FramePeriodo21.eddi.DateTime := PrimeiroDiaDoMes(date);
  FramePeriodo21.eddf.DateTime := date;
end;

end.
