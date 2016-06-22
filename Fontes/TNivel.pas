unit TNivel;

interface

uses MDOQuery, ZDataSet;

type
  TClassNivel = class
  private

    //Cadastros
    getCad     :String ;
    getCadCli  :String;
    getCadForn :String;
    getCadGrupo  :String;
    getCadSubGrupo    :String;
    getCadMarca    :String;
    getCadProd    :String;
    getCadLinha    :String;
    getCadFormaPagto    :String;
    getCadUsuario    :String;
    getCadMsg    :String;
    getCadTabela    :String;
    getCadTransp    :String;
    getCadCompleComiss    :String;
    getCadTipoCli    :String;
    getCadEvento    :String;
    getCadNivelSistema    :String;
    getCadDeposito: Boolean;


    //Movimentação
    getMov : Boolean;
    getMovAlteracaoEstoque : Boolean;
    getMovReajustePreco : Boolean;
    getMovMovimentacaoEstoque : Boolean;
    getMovPedidoCompra : Boolean;

    //Vendas
    getVendCx : Boolean;
    getVendCxRecebPedidos : Boolean;
    getVendCxAltOrcamentos : Boolean;
    getVendCxVendaProdutos : Boolean;
    getVendCxVendaProdutosAtac : Boolean;
    getVendCxConsultaReimprimirPed : Boolean;
    getVendCxAlteracaoDataVencimen : Boolean;
    getVendCxCancelarRecebPedido : Boolean;
    getVendCxRecebPagamentos : Boolean;
    getVendCxTrocaCheques : Boolean;
    getVendCxConsignacoesDevolucoes : Boolean;
    getVendCxTrocaProdutos : Boolean;
    getVendCxImprimirDebitoCliente : Boolean;
    getVendCxSubTotalCaixa : Boolean;
    getVendCxFechamentoParcial : Boolean;
    getVendCxEntregaPedido : Boolean;


    //Contas - Cheque
    getContCheq : Boolean;
    getContCheqContasPagar : Boolean;
    getContCheqContasReceber : Boolean;
    getContCheqCheque : Boolean;

    //Relatórios
    getRel : Boolean;
    getRelCadastrais : Boolean;
    getRelMovimento : Boolean;
    getRelVendasCaixa : Boolean;
    getRelContCheq : Boolean;

    //Utilitários
    getUtilitario : Boolean;
    getUtilAgenda : Boolean;
    getUtilBackup : Boolean;
    getUtilConfig : Boolean;


    //Outros
    getOutros : Boolean;
    getOutDev : Boolean;
    getOutNot : Boolean;
    getOutVendaRapida : Boolean;
    getNrPedVen  : Boolean;
    FCadMunicipio: Boolean;
    fPlanilhaCusto: Boolean;
    fFeriado: Boolean;
    fCargas: Boolean;
    fMarcas: Boolean;
    fSetoresProducao: Boolean;
    fParametros: Boolean;
    fCertificados: Boolean;
    fNiveisMaquina: Boolean;
    fStatusPedido: Boolean;
    fKits: Boolean;
    fMediaVenda: Boolean;
    fLancPromocao: Boolean;
    fBaixarPedido: Boolean;
    fPedidoAutomatico: Boolean;
    fMovCargas: Boolean;
    fMovEventosPedido: Boolean;
    fVendBaixaparcPedido: Boolean;
    fECF: Boolean;
    fNFE: Boolean;
    fVendNFE2: Boolean;
    fVendNotaFiscal: Boolean;
    fVendDevProd: Boolean;
    fVendOrcRapidowrite: Boolean;
    fVendOrcRapido: Boolean;
    fVendVendaRapida: Boolean;
    fVendPesqNrDoc: Boolean;
    fVendCodicionais: Boolean;
    fVendBaixaEstoque: Boolean;
    fVendEntregaPedidos: Boolean;
    fVendEncerraCarga: Boolean;
    fVendReimpressaoCarga: Boolean;
    fVendPedidoLote: Boolean;
    fVendDarBaixa: Boolean;
    fVendCarne: Boolean;
    fVendRomaneio: Boolean;
    fVendControleRomaneio: Boolean;
    fVendOcorrencias: Boolean;
    fRelCondicionais: Boolean;
    fRelPersonalizados: Boolean;
    fUtilExportacao: Boolean;
    fUtilImportacao: Boolean;
    fUtilImpPed: Boolean;
    fUtilSinc: Boolean;
    fUtilReorganizacao: Boolean;
    fUtilPortaria: Boolean;
    fUtilImpDBF: Boolean;
    fUtilApagarOrc: Boolean;
    fUtilManutSistema: Boolean;
    fUtilAtualizaSistema: Boolean;
    fUtilLogAtualizacao: Boolean;
    fUtilCorrigeSituacao: Boolean;
    fUtilRegistro60: Boolean;
    fUtilSintegra: Boolean;
    fUtilBalanco: Boolean;
    fUtilUnifica: Boolean;
    fUtilLancaNotas: Boolean;
    fUtilExportaTexto: Boolean;
    fUtilPerifericos: Boolean;
    fUtilGerarArquivoConfig: Boolean;
    fUtilSuporte: Boolean;
    fUtilBoletos: Boolean;
    FCodigo: Integer;
    fRelMovAlteracoesdeCadastro: Boolean;
    fRelMovGeral: Boolean;
    fRelMovEntradaSaida: Boolean;
    fRelMovSaidaporVenda: Boolean;
    fRelMovEntradaporCompra: Boolean;
    fRelMovEntradaporCompraAnalitico: Boolean;
    fRelMovComprasNotapNota: Boolean;
    fRelMovOutrasSaidas: Boolean;
    fRelMovOutrasEntradas: Boolean;
    fRelMovEntradapTranf: Boolean;
    fRelMovSaidapTranf: Boolean;
    fRelMovEntradapGarantia: Boolean;
    fRelMovSaidapGarantia: Boolean;
    fRelMovQtdMov: Boolean;
    fRelMovItensDev: Boolean;
    fRelMovMovimentosCfop: Boolean;
    fRelMovNFE: Boolean;
    fRelMovNotaspConsumidor: Boolean;
    fRelMovIcmsRet: Boolean;
    fRelVenVendasMensais: Boolean;
    fRelVenValoresCaixa: Boolean;
    fRelVenComissoes: Boolean;
    fRelVenProdutos: Boolean;
    fRelVenRecebimentospagamentos: Boolean;
    fRelVenPedidos: Boolean;
    fRelVenVendasFPagto: Boolean;
    fRelVenCurvaAbc: Boolean;
    fRelVenVendaemPerc: Boolean;
    fRelVenEstatistica: Boolean;
    fRelVenHistorico: Boolean;
    fRelVenVenda: Boolean;
    fRelVenNotasFiscais: Boolean;
    fRelVenPedidos2: Boolean;
    fRelVenMovimentacaoFor: Boolean;
    fRelDevPorDataDev: Boolean;
    fCadCliente_Bloquear_Cliente: Boolean;
    FUtilMaisConfiguracoes: Boolean;

    // *************************************************************************** //

    //Cadastros
    procedure setCad(const Value: String);
    procedure setCadCli(const Value: String);
    procedure setCadForn(const Value: String);
    procedure setCadGrupo(const Value: String);
    procedure setCadMarca(const Value: String);
    procedure setCadSubGrupo(const Value: String);
    procedure setCadLinha(const Value: String);
    procedure setCadProd(const Value: String);
    procedure setCadFormaPagto(const Value: String);
    procedure setCadUsuario(const Value: String);
    procedure setCadMsg(const Value: String);
    procedure setCadTabela(const Value: String);
    procedure setCadTransp(const Value: String);
    procedure setCadCompleComiss(const Value: String);
    procedure setCadEvento(const Value: String);
    procedure setCadNivelSistema(const Value: String);
    procedure setCadTipoCli(const Value: String);

    //Movimentação
    procedure setMov(const Value: Boolean);
    procedure setMovAlteracaoEstoque(const Value: Boolean);
    procedure setMovReajustePreco(const Value: Boolean);
    procedure setMovMovimentacaoEstoque(const Value: Boolean);
    procedure setMovPedidoCompra(const Value: Boolean);

    //Vendas
    procedure setVendCx(const Value: Boolean);
    procedure setVendCxAltOrcamentos(const Value: Boolean);
    procedure setVendCxCancelarRecebPedido(const Value: Boolean);
    procedure setVendCxConsignacoesDevolucoes(const Value: Boolean);
    procedure setVendCxConsultaReimprimirPed(const Value: Boolean);
    procedure setVendCxFechamentoParcial(const Value: Boolean);
    procedure setVendCxImprimirDebitoCliente(const Value: Boolean);
    procedure setVendCxRecebPagamentos(const Value: Boolean);
    procedure setVendCxRecebPedidos(const Value: Boolean);
    procedure setVendCxSubTotalCaixa(const Value: Boolean);
    procedure setVendCxTrocaCheques(const Value: Boolean);
    procedure setVendCxTrocaProdutos(const Value: Boolean);
    procedure setVendCxVendaProdutos(const Value: Boolean);
    procedure setVendCxVendaProdutosAtac(const Value: Boolean);
    procedure setVendCxAlteracaoDataVencimen(const Value: Boolean);

    //Outros
    procedure setOutVendaRapida(const Value: Boolean);

    class function IsTrue(const Value: String) : Boolean;
    procedure setContCheq(const Value: Boolean);
    procedure setContCheqCheque(const Value: Boolean);
    procedure setContCheqContasPagar(const Value: Boolean);
    procedure setContCheqContasReceber(const Value: Boolean);
    procedure setRel(const Value: Boolean);
    procedure setRelCadastrais(const Value: Boolean);
    procedure setRelContCheq(const Value: Boolean);
    procedure setRelVendasCaixa(const Value: Boolean);
    procedure setRelMovimento(const Value: Boolean);
    procedure setOutDev(const Value: Boolean);
    procedure setOutNot(const Value: Boolean);
    procedure setOutros(const Value: Boolean);
    procedure setUtilAgenda(const Value: Boolean);
    procedure setUtilBackup(const Value: Boolean);
    procedure setUtilConfig(const Value: Boolean);
    procedure setUtilitario(const Value: Boolean);
    procedure setOutNrPedVend(const Value: Boolean);
    procedure setCadDeposito(const Value: Boolean);
    procedure SetCadMunicipio(const Value: Boolean);
    procedure SetPlanilhaCusto(const Value: Boolean);
    procedure SetFeriado(const Value: Boolean);
    procedure SetCargas(const Value: Boolean);
    procedure SetMarcas(const Value: Boolean);
    procedure SetSetoresProducao(const Value: Boolean);
    procedure SetParametros(const Value: Boolean);
    procedure SetCertificados(const Value: Boolean);
    procedure SetNiveisMaquina(const Value: Boolean);
    procedure SetStatusPedido(const Value: Boolean);
    procedure SetKits(const Value: Boolean);
    procedure SetMediaVenda(const Value: Boolean);
    procedure SetLancPromocao(const Value: Boolean);
    procedure SetBaixarPedido(const Value: Boolean);
    procedure SetPedidoAutomatico(const Value: Boolean);
    procedure SetMovCargas(const Value: Boolean);
    procedure SetMovEventosPedido(const Value: Boolean);
    procedure setVendBaixaparcPedido(const Value: Boolean);
    procedure setECF(const Value: Boolean);
    procedure setNFE(const Value: Boolean);
    procedure setVendNFE2(const Value: Boolean);
    procedure setVendNotaFiscal(const Value: Boolean);
    procedure setVendDevProd(const Value: Boolean);
    procedure setVendOrcRapido(const Value: Boolean);
    procedure setVendVendaRapida(const Value: Boolean);
    procedure setVendPesqNrDoc(const Value: Boolean);
    procedure setVendCodicionais(const Value: Boolean);
    procedure setVendBaixaEstoque(const Value: Boolean);
    procedure setVendEntregaPedidos(const Value: Boolean);
    procedure setVendEncerraCarga(const Value: Boolean);
    procedure setVendReimpressaoCarga(const Value: Boolean);
    procedure setVendPedidoLote(const Value: Boolean);
    procedure setVendDarBaixa(const Value: Boolean);
    procedure setVendCarne(const Value: Boolean);
    procedure setVendRomaneio(const Value: Boolean);
    procedure setVendControleRomaneio(const Value: Boolean);
    procedure setVendOcorrencias(const Value: Boolean);
    procedure setRelCondicionais(const Value: Boolean);
    procedure setRelPersonalizados(const Value: Boolean);
    procedure setUtilExportacao(const Value: Boolean);
    procedure setUtilImportacao(const Value: Boolean);
    procedure setUtilPed(const Value: Boolean);
    procedure setUtilSinc(const Value: Boolean);
    procedure setUtilReorganizacao(const Value: Boolean);
    procedure setUtilPortaria(const Value: Boolean);
    procedure setUtilImpDBF(const Value: Boolean);
    procedure setUtilApagarOrc(const Value: Boolean);
    procedure setUtilManutSistema(const Value: Boolean);
    procedure setUtilAtualizaSistema(const Value: Boolean);
    procedure setUtilLogAtualizacao(const Value: Boolean);
    procedure setUtilCorrigeSituacao(const Value: Boolean);
    procedure setUtilRegistro60(const Value: Boolean);
    procedure setUtilSintegra(const Value: Boolean);
    procedure setUtilBalanco(const Value: Boolean);
    procedure setUtilUnifica(const Value: Boolean);
    procedure setUtilLancaNotas(const Value: Boolean);
    procedure setUtilExportaTexto(const Value: Boolean);
    procedure setUtilPerifericos(const Value: Boolean);
    procedure setUtilGerarArquivoConfig(const Value: Boolean);
    procedure setUtilSuporte(const Value: Boolean);
    procedure setUtilBoletos(const Value: Boolean);
    procedure SetCodigo(const Value: Integer);
    procedure setRelMovAlteracoesdeCadastro(const Value: Boolean);
    procedure setRelMovGeral(const Value: Boolean);
    procedure setRelMovEntradaSaida(const Value: Boolean);
    procedure setRelMovSaidaporVenda(const Value: Boolean);
    procedure setRelMovEntradaporCompra(const Value: Boolean);
    procedure setRelMovEntradaporCompraAnalitico(const Value: Boolean);
    procedure setRelMovComprasNotapNota(const Value: Boolean);
    procedure setRelMovOutrasSaidas(const Value: Boolean);
    procedure setRelMovOutrasEntradas(const Value: Boolean);
    procedure setRelMovEntradapTranf(const Value: Boolean);
    procedure setRelMovSaidapTranf(const Value: Boolean);
    procedure setRelMovEntradapGarantia(const Value: Boolean);
    procedure setRelMovSaidapGarantia(const Value: Boolean);
    procedure setRelMovQtdMov(const Value: Boolean);
    procedure setRelMovItensDev(const Value: Boolean);
    procedure setRelMovMovimentosCfop(const Value: Boolean);
    procedure setRelMovNFE(const Value: Boolean);
    procedure setRelMovNotaspConsumidor(const Value: Boolean);
    procedure setRelMovIcmsRet(const Value: Boolean);
    procedure setRelVenVendasMensais(const Value: Boolean);
    procedure setRelVenValoresCaixa(const Value: Boolean);
    procedure setRelVenComissoes(const Value: Boolean);
    procedure setRelVenProdutos(const Value: Boolean);
    procedure setRelVenRecebimentospagamentos(const Value: Boolean);
    procedure setRelVenPedidos(const Value: Boolean);
    procedure setRelVenVendasFPagto(const Value: Boolean);
    procedure setRelVenCurvaAbc(const Value: Boolean);
    procedure setRelVenVendaemPerc(const Value: Boolean);
    procedure setRelVenEstatistica(const Value: Boolean);
    procedure setRelVenHistorico(const Value: Boolean);
    procedure setRelVenVenda(const Value: Boolean);
    procedure setRelVenNotasFiscais(const Value: Boolean);
    procedure setRelVenPedidos2(const Value: Boolean);
    procedure setRelVenMovimentacaoFor(const Value: Boolean);
    procedure setRelDevPorDataDev(const Value: Boolean);
    procedure SetCadCliente_Bloquear_Cliente(const Value: Boolean);
    procedure SetUtilMaisConfiguracoes(const Value: Boolean);

  public

    property Codigo : Integer read FCodigo write SetCodigo;

    //Cadastros
    property Cad:             String read getCad             write setCad;
    property CadCli:          String read getCadCli          write setCadCli;
    property CadForn:         String read getCadForn         write setCadForn;
    property CadGrupo:        String read getCadGrupo        write setCadGrupo;
    property CadSubGrupo:     String read getCadSubGrupo     write setCadSubGrupo;
    property CadMarca:        String read getCadMarca        write setCadMarca;
    property CadProd:         String read getCadProd         write setCadProd;
    property CadLinha:        String read getCadLinha        write setCadLinha;
    property CadFormaPagto:   String read getCadFormaPagto   write setCadFormaPagto;
    property CadUsuario:      String read getCadUsuario      write setCadUsuario;
    property CadMsg:          String read getCadMsg          write setCadMsg;
    property CadTabela:       String read getCadTabela       write setCadTabela;
    property CadTransp:       String read getCadTransp       write setCadTransp;
    property CadCompleComiss: String read getCadCompleComiss write setCadCompleComiss;
    property CadTipoCli:      String read getCadTipoCli      write setCadTipoCli;
    property CadEvento:       String read getCadEvento       write setCadEvento;
    property CadNivelSistema: String read getCadNivelSistema write setCadNivelSistema;
    property CadDeposito:    Boolean read getCadDeposito write setCadDeposito;
    property CadMunicipio:   Boolean  read fCadMunicipio write SetCadMunicipio;
    property CadPlanilhaCusto: Boolean  read fPlanilhaCusto write SetPlanilhaCusto;
    property CadFeriado: Boolean  read fFeriado write SetFeriado;
    property CadCargas: Boolean  read fCargas write SetCargas;
    property CadMarcas: Boolean  read fMarcas write SetMarcas;
    property CadPDA: Boolean  read fMarcas write SetMarcas;
    property CadSetoresProducao: Boolean  read fSetoresProducao write SetSetoresProducao;
    property CadParametros: Boolean  read fParametros write SetParametros;
    property CadCertificados: Boolean  read fCertificados write SetCertificados;
    property CadNiveisMaquina: Boolean  read fNiveisMaquina write SetNiveisMaquina;
    property CadStatusPedido: Boolean  read fStatusPedido write SetStatusPedido;
    property CadCliente_Bloquear_Cliente: Boolean  read fCadCliente_Bloquear_Cliente write SetCadCliente_Bloquear_Cliente;

    //Movimentações
    property Mov:                     Boolean read getMov                    write setMov;
    property MovAlteracaoEstoque:     Boolean read getMovAlteracaoEstoque    write setMovAlteracaoEstoque;
    property MovReajustePreco:        Boolean read getMovReajustePreco       write setMovReajustePreco;
    property MovMovimentacaoEstoque:  Boolean read getMovMovimentacaoEstoque write setMovMovimentacaoEstoque;
    property MovPedidoCompra:         Boolean read getMovPedidoCompra        write setMovPedidoCompra;
    property MovKits:                 Boolean read fKits write SetKits;
    property MovMediaVenda:           Boolean read fMediaVenda write SetMediaVenda;
    property MovLancPromocao:         Boolean read fLancPromocao write SetLancPromocao;
    property MovBaixarPedido:         Boolean read fBaixarPedido write SetBaixarPedido;
    property MovPedidoAutomatico:     Boolean read fPedidoAutomatico write SetPedidoAutomatico;
    property MovCargas:               Boolean read fMovCargas write SetMovCargas;
    property MovEventosPedido:        Boolean read fMovEventosPedido write SetMovEventosPedido;

    //Vendas
    property VendCx                       : Boolean read getVendCx write setVendCx;
    property VendCxRecebPedidos           : Boolean read getVendCxRecebPedidos write setVendCxRecebPedidos;
    property VendCxAltOrcamentos          : Boolean read getVendCxAltOrcamentos write setVendCxAltOrcamentos;
    property VendCxVendaProdutos          : Boolean read getVendCxVendaProdutos write setVendCxVendaProdutos;
    property VendCxVendaProdutosAtac      : Boolean read getVendCxVendaProdutosAtac write setVendCxVendaProdutosAtac;
    property VendCxConsultaReimprimirPed  : Boolean read getVendCxConsultaReimprimirPed write setVendCxConsultaReimprimirPed;
    property VendCxAlteracaoDataVencimen  : Boolean read getVendCxAlteracaoDataVencimen write setVendCxAlteracaoDataVencimen;
    property VendCxCancelarRecebPedido    : Boolean read getVendCxCancelarRecebPedido write setVendCxCancelarRecebPedido;
    property VendCxRecebPagamentos        : Boolean read getVendCxRecebPagamentos write setVendCxRecebPagamentos;
    property VendCxTrocaCheques           : Boolean read getVendCxTrocaCheques write setVendCxTrocaCheques;
    property VendCxConsignacoesDevolucoes : Boolean read getVendCxConsignacoesDevolucoes write setVendCxConsignacoesDevolucoes;
    property VendCxTrocaProdutos          : Boolean read getVendCxTrocaProdutos write setVendCxTrocaProdutos;
    property VendCxImprimirDebitoCliente  : Boolean read getVendCxImprimirDebitoCliente write setVendCxImprimirDebitoCliente;
    property VendCxSubTotalCaixa          : Boolean read getVendCxSubTotalCaixa write setVendCxSubTotalCaixa;
    property VendCxFechamentoParcial      : Boolean read getVendCxFechamentoParcial write setVendCxFechamentoParcial;
    property VendCxEntregaPedido          : Boolean read getVendCxEntregaPedido     write getVendCxEntregaPedido;
    property VendBaixaParcPedido          : Boolean read fVendBaixaparcPedido  write setVendBaixaparcPedido;
    property VendECF                      : Boolean read fECF  write setECF;
    property VendNFE                      : Boolean read fNFE  write setNFE;
    property VendNFE2                     : Boolean read fVendNFE2  write setVendNFE2;
    property VendNotaFiscal               : Boolean read fVendNotaFiscal  write setVendNotaFiscal;
    property VendDevProd                  : Boolean read fVendDevProd  write setVendDevProd;
    property VendOrcRapido                : Boolean read fVendOrcRapido write setVendOrcRapido;
    property VendVendaRapida              : Boolean read fVendVendaRapida write setVendVendaRapida;
    property VendPesqNrDoc                : Boolean read fVendPesqNrDoc write setVendPesqNrDoc ;
    property VendCodicionais              : Boolean read fVendCodicionais write setVendCodicionais ;
    property VendBaixaEstoque             : Boolean read fVendBaixaEstoque write setVendBaixaEstoque ;
    property VendEntregaPedidos           : Boolean read fVendEntregaPedidos write setVendEntregaPedidos ;
    property VendEncerraCarga             : Boolean read fVendEncerraCarga write setVendEncerraCarga ;
    property VendReimpressaoCarga         : Boolean read fVendReimpressaoCarga write setVendReimpressaoCarga ;
    property VendPedidoLote               : Boolean read fVendPedidoLote write setVendPedidoLote;
    property VendDarBaixa                 : Boolean read fVendDarBaixa write setVendDarBaixa;
    property VendCarne                    : Boolean read fVendCarne write setVendCarne;
    property VendRomaneio                 : Boolean read fVendRomaneio write setVendRomaneio;
    property VendControleRomaneio         : Boolean read fVendControleRomaneio write setVendControleRomaneio;
    property VendOcorrencias              : Boolean read fVendOcorrencias write setVendOcorrencias;

    //Contas - Cheque
    property ContCheq              : Boolean read getContCheq write setContCheq;
    property ContCheqContasPagar   : Boolean read getContCheqContasPagar write setContCheqContasPagar;
    property ContCheqContasReceber : Boolean read getContCheqContasReceber write setContCheqContasReceber;
    property ContCheqCheque        : Boolean read getContCheqCheque write setContCheqCheque;

    //Relatórios
    property Rel            : Boolean read getRel write setRel;
    property RelMovimento   : Boolean read getRelMovimento write setRelMovimento;
    property RelCadastrais  : Boolean read getRelCadastrais write setRelCadastrais;
    property RelVendasCaixa : Boolean read getRelVendasCaixa write setRelVendasCaixa;
    property RelContCheq    : Boolean read getRelContCheq write setRelContCheq;
    property RelCondicionais: Boolean read fRelCondicionais write setRelCondicionais;
    property RelPersonalizados: Boolean read fRelPersonalizados write setRelPersonalizados;
    //relatórios de sub-menu movimento
    property RelMovAlteracoesdeCadastro: Boolean read fRelMovAlteracoesdeCadastro write setRelMovAlteracoesdeCadastro;
    property RelMovGeral: Boolean read fRelMovGeral write setRelMovGeral;
    property RelMovEntradaSaida: Boolean read fRelMovEntradaSaida write setRelMovEntradaSaida;
    property RelMovSaidaporVenda: Boolean read fRelMovSaidaporVenda write setRelMovSaidaporVenda;
    property RelMovEntradaporCompra: Boolean read fRelMovEntradaporCompra write setRelMovEntradaporCompra;
    property RelMovEntradaporCompraAnalitico: Boolean read fRelMovEntradaporCompraAnalitico write setRelMovEntradaporCompraAnalitico;
    property RelMovComprasNotapNota: Boolean read fRelMovComprasNotapNota write setRelMovComprasNotapNota;
    property RelMovOutrasSaidas: Boolean read fRelMovOutrasSaidas write setRelMovOutrasSaidas;
    property RelMovOutrasEntradas: Boolean read fRelMovOutrasEntradas write setRelMovOutrasEntradas;
    property RelMovEntradapTranf: Boolean read fRelMovEntradapTranf write setRelMovEntradapTranf;
    property RelMovSaidapTranf: Boolean read fRelMovSaidapTranf write setRelMovSaidapTranf;
    property RelMovEntradapGarantia: Boolean read fRelMovEntradapGarantia write setRelMovEntradapGarantia;
    property RelMovSaidapGarantia: Boolean read fRelMovSaidapGarantia write setRelMovSaidapGarantia;
    property RelMovQtdMov: Boolean read fRelMovQtdMov write setRelMovQtdMov;
    property RelMovItensDev: Boolean read fRelMovItensDev write setRelMovItensDev;
    property RelMovMovimentosCfop: Boolean read fRelMovMovimentosCfop write setRelMovMovimentosCfop;
    property RelMovNFE: Boolean read fRelMovNFE write setRelMovNFE;
    property RelMovNotaspConsumidor: Boolean read fRelMovNotaspConsumidor write setRelMovNotaspConsumidor;
    property RelMovIcmsRet: Boolean read fRelMovIcmsRet write setRelMovIcmsRet;
    property RelDevPorDataDev: Boolean read fRelDevPorDataDev write setRelDevPorDataDev;
    //relatórios de sub-menu vendas / caixa
    property RelVenVendasMensais: Boolean read fRelVenVendasMensais write setRelVenVendasMensais;
    property RelVenValoresCaixa: Boolean read fRelVenValoresCaixa write setRelVenValoresCaixa;
    property RelVenComissoes: Boolean read fRelVenComissoes write setRelVenComissoes;
    property RelVenProdutos: Boolean read fRelVenProdutos write setRelVenProdutos;
    property RelVenRecebimentospagamentos: Boolean read fRelVenRecebimentospagamentos write setRelVenRecebimentospagamentos;
    property RelVenPedidos: Boolean read fRelVenPedidos write setRelVenPedidos;
    property RelVenVendasFPagto: Boolean read fRelVenVendasFPagto write setRelVenVendasFPagto;
    property RelVenCurvaAbc: Boolean read fRelVenCurvaAbc write setRelVenCurvaAbc;
    property RelVenVendaemPerc: Boolean read fRelVenVendaemPerc write setRelVenVendaemPerc;
    property RelVenEstatistica: Boolean read fRelVenEstatistica write setRelVenEstatistica;
    property RelVenHistorico: Boolean read fRelVenHistorico write setRelVenHistorico;
    property RelVenVenda: Boolean read fRelVenVenda write setRelVenVenda;
    property RelVenNotasFiscais: Boolean read fRelVenNotasFiscais write setRelVenNotasFiscais;
    property RelVenPedidos2: Boolean read fRelVenPedidos2 write setRelVenPedidos2;
    property RelVenMovimentacaoFor: Boolean read fRelVenMovimentacaoFor write setRelVenMovimentacaoFor;


    //Utilitários
    property Utilitario : Boolean read getUtilitario write setUtilitario;
    property UtilAgenda : Boolean read getUtilAgenda write setUtilAgenda;
    property UtilBackup : Boolean read getUtilBackup write setUtilBackup;
    property UtilConfig : Boolean read getUtilConfig write setUtilConfig;
    property UtilExportacao : Boolean read fUtilExportacao write setUtilExportacao;
    property UtilImportacao : Boolean read fUtilImportacao write setUtilImportacao;
    property UtilImpPed     : Boolean read fUtilImpPed write setUtilPed;
    property UtilSinc       : Boolean read fUtilSinc write setUtilSinc;
    property UtilReorganizacao  : Boolean read fUtilReorganizacao write setUtilReorganizacao;
    property UtilPortaria   : Boolean read fUtilPortaria write setUtilPortaria;
    property UtilImpDBF     : Boolean read fUtilImpDBF write setUtilImpDBF;
    property UtilApagarOrc  : Boolean read fUtilApagarOrc write setUtilApagarOrc;
    property UtilManutSistema: Boolean read fUtilManutSistema write setUtilManutSistema;
    property UtilAtualizaSistema: Boolean read fUtilAtualizaSistema write setUtilAtualizaSistema;
    property UtilLogAtualizacao : Boolean read fUtilLogAtualizacao write setUtilLogAtualizacao;
    property UtilCorrigeSituacao: Boolean read fUtilCorrigeSituacao write setUtilCorrigeSituacao;
    property UtilRegistro60 : Boolean read fUtilRegistro60 write setUtilRegistro60;
    property UtilSintegra   : Boolean read fUtilSintegra write setUtilSintegra;
    property UtilBalanco    : Boolean read fUtilBalanco write setUtilBalanco;
    property UtilUnifica    : Boolean read fUtilUnifica write setUtilUnifica;
    property UtilLancaNotas : Boolean read fUtilLancaNotas write setUtilLancaNotas;
    property UtilExportaTexto: Boolean read fUtilExportaTexto write setUtilExportaTexto;
    property UtilPerifericos: Boolean read fUtilPerifericos write setUtilPerifericos;
    property UtilGerarArquivoConfig : Boolean read fUtilGerarArquivoConfig write setUtilGerarArquivoConfig;
    property UtilSuporte : Boolean read fUtilSuporte write setUtilSuporte;
    property UtilBoletos : Boolean read fUtilBoletos write setUtilBoletos;
    property UtilMaisConfiguracoes : Boolean read FUtilMaisConfiguracoes write SetUtilMaisConfiguracoes;

    //Outros
    property OutOrcamRapido : Boolean read getOutros write setOutros;
    property OutDevProdutos : Boolean read getOutDev write setOutDev;
    property OutNotasFiscai : Boolean read getOutNot write setOutNot;
    property OutVendaRapida : Boolean read getOutVendaRapida write setOutVendaRapida;
    property OutNrPedVend   : Boolean read getNrPedVen write setOutNrPedVend;

    class function Get(codigo : Integer) :TClassNivel;
    class function getZ(codigo: Integer) :TClassNivel;
  end;

