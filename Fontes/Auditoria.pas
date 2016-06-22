unit Auditoria;

interface

uses Funcoes_SGVE, IBQuery;

type
  TAuditoria = class
  private
//
  public
    class procedure Log_Exluir_Pedido(cPed: string; nUsus: Integer);
  end;

implementation

uses MDOQuery, Modulo, SysUtils, StrUtils{, UserName};


class procedure TAuditoria.Log_Exluir_Pedido(cPed: string; nUsus: Integer);
var qry: TMDOQuery;
begin
  qry := dm.GetQueryInstance('insert into aud_excluir_pedido values (:ID_AUD, current_date, current_time, :cTerminal, :nPed, :nUsu)');
  qry.ParamByName('ID_AUD').AsInteger  :=  DM.getNextGenValue('GEN_AUD_EXCLUIR_PEDIDO',0)+1;
  qry.ParamByName('cTerminal').AsString := Term;
  qry.ParamByName('nPed').AsString      := cPed;
  qry.ParamByName('nUsu').AsInteger     := nUsus;
  qry.ExecSQL;
  FreeAndNil(qry);
end;

end.