implementation

uses Modulo, SysUtils, DB;

// TParametro

class function TClassNivel.Get(codigo : Integer) :TClassNivel;
var p  : TClassNivel;
    qry: TMDOQuery;
begin
  qry := dm.GetQueryInstance('select * from niveis where codigo = :codigo');
  qry.ParamByName('codigo').AsInteger := codigo;
  qry.Open;

  p                        := TClassNivel.Create;
  //Cadastros
  p.codigo                 :=  qry.FieldByName('codigo').AsInteger;
  p.getCad                 :=  copy(qry.FieldByName('acessos').AsString,1,1);
  p.getCadCli              :=  copy(qry.FieldByName('acessos').AsString,2,1);
  p.getCadForn             :=  copy(qry.FieldByName('acessos').AsString,3,1);
  p.getCadGrupo            :=  copy(qry.FieldByName('acessos').AsString,4,1);
  p.getCadSubGrupo         :=  copy(qry.FieldByName('acessos').AsString,5,1);
  p.getCadMarca            :=  copy(qry.FieldByName('acessos').AsString,6,1);
  p.getCadProd             :=  copy(qry.FieldByName('acessos').AsString,7,1);
  p.getCadLinha            :=  copy(qry.FieldByName('acessos').AsString,8,1);
  p.getCadFormaPagto       :=  copy(qry.FieldByName('acessos').AsString,9,1);
  p.getCadUsuario          :=  copy(qry.FieldByName('acessos').AsString,10,1);
  p.getCadMsg              :=  copy(qry.FieldByName('acessos').AsString,11,1);
  p.getCadTabela           :=  copy(qry.FieldByName('acessos').AsString,12,1);
  p.getCadTransp           :=  copy(qry.FieldByName('acessos').AsString,13,1);
  p.getCadCompleComiss     :=  copy(qry.FieldByName('acessos').AsString,14,1);
  p.getCadTipoCli          :=  copy(qry.FieldByName('acessos').AsString,15,1);
  p.getCadEvento           :=  copy(qry.FieldByName('acessos').AsString,16,1);
  p.getCadNivelSistema     :=  copy(qry.FieldByName('acessos').AsString,17,1);
  p.getCadDeposito         :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,58,1));
  p.CadMunicipio           :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,59,1));
  p.CadPlanilhaCusto       :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,60,1));
  p.CadFeriado             :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,61,1));
  p.CadCargas              :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,62,1));
  p.CadPDA                 :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,63,1));
  p.CadSetoresProducao     :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,65,1));
  p.CadParametros          :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,57,1));
  p.CadCertificados        :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,66,1));
  p.CadNiveisMaquina       :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,67,1));
  p.CadStatusPedido        :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,64,1));

  // Movimentações
  p.getMov := self.IsTrue(copy(qry.FieldByName('acessos').AsString,18,1));
  p.getMovAlteracaoEstoque := self.IsTrue(copy(qry.FieldByName('acessos').AsString,19,1));
  p.getMovReajustePreco := self.IsTrue(copy(qry.FieldByName('acessos').AsString,20,1));
  p.getMovMovimentacaoEstoque := self.IsTrue(copy(qry.FieldByName('acessos').AsString,21,1));
  p.getMovPedidoCompra := self.IsTrue(copy(qry.FieldByName('acessos').AsString,22,1));
  p.MovKits            := self.IsTrue(copy(qry.FieldByName('acessos').AsString,68,1));
  p.MovMediaVenda      := self.IsTrue(copy(qry.FieldByName('acessos').AsString,69,1));
  p.MovLancPromocao    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,70,1));
  p.MovBaixarPedido    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,71,1));
  p.MovPedidoAutomatico:= self.IsTrue(copy(qry.FieldByName('acessos').AsString,72,1));
  p.MovCargas          := self.IsTrue(copy(qry.FieldByName('acessos').AsString,73,1));
  p.MovEventosPedido   := self.IsTrue(copy(qry.FieldByName('acessos').AsString,74,1));

  //Vendas
  p.getVendCx := self.IsTrue(copy(qry.FieldByName('acessos').AsString,23,1));
  p.getVendCxRecebPedidos := self.IsTrue(copy(qry.FieldByName('acessos').AsString,24,1));
  p.getVendCxAltOrcamentos := self.IsTrue(copy(qry.FieldByName('acessos').AsString,25,1));
  p.getVendCxVendaProdutos := self.IsTrue(copy(qry.FieldByName('acessos').AsString,26,1));
  p.getVendCxVendaProdutosAtac := self.IsTrue(copy(qry.FieldByName('acessos').AsString,27,1));
  p.getVendCxConsultaReimprimirPed := self.IsTrue(copy(qry.FieldByName('acessos').AsString,28,1));
  p.getVendCxAlteracaoDataVencimen := self.IsTrue(copy(qry.FieldByName('acessos').AsString,29,1));
  p.getVendCxCancelarRecebPedido := self.IsTrue(copy(qry.FieldByName('acessos').AsString,30,1));
  p.getVendCxRecebPagamentos := self.IsTrue(copy(qry.FieldByName('acessos').AsString,31,1));
  p.getVendCxTrocaCheques := self.IsTrue(copy(qry.FieldByName('acessos').AsString,32,1));
  p.getVendCxConsignacoesDevolucoes := self.IsTrue(copy(qry.FieldByName('acessos').AsString,33,1));
  p.getVendCxTrocaProdutos := self.IsTrue(copy(qry.FieldByName('acessos').AsString,34,1));
  p.getVendCxImprimirDebitoCliente := self.IsTrue(copy(qry.FieldByName('acessos').AsString,35,1));
  p.getVendCxSubTotalCaixa := self.IsTrue(copy(qry.FieldByName('acessos').AsString,36,1));
  p.getVendCxFechamentoParcial := self.IsTrue(copy(qry.FieldByName('acessos').AsString,37,1));
  p.VendBaixaParcPedido        := self.IsTrue(copy(qry.FieldByName('acessos').AsString,118,1));
  p.VendECF                    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,75,1));
  p.VendNFE                    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,76,1));
  p.VendNFE2                   := self.IsTrue(copy(qry.FieldByName('acessos').AsString,77,1));
  p.VendNotaFiscal             := self.IsTrue(copy(qry.FieldByName('acessos').AsString,78,1));
  p.VendDevProd                := self.IsTrue(copy(qry.FieldByName('acessos').AsString,79,1));
  p.VendOrcRapido              := self.IsTrue(copy(qry.FieldByName('acessos').AsString,80,1));
  p.VendVendaRapida            := self.IsTrue(copy(qry.FieldByName('acessos').AsString,81,1));
  p.VendPesqNrDoc              := self.IsTrue(copy(qry.FieldByName('acessos').AsString,82,1));
  p.VendCodicionais            := self.IsTrue(copy(qry.FieldByName('acessos').AsString,83,1));
  p.VendBaixaEstoque           := self.IsTrue(copy(qry.FieldByName('acessos').AsString,84,1));
  p.VendEntregaPedidos         := self.IsTrue(copy(qry.FieldByName('acessos').AsString,85,1));
  p.VendEncerraCarga           := self.IsTrue(copy(qry.FieldByName('acessos').AsString,86,1));
  p.VendReimpressaoCarga       := self.IsTrue(copy(qry.FieldByName('acessos').AsString,87,1));
  p.VendPedidoLote             := self.IsTrue(copy(qry.FieldByName('acessos').AsString,88,1));
  p.VendDarBaixa               := self.IsTrue(copy(qry.FieldByName('acessos').AsString,89,1));
  p.VendCarne                  := self.IsTrue(copy(qry.FieldByName('acessos').AsString,90,1));
  p.VendRomaneio               := self.IsTrue(copy(qry.FieldByName('acessos').AsString,91,1));
  p.VendControleRomaneio       := self.IsTrue(copy(qry.FieldByName('acessos').AsString,92,1));
  p.VendOcorrencias            := self.IsTrue(copy(qry.FieldByName('acessos').AsString,93,1));

  //Contas - Cheque
  p.getContCheq               := self.IsTrue(copy(qry.FieldByName('acessos').AsString,38,1));
  p.getContCheqContasPagar    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,39,1));
  p.getContCheqContasReceber  := self.IsTrue(copy(qry.FieldByName('acessos').AsString,40,1));
  p.getContCheqCheque         := self.IsTrue(copy(qry.FieldByName('acessos').AsString,41,1));

  //Relatórios
  p.getRel            := self.IsTrue(copy(qry.FieldByName('acessos').AsString,42,1));

  p.getRelCadastrais  := self.IsTrue(copy(qry.FieldByName('acessos').AsString,43,1));
  p.getRelMovimento   := self.IsTrue(copy(qry.FieldByName('acessos').AsString,44,1));
  p.getRelVendasCaixa := self.IsTrue(copy(qry.FieldByName('acessos').AsString,45,1));
  p.getRelContCheq    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,46,1));
  p.RelPersonalizados := self.IsTrue(copy(qry.FieldByName('acessos').AsString,95,1));
  p.RelCondicionais   := self.IsTrue(copy(qry.FieldByName('acessos').AsString,94,1));
  //sub-menus movimentacao
  p.RelMovAlteracoesdeCadastro  := self.IsTrue(copy(qry.FieldByName('acessos').AsString,119,1));
  p.RelMovGeral                 := self.IsTrue(copy(qry.FieldByName('acessos').AsString,120,1));
  p.RelMovEntradaSaida          := self.IsTrue(copy(qry.FieldByName('acessos').AsString,121,1));
  p.RelMovSaidaporVenda         := self.IsTrue(copy(qry.FieldByName('acessos').AsString,122,1));
  p.RelMovEntradaporCompra      := self.IsTrue(copy(qry.FieldByName('acessos').AsString,123,1));
  p.RelMovEntradaporCompraAnalitico:= self.IsTrue(copy(qry.FieldByName('acessos').AsString,124,1));
  p.RelMovComprasNotapNota      := self.IsTrue(copy(qry.FieldByName('acessos').AsString,125,1));
  p.RelMovOutrasSaidas          := self.IsTrue(copy(qry.FieldByName('acessos').AsString,126,1));
  p.RelMovOutrasEntradas        := self.IsTrue(copy(qry.FieldByName('acessos').AsString,127,1));
  p.RelMovEntradapTranf         := self.IsTrue(copy(qry.FieldByName('acessos').AsString,128,1));
  p.RelMovEntradapGarantia      := self.IsTrue(copy(qry.FieldByName('acessos').AsString,129,1));
  p.RelMovSaidapGarantia        := self.IsTrue(copy(qry.FieldByName('acessos').AsString,130,1));
  p.RelMovQtdMov                := self.IsTrue(copy(qry.FieldByName('acessos').AsString,131,1));
  p.RelMovItensDev              := self.IsTrue(copy(qry.FieldByName('acessos').AsString,132,1));
  p.RelMovMovimentosCfop        := self.IsTrue(copy(qry.FieldByName('acessos').AsString,133,1));
  p.RelMovNFE                   := self.IsTrue(copy(qry.FieldByName('acessos').AsString,134,1));
  p.RelMovNotaspConsumidor      := self.IsTrue(copy(qry.FieldByName('acessos').AsString,135,1));
  p.RelMovIcmsRet               := self.IsTrue(copy(qry.FieldByName('acessos').AsString,137,1));
  p.RelDevPorDataDev            := self.IsTrue(copy(qry.fieldByName('acessos').AsString,155,1));
  //sub-menus Vendas
  p.RelVenVendasMensais         := self.IsTrue(copy(qry.FieldByName('acessos').AsString,138,1));
  p.RelVenValoresCaixa          := self.IsTrue(copy(qry.FieldByName('acessos').AsString,139,1));
  p.RelVenComissoes             := self.IsTrue(copy(qry.FieldByName('acessos').AsString,140,1));
  p.RelVenProdutos              := self.IsTrue(copy(qry.FieldByName('acessos').AsString,141,1));
  p.RelVenRecebimentospagamentos:= self.IsTrue(copy(qry.FieldByName('acessos').AsString,142,1));
  p.RelVenPedidos               := self.IsTrue(copy(qry.FieldByName('acessos').AsString,143,1));
  p.RelVenVendasFPagto          := self.IsTrue(copy(qry.FieldByName('acessos').AsString,144,1));
  p.RelVenCurvaAbc              := self.IsTrue(copy(qry.FieldByName('acessos').AsString,145,1));
  p.RelVenVendaemPerc           := self.IsTrue(copy(qry.FieldByName('acessos').AsString,146,1));
  p.RelVenEstatistica           := self.IsTrue(copy(qry.FieldByName('acessos').AsString,147,1));
  p.RelVenHistorico             := self.IsTrue(copy(qry.FieldByName('acessos').AsString,148,1));
  p.RelVenVenda                 := self.IsTrue(copy(qry.FieldByName('acessos').AsString,149,1));
  p.RelVenNotasFiscais          := self.IsTrue(copy(qry.FieldByName('acessos').AsString,150,1));
  p.RelVenPedidos2              := self.IsTrue(copy(qry.FieldByName('acessos').AsString,151,1));
  p.RelVenMovimentacaoFor       := self.IsTrue(copy(qry.FieldByName('acessos').AsString,152,1));

  //Utilitários
  p.getUtilitario     := self.IsTrue(copy(qry.FieldByName('acessos').AsString,47,1));
  p.getUtilAgenda     := self.IsTrue(copy(qry.FieldByName('acessos').AsString,48,1));
  p.getUtilBackup     := self.IsTrue(copy(qry.FieldByName('acessos').AsString,49,1));
  p.getUtilConfig     := self.IsTrue(copy(qry.FieldByName('acessos').AsString,50,1));
  p.UtilExportacao    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,96,1));
  p.UtilImportacao    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,97,1));
  p.UtilImpPed        := self.IsTrue(copy(qry.FieldByName('acessos').AsString,98,1));
  p.UtilSinc          := self.IsTrue(copy(qry.FieldByName('acessos').AsString,99,1));
  p.UtilReorganizacao := self.IsTrue(copy(qry.FieldByName('acessos').AsString,100,1));
  p.UtilPortaria      := self.IsTrue(copy(qry.FieldByName('acessos').AsString,101,1));
  p.UtilImpDBF        := self.IsTrue(copy(qry.FieldByName('acessos').AsString,102,1));
  p.UtilApagarOrc     := self.IsTrue(copy(qry.FieldByName('acessos').AsString,103,1));
  p.UtilManutSistema  := self.IsTrue(copy(qry.FieldByName('acessos').AsString,104,1));
  p.UtilAtualizaSistema:= self.IsTrue(copy(qry.FieldByName('acessos').AsString,105,1));
  p.UtilLogAtualizacao:= self.IsTrue(copy(qry.FieldByName('acessos').AsString,106,1));
  p.UtilCorrigeSituacao:= self.IsTrue(copy(qry.FieldByName('acessos').AsString,107,1));
  p.UtilRegistro60    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,108,1));
  p.UtilSintegra      := self.IsTrue(copy(qry.FieldByName('acessos').AsString,109,1));
  p.UtilBalanco       := self.IsTrue(copy(qry.FieldByName('acessos').AsString,110,1));
  p.UtilUnifica       := self.IsTrue(copy(qry.FieldByName('acessos').AsString,111,1));
  p.UtilLancaNotas    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,112,1));
  p.UtilExportaTexto  := self.IsTrue(copy(qry.FieldByName('acessos').AsString,113,1));
  p.UtilPerifericos   := self.IsTrue(copy(qry.FieldByName('acessos').AsString,114,1));
  p.UtilGerarArquivoConfig := self.IsTrue(copy(qry.FieldByName('acessos').AsString,115,1));
  p.UtilSuporte       := self.IsTrue(copy(qry.FieldByName('acessos').AsString,116,1));
  p.UtilBoletos       := self.IsTrue(copy(qry.FieldByName('acessos').AsString,117,1));
  p.UtilMaisConfiguracoes := self.IsTrue(copy(qry.FieldByName('acessos').AsString,157,1));

  //Outros
  p.getOutDev :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,51,1));
  p.getOutros :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,52,1));
  p.getOutNot :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,53,1));
  p.getOutVendaRapida :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,54,1));
  p.getNrPedVen       := Self.IsTrue(copy(qry.FieldByName('acessos').AsString,55,1));

  //Novos
  p.getVendCxEntregaPedido := Self.IsTrue(copy(qry.FieldByName('acessos').AsString,56,1));



  qry.Close;
  FreeAndNil(qry);

  Result := p;
end;


class function TClassNivel.getZ(codigo: Integer): TClassNivel;
var p  : TClassNivel;
    qry: TMDOQuery;
begin
  qry := dm.GetQueryInstance('select * from niveis where codigo = :codigo');
  qry.ParamByName('codigo').AsInteger := codigo;
  qry.Open;

  p                        := TClassNivel.Create;
  //Cadastros
  p.codigo                 :=  qry.FieldByName('codigo').AsInteger;
  p.getCad                 :=  copy(qry.FieldByName('acessos').AsString,1,1);
  p.getCadCli              :=  copy(qry.FieldByName('acessos').AsString,2,1);
  p.getCadForn             :=  copy(qry.FieldByName('acessos').AsString,3,1);
  p.getCadGrupo            :=  copy(qry.FieldByName('acessos').AsString,4,1);
  p.getCadSubGrupo         :=  copy(qry.FieldByName('acessos').AsString,5,1);
  p.getCadMarca            :=  copy(qry.FieldByName('acessos').AsString,6,1);
  p.getCadProd             :=  copy(qry.FieldByName('acessos').AsString,7,1);
  p.getCadLinha            :=  copy(qry.FieldByName('acessos').AsString,8,1);
  p.getCadFormaPagto       :=  copy(qry.FieldByName('acessos').AsString,9,1);
  p.getCadUsuario          :=  copy(qry.FieldByName('acessos').AsString,10,1);
  p.getCadMsg              :=  copy(qry.FieldByName('acessos').AsString,11,1);
  p.getCadTabela           :=  copy(qry.FieldByName('acessos').AsString,12,1);
  p.getCadTransp           :=  copy(qry.FieldByName('acessos').AsString,13,1);
  p.getCadCompleComiss     :=  copy(qry.FieldByName('acessos').AsString,14,1);
  p.getCadTipoCli          :=  copy(qry.FieldByName('acessos').AsString,15,1);
  p.getCadEvento           :=  copy(qry.FieldByName('acessos').AsString,16,1);
  p.getCadNivelSistema     :=  copy(qry.FieldByName('acessos').AsString,17,1);
  p.getCadDeposito         :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,58,1));
  p.CadMunicipio           :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,59,1));
  p.CadPlanilhaCusto       :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,60,1));
  p.CadFeriado             :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,61,1));
  p.CadCargas              :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,62,1));
  p.CadPDA                 :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,63,1));
  p.CadSetoresProducao     :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,65,1));
  p.CadParametros          :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,57,1));
  p.CadCertificados        :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,66,1));
  p.CadNiveisMaquina       :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,67,1));
  p.CadStatusPedido        :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,64,1));
  p.CadCliente_Bloquear_Cliente :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,156,1));
  
  // Movimentações
  p.getMov := self.IsTrue(copy(qry.FieldByName('acessos').AsString,18,1));
  p.getMovAlteracaoEstoque := self.IsTrue(copy(qry.FieldByName('acessos').AsString,19,1));
  p.getMovReajustePreco := self.IsTrue(copy(qry.FieldByName('acessos').AsString,20,1));
  p.getMovMovimentacaoEstoque := self.IsTrue(copy(qry.FieldByName('acessos').AsString,21,1));
  p.getMovPedidoCompra := self.IsTrue(copy(qry.FieldByName('acessos').AsString,22,1));
  p.MovKits            := self.IsTrue(copy(qry.FieldByName('acessos').AsString,68,1));
  p.MovMediaVenda      := self.IsTrue(copy(qry.FieldByName('acessos').AsString,69,1));
  p.MovLancPromocao    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,70,1));
  p.MovBaixarPedido    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,71,1));
  p.MovPedidoAutomatico:= self.IsTrue(copy(qry.FieldByName('acessos').AsString,72,1));
  p.MovCargas          := self.IsTrue(copy(qry.FieldByName('acessos').AsString,73,1));
  p.MovEventosPedido   := self.IsTrue(copy(qry.FieldByName('acessos').AsString,74,1));

  //Vendas
  p.getVendCx := self.IsTrue(copy(qry.FieldByName('acessos').AsString,23,1));
  p.getVendCxRecebPedidos := self.IsTrue(copy(qry.FieldByName('acessos').AsString,24,1));
  p.getVendCxAltOrcamentos := self.IsTrue(copy(qry.FieldByName('acessos').AsString,25,1));
  p.getVendCxVendaProdutos := self.IsTrue(copy(qry.FieldByName('acessos').AsString,26,1));
  p.getVendCxVendaProdutosAtac := self.IsTrue(copy(qry.FieldByName('acessos').AsString,27,1));
  p.getVendCxConsultaReimprimirPed := self.IsTrue(copy(qry.FieldByName('acessos').AsString,28,1));
  p.getVendCxAlteracaoDataVencimen := self.IsTrue(copy(qry.FieldByName('acessos').AsString,29,1));
  p.getVendCxCancelarRecebPedido := self.IsTrue(copy(qry.FieldByName('acessos').AsString,30,1));
  p.getVendCxRecebPagamentos := self.IsTrue(copy(qry.FieldByName('acessos').AsString,31,1));
  p.getVendCxTrocaCheques := self.IsTrue(copy(qry.FieldByName('acessos').AsString,32,1));
  p.getVendCxConsignacoesDevolucoes := self.IsTrue(copy(qry.FieldByName('acessos').AsString,33,1));
  p.getVendCxTrocaProdutos := self.IsTrue(copy(qry.FieldByName('acessos').AsString,34,1));
  p.getVendCxImprimirDebitoCliente := self.IsTrue(copy(qry.FieldByName('acessos').AsString,35,1));
  p.getVendCxSubTotalCaixa := self.IsTrue(copy(qry.FieldByName('acessos').AsString,36,1));
  p.getVendCxFechamentoParcial := self.IsTrue(copy(qry.FieldByName('acessos').AsString,37,1));
  p.VendBaixaParcPedido        := self.IsTrue(copy(qry.FieldByName('acessos').AsString,118,1));
  p.VendECF                    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,75,1));
  p.VendNFE                    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,76,1));
  p.VendNFE2                   := self.IsTrue(copy(qry.FieldByName('acessos').AsString,77,1));
  p.VendNotaFiscal             := self.IsTrue(copy(qry.FieldByName('acessos').AsString,78,1));
  p.VendDevProd                := self.IsTrue(copy(qry.FieldByName('acessos').AsString,79,1));
  p.VendOrcRapido              := self.IsTrue(copy(qry.FieldByName('acessos').AsString,80,1));
  p.VendVendaRapida            := self.IsTrue(copy(qry.FieldByName('acessos').AsString,81,1));
  p.VendPesqNrDoc              := self.IsTrue(copy(qry.FieldByName('acessos').AsString,82,1));
  p.VendCodicionais            := self.IsTrue(copy(qry.FieldByName('acessos').AsString,83,1));
  p.VendBaixaEstoque           := self.IsTrue(copy(qry.FieldByName('acessos').AsString,84,1));
  p.VendEntregaPedidos         := self.IsTrue(copy(qry.FieldByName('acessos').AsString,85,1));
  p.VendEncerraCarga           := self.IsTrue(copy(qry.FieldByName('acessos').AsString,86,1));
  p.VendReimpressaoCarga       := self.IsTrue(copy(qry.FieldByName('acessos').AsString,87,1));
  p.VendPedidoLote             := self.IsTrue(copy(qry.FieldByName('acessos').AsString,88,1));
  p.VendDarBaixa               := self.IsTrue(copy(qry.FieldByName('acessos').AsString,89,1));
  p.VendCarne                  := self.IsTrue(copy(qry.FieldByName('acessos').AsString,90,1));
  p.VendRomaneio               := self.IsTrue(copy(qry.FieldByName('acessos').AsString,91,1));
  p.VendControleRomaneio       := self.IsTrue(copy(qry.FieldByName('acessos').AsString,92,1));
  p.VendOcorrencias            := self.IsTrue(copy(qry.FieldByName('acessos').AsString,93,1));

  //Contas - Cheque
  p.getContCheq               := self.IsTrue(copy(qry.FieldByName('acessos').AsString,38,1));
  p.getContCheqContasPagar    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,39,1));
  p.getContCheqContasReceber  := self.IsTrue(copy(qry.FieldByName('acessos').AsString,40,1));
  p.getContCheqCheque         := self.IsTrue(copy(qry.FieldByName('acessos').AsString,41,1));

  //Relatórios
  p.getRel            := self.IsTrue(copy(qry.FieldByName('acessos').AsString,42,1));

  p.getRelCadastrais  := self.IsTrue(copy(qry.FieldByName('acessos').AsString,43,1));
  p.getRelMovimento   := self.IsTrue(copy(qry.FieldByName('acessos').AsString,44,1));
  p.getRelVendasCaixa := self.IsTrue(copy(qry.FieldByName('acessos').AsString,45,1));
  p.getRelContCheq    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,46,1));
  p.RelPersonalizados := self.IsTrue(copy(qry.FieldByName('acessos').AsString,95,1));
  p.RelCondicionais   := self.IsTrue(copy(qry.FieldByName('acessos').AsString,94,1));
  //sub-menus movimentacao
  p.RelMovAlteracoesdeCadastro  := self.IsTrue(copy(qry.FieldByName('acessos').AsString,119,1));
  p.RelMovGeral                 := self.IsTrue(copy(qry.FieldByName('acessos').AsString,120,1));
  p.RelMovEntradaSaida          := self.IsTrue(copy(qry.FieldByName('acessos').AsString,121,1));
  p.RelMovSaidaporVenda         := self.IsTrue(copy(qry.FieldByName('acessos').AsString,122,1));
  p.RelMovEntradaporCompra      := self.IsTrue(copy(qry.FieldByName('acessos').AsString,123,1));
  p.RelMovEntradaporCompraAnalitico:= self.IsTrue(copy(qry.FieldByName('acessos').AsString,124,1));
  p.RelMovComprasNotapNota      := self.IsTrue(copy(qry.FieldByName('acessos').AsString,125,1));
  p.RelMovOutrasSaidas          := self.IsTrue(copy(qry.FieldByName('acessos').AsString,126,1));
  p.RelMovOutrasEntradas        := self.IsTrue(copy(qry.FieldByName('acessos').AsString,127,1));
  p.RelMovEntradapTranf         := self.IsTrue(copy(qry.FieldByName('acessos').AsString,128,1));
  p.RelMovEntradapGarantia      := self.IsTrue(copy(qry.FieldByName('acessos').AsString,129,1));
  p.RelMovSaidapGarantia        := self.IsTrue(copy(qry.FieldByName('acessos').AsString,130,1));
  p.RelMovQtdMov                := self.IsTrue(copy(qry.FieldByName('acessos').AsString,131,1));
  p.RelMovItensDev              := self.IsTrue(copy(qry.FieldByName('acessos').AsString,132,1));
  p.RelMovMovimentosCfop        := self.IsTrue(copy(qry.FieldByName('acessos').AsString,133,1));
  p.RelMovNFE                   := self.IsTrue(copy(qry.FieldByName('acessos').AsString,134,1));
  p.RelMovNotaspConsumidor      := self.IsTrue(copy(qry.FieldByName('acessos').AsString,135,1));
  p.RelMovIcmsRet               := self.IsTrue(copy(qry.FieldByName('acessos').AsString,137,1));
  p.RelDevPorDataDev            := self.IsTrue(copy(qry.fieldByName('acessos').AsString,155,1));
  //sub-menus Vendas
  p.RelVenVendasMensais         := self.IsTrue(copy(qry.FieldByName('acessos').AsString,138,1));
  p.RelVenValoresCaixa          := self.IsTrue(copy(qry.FieldByName('acessos').AsString,139,1));
  p.RelVenComissoes             := self.IsTrue(copy(qry.FieldByName('acessos').AsString,140,1));
  p.RelVenProdutos              := self.IsTrue(copy(qry.FieldByName('acessos').AsString,141,1));
  p.RelVenRecebimentospagamentos:= self.IsTrue(copy(qry.FieldByName('acessos').AsString,142,1));
  p.RelVenPedidos               := self.IsTrue(copy(qry.FieldByName('acessos').AsString,143,1));
  p.RelVenVendasFPagto          := self.IsTrue(copy(qry.FieldByName('acessos').AsString,144,1));
  p.RelVenCurvaAbc              := self.IsTrue(copy(qry.FieldByName('acessos').AsString,145,1));
  p.RelVenVendaemPerc           := self.IsTrue(copy(qry.FieldByName('acessos').AsString,146,1));
  p.RelVenEstatistica           := self.IsTrue(copy(qry.FieldByName('acessos').AsString,147,1));
  p.RelVenHistorico             := self.IsTrue(copy(qry.FieldByName('acessos').AsString,148,1));
  p.RelVenVenda                 := self.IsTrue(copy(qry.FieldByName('acessos').AsString,149,1));
  p.RelVenNotasFiscais          := self.IsTrue(copy(qry.FieldByName('acessos').AsString,150,1));
  p.RelVenPedidos2              := self.IsTrue(copy(qry.FieldByName('acessos').AsString,151,1));
  p.RelVenMovimentacaoFor       := self.IsTrue(copy(qry.FieldByName('acessos').AsString,152,1));

  //Utilitários
  p.getUtilitario     := self.IsTrue(copy(qry.FieldByName('acessos').AsString,47,1));
  p.getUtilAgenda     := self.IsTrue(copy(qry.FieldByName('acessos').AsString,48,1));
  p.getUtilBackup     := self.IsTrue(copy(qry.FieldByName('acessos').AsString,49,1));
  p.getUtilConfig     := self.IsTrue(copy(qry.FieldByName('acessos').AsString,50,1));
  p.UtilExportacao    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,96,1));
  p.UtilImportacao    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,97,1));
  p.UtilImpPed        := self.IsTrue(copy(qry.FieldByName('acessos').AsString,98,1));
  p.UtilSinc          := self.IsTrue(copy(qry.FieldByName('acessos').AsString,99,1));
  p.UtilReorganizacao := self.IsTrue(copy(qry.FieldByName('acessos').AsString,100,1));
  p.UtilPortaria      := self.IsTrue(copy(qry.FieldByName('acessos').AsString,101,1));
  p.UtilImpDBF        := self.IsTrue(copy(qry.FieldByName('acessos').AsString,102,1));
  p.UtilApagarOrc     := self.IsTrue(copy(qry.FieldByName('acessos').AsString,103,1));
  p.UtilManutSistema  := self.IsTrue(copy(qry.FieldByName('acessos').AsString,104,1));
  p.UtilAtualizaSistema:= self.IsTrue(copy(qry.FieldByName('acessos').AsString,105,1));
  p.UtilLogAtualizacao:= self.IsTrue(copy(qry.FieldByName('acessos').AsString,106,1));
  p.UtilCorrigeSituacao:= self.IsTrue(copy(qry.FieldByName('acessos').AsString,107,1));
  p.UtilRegistro60    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,108,1));
  p.UtilSintegra      := self.IsTrue(copy(qry.FieldByName('acessos').AsString,109,1));
  p.UtilBalanco       := self.IsTrue(copy(qry.FieldByName('acessos').AsString,110,1));
  p.UtilUnifica       := self.IsTrue(copy(qry.FieldByName('acessos').AsString,111,1));
  p.UtilLancaNotas    := self.IsTrue(copy(qry.FieldByName('acessos').AsString,112,1));
  p.UtilExportaTexto  := self.IsTrue(copy(qry.FieldByName('acessos').AsString,113,1));
  p.UtilPerifericos   := self.IsTrue(copy(qry.FieldByName('acessos').AsString,114,1));
  p.UtilGerarArquivoConfig := self.IsTrue(copy(qry.FieldByName('acessos').AsString,115,1));
  p.UtilSuporte       := self.IsTrue(copy(qry.FieldByName('acessos').AsString,116,1));
  p.UtilBoletos       := self.IsTrue(copy(qry.FieldByName('acessos').AsString,117,1));

  //Outros
  p.getOutDev :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,51,1));
  p.getOutros :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,52,1));
  p.getOutNot :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,53,1));
  p.getOutVendaRapida :=  self.IsTrue(copy(qry.FieldByName('acessos').AsString,54,1));
  p.getNrPedVen       := Self.IsTrue(copy(qry.FieldByName('acessos').AsString,55,1));

  //Novos
  p.getVendCxEntregaPedido := Self.IsTrue(copy(qry.FieldByName('acessos').AsString,56,1));

  qry.Close;
  FreeAndNil(qry);

  Result := p;
end;

class function TClassNivel.IsTrue(const Value: String): Boolean;
begin
  if (Value = 'S') then
  begin
      result := True;
  end
  else
  begin
      result := False;
  end;
end;

procedure TClassNivel.SetBaixarPedido(const Value: Boolean);
begin
  fBaixarPedido := Value;
end;

procedure TClassNivel.SetCad(const Value: String);
begin
  getCad := Value;
end;

procedure TClassNivel.SetCadCli(const Value: String);
begin
  getCadCli := Value;
end;

procedure TClassNivel.SetCadCliente_Bloquear_Cliente(const Value: Boolean);
begin
  fCadCliente_Bloquear_Cliente := Value;
end;

procedure TClassNivel.setCadCompleComiss(const Value: String);
begin
  getCadCompleComiss := Value;
end;

procedure TClassNivel.setCadDeposito(const Value: Boolean);
begin
   self.getCadDeposito := Value;
end;

procedure TClassNivel.setCadEvento(const Value: String);
begin
   getCadEvento := Value;
end;

procedure TClassNivel.SetCadFormaPagto(const Value: String);
begin
   getCadFormaPagto := Value;
end;

procedure TClassNivel.SetCadForn(const Value: String);
begin
   getCadForn := Value;
end;

procedure TClassNivel.SetCadGrupo(const Value: String);
begin
   getCadGrupo := Value;
end;

procedure TClassNivel.SetCadLinha(const Value: String);
begin
  getCadLinha := Value;
end;

procedure TClassNivel.SetCadMarca(const Value: String);
begin
   getCadMarca := Value;
end;

procedure TClassNivel.setCadMsg(const Value: String);
begin
  getCadMsg := Value;
end;

procedure TClassNivel.SetCadMunicipio(const Value: Boolean);
begin
  FCadMunicipio := Value;
end;

procedure TClassNivel.setCadNivelSistema(const Value: String);
begin
   getCadNivelSistema := Value;
end;

procedure TClassNivel.SetCadProd(const Value: String);
begin
   getCadProd := Value;
end;

procedure TClassNivel.SetCadSubGrupo(const Value: String);
begin
   getCadSubGrupo := Value;
end;

procedure TClassNivel.setCadTabela(const Value: String);
begin
  getCadTabela := Value;
end;

procedure TClassNivel.setCadTipoCli(const Value: String);
begin
  getCadTipoCli := Value;
end;

procedure TClassNivel.setCadTransp(const Value: String);
begin
  getCadTransp := Value;
end;

procedure TClassNivel.SetCadUsuario(const Value: String);
begin
  getCadUsuario := Value;
end;

procedure TClassNivel.SetCargas(const Value: Boolean);
begin
  fCargas := Value;
end;

procedure TClassNivel.SetCertificados(const Value: Boolean);
begin
  fCertificados := Value;
end;

procedure TClassNivel.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TClassNivel.setContCheq(const Value: Boolean);
begin
   getContCheq := Value;
end;

procedure TClassNivel.setContCheqCheque(const Value: Boolean);
begin
   getContCheqCheque := Value;
end;

procedure TClassNivel.setContCheqContasPagar(const Value: Boolean);
begin
   getContCheqContasPagar := Value; 
end;

procedure TClassNivel.setContCheqContasReceber(const Value: Boolean);
begin
  getContCheqContasReceber := Value;
end;

procedure TClassNivel.setECF(const Value: Boolean);
begin
  fECF := Value;
end;

procedure TClassNivel.SetFeriado(const Value: Boolean);
begin
  fFeriado := Value;
end;

procedure TClassNivel.SetKits(const Value: Boolean);
begin
  fKits := Value;
end;

procedure TClassNivel.SetLancPromocao(const Value: Boolean);
begin
  fLancPromocao := Value;
end;

procedure TClassNivel.SetMarcas(const Value: Boolean);
begin
  fMarcas := Value;
end;

procedure TClassNivel.SetMediaVenda(const Value: Boolean);
begin
  fMediaVenda := Value;
end;

procedure TClassNivel.setMov(const Value: Boolean);
begin
   self.getMov := Value;
end;


procedure TClassNivel.setMovAlteracaoEstoque(const Value: Boolean);
begin
   self.getMovAlteracaoEstoque := Value;
end;

procedure TClassNivel.SetMovCargas(const Value: Boolean);
begin
  fMovCargas := Value;
end;

procedure TClassNivel.SetMovEventosPedido(const Value: Boolean);
begin
  fMovEventosPedido := Value;
end;

procedure TClassNivel.setMovMovimentacaoEstoque(const Value: Boolean);
begin
   self.getMovMovimentacaoEstoque := Value;
end;

procedure TClassNivel.setMovPedidoCompra(const Value: Boolean);
begin
   self.getMovPedidoCompra := Value;
end;

procedure TClassNivel.setMovReajustePreco(const Value: Boolean);
begin
   self.getMovReajustePreco := Value;
end;

procedure TClassNivel.setNFE(const Value: Boolean);
begin
  fNFE := Value;
end;

procedure TClassNivel.SetNiveisMaquina(const Value: Boolean);
begin
  fNiveisMaquina := Value;
end;

procedure TClassNivel.setOutDev(const Value: Boolean);
begin
  self.getOutDev := Value;
end;

procedure TClassNivel.setOutNot(const Value: Boolean);
begin
  self.getOutNot := value;
end;

procedure TClassNivel.setOutNrPedVend(const Value: Boolean);
begin
  Self.getNrPedVen := Value;
end;

procedure TClassNivel.setOutros(const Value: Boolean);
begin
  self.getOutros := Value;
end;

procedure TClassNivel.setOutVendaRapida(const Value: Boolean);
begin
  self.getOutVendaRapida := Value;
end;

procedure TClassNivel.SetParametros(const Value: Boolean);
begin
  fParametros := Value;
end;

procedure TClassNivel.SetPedidoAutomatico(const Value: Boolean);
begin
  fPedidoAutomatico := Value;
end;

procedure TClassNivel.SetPlanilhaCusto(const Value: Boolean);
begin
  fPlanilhaCusto := Value;
end;

procedure TClassNivel.setRel(const Value: Boolean);
begin
  getRel := Value;
end;

procedure TClassNivel.setRelCadastrais(const Value: Boolean);
begin
  getRelCadastrais := Value;
end;

procedure TClassNivel.setRelCondicionais(const Value: Boolean);
begin
  fRelCondicionais := Value;
end;

procedure TClassNivel.setRelContCheq(const Value: Boolean);
begin
  getRelContCheq := Value;
end;


procedure TClassNivel.setRelDevPorDataDev(const Value: Boolean);
begin
  fRelDevPorDataDev := Value;
end;

procedure TClassNivel.setRelMovAlteracoesdeCadastro(const Value: Boolean);
begin
  fRelMovAlteracoesdeCadastro := Value;
end;

procedure TClassNivel.setRelMovComprasNotapNota(const Value: Boolean);
begin
  fRelMovComprasNotapNota := Value;
end;

procedure TClassNivel.setRelMovEntradapGarantia(const Value: Boolean);
begin
  fRelMovEntradapGarantia := Value;
end;

procedure TClassNivel.setRelMovEntradaporCompra(const Value: Boolean);
begin
  fRelMovEntradaporCompra := Value;
end;

procedure TClassNivel.setRelMovEntradaporCompraAnalitico(
  const Value: Boolean);
begin
  fRelMovEntradaporCompraAnalitico := Value;
end;

procedure TClassNivel.setRelMovEntradapTranf(const Value: Boolean);
begin
  fRelMovEntradapTranf := Value;
end;

procedure TClassNivel.setRelMovEntradaSaida(const Value: Boolean);
begin
  fRelMovEntradaSaida := Value;
end;

procedure TClassNivel.setRelMovGeral(const Value: Boolean);
begin
  fRelMovGeral := Value;
end;

procedure TClassNivel.setRelMovIcmsRet(const Value: Boolean);
begin
  fRelMovIcmsRet := Value;
end;

procedure TClassNivel.setRelMovimento(const Value: Boolean);
begin
   self.getRelMovimento := Value;
end;

procedure TClassNivel.setRelMovItensDev(const Value: Boolean);
begin
  fRelMovItensDev := Value;
end;

procedure TClassNivel.setRelMovMovimentosCfop(const Value: Boolean);
begin
  fRelMovMovimentosCfop := Value;
end;

procedure TClassNivel.setRelMovNFE(const Value: Boolean);
begin
  fRelMovNFE := Value;
end;

procedure TClassNivel.setRelMovNotaspConsumidor(const Value: Boolean);
begin
  fRelMovNotaspConsumidor := Value;
end;

procedure TClassNivel.setRelMovOutrasEntradas(const Value: Boolean);
begin
  fRelMovOutrasEntradas := Value;
end;

procedure TClassNivel.setRelMovOutrasSaidas(const Value: Boolean);
begin
  fRelMovOutrasSaidas := Value;
end;

procedure TClassNivel.setRelMovQtdMov(const Value: Boolean);
begin
  fRelMovQtdMov := Value;
end;

procedure TClassNivel.setRelMovSaidapGarantia(const Value: Boolean);
begin
  fRelMovSaidapGarantia := Value;
end;

procedure TClassNivel.setRelMovSaidaporVenda(const Value: Boolean);
begin
  fRelMovSaidaporVenda := Value;
end;

procedure TClassNivel.setRelMovSaidapTranf(const Value: Boolean);
begin
  fRelMovSaidapTranf := Value;
end;

procedure TClassNivel.setRelPersonalizados(const Value: Boolean);
begin
  fRelPersonalizados := Value;
end;

procedure TClassNivel.setRelVenComissoes(const Value: Boolean);
begin
  fRelVenComissoes := Value;
end;

procedure TClassNivel.setRelVenCurvaAbc(const Value: Boolean);
begin
  fRelVenCurvaAbc := Value;
end;

procedure TClassNivel.setRelVendasCaixa(const Value: Boolean);
begin
  getRelVendasCaixa := Value;
end;

procedure TClassNivel.setRelVenEstatistica(const Value: Boolean);
begin
  fRelVenEstatistica := Value;
end;

procedure TClassNivel.setRelVenHistorico(const Value: Boolean);
begin
  fRelVenHistorico := Value;
end;

procedure TClassNivel.setRelVenMovimentacaoFor(const Value: Boolean);
begin
  fRelVenMovimentacaoFor := Value;
end;

procedure TClassNivel.setRelVenNotasFiscais(const Value: Boolean);
begin
  fRelVenNotasFiscais := Value;
end;

procedure TClassNivel.setRelVenPedidos(const Value: Boolean);
begin
  fRelVenPedidos := Value;
end;

procedure TClassNivel.setRelVenPedidos2(const Value: Boolean);
begin
  fRelVenPedidos2 := Value;
end;

procedure TClassNivel.setRelVenProdutos(const Value: Boolean);
begin
  fRelVenProdutos := Value;
end;

procedure TClassNivel.setRelVenRecebimentospagamentos(
  const Value: Boolean);
begin
  fRelVenRecebimentospagamentos := Value;
end;

procedure TClassNivel.setRelVenValoresCaixa(const Value: Boolean);
begin
  fRelVenValoresCaixa := Value;
end;

procedure TClassNivel.setRelVenVenda(const Value: Boolean);
begin
  fRelVenVenda := Value;
end;

procedure TClassNivel.setRelVenVendaemPerc(const Value: Boolean);
begin
  fRelVenVendaemPerc := Value;
end;

procedure TClassNivel.setRelVenVendasFPagto(const Value: Boolean);
begin
  fRelVenVendasFPagto := Value;
end;

procedure TClassNivel.setRelVenVendasMensais(const Value: Boolean);
begin
  fRelVenVendasMensais := Value;
end;

procedure TClassNivel.SetSetoresProducao(const Value: Boolean);
begin
  fSetoresProducao := Value;
end;

procedure TClassNivel.SetStatusPedido(const Value: Boolean);
begin
  fStatusPedido := Value;
end;

procedure TClassNivel.setUtilAgenda(const Value: Boolean);
begin
    self.getUtilAgenda := Value;
end;

procedure TClassNivel.setUtilApagarOrc(const Value: Boolean);
begin
  fUtilApagarOrc := Value;
end;

procedure TClassNivel.setUtilAtualizaSistema(const Value: Boolean);
begin
  fUtilAtualizaSistema := Value;
end;

procedure TClassNivel.setUtilBackup(const Value: Boolean);
begin
    self.getUtilBackup := Value;
end;

procedure TClassNivel.setUtilBalanco(const Value: Boolean);
begin
  fUtilBalanco := Value;
end;

procedure TClassNivel.setUtilBoletos(const Value: Boolean);
begin
  fUtilBoletos := Value;
end;

procedure TClassNivel.setUtilConfig(const Value: Boolean);
begin
   self.getUtilConfig := Value;
end;

procedure TClassNivel.setUtilCorrigeSituacao(const Value: Boolean);
begin
  fUtilCorrigeSituacao := Value;
end;

procedure TClassNivel.setUtilExportacao(const Value: Boolean);
begin
  fUtilExportacao := Value;
end;

procedure TClassNivel.setUtilExportaTexto(const Value: Boolean);
begin
  fUtilExportaTexto := Value;
end;

procedure TClassNivel.setUtilGerarArquivoConfig(const Value: Boolean);
begin
  fUtilGerarArquivoConfig := Value;
end;

procedure TClassNivel.setUtilImpDBF(const Value: Boolean);
begin
  fUtilImpDBF := Value;
end;

procedure TClassNivel.setUtilImportacao(const Value: Boolean);
begin
  fUtilImportacao := Value;
end;

procedure TClassNivel.setUtilitario(const Value: Boolean);
begin
   self.getUtilitario := Value;
end;

procedure TClassNivel.setUtilLancaNotas(const Value: Boolean);
begin
  fUtilLancaNotas := Value;
end;

procedure TClassNivel.setUtilLogAtualizacao(const Value: Boolean);
begin
  fUtilLogAtualizacao := Value;
end;

procedure TClassNivel.SetUtilMaisConfiguracoes(const Value: Boolean);
begin
  FUtilMaisConfiguracoes := Value;
end;

procedure TClassNivel.setUtilManutSistema(const Value: Boolean);
begin
  fUtilManutSistema := Value;
end;

procedure TClassNivel.setUtilPed(const Value: Boolean);
begin
  fUtilImpPed := Value;
end;

procedure TClassNivel.setUtilPerifericos(const Value: Boolean);
begin
  fUtilPerifericos := Value;
end;

procedure TClassNivel.setUtilPortaria(const Value: Boolean);
begin
  fUtilPortaria := Value;
end;

procedure TClassNivel.setUtilRegistro60(const Value: Boolean);
begin
  fUtilRegistro60 := Value;
end;

procedure TClassNivel.setUtilReorganizacao(const Value: Boolean);
begin
  fUtilReorganizacao := Value;
end;

procedure TClassNivel.setUtilSinc(const Value: Boolean);
begin
  fUtilSinc := Value;
end;

procedure TClassNivel.setUtilSintegra(const Value: Boolean);
begin
  fUtilSintegra := Value;
end;

procedure TClassNivel.setUtilSuporte(const Value: Boolean);
begin
  fUtilSuporte := Value;
end;

procedure TClassNivel.setUtilUnifica(const Value: Boolean);
begin
  fUtilUnifica := Value;
end;

procedure TClassNivel.setVendBaixaEstoque(const Value: Boolean);
begin
  fVendBaixaEstoque := Value;
end;

procedure TClassNivel.setVendBaixaparcPedido(const Value: Boolean);
begin
  fVendBaixaparcPedido := Value;
end;

procedure TClassNivel.setVendCarne(const Value: Boolean);
begin
  fVendCarne := Value;
end;

procedure TClassNivel.setVendCodicionais(const Value: Boolean);
begin
  fVendCodicionais := Value;
end;

procedure TClassNivel.setVendControleRomaneio(const Value: Boolean);
begin
  fVendControleRomaneio := Value;
end;

procedure TClassNivel.setVendCx(const Value: Boolean);
begin
   self.getVendCx := Value;
end;

procedure TClassNivel.setVendCxAlteracaoDataVencimen(const Value: Boolean);
begin
       self.getVendCxAlteracaoDataVencimen := Value;
end;

procedure TClassNivel.setVendCxAltOrcamentos(const Value: Boolean);
begin
      self.getVendCxAltOrcamentos := Value;
end;

procedure TClassNivel.setVendCxCancelarRecebPedido(const Value: Boolean);
begin
      self.getVendCxCancelarRecebPedido := Value;
end;

procedure TClassNivel.setVendCxConsignacoesDevolucoes(const Value: Boolean);
begin
     self.getVendCxConsignacoesDevolucoes := Value;
end;

procedure TClassNivel.setVendCxConsultaReimprimirPed(const Value: Boolean);
begin
     self.getVendCxConsultaReimprimirPed := Value;
end;

procedure TClassNivel.setVendCxFechamentoParcial(const Value: Boolean);
begin
      self.getVendCxFechamentoParcial := Value;
end;

procedure TClassNivel.setVendCxImprimirDebitoCliente(const Value: Boolean);
begin
     self.getVendCxImprimirDebitoCliente := Value;
end;

procedure TClassNivel.setVendCxRecebPagamentos(const Value: Boolean);
begin
    self.getVendCxRecebPagamentos := Value;
end;

procedure TClassNivel.setVendCxRecebPedidos(const Value: Boolean);
begin
    self.getVendCxRecebPedidos := Value;
end;

procedure TClassNivel.setVendCxSubTotalCaixa(const Value: Boolean);
begin
   self.getVendCxSubTotalCaixa := Value;
end;

procedure TClassNivel.setVendCxTrocaCheques(const Value: Boolean);
begin
   self.getVendCxTrocaCheques := Value;
end;

procedure TClassNivel.setVendCxTrocaProdutos(const Value: Boolean);
begin
   self.getVendCxTrocaProdutos := Value;
end;

procedure TClassNivel.setVendCxVendaProdutos(const Value: Boolean);
begin
    self.getVendCxVendaProdutos := Value;
end;

procedure TClassNivel.setVendCxVendaProdutosAtac(const Value: Boolean);
begin
   self.getVendCxVendaProdutosAtac := Value;
end;


procedure TClassNivel.setVendDarBaixa(const Value: Boolean);
begin
  fVendDarBaixa := Value;
end;

procedure TClassNivel.setVendDevProd(const Value: Boolean);
begin
  fVendDevProd := Value;
end;

procedure TClassNivel.setVendEncerraCarga(const Value: Boolean);
begin
  fVendEncerraCarga := Value;
end;

procedure TClassNivel.setVendEntregaPedidos(const Value: Boolean);
begin
  fVendEntregaPedidos := Value;
end;

procedure TClassNivel.setVendNFE2(const Value: Boolean);
begin
  fVendNFE2 := Value;
end;

procedure TClassNivel.setVendNotaFiscal(const Value: Boolean);
begin
  fVendNotaFiscal := Value;
end;

procedure TClassNivel.setVendOcorrencias(const Value: Boolean);
begin
  fVendOcorrencias := Value;
end;

procedure TClassNivel.setVendOrcRapido(const Value: Boolean);
begin
  fVendOrcRapido := Value;
end;

procedure TClassNivel.setVendPedidoLote(const Value: Boolean);
begin
  fVendPedidoLote := Value;
end;

procedure TClassNivel.setVendPesqNrDoc(const Value: Boolean);
begin
  fVendPesqNrDoc := Value;
end;

procedure TClassNivel.setVendReimpressaoCarga(const Value: Boolean);
begin
  fVendReimpressaoCarga := Value;
end;

procedure TClassNivel.setVendRomaneio(const Value: Boolean);
begin
  fVendRomaneio := Value;
end;

procedure TClassNivel.setVendVendaRapida(const Value: Boolean);
begin
  fVendVendaRapida := Value;
end;

end.

