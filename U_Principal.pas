unit U_Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, Menus, ComCtrls, Buttons, StdCtrls, Printers,
  WinSock, jpeg, MMSystem, DBIProcs, ToolWin, ShellApi, RXCtrls, Animate,
  GIFCtrl, WinInet, ComObj, ShlObj, ActiveX, Registry, URLMon, BDE, FileCtrl,
  Mylabel, DbGrids, ImgList, XPMenu, CheckLst, Gauges, ThdTimer, Grids,
  JvExControls, JvGradientHeaderPanel;

type
  TFrmPrincipal = class(TForm)
    SBMensagem: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Movimento1: TMenuItem;
    Impresso1: TMenuItem;
    Seguranca1: TMenuItem;
    CadUsuarios1: TMenuItem;
    AbreJanelaMSDOS1: TMenuItem;
    ReindexaarquivosSysPizza1: TMenuItem;
    Sair1: TMenuItem;
    SairdoSistema1: TMenuItem;
    N1: TMenuItem;
    SobreoSistema1: TMenuItem;
    Table_Temp: TTable;
    DataSource_Temp: TDataSource;
    Table_Parametro: TTable;
    DataSource_Parametro: TDataSource;
    Parmetros1: TMenuItem;
    Imagem_Esquerda: TImage;
    PopupMenu_Cadastros: TPopupMenu;
    Table_Indexacao: TTable;
    DataSource_Indexacao: TDataSource;
    N3: TMenuItem;
    CaddeForms1: TMenuItem;
    CaddePermissesdeacessos1: TMenuItem;
    Table_Acessos: TTable;
    DataSource_Acessos: TDataSource;
    CoolBar1: TCoolBar;
    Label_NomeTipoSistema: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label_Empresa: TLabel;
    Label_Endereco: TLabel;
    Label_Cidade: TLabel;
    Estoque1: TMenuItem;
    EntradadeProduto1: TMenuItem;
    Utilitarios1: TMenuItem;
    Calculadora1: TMenuItem;
    Entrada1: TMenuItem;
    Entradadeprodutoemestoque1: TMenuItem;
    Caixadirio1: TMenuItem;
    CriaAbreCaixadirio1: TMenuItem;
    Mudanadeusurio1: TMenuItem;
    Calendrio2: TMenuItem;
    Agenda1: TMenuItem;
    Label60: TLabel;
    Label18: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label_TipoEntrega: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Sada1: TMenuItem;
    VendaemMesas2: TMenuItem;
    Entregas2: TMenuItem;
    Clientes2: TMenuItem;
    Aniversariantes1: TMenuItem;
    Clientesativos1: TMenuItem;
    Clientesemcomprashxtempo1: TMenuItem;
    Label11: TLabel;
    Label12: TLabel;
    Estoque2: TMenuItem;
    Zeraestoque1: TMenuItem;
    Table_Prod: TTable;
    DataSource_Prod: TDataSource;
    Movimentao1: TMenuItem;
    Zeravendasdodia1: TMenuItem;
    Financeiro1: TMenuItem;
    ValesR1: TMenuItem;
    Funcionrio2: TMenuItem;
    Cliente2: TMenuItem;
    ProgressBar_ZeraEstoque: TProgressBar;
    WindowsExplorer1: TMenuItem;
    AutoEstoque1: TMenuItem;
    SecretPanel_Alerta: TSecretPanel;
    Image1: TImage;
    Image2: TImage;
    Image11: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image21: TImage;
    Image22: TImage;
    Imagem_direita: TImage;
    Timer_Pizzas: TTimer;
    SecretPanel_Logo: TSecretPanel;
    Vendasporcategoria1: TMenuItem;
    ImpressaoCupom2: TMenuItem;
    Testedeposicionamento1: TMenuItem;
    Rotinasespeciaisdegeracaodeacesso1: TMenuItem;
    Inconsistencias1: TMenuItem;
    Bairrossemtaxacadastrada1: TMenuItem;
    Zerataxadetodososbairros1: TMenuItem;
    Table_Bairros: TTable;
    DataSource_Bairros: TDataSource;
    ProgramaBematechMICI1: TMenuItem;
    VendasdeCaixasnumperiodo1: TMenuItem;
    SenhadosUsurios1: TMenuItem;
    Transferevendasparaumusuario1: TMenuItem;
    RotinasEspeciais1: TMenuItem;
    Backupdosdadoscopia1: TMenuItem;
    Restauracaodebackup1: TMenuItem;
    VisualizaBackupsFeitos: TMenuItem;
    Reprocessanotasdeentrada1: TMenuItem;
    ReativaodeRegistros1: TMenuItem;
    Validamovimentacaododia1: TMenuItem;
    Caixas1: TMenuItem;
    AbertosFechados1: TMenuItem;
    PosiodeCaixa1: TMenuItem;
    Produtos1: TMenuItem;
    Produtosmaisvendidos1: TMenuItem;
    Produtossemvendasnumperiodo1: TMenuItem;
    Table_Validade: TTable;
    Zeratabelassistemasumaauma1: TMenuItem;
    LancamentodeVales1: TMenuItem;
    Funcionario4: TMenuItem;
    Receitadodiamotoqueiroentregador1: TMenuItem;
    Locaodemesas1: TMenuItem;
    Conveniencia1: TMenuItem;
    Transacoes1: TMenuItem;
    ReceitaDespesamotoqueiroentregadormensal1: TMenuItem;
    ReceitaDespesagarcommensal1: TMenuItem;
    Estoqueatual1: TMenuItem;
    Receitadodiagarcom1: TMenuItem;
    Produtosnopontoderessuprimento1: TMenuItem;
    Tabelas1: TMenuItem;
    Totaldevendasporperodomesa2: TMenuItem;
    LancamentodeDespesas1: TMenuItem;
    Despesasdodia1: TMenuItem;
    Resumodocaixa1: TMenuItem;
    Animate_LogoSys: TAnimate;
    BitBtn_DadosEmpresa: TBitBtn;
    Help1: TMenuItem;
    SobreaEmpresausuaria1: TMenuItem;
    Encerrante1: TMenuItem;
    GeraNumeracaodefichasmesa1: TMenuItem;
    Bairros2: TMenuItem;
    CartodeCrdito2: TMenuItem;
    Categoria2: TMenuItem;
    Clientes5: TMenuItem;
    Despesas2: TMenuItem;
    Fornecedores2: TMenuItem;
    Funcionarios2: TMenuItem;
    Materiaprima2: TMenuItem;
    Mesas2: TMenuItem;
    Produto2: TMenuItem;
    Taxa2: TMenuItem;
    TipoFuncionario2: TMenuItem;
    Bairros1: TMenuItem;
    CartaodeCredito1: TMenuItem;
    Categoria1: TMenuItem;
    Clientes1: TMenuItem;
    Despesas1: TMenuItem;
    Fornecedores1: TMenuItem;
    Funcionarios1: TMenuItem;
    Materiaprima1: TMenuItem;
    Mesas1: TMenuItem;
    Produtos3: TMenuItem;
    Taxa1: TMenuItem;
    TipoFuncionario1: TMenuItem;
    Animate_Indexacao: TAnimate;
    Panel_IndexandoArquivo: TPanel;
    Label4: TLabel;
    Label_Arquivo: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Table_Backup: TTable;
    myLabel3d1: TmyLabel3d;
    ImpressaodeCupomFiscal1: TMenuItem;
    GerenciadorBematechdeComandos1: TMenuItem;
    ComandosPrincipais1: TMenuItem;
    EntradadeMateriaprimaemestoque1: TMenuItem;
    CouvertArtistico1: TMenuItem;
    RankingdeFuncionarios1: TMenuItem;
    ZeraestoquedeMateriaprima1: TMenuItem;
    AutoEstoquedeMateriaprima1: TMenuItem;
    Table_MateriaPrima: TTable;
    EmissaodeRecibo1: TMenuItem;
    Tabelas2: TMenuItem;
    Materiaprima3: TMenuItem;
    Produtos2: TMenuItem;
    Spb_Conveniencia: TSpeedButton;
    Spb_Entrega: TSpeedButton;
    Spb_Mesas: TSpeedButton;
    Spb_BotaoEsqMouse: TSpeedButton;
    Spb_Backup: TSpeedButton;
    Spb_Sair: TSpeedButton;
    Spb_Calendario: TSpeedButton;
    Spb_Configuracoes: TSpeedButton;
    Spb_CaixaDiario: TSpeedButton;
    Unidade1: TMenuItem;
    InformacoesSobreSistemaOperacional: TMenuItem;
    EntradadeMateriaprima1: TMenuItem;
    RxGIFAnimator_Network: TRxGIFAnimator;
    ImageList_MenuPrincipal: TImageList;
    Table_Controle: TTable;
    Memo_guardaHASHMD5: TMemo;
    Query_CopiaDemo: TQuery;
    Panel_Aguarde: TPanel;
    Panel1: TPanel;
    Table_Manut: TTable;
    QueryAux: TQuery;
    Empresas1: TMenuItem;
    Empresas2: TMenuItem;
    QuitacaodeValesClientes1: TMenuItem;
    OpenDialog1: TOpenDialog;
    Criaatalhodesktop1: TMenuItem;
    FreqnciadeclientesEntrega1: TMenuItem;
    DataSource_Parametro2: TDataSource;
    Table_Parametro2: TTable;
    FuncionriosporEmpresa1: TMenuItem;
    Table_ClienteOrigem: TTable;
    Table_Cliente: TTable;
    Image_Statusbar: TImageList;
    CheckListBox_ArquivosListados: TCheckListBox;
    StatusBar_Check: TStatusBar;
    ThreadedTimer_Break: TThreadedTimer;
    ImageList_Diversos: TImageList;
    ImageList_VariasImagens: TImageList;
    Produtosexcludos1: TMenuItem;
    Panel_Demonstracao: TPanel;
    Panel_Rotulo: TPanel;
    ProgressBar_Indexacao: TProgressBar;
    Image_Backup: TImage;
    Label25: TLabel;
    Label_ErroAltPrtScreen: TLabel;
    Label30: TLabel;
    Label_ErroPrtScreen: TLabel;
    PopupMenu_Entregas: TPopupMenu;
    Entregapadro1: TMenuItem;
    Entregarpida1: TMenuItem;
    JvGradientHeaderPanel_MudancaUsuario: TJvGradientHeaderPanel;
    Image8: TImage;
    ThreadedTimer_AlertaMudancaUsuario: TThreadedTimer;
    Unidade2: TMenuItem;
    Image_AssessoriaAtiva: TImage;
    TaxasevaloresporOrdemdeBairroalfabtica1: TMenuItem;
    Image_LogoMarcaPCDesenvolvedor2: TImage;
    Image_LogoMarcaPCDesenvolvedor1: TImage;

    procedure SbtSairClick(Sender: TObject);
    procedure AbreJanelaMSDOS1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Parmetros1Click(Sender: TObject);

    //========================================================================//
    //-----------------------<  Cores especiais  >----------------------------//
    //========================================================================//

    // D8BFD8
    // F5DEB3
    // FA8072
    // 7FFFD4

    function Aciona_Porta() : Boolean;
    procedure Cabecalho_Padrao( Pg : integer );
    procedure VerificaComandoImpressao( cTexto : string; cEfeito: string );

    procedure Verifica_Carrega_IconeAplicacao;
    function Carrega_CaminhoIconeAplicacao : String;
    function Carrega_Icone_Final : String;

    procedure Alerta( cTipo : string );
    procedure Emite_Sons_MultiMidia( cTipo : string );
    procedure Executa_Backup;
    procedure Limpa_Images_Piscantes( lAtiva :Boolean );
    procedure Define_Titulo_Form();
    procedure Zera_Temporarios;
    procedure Desabilita_BotaoFechar( AEnabled : Boolean );
    procedure Desabilita_BotaoFechar2( AEnabled : Boolean );
    procedure Libera_area_mouse;
    procedure Limita_mouse;
    procedure Verifica_BotaoFechar;

    function Instala_RegWin( cTipoAcao : string ) : Boolean;  // Usada quando é ativada a 11ª trava...
    function Instala_RegWinDemo( cTipoAcao : string; nQtdeInstalacao, nQtdeInstalacoesPermitidas, nQtdeDiasValidade, nQtdeMaximaExecucoes, nQtdeMaximaRegistrosSistemaCAD, nQtdeMaximaRegistrosSistemaMOV, NumExecucaoAtual : integer; lgRegistro : Boolean ) : Boolean;

    function Atualiza_RegWinDemo_DataUltimoAcesso( cTipoAcao : String ) : Boolean;
    function Atualiza_RegWinDemo_QtdeExecucoes( nQtdeExecucoes : integer ) : Boolean;
    function Atualiza_ArquivoOculto_QtdeExecucoes( nQtdeExecucoes : integer ) : Boolean;

    function Retorna_QtdeInstalacoes_RegWinDemo : integer;
    function Retorna_QtdeInstalacoesPermitidas_RegWinDemo : integer;

    function Retorna_Data1Instalacao_RegWinDemo : String;
    function Retorna_DataLimite1_RegWinDemo : String;

    function Retorna_Data2Instalacao_RegWinDemo : String;
    function Retorna_DataLimite2_RegWinDemo : String;

    function Retorna_QtdeMaximaExecucoes1_RegWinDemo : integer;
    function Retorna_NumExecucaoAtual1_RegWinDemo : integer;

    function Retorna_QtdeMaximaExecucoes2_RegWinDemo : Integer;
    function Retorna_NumExecucaoAtual2_RegWinDemo : integer;

    function Retorna_QtdeMaximaExecucoes_Table_Validade : Integer;
    function Retorna_NumeroExecucaoAtual_Table_Validade : Integer;

    function Retorna_QtdeMaximaRegistrosRegWin( cTipoRegistro : String ) : Integer;
    function Retorna_QtdeMaximaRegistrosTableValidade : integer;
    function Retorna_QtdeMaximaArquivoOculto : integer;
    function Retorna_QtdeMaximaExecucoesArquivoOculto : Integer;

    function Retorna_DataLimiteTableValidade : String;
    function Retorna_DataUltimoAcessoTableValidade : String;
    function Retorna_DataUltimoAcessoArquivoOculto : String;
    function Retorna_DataUltimoAcesso_RegWinDemo : String;

    function Retorna_QtdeDias_RegWinDemo : Integer;

    function Retorna_DataLimiteArquivoOculto : String;

    function Verifica_Registrado_RegWinDemo : Boolean;
    function Verifica_Instalado : Boolean;
    function RegistraCopia_RegWinDemo : Boolean;
    function Registra_Ultimo_Acesso : Boolean;

    function Retorna_RegWinDemo_DataUltimoAcesso() : String;

    // Funções que acionam outras funções...
    function Retorna_QtdeMaximaExecucoes : Integer;
    function Retorna_DataLimiteExecucao : String;
    function Retorna_DataUltimoAcesso : String;

    function LimpaInstalacaoSyspizza : Boolean;
    function Verifica_LimiteRegistros( cTipoMovimentacao : String ) : Boolean;
    procedure Verifica_Exibicao_Painel_Demonstracao_CopiaRegistrada();

    //--

    function Checa_Status_Impressora( nQtdeTestesImpressora : integer; cTipoImpressora, cPortaImpressora : String; lExibeMensagem : Boolean ) :Boolean;

    procedure ListarArquivos(Diretorio: string; Sub:Boolean; Lista : TListBox; Lista2 : TCheckListBox; bApagaArquivos : Boolean);
    procedure Verifica_Elimina_Arquivos_Temporarios;

    function TemAtributo(Attr, Val: Integer): Boolean;
    function EArquivoTemporario(cNomeArquivo: string): Boolean;

    //--

    function QuestionaSaidadoSistema : Boolean;
    procedure FinalizaSistema;

    function RetornaCaminhoArquivosControle : string;
    procedure Faz_Query_Permanente( cQuery : TQuery; cNomeTabela : string );
    procedure CriaArquivoWord;
    procedure ObtemUsuarios(UserList: TStrings);
    procedure FormNaoRetangular;

    procedure Define_Menu();
    procedure Desativa_Usuario;
    function RetornaQtdePizzasNaComposicao( nCodProduto : integer ) : integer;

    function Desabilita_Todas_Opcoes : Boolean;
    function MensagemModal(psTitulo, psMensagem : string; pbFecha : Boolean) : Boolean;

    procedure Carrega_Texto_Scroll;
    procedure Carrega_Parametros;
    function VerificaResolucao : Boolean;
    procedure AnalisaNivelAcesso;
    procedure Checa_FinalidadeSistema;
    procedure Libera_Usuario;
    procedure Abre_Arquivos_Fechados_Indexacao;

    procedure Carrega_DireitosUsuario;
    procedure Verifica_Cria50Mesas;
    procedure Verifica_Imagens_Definidas();

    procedure NetFileDir;
    procedure LocalShareTrue;

    //------------------------------------------------------------------------//
    //------------------------------------------------------------------------//
    //------------------------------------------------------------------------//

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure Image_ParametrosClick(Sender: TObject);
    procedure Image_SairClick(Sender: TObject);

    procedure ReindexaarquivosSysPizza1Click(Sender: TObject);
    procedure TotaisVendaporperiodomesaClick(Sender: TObject);
    procedure CadUsuarios1Click(Sender: TObject);
    procedure CaddeForms1Click(Sender: TObject);
    procedure CaddePermissesdeacessos1Click(Sender: TObject);
    procedure SpeedButton_RelatoriosClick(Sender: TObject);
    procedure EntradadeProduto1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Entradadeprodutoemestoque1Click(Sender: TObject);
    procedure CriaAbreCaixadirio1Click(Sender: TObject);
    procedure Mudanadeusurio1Click(Sender: TObject);
    procedure Calendrio2Click(Sender: TObject);
    procedure VendaemMesas2Click(Sender: TObject);
    procedure Entregas2Click(Sender: TObject);
    procedure Zeraestoque1Click(Sender: TObject);
    procedure Table_ProdAfterPost(DataSet: TDataSet);
    procedure Funcionrio2Click(Sender: TObject);
    procedure Zeravendasdodia1Click(Sender: TObject);
    procedure Cliente2Click(Sender: TObject);
    procedure WindowsExplorer1Click(Sender: TObject);
    procedure AutoEstoque1Click(Sender: TObject);
    procedure Timer_PizzasTimer(Sender: TObject);
    procedure Agenda1Click(Sender: TObject);
    procedure Aniversariantes1Click(Sender: TObject);
    procedure Clientesativos1Click(Sender: TObject);
    procedure Clientesemcomprashxtempo1Click(Sender: TObject);
    procedure Vendasporcategoria1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Testedeposicionamento1Click(Sender: TObject);
    procedure Rotinasespeciaisdegeracaodeacesso1Click(Sender: TObject);
    procedure Bairrossemtaxacadastrada1Click(Sender: TObject);
    procedure Zerataxadetodososbairros1Click(Sender: TObject);
    procedure ProgramaBematechMICI1Click(Sender: TObject);
    procedure VendasdeCaixasnumperiodo1Click(Sender: TObject);
    procedure SenhadosUsurios1Click(Sender: TObject);
    procedure Transferevendasparaumusuario1Click(Sender: TObject);
    procedure Backupdosdadoscopia1Click(Sender: TObject);
    procedure Restauracaodebackup1Click(Sender: TObject);
    procedure VisualizaBackupsFeitosClick(Sender: TObject);
    procedure Reprocessanotasdeentrada1Click(Sender: TObject);
    procedure ReativaodeRegistros1Click(Sender: TObject);
    procedure Validamovimentacaododia1Click(Sender: TObject);
    procedure AbertosFechados1Click(Sender: TObject);
    procedure PosiodeCaixa1Click(Sender: TObject);
    procedure Produtosmaisvendidos1Click(Sender: TObject);
    procedure Zeratabelassistemasumaauma1Click(Sender: TObject);
    procedure Produtossemvendasnumperiodo1Click(Sender: TObject);
    procedure Funcionario4Click(Sender: TObject);
    procedure Receitadodiamotoqueiroentregador1Click(Sender: TObject);
    procedure Conveniencia1Click(Sender: TObject);
    procedure Locaodemesas1Click(Sender: TObject);
    procedure Transacoes1Click(Sender: TObject);
    procedure ReceitaDespesamotoqueiroentregadormensal1Click(Sender: TObject);
    procedure ReceitaDespesagarcommensal1Click(Sender: TObject);
    procedure Estoqueatual1Click(Sender: TObject);
    procedure Receitadodiagarcom1Click(Sender: TObject);
    procedure Produtosnopontoderessuprimento1Click(Sender: TObject);
    procedure Totaldevendasporperodomesa2Click(Sender: TObject);
    procedure Tabelas1Click(Sender: TObject);
    procedure ImageBackupClick(Sender: TObject);
    procedure LancamentodeDespesas1Click(Sender: TObject);
    procedure Despesasdodia1Click(Sender: TObject);
    procedure Resumodocaixa1Click(Sender: TObject);
    procedure BitBtn_DadosEmpresaClick(Sender: TObject);
    procedure SairdoSistema1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SobreaEmpresausuaria1Click(Sender: TObject);
    procedure Encerrante1Click(Sender: TObject);
    procedure GeraNumeracaodefichasmesa1Click(Sender: TObject);
    procedure Bairros2Click(Sender: TObject);
    procedure CartodeCrdito2Click(Sender: TObject);
    procedure Categoria2Click(Sender: TObject);
    procedure Clientes5Click(Sender: TObject);
    procedure Despesas2Click(Sender: TObject);
    procedure Fornecedores2Click(Sender: TObject);
    procedure Funcionarios2Click(Sender: TObject);
    procedure Materiaprima2Click(Sender: TObject);
    procedure Mesas2Click(Sender: TObject);
    procedure Produto2Click(Sender: TObject);
    procedure Taxa2Click(Sender: TObject);
    procedure TipoFuncionario2Click(Sender: TObject);
    procedure Bairros1Click(Sender: TObject);
    procedure CartaodeCredito1Click(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Despesas1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Funcionarios1Click(Sender: TObject);
    procedure Materiaprima1Click(Sender: TObject);
    procedure Mesas1Click(Sender: TObject);
    procedure Produtos3Click(Sender: TObject);
    procedure Taxa1Click(Sender: TObject);
    procedure TipoFuncionario1Click(Sender: TObject);
    procedure InformacoesSobreSistemaOperacionalClick(Sender: TObject);
    procedure Table_BackupAfterPost(DataSet: TDataSet);
    procedure GerenciadorBematechdeComandos1Click(Sender: TObject);
    procedure ComandosPrincipais1Click(Sender: TObject);
    procedure ZeraestoquedeMateriaprima1Click(Sender: TObject);
    procedure AutoEstoquedeMateriaprima1Click(Sender: TObject);
    procedure CouvertArtistico1Click(Sender: TObject);
    procedure RankingdeFuncionarios1Click(Sender: TObject);
    procedure EntradadeMateriaprimaemestoque1Click(Sender: TObject);
    procedure EmissaodeRecibo1Click(Sender: TObject);
    procedure Materiaprima3Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure SobreoSistema1Click(Sender: TObject);
    procedure Spb_ConvenienciaClick(Sender: TObject);
    procedure Spb_EntregaClick(Sender: TObject);
    procedure Spb_MesasClick(Sender: TObject);
    procedure Spb_BotaoEsqMouseClick(Sender: TObject);
    procedure Spb_BackupClick(Sender: TObject);
    procedure Spb_SairClick(Sender: TObject);
    procedure Spb_CalendarioClick(Sender: TObject);
    procedure Spb_ConfiguracoesClick(Sender: TObject);
    procedure Spb_CaixaDiarioClick(Sender: TObject);
    procedure Imagem_EsquerdaDblClick(Sender: TObject);
    procedure Imagem_direitaDblClick(Sender: TObject);
    procedure Unidade1Click(Sender: TObject);
    procedure Table_ValidadeAfterPost(DataSet: TDataSet);
    procedure EntradadeMateriaprima1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Unidades1Click(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure Empresas2Click(Sender: TObject);
    procedure QuitacaodeValesClientes1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Criaatalhodesktop1Click(Sender: TObject);
    procedure FreqnciadeclientesEntrega1Click(Sender: TObject);
    procedure FuncionriosporEmpresa1Click(Sender: TObject);
    procedure SBMensagemDrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure SBMensagemDblClick(Sender: TObject);
    procedure ThreadedTimer_BreakTimer(Sender: TObject);
    procedure Table_ManutAfterPost(DataSet: TDataSet);
    procedure Produtosexcludos1Click(Sender: TObject);
    procedure Entregapadro1Click(Sender: TObject);
    procedure Entregarpida1Click(Sender: TObject);
    procedure ThreadedTimer_AlertaMudancaUsuarioTimer(Sender: TObject);
    procedure Unidade2Click(Sender: TObject);
    procedure JvGradientHeaderPanel_MudancaUsuarioDblClick(
      Sender: TObject);
    procedure TaxasevaloresporOrdemdeBairroalfabtica1Click(
      Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

  private
    //function ResultOK(DriverResult: DWORD): Boolean; // funcao integrante (gerar som em autofalante)
    { Private declarations }
    XPMenu_Syspizza : TXPMenu;

    procedure Habilita_Barra_Botoes( bAcao : Boolean );
    procedure Elimina_Arq_Temporarios_Disco;
    procedure Verifica_Produtos_Iguais_Tamanhos_Diferentes;


  public

    lRetorno : Boolean;

    Arquivo : TextFile;
  
    // Tempo em milissegundos de espera até tentar abrir arquivo de
    // controle de chave de acesso em rede...
    nTempoEsperaGravacao                                    : integer;

    Par_DiretorioImpressaoArquivo, Par_NomeImpressaoArquivo : String;

    // Diretório padrão dos dados do sistema.
    cDiretorioAlias : String;

    lRegistrouSistema : Boolean;

    ImpressoraDefault : String;

    // Dados referentes ao nivel do usuário....
    Cod_User      : integer;
    Nivel         : integer; // 1 - Supervisor   2 - Gerência   3 - Operacional
    NomeUser      : string;
    Data_Sistema  : TDateTime;
    Valor_MaxDesc : double;
    bAlterouDataTrabalho : Boolean;

    //////////
    // Armazena a resolução atual da máquina, para ao sair do sistema, retornar....
    ///////////
    Res_X, Res_Y       : integer;
    PosicaoX, PosicaoY : integer;

    //--

    // Variáveis públicas que guardam o nome do arquivo temporário criado em disco,
    // para caso a tela que os usa seja aberta de novo, este arquivo seja usado
    // novamente e caso o usuário queira selecionar o registro já existente
    // no arquivo, ele possa fazê-lo, evitando ele digitar de novo

    cNomeArquivoTempBairroFrmPesqBairro, cNomeArquivoTempBairroFrmPesqBairro2,
    cNomeArquivoTempBairroFrmPesqBairro3 : String;

    cNomeArquivoTempPesqLogradouro : String;

    //--

    // Variáveis para armazenamento de parâmetros de usuário para rotinas especiais...
    Caixa_RelatorioTotaisVenda, Caixa_AlteradadosNota, Caixa_SalvadadosNota : string[1];
    Caixa_MudaVenda, Caixa_RelatorioTotais, Caixa_ReabreVenda, Caixa_PagtoParcial : string[1];
    Caixa_F10, Caixa_F11 : string[01];

    Entrega_AlteradadosNota, Entrega_SalvadadosNota, Entrega_ReabreVenda : string[01];
    Entrega_F10, Entrega_F11, Entrega_Excluir                            : string[01];

    Cvn_RelatorioTotaisVenda, Cvn_AlteradadosNota, Cvn_SalvadadosNota, Cvn_RelatorioTotais : string[1];
    Cvn_ReabreVenda : string[01];
    Cvn_F10, Cvn_F11 : string[01];

    nQtdeTotalTesteImpressora : integer;

    //------------------
    // Definição de variáveis públicas para armazenamento de parâmetros.
    //------------------------------------------------

    //--------
    // 1ª Aba. Parâmetros gerais
    //------------------------

    FraseRodape   : string;
    Frase_Rolagem : string;
    Frase_Rolagem_Caixa, Frase_Rolagem_Entrega, Frase_Rolagem_Conveniencia : string;

    NomeEmpresa : string;
    EnderecoEmpresa : string;
    FoneEmpresa : string;
    CGCEmpresa : string;
    BairroEmpresa : string;
    CepEmpresa    : string;
    CidadeEmpresa : string;
    UFEmpresa     : string;
    IEEmpresa     : string;

    //----------
    // 2ª Aba. Entregas
    //--------------------------

    Entrega_ImprimedadosCliente : string[01];
    Par_ImprimeObservacaoEntrega : string[01];
    Par_TipoCupomEntrega, Par_LanctoProdutos : string;
    Par_LancaProdNovamente : string[01];
    Par_FocoCursor : string[01];
    Par_ImprimeArquivoEntrega, Par_TipoImpressora, Par_Porta, Par_ImpCopiaCmdCozinhaEnt, Par_ImpCmdFechAbEnt: string;
    Qtde_AvancosLinhaEnt : integer;
    QtdeCaracteresNormalImpEnt, QtdeCaracteresComprimidoImpEnt, QtdeCaracteresExpandidoImpEnt : integer;

    // Impressora Cozinha (Entregas)...
    Par_ImpCmdCzEnt, Par_TipoImpEntCz, Par_PortaEntCz: string;
    Qtde_AvancosLinhaEntCz, QtdeCaracNormalImpEntCz, QtdeCaracComprimidoImpEntCz, QtdeCaracExpandidoImpEntCz : integer;
    Par_CmdAbrePortaEntCz, Par_CmdImprimePortaEntCz : string;

    Par_ComandoAbrePortaEntrega, Par_ComandoImprimePortaEntrega: string;

    Par_CadastraClienteDepois, Par_ExibeHistEntregas, Par_ForcaEscolhaEntregador, Par_AbreEntregaRapida, Par_UsaEntregFixo : String[01];
    Par_AbreEntParaNovoCliente : String[01];

    //---------
    // 3ª Aba: Conveniência.
    //----------------------------

    Par_LanctoProdutosConv : string;
    Par_FocoCursorConv : string[01];
    Par_LancaProdNovConv : string[01];

    Par_LimpaConvenienciaDiaAnterior : String;
    Par_QtdeDiasLimpaConveniencia : integer;

    Par_ImprimeArquivoConveniencia, Par_TipoImpressoraConv, Par_PortaConv, Par_TipoCupomConv : string;
    Qtde_AvancosLinhaConv : integer;
    QtdeCaracteresNormalImpConv, QtdeCaracteresComprimidoImpConv, QtdeCaracteresExpandidoImpConv : integer;

    Par_ComandoAbrePortaConv, Par_ComandoImprimePortaConv: string;

    Par_PrefConv_Func, Par_PrefConv_TipoP, Par_PrefConv_Clie, Par_PrefConv_Obs : string[01];

    Par_FiadoConvViraValeCliente, Par_ImprimeCmdFiadoConv, Par_SolConfImpCmdFiadoCvn : String;

    //---------
    // 4ª Aba: Venda em Mesa/Ficha
    //---------------------

    Par_ImprimeArquivoMesa, Par_TipoImpressoraMesa, Par_PortaMesa: string;
    Par_TipoCupomMesa : string;
    Qtde_AvancosLinhaMesa : integer;
    QtdeCaracteresNormalImpMesa, QtdeCaracteresComprimidoImpMesa, QtdeCaracteresExpandidoImpMesa : integer;
    Par_TipoImpressaoMsgCupomMesa : string[10];
    Par_ComandoAbrePortaMesa, Par_ComandoImprimePortaMesa : string;
    Par_LanctoProdutosMesa : string;
    Par_FocoCursorMesa : string[01];
    Par_LancaProdNovMesa : string[01];

    Par_LimpaVendaMesaDiaAnterior : String;
    Par_QtdeDiasLimpaVendaMesa : integer;

    // Impressora Cozinha (Venda em Mesa)...
    Par_ImpCmdCzMesa, Par_TipoImpMesaCz, Par_PortaMesaCz: string;
    Qtde_AvancosLinhaMesaCz, QtdeCaracNormalImpMesaCz, QtdeCaracComprimidoImpMesaCz, QtdeCaracExpandidoImpMesaCz : integer;
    Par_CmdAbrePortaMesaCz, Par_CmdImprimePortaMesaCz : string;


    Par_ImprimeArquivoImpPadrao, Par_ImpressoraPadrao, Par_PortaImpressoraPadrao: string;
    Qtde_AvancosImpPadrao : integer;
    QtdeCaracteresNormalImpPadrao, QtdeCaracteresComprimidoImpPadrao, QtdeCaracteresExpandidoImpPadrao : integer;
    Par_ComandoAbrePortaPadrao, Par_ComandoImprimePortaPadrao                  : string;
    Par_PrefMesa_Data, Par_PrefMesa_QtdeP, Par_PrefMesa_Obs, Par_PrefMesa_Func : string[01];
    Par_ImprimeObsItemMesa                                                     : string[01];

    Par_FiadoMesaViraValeCliente, Par_ImprimeCmdFiadoMesa, Par_SolConfImpCmdFiadoMesa : String;

    Par_PermiteCadastrarMesaLivre, Par_VendaMesaUsaAdicionais                         : String;

    //---------
    // 5ª Aba: Imagens e ícones
    //--------------------

    // Observação: As outras imagens são carregadas no decorrer da execução do sistema.

    // Parâmetros para guardar a imagem default nos relatórios...
    Par_ImagemRelatorios : string;

    //-------------
    // 6ª Aba: Configurações [1]
    //------------------------

    // Configura se usuário quer que o sistema considere o valor da gorjeta do garçom
    // e/ou valor da taxa do motoqueiro ao montante da venda e consequentemente ao caixa...
    Par_AdicionaVlrGarcomaoCaixa, Par_CobraSempreVlrGarcom, Par_AdicionaVlrTaxaaoCaixa : string[01];
    Par_LimpaEntregasDiaAnterior, Par_FiadoEntregaViraValeCliente                                                      : String;
    Par_ImprimeCmdFiadoEntrega, Par_SolConfImpCmdFiadoEnt, Par_ImpCupomEntregaSeFiado, Par_BuscaClienteEntregaF1Por    : String;
    Par_AcionaF2EntBuscaClieCombobox, Par_LiberaAutomaticamenteEntrega, Par_PermiteLanctoVendasClienteMensalistas      : String;
    Par_PergFiadoEntrViraVale, Par_PadEntTipoPagto                                                                     : String;
    Par_PedeSenhaClieRecemCadastrado, Par_LanctoAutomProdEntClieMensalista, Par_FechaAutEntregaAposLanctoProdEntPadrao : string;
    Par_EntAcionaSempreF1, Par_LeDadosUltimaVenda                                                                      : String;
    Par_ImprimeCupomEntrega, Par_PedeConfImpCupomEntrega, Par_ImprimeTituloDadosClienteCpEntrega                       : String;
    Par_ImprimeFechCpTrocoTrocoPara, Par_AlertaAltTaxaManual, Par_AnotaObsDadosUltimaEntregaLida                       : String;

    Par_LanctoAutomaticoProdPadraoEmpresaClienteMensalista, Par_FechAutomaticamenteEntregaAposLactoProdPadraoEmpresa   : String;
    Par_UsaAnimacaoImagens                                                                                             : String;

    Par_AcresceDecresceEquiparaVlrProdMesa, Par_AcresceDecresceEquiparaVlrProdEntrega, Par_AcresceDecresceEquiparaVlrProdConv : String;
    Par_ADE_VlrProdDifMesa, Par_ADE_VlrProdDifEntrega, Par_ADE_VlrProdDifConv                                                 : double;


    Par_QtdeDiasLimpaEntrega                                                                                           : integer;
    
    Par_PadEntEntregador, Par_PadEntCodProduto1, Par_PadEntCodProduto2, Par_PadEntCodProduto3, Par_PadEntCodProduto4   : integer;
    Par_PadEntCodProduto5                                                                                              : integer;

    Par_TelaPadraoEntrega                                                                                              : String;

    // Parâmetros de controle do limite dos Mensalistas...
    Par_UtilizaLimiteMensalistas                                                                                       : String;
    Par_LimiteMensalistaPor                                                                                            : String;
    Par_BloqueiaVendaMaiorqueLimite                                                                                    : String;
    Par_LiberaVendaMaiorqueLimiteSupervisor                                                                            : String;
    Par_AlertaConsumoLimite                                                                                            : String;
    Par_PercMinimoAlertaLimite                                                                                         : Double;
    Par_LancaMensalistaPor                                                                                             : String;
    Par_BotaoPadraoAoFecharMensalista                                                                                  : Integer;

    Par_ImpCF_ImprimeCabecalhoCompleto                                                                                 : String;
    Par_ImpCF_ImprimeDadosCompletoCliente                                                                              : String;
    Par_ImpCF_ImprimeEmpresaEmpregadora                                                                                : String;
    Par_ImpCF_ImprimeLocalAssinaturaCliente                                                                            : String;
    Par_ImpCF_ImprimeCPFCNPJCliente                                                                                    : String;

    //-----------------------------------------------
    // Configurações de campos a serem usados na tela de entrega direta
    //----------------------
    Par_EntregaRapida_UsaBalcao, Par_EntregaRapida_UsaMeiaPizza, Par_EntregaRapida_UsaAdicional : String;
    Par_EntregaRapida_UsaPainel5Metades                                                         : String;

    // Define se o sistema excluirá definitivamente os registros que vão sendo
    // excluídos.
    Par_ExcluiDefinitivamente : string;

    // Armazena se o sistema está configurado para backup automático.
    Par_BackupAutomatico : string[01];

    // Parâmetros sobre se utiliza múltiplos garçons numa mesma venda.
    Par_MultiplosGarconsnaVenda : string[01];

    // Armazena a finalidade de uso do sistema, seja uma lanchonente, bar, restaurante,
    // conveniência ou pizzaria.
    Par_FinalidadeSistema, Par_NomeSistema : string;
    Par_FechaCxOutrodia                    : string[01];
    Par_UtilizaCaixaDiario                 : String[01];
    Par_OrdemRelCategoria                  : string[30];

    // Parâmetros que definem se exibe alerta de vendas ainda abertas ou não...
    Par_ExibeAlertaMesa, Par_ExibeAlertaEntrega, Par_ExibeAlertaConv : String[01];

    // Armazena o valor de tolerância para fechamento do caixa...
    Par_LimVlrCaixa : double;

    // Parâmetros que definem se exibe alerta quando inserir produtos sem baixa de estoque...
    Par_VerifProdSembaixaEst, Par_AlertaEstoqueNegativoZerado : String[01];

    // Informa se o usuário quer que ao teclar <F2> a tela de pesquisa já seja
    // chamada.
    Par_AcionaPesquisaMesaTeclaF2 : string[01];

    // Informa se o usuário quer que retotalize um mesmo produto de um mesmo
    // funcionário
    Par_RetotalizaProdutoFunc : string[01];

    // Parâmetros que definem se quer salto automático de folha e a qtde. máxima de linhas
    // por página
    Par_UtilizaSaltodePagina : String[01];
    Par_QtdeMaxLinhas : integer;

    Par_VerificaCaixaAberto, Par_PermiteAbrirCxVenda, Par_AvancaFolhaaoFinal : string[01];
    Par_UsaMsgConfirmacaoTelasCadCxDiario, Par_ValidaMovAnteriorCxDiario     : string[01];
    Par_PodeFecharCxComValorAbaixo                                           : string[01];

    Par_QtdeMaximaUsuariosSupervisor                                         : Integer;
    Par_ExcluiDefinitivamenteVendas                                          : String;

    Par_UsaMsgConfirmacaoTelasCadastro : String;

    // Parâmetros especiais.
    Par_ImpressoraFiscal : string[01];
    VerificaImpressoraAtiva, P_EscondeBotaoIniciar, HabilitaProtecaoTela, LimitaMouse : string[01];
    EscondeSysPizzaBarraTarefa, EscondeBarradeTarefa, Par_Oculta_Relogio : string[01];
    MostraEntregadores    : string[01];
    Intervalo_Agendamento : string[10];
    Par_OperaemRede       : String[01];

    //

    // Parâmetros sobre se ao gerar acesso o padrão é: Incluir = Sim, Alterar = Sim, Excluir = Sim
    Par_AcessoIncluir, Par_AcessoAlterar, Par_AcessoExcluir : string[01];

    // Parâmetros sobre composição de Produto
    Par_UtilizaComposicao,  Par_TrabalhaMargemPerda, Par_AlertaProdSemComposicao : string[01];

    // Parâmetros sobre Couvert Artístico.
    Par_UtilizaCouvert : string[01];

    // Configuração sobre cada dia da semana...

    // Domingo.
    Par_UsaCouvertDomingo : string[01];
    Par_ValorCouvertDomingo : double;
    Par_HorarioIniCouvertDomingo, Par_HorarioFimCouvertDomingo : string[05];

    // Segunda-feira.
    Par_UsaCouvertSegunda : string[01];
    Par_ValorCouvertSegunda : double;
    Par_HorarioIniCouvertSegunda, Par_HorarioFimCouvertSegunda : string[05];

    // Terça-feira.
    Par_UsaCouvertTerca : string[01];
    Par_ValorCouvertTerca : double;
    Par_HorarioIniCouvertTerca, Par_HorarioFimCouvertTerca : string[05];

    // Quarta-feira.
    Par_UsaCouvertQuarta : string[01];
    Par_ValorCouvertQuarta : double;
    Par_HorarioIniCouvertQuarta, Par_HorarioFimCouvertQuarta : string[05];

    // Quinta-feira.
    Par_UsaCouvertQuinta : string[01];
    Par_ValorCouvertQuinta : double;
    Par_HorarioIniCouvertQuinta, Par_HorarioFimCouvertQuinta : string[05];

    // Sexta-feira.
    Par_UsaCouvertSexta : string[01];
    Par_ValorCouvertSexta : double;
    Par_HorarioIniCouvertSexta, Par_HorarioFimCouvertSexta : string[05];

    // Sábado.
    Par_UsaCouvertSabado : string[01];
    Par_ValorCouvertSabado : double;
    Par_HorarioIniCouvertSabado, Par_HorarioFimCouvertSabado : string[05];

    //--

    // Parâmetro que informa ao sistema se deve utilizar a nomemclatura de ficha ou mesa.
    Par_NomemclaturaMesa        : string[10];

    Par_VinculaFichaCliente, Par_SugereProximaFicha, Par_SugereProximaMesa, Par_PermiteVariosPagFicha : String;
    Par_ReUtilizaNFicha                                                                               : String;
    Par_VlrFichaHomem, Par_VlrFichaMulher, Par_VlrInicialFichaCortesia, Par_VlrInicialFichaCamarote3P, Par_VlrInicialFichaCamarote6P, Par_VlrFichaOutros : double;
    Par_UtilizaNumerosPerdidosFicha, Par_AlertaRestaXFichas : String;
    Par_QtdeFichasRestantes : integer;

    // Parâmetros sobre configuração de alerta sonoro...
    Par_QuerAlertaSonoro : string[01];
    Par_TipoAlertaErro : string;
    Par_BeepCliquebotoes : string[01];

    Par_TrabalhaSabado, Par_TrabalhaDomingo : string[01];

    // 8ª. aba: Atalhos de produtos.
    Par_1Atalho, Par_2Atalho, Par_3Atalho, Par_4Atalho, Par_5Atalho, Par_6Atalho : integer;
    Par_7Atalho, Par_8Atalho, Par_9Atalho : integer;

    Erro_Arquivo_Icone : string[01];
    Par_ArquivoIcone   : string;

    //--

    Par_PrecoMPizzaEnt, Par_PrecoMPizzaMesa : String;

    //--

    // Balança Eletrônica...
    Par_UsaBalancaEletronica                                                    : String;
    Par_QtdeDigComecamCodBarraBalanca, Par_QtdeDigitosCodigoBarrasBalanca       : Integer;

    Par_PosicaoInicCodProdCodBarraBalanca, Par_PosicaoFimCodProdCodBarraBalanca : Integer;

    Par_PosicaoInicPesoCodBarraBalanca, Par_PosicaoFimPesoCodBarraBalanca       : Integer;

    Par_ImprimeUsandoCaracDefault, Par_CaracDefaultImpCupom                     : String;

    Par_RetiraEfeitosImprimirCupomDefaultPrinter                                : String;

    // Entrega rápida
    Par_ImprimeDadosClienteNoCabecalho                                          : String;
    Par_EntRap_PerguntaSeImprimeCupomAofinalizarPedido                          : String;

    Par_EntRap_ImpComandaPadraoAofinalizarPedido                                : String;
    Par_EntRap_ImpComandaCozinhaAofinalizarPedido                               : String;
    Par_EntRap_ImpAmbasComandasAofinalizarPedido                                : String;

    //--

    Valor_Garcom : double;
    TipoComissaoGarcom : string[10];

    TipoImpressaoCupom : string;

    // Flag que define se botão fechar (x) fica habilitado ou não...
    Par_Exibebotaofechar : string[01];

    // Variável que armazena o código do usuário antigo antes de mudar...
    Cod_UserAntigo : integer;

    VarMudandoImagensFrmPrincipal : Boolean;

    Par_UsuCriaAbreCaixa, Par_UsuReabreCaixa : string[01];

    //--

    Par_ControleLimiteLiberado : String;

    //--

    lAnaliseDetalhada, lPesquisando, lBreak, lCancelaBusca : Boolean;

    Arquivos_Temporarios_Eliminados : Boolean;

    bBackup_Executado_Sucesso : Boolean;

    //--

    bProdutosIguaisTamanhosDiferentes : Boolean;

    { Public declarations }
  end;

Type
 TNumeros = array[1..10] of string[15];
 TMoeda   = array[1..3,1..2] of string[10];

//-----------------//

procedure Envia_Email( cPortaSMTMP, cHostSMTMP, cUserNameSMTMP, cSenhaUserSMTMP,
                              cEmailOrigem, cName, cEmailDestino, cAssuntoEmail, cCorpoEmail, cCaminhoArqAnexo : WideString); stdcall;
external 'LibMatrix.dll' name 'Envia_Email';

// Exemplo de uso:  Envia_Email( '465', 'smtp.gmail.com', 'webomarmatrix@gmail.com', '85214736', 'webomarmatrix@gmail.com', 'Omar M. Haddad (via DLL)', 'omarhaddadm@gmail.com', 'Assunto do e-mail', 'este e-mail é apenas um teste', '');

//------------------------------------------------------------//

var
  FrmPrincipal: TFrmPrincipal;

  lgErro_Arquivo_Animacao : Boolean;

  // Objetivo: Vetor que armazena arquivos a serem zerados sempre que o sistema é inicializado.
  // ( PosCaixa.db, Temp*.db, Tmp*.db, Tmp_Bair.db, Tmp_Esto.db )

  Tabela_Zera_Arquivos : Array[1..14] of String = ('Etiqueta.db','PosCaixa.db','Temp.db','Temp_Mot.db','Temp_Rec.db','Tmp_0001.db','Tmp_0002.db','Tmp_0003.db','Tmp_0004.db','Tmp_0005.db','Tmp_0006.db','Tmp_0007.db','Tmp_Bair.db','Tmp_Esto.db');

  DataBIOS_G : String;

  cEject, c10cpi, c12cpi, c17cpi, cIExpandido, cFExpandido, cDefault, cINegrito, cFNegrito, cIItalico, cFItalico, cIEnfatizado               : String;
  cFEnfatizado, cIPassadaDupla, cFPassadaDupla, cISobrescrito, cISubescrito, cIFSublinhamento, cICondensado, cFCondensado, cResetaImpressora : String;

  //--

  aMascara_CPF  : string = '999.999.999-99;0;_';
  aMascara_CGC  : string = '99.999.999/9999-99;0;_';
  aMascara_Fone : string = '\(99\)9999\-9999;1;_';
  aMascara_CEP  : string = '99999\-999;1;_';
  aMascara_Data : string = '!99/99/0000;1;_';

  aMascara_HoraInicial : string = '00\:00;0;_';
  aMascara_HoraFinal   : string = '00\:00;0;_';

  aMascara_ValoresAltos  : string = 'R$ 999,999,990.00;1;_';
  aMascara_ValoresBaixos : string = 'R$ 999,990.00;1;_';
  aMascara_Percentagem   : string = '#0.00';
  aMascara_NumerosAltos  : string = '###,###,##0.00';
  aMascara_NumerosBaixos : string = '###,##0.00;1;_';

implementation

uses U_Sobre, U_Backup, U_Restore, U_Clientes, U_Taxa,
     U_MPrima, U_Caixa, U_Param, U_Produtos, U_InformacoesInstalacao,
     U_Funcionarios, U_Mesas, U_Calendario, U_Acesso, U_SRelTotaisPeriodo,
     U_SRelTotaisVendas, U_Usuarios, U_Forms, U_PermissaoAcesso, U_CxDiario,
     U_FrmEntradaProdutoEstoque, U_Fornecedores, U_SRelEntProdEst,
     U_Bairros, U_TipoFuncionario, U_EntregaPizzas, U_MudaUsuario,
     U_SRelValeFunc, U_ZeraVendadia, U_SRelValeClie, U_AutoEstoque,
     GwIoPm, GwPortIO, GwUtil_1, U_Info, U_ReceitaDiaria,
     U_SRelReceitaMotoqueiro, U_Conveniencia, U_Categoria, U_Agenda,
     U_SEtiq_Aniv, U_SClientesAtivos, U_SRelClientesSemCompras,
     U_SRelVendasCategoria, U_SRelCaixasAbertosFechados, U_TestePosicionamento,
     U_RotinasEspeciaisAcesso, U_LBairrosSemTaxaCadastrada, MP20MICI,
     U_SRelVendasCaixasNumPeriodo, U_SenhaUsuarios,
     U_TransfereVendas, U_NotaEntradaEstoque, U_VisualizaBackups,
     U_ReprocessaNotaEntrada, U_ReativaRegistros, U_VerificacaoVendas,
     U_SRelPosicaoFinanceiraCaixa, U_SRelProdutosMaisVendidos, U_ZeraTabelas,
     U_SRelProdutossemVendas, U_LanctoValesFuncionario, U_LocacaoMesas,
     U_ReceitaDespesaGarcom, U_SEstoqueAtual, U_ReceitaDiariaGarcom,
     U_SPontoRessuprimento, U_Transacao, U_VerificaQtdeRegs, U_Despesa,
     U_LanctoDespesas, U_SRelDespesasdodia, U_ResumoCaixa, U_EmpresaUsuaria,
     U_ErroRotina, U_Encerrante, U_GeraNumeracaoFichasMesa,
     U_CartaoCredito, BemaTeste, U_ImpressoraFiscalPrincipaisComandos,
     U_AutoEstoqueMateriaPrima, U_RelCouvertArtistico,
     U_SRelRankingFuncionarios, U_NotaEntradaEstoqueMP, U_TravaTela,
     U_SRelCouvertArtistico, U_SImpressaoRecibo, U_LMateriaPrima,
     U_SRelProdutos, U_Unidade, U_SRelEntMPEst, LibFuncoes, U_ErroExecucao,
     U_ErroOperacaoIlegal, UEscolhaImpressaoArquivo, U_Empresas,
     U_QuitacaoValesClientes, uMensagemModal, U_SRelFrequenciaClientes,
     U_SRelfuncsEmpresa, U_VendaRapida, U_Backup_Winrar,
     U_DigitaNovaDataTrabalho, U_VariaveisPublicas, U_SRelProdutosExcluidos,
     U_EntregaPizzasDireta, U_AlertaMododeUso, U_ErroBinario,
     U_ImportacaoPlanilhas, U_ErroCorrupcaoNomesArquivos1,
     U_ErroCorrupcaoNomesArquivos2, U_Splash, U_ErroTelaAzulWindows,
     U_ErroTelaAzulWindows_8, U_LTaxasPorOrdemBairro;

{$R *.DFM}

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.SairdoSistema1Click(Sender: TObject);
begin

  If Cod_UserAntigo > 0 then
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Houve um mudança do usuário que acessou o sistema para outro usuário...'+#13+#13+'Antes de finalizar o sistema, tecle [ Ctrl + F10 ] para retornar ao usuário inicial e depois saia do sistema !', mtError, [mbOk], 0 );

      Exit;
    end;

  If (QuestionaSaidadoSistema() = False) then Exit;

  //--

  FinalizaSistema();
end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.QuestionaSaidadoSistema : Boolean;
begin

  Alerta('Saida do sistema');
  If Application.MessageBox('Deseja realmente sair do sistema SYSPIZZA ?', 'SAÍDA DO SISTEMA', MB_ICONQUESTION + mB_YESNO + MB_DEFBUTTON1) = IDNO then
    Result := False
  Else
    Result := True;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.FinalizaSistema;
Var
  I : integer;
begin

  OcultaRelogio( False );
  //ScreenSaver( False );
  EscondebotaoIniciar( False );

  Libera_area_mouse();

  //Desabilita_BotaoFechar( False );

  If (Cod_User <> 1) then
    Trava_TeclasespeciaisWindows( False );

  Libera_Usuario();

  Elimina_Arq_Temporarios_Disco();

  //--

  If (Par_BackupAutomatico = 'S') and (Cod_User <> 1) then
    Executa_Backup()
  Else If (Par_BackupAutomatico = 'N') and (Cod_User <> 1) then
    begin
      Som(9);
      MessageDlg('Atenção...'+#13+#13+'Mantenha seus backups (cópia de segurança) sempre atualizados !!!'+#13+#13+'Ela é a sua segurança !', mtInformation, [mbOk], 0 );
    end;

  //--

  Registra_Ultimo_Acesso();

  // Codigo para fechar todas as tabelas abertas....
  With Session do
  For i := 0 To DatabaseCount-1 do
    Databases[i].Close;

  Application.Terminate;

  EscondeTaskBar( True );

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Timer1Timer(Sender: TObject);
begin

  //SBMensagem.Panels[1].Text := FormatDateTime('dd/mm/yyyy', Date());

  SBMensagem.Panels[1].Text := FormatDateTime('dd/mm/yyyy', FrmPrincipal.Data_Sistema);
  SBMensagem.Panels[2].Text := FormatDateTime('hh:mm:ss', SysUtils.Time );

  SBMensagem.Repaint;
  SBMensagem.Refresh;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.SbtSairClick(Sender: TObject);
begin

  SairdoSistema1Click(Nil);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.AbreJanelaMSDOS1Click(Sender: TObject);
begin

  WinExec('COMMAND.COM', SW_MAXIMIZE );

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin

  If (Key = #13) then Begin
    Key := #0;
    Perform( Wm_NextDlgCtl, 0, 0 );
  end;

  If Key in [',','.'] then
    Key := DecimalSeparator;

  If (Key = #27) then
    begin
    
      If lPesquisando = True then
        begin
          lBreak := True;

          Key := #0;
          Exit;
        end;

      //--

      Key := #0;

      //--

      SairdoSistema1Click(Nil);
    end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Carrega_Texto_Scroll;
Var
  Frase : string;
begin

  SecretPanel_Alerta.Lines.Clear;
  Frase := Frase_Rolagem;

  SecretPanel_Alerta.Lines.Add( Frase );
  SecretPanel_Alerta.Active := True;

  //--

  SecretPanel_Logo.Lines.Clear;
  SecretPanel_Logo.Lines.Add('SysPizza - Sistema de Controle de Pizzarias, Bares, Lanchonetes, Restaurantes e Conveniências - '+cDadosEmpresaScrollRodape);
  SecretPanel_Logo.Active := True;
  
  //--

  FrmPrincipal.Refresh;
end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Carrega_Parametros;
Var
  nValor : double;
  code   : integer;
  nMenu  : TMenuItem;
begin

  If (FrmParametros <> Nil) and ( Assigned(FrmParametros) ) then
    begin
      Table_Parametro.Close;
      Table_Parametro2.Close;
    end;

  Table_Parametro.Open;
  Table_Parametro2.Open;

  //--

  // Frase Rodapé.
  If Table_Parametro.FieldByName('Frase_Rodape').AsString <> '' then
    FraseRodape := Trim(Table_Parametro.FieldByName('Frase_Rodape').AsString)
  Else
    //FraseRodape := 'Obrigado pela preferência. Volte sempre!';
    FraseRodape := '';


  // Carregando a frase para ficar em scroll na tela principal do sistema.
  If Table_Parametro.FieldByName('Texto_Rolagem').Value <> Null then
    Frase_Rolagem := Table_Parametro.FieldByName('Texto_Rolagem').AsString
  Else
    Frase_Rolagem := 'Sistema SysPizza - Pizzarias, Bares, Lanchonetes, Conveniências e Restaurantes - Desenvolvido por '+cNomeEmpU+'. Fone: '+cFone1EmpU+' e/ou '+cFone2EmpU;


  // Carregando a frase para ficar em scroll na tela de caixa.
  If Table_Parametro.FieldByName('Frase_Rolagem_Caixa').Value <> Null then
    Frase_Rolagem_Caixa := Table_Parametro.FieldByName('Frase_Rolagem_Caixa').AsString
  Else
    Frase_Rolagem_Caixa := 'Sistema SysPizza - Pizzarias, Bares, Lanchonetes, Conveniências e Restaurantes - Desenvolvido por '+cNomeEmpU+'. Fone: '+cFone1EmpU+' e/ou '+cFone2EmpU;


  // Carregando a frase para ficar em scroll na tela de entregas
  If Table_Parametro.FieldByName('Frase_Rolagem_Caixa').Value <> Null then
    Frase_Rolagem_Entrega := Table_Parametro.FieldByName('Frase_Rolagem_Entrega').AsString
  Else
    Frase_Rolagem_Entrega := 'Sistema SysPizza - Pizzarias, Bares, Lanchonetes, Conveniências e Restaurantes - Desenvolvido por '+cNomeEmpU+'. Fone: '+cFone1EmpU+' e/ou '+cFone2EmpU;


  // Carregando a frase para ficar em scroll na tela de entregas
  If Table_Parametro.FieldByName('Frase_Rolagem_Conv').Value <> Null then
    Frase_Rolagem_Conveniencia := Table_Parametro.FieldByName('Frase_Rolagem_Conv').AsString
  Else
    Frase_Rolagem_Conveniencia := 'Sistema SysPizza - Controle de Pizzarias, Bares, Lanchonetes, Conveniências e Restaurantes - Desenvolvido por '+cNomeEmpU+'. Fone: '+cFone1EmpU+' e/ou '+cFone2EmpU;


  If Table_Parametro.FieldByName('TipoImpressaoCupom').AsString = 'Modo Gráfico' then
    TipoImpressaoCupom := 'Modo Gráfico'
  Else If Table_Parametro.FieldByName('TipoImpressaoCupom').AsString = 'Modo Texto' then
    TipoImpressaoCupom := 'Modo Texto';


  // Nome da empresa.
  If Table_Parametro.FieldByName('Nome_Empresa').AsString <> '' then
    NomeEmpresa := Trim(Table_Parametro.FieldByName('Nome_Empresa').AsString)
  Else
    NomeEmpresa := cNomeEmpU;


  // Endereço empresa
  If Table_Parametro.FieldByName('Endereco_Empresa').AsString <> '' then
    EnderecoEmpresa := Trim(Table_Parametro.FieldByName('Endereco_Empresa').AsString)
  Else
    EnderecoEmpresa := cEnderecoEmpU;

  // Fone Empresa
  If Table_Parametro.FieldByName('Fone_Empresa').AsString <> '' then
    FoneEmpresa := Trim(Table_Parametro.FieldByName('Fone_Empresa').AsString)
  Else
    FoneEmpresa := cFone1EmpU;


  // Bairro empresa.
  If Table_Parametro.FieldByName('Bairro_Empresa').AsString <> '' then
    BairroEmpresa := Trim(Table_Parametro.FieldByName('Bairro_Empresa').AsString)
  Else
    BairroEmpresa := cEnderecoEmpU;


  // Cep Empresa
  If Table_Parametro.FieldByName('CEP_Empresa').AsString <> '' then
    CEPEmpresa := Trim(Table_Parametro.FieldByName('CEP_Empresa').AsString)
  Else
    CEPEmpresa := cCepEmpU;


  // Cidade Empresa
  If Table_Parametro.FieldByName('Cidade_Empresa').AsString <> '' then
    CidadeEmpresa := Trim(Table_Parametro.FieldByName('Cidade_Empresa').AsString)
  Else
    CidadeEmpresa := cCidadeEmpU;


  // UF Empresa
  If Table_Parametro.FieldByName('UF_Empresa').AsString <> '' then
    UFEmpresa := Trim(Table_Parametro.FieldByName('UF_Empresa').AsString)
  Else
    UFEmpresa := cUFEmpU;


  // Inscrição Estadual Empresa.
  If Table_Parametro.FieldByName('IE_Empresa').AsString <> '' then
    IEEmpresa := Trim(Table_Parametro.FieldByName('IE_Empresa').AsString)
  Else
    IEEmpresa := cInscricaoEstU;


   // CGC Empresa.
  If Table_Parametro.FieldByName('CGC_Empresa').AsString <> '' then
    CGCEmpresa := Trim(Table_Parametro.FieldByName('CGC_Empresa').AsString)
  Else
    CGCEmpresa := cCGCEmpU;


  //**--**--**--**--**--**--**--**--//
  // 2ª Aba: Entregas
  //**--**--**--**--**--**--**--**--**--**--**--**--//

  If Table_Parametro.FieldByName('Par_ImprimedadosCliente').AsString <> '' then
    Entrega_ImprimedadosCliente := Table_Parametro.FieldByName('Par_Imprimedadoscliente').AsString
  Else
    Entrega_ImprimedadosCliente := 'N';


  // Armazena se na entrega, deve-se imprimir observação do item...
  If Table_Parametro.FieldByName('Par_ImprimeObservacaoEnt').AsString <> '' then
    Par_ImprimeObservacaoEntrega := Table_Parametro.FieldByName('Par_ImprimeObservacaoEnt').AsString
  Else
    Par_ImprimeObservacaoEntrega := 'N';



  If Table_Parametro.FieldByName('Par_TipoCupomEntrega').AsString <> '' then
    Par_TipoCupomEntrega := Trim( Table_Parametro.FieldByName('Par_TipoCupomEntrega').AsString )
  Else
    Par_TipoCupomEntrega := 'Sintético';


  // Armazena como deve ser efetuado o lançamento de produtos, ou seja, buscando por código ou descrição...
  If Table_Parametro.FieldByName('Par_LanctoProdutos').AsString <> '' then
    Par_LanctoProdutos := Trim( Table_Parametro.FieldByName('Par_LanctoProdutos').AsString )
  Else
    Par_LanctoProdutos := 'Descrição';


  If Table_Parametro.FieldByName('Par_LancaProdNovamente').AsString <> '' then
    Par_LancaProdNovamente := Trim( Table_Parametro.FieldByName('Par_LancaProdNovamente').AsString )
  Else
    Par_LancaProdNovamente := 'N';


  // Caso este parâmetro seja 'S', o foco irá automaticamente para a qtde.
  // caso contrário, para o nome do produto (Combobox)
  If Table_Parametro.FieldByName('Par_FocoCursor').AsString <> '' then
    Par_FocoCursor := Table_Parametro.FieldByName('Par_FocoCursor').AsString
  Else
    Par_FocoCursor := 'N';



  If Table_Parametro.FieldByName('Par_ImpArqCupomEntrega').AsString <> '' then
    Par_ImprimeArquivoEntrega := Table_Parametro.FieldByName('Par_ImpArqCupomEntrega').AsString
  Else
    Par_ImprimeArquivoEntrega := 'N';


  // Armazena o tipo de impressora usada para imprimir...
  If Table_Parametro.FieldByName('Par_TipoImpressoraEnt').AsString <> '' then
    Par_TipoImpressora := Table_Parametro.FieldByName('Par_TipoImpressoraEnt').AsString
  Else
    Par_TipoImpressora := 'Paralela';


  // Armazena a porta usada pela impressora para imprimir...
  If Table_Parametro.FieldByName('Par_SaidaImpressoraEnt').AsString <> '' then
    Par_Porta := Table_Parametro.FieldByName('Par_SaidaImpressoraEnt').AsString
  Else
    Par_Porta := 'LPT1';


  // Define se deseja que seja impressa também uma cópia da comanda cozinha na impressora
  // oficial de entrega
  If Table_Parametro.FieldByName('Par_ImpCopiaCmdCzEnt').AsString <> '' then
    Par_ImpCopiaCmdCozinhaEnt := Table_Parametro.FieldByName('Par_ImpCopiaCmdCzEnt').AsString
  Else
    Par_ImpCopiaCmdCozinhaEnt := 'N';

  // Define se deseja que seja impressa uma comanda de fechamento na impressora oficial de
  // entregas, quando teclar Alt+X na abertura da entrega, para imprimir a comanda da cozinha...
  If Table_Parametro.FieldByName('Par_ImpCmdFechAbEnt').AsString <> '' then
    Par_ImpCmdFechAbEnt := Table_Parametro.FieldByName('Par_ImpCmdFechAbEnt').AsString
  Else
    Par_ImpCmdFechAbEnt := 'N';


  // Qtde. avanços linha após cupom de entregas...
  If Table_Parametro.FieldByName('Par_QtdeAvancosEnt').Value <> Null then
    Qtde_AvancosLinhaEnt := Table_Parametro.FieldByName('Par_QtdeAvancosEnt').Value
  Else
    Qtde_AvancosLinhaEnt := 5;


  // Qtde. de caracteres possíveis em modo normal na impressão entrega
  If Table_Parametro.FieldByName('Par_QtdeCaracNormalImpEnt').Value <> Null then
    QtdeCaracteresNormalImpEnt := Table_Parametro.FieldByName('Par_QtdeCaracNormalImpEnt').AsInteger
  Else
    QtdeCaracteresNormalImpEnt := 54;


  // Qtde. de caracteres possíveis em modo comprimido na impressão entrega.
  If Table_Parametro.FieldByName('Par_QtdeCaracCompImpEnt').Value <> Null then
    QtdeCaracteresComprimidoImpEnt := Table_Parametro.FieldByName('Par_QtdeCaracCompImpEnt').AsInteger
  Else
    QtdeCaracteresComprimidoImpEnt := 54;


  // Qtde. de caracteres possíveis em modo expandido na impressão entrega.
  If Table_Parametro.FieldByName('Par_QtdeCaracExpImpEnt').Value <> Null then
    QtdeCaracteresExpandidoImpEnt := Table_Parametro.FieldByName('Par_QtdeCaracExpImpEnt').AsInteger
  Else
    QtdeCaracteresExpandidoImpEnt := 54;


  // Armazena o tipo de comando enviado para abrir a porta de impressão.
  If Table_Parametro.FieldByName('Par_AbrePortaImpEnt').AsString <> '' then
    Par_ComandoAbrePortaEntrega := Table_Parametro.FieldByName('Par_AbrePortaImpEnt').AsString
  Else
    Par_ComandoAbrePortaEntrega := 'AssignFile';


  // Armazena o tipo de comando enviado para imprimir dados nesta porta de impressão.
  If Table_Parametro.FieldByName('Par_ComandoEnvPortaEnt').AsString <> '' then
    Par_ComandoImprimePortaEntrega := Table_Parametro.FieldByName('Par_ComandoEnvPortaEnt').AsString
  Else
    Par_ComandoImprimePortaEntrega := 'WriteLn';

  /////////////////////////////////////

  // Impressora cozinha (Entregas)...

  // Define se imprime ou não a comanda cozinha (resumida)...
  If Table_Parametro.FieldByName('Par_ImpCmdCzAbEnt').AsString <> '' then
    Par_ImpCmdCzEnt := Table_Parametro.FieldByName('Par_ImpCmdCzAbEnt').AsString
  Else
    Par_ImpCmdCzEnt := 'N';

  // Armazena o tipo de impressora usada para imprimir comanda cozinha
  If Table_Parametro.FieldByName('Par_TipoImpCmdCzEnt').AsString <> '' then
    Par_TipoImpEntCz := Table_Parametro.FieldByName('Par_TipoImpCmdCzEnt').AsString
  Else
    Par_TipoImpEntCz := 'Paralela';

  // Armazena a porta usada pela impressora para imprimir...
  If Table_Parametro.FieldByName('Par_SaidaImpCmdCzEnt').AsString <> '' then
    Par_PortaEntCz := Table_Parametro.FieldByName('Par_SaidaImpCmdCzEnt').AsString
  Else
    Par_PortaEntCz := 'LPT1';

  // Qtde de avanços ao final da impressão da comanda cozinha
  If Table_Parametro.FieldByName('Par_QtdeAvancosCmdCzEnt').Value <> Null then
    Qtde_AvancosLinhaEntCz := Table_Parametro.FieldByName('Par_QtdeAvancosCmdCzEnt').Value
  Else
    Qtde_AvancosLinhaEntCz := 5;


  // Qtde. de caracteres possíveis em modo normal na impressão da comanda cozinha (Entrega)
  If Table_Parametro.FieldByName('Par_QtdeCarNormalImpCzEnt').Value <> Null then
    QtdeCaracNormalImpEntCz := Table_Parametro.FieldByName('Par_QtdeCarNormalImpCzEnt').AsInteger
  Else
    QtdeCaracNormalImpEntCz := 54;

  // Qtde. de caracteres possíveis em modo comprimido na impressão da comanda cozinha (Entrega)
  If Table_Parametro.FieldByName('Par_QtdeCarCompImpCzEnt').Value <> Null then
    QtdeCaracComprimidoImpEntCz := Table_Parametro.FieldByName('Par_QtdeCarCompImpCzEnt').AsInteger
  Else
    QtdeCaracComprimidoImpEntCz := 54;


  // Qtde. de caracteres possíveis em modo Expandido na impressão da comanda cozinha (Entrega)
  If Table_Parametro.FieldByName('Par_QtdeCarExpImpCzEnt').Value <> Null then
    QtdeCaracExpandidoImpEntCz := Table_Parametro.FieldByName('Par_QtdeCarExpImpCzEnt').AsInteger
  Else
    QtdeCaracExpandidoImpEntCz := 54;


  // Qtde. de caracteres possíveis em modo expandido na impressão da comanda cozinha
  If Table_Parametro.FieldByName('Par_QtdeCarExpImpCzEnt').Value <> Null then
    QtdeCaracExpandidoImpMesaCz := Table_Parametro.FieldByName('Par_QtdeCarExpImpCzEnt').AsInteger
  Else
    QtdeCaracExpandidoImpMesaCz := 54;

  // Armazena o tipo de comando enviado para abrir a porta de impressão da comanda cozinha
  If Table_Parametro.FieldByName('Par_AbrePortaImpCzEnt').AsString <> '' then
    Par_CmdAbrePortaEntCz := Table_Parametro.FieldByName('Par_AbrePortaImpCzEnt').AsString
  Else
    Par_CmdAbrePortaEntCz := 'AssignFile';

  // Armazena o tipo de comando enviado para imprimir dados nesta porta de impressão da comanda cozinha...
  If Table_Parametro.FieldByName('Par_CmdEnvPortaEntCz').AsString <> '' then
    Par_CmdImprimePortaEntCz := Table_Parametro.FieldByName('Par_CmdEnvPortaEntCz').AsString
  Else
    Par_CmdImprimePortaEntCz := 'WriteLn';

  ////////////////////////////////////////////////////////////

  If Table_Parametro.FieldByName('Par_CadastraClienteDepois').AsString <> '' then
    Par_CadastraClienteDepois := Trim( Table_Parametro.FieldByName('Par_CadastraClienteDepois').AsString )
  Else
    Par_CadastraClienteDepois := 'N';

  If Table_Parametro.FieldByName('Par_ExibeHistEntregas').AsString <> '' then
    Par_ExibeHistEntregas := Trim( Table_Parametro.FieldByName('Par_ExibeHistEntregas').AsString )
  Else
    Par_ExibeHistEntregas := 'N';

  If Table_Parametro.FieldByName('Par_ForcaEscolhaEntreg').AsString <> '' then
    Par_ForcaEscolhaEntregador := Trim( Table_Parametro.FieldByName('Par_ForcaEscolhaEntreg').AsString )
  Else
    Par_ForcaEscolhaEntregador := 'N';

  If Table_Parametro.FieldByName('Par_UsaEntregFixo').AsString <> '' then
    Par_UsaEntregFixo := Trim( Table_Parametro.FieldByName('Par_UsaEntregFixo').AsString )
  Else
    Par_UsaEntregFixo := 'N';

  If Table_Parametro.FieldByName('Par_AbreEntregaRapida').AsString <> '' then
    Par_AbreEntregaRapida := Trim( Table_Parametro.FieldByName('Par_AbreEntregaRapida').AsString )
  Else
    Par_AbreEntregaRapida := 'N';

  If Table_Parametro.FieldByName('Par_AbreEntParaNovoCli').AsString <> '' then
    Par_AbreEntParaNovoCliente := Trim( Table_Parametro.FieldByName('Par_AbreEntParaNovoCli').AsString )
  Else
    Par_AbreEntParaNovoCliente := 'N';

  If Table_Parametro.FieldByName('Par_AdicionaVlrTaxaVenda').AsString <> '' then
    Par_AdicionaVlrTaxaaoCaixa := Table_Parametro.FieldByName('Par_AdicionaVlrTaxaVenda').AsString
  Else
    Par_AdicionaVlrTaxaaoCaixa := 'N';

  If Table_Parametro.FieldByName('Par_LimpaEntregasdiaAnt').AsString <> '' then
    begin
      Par_LimpaEntregasDiaAnterior := Table_Parametro.FieldByName('Par_LimpaEntregasdiaAnt').AsString;

      If Table_Parametro.FieldByName('Par_QtdeDiasLimpaEntrega').AsString <> '' then
        Par_QtdeDiasLimpaEntrega := Table_Parametro.FieldByName('Par_QtdeDiasLimpaEntrega').AsInteger
      Else
        Par_QtdeDiasLimpaEntrega := 1;

    end
  Else
    begin
      Par_LimpaEntregasDiaAnterior := 'N';
      Par_QtdeDiasLimpaEntrega     := 0;
    end;

  If Table_Parametro.FieldByName('Par_FiadoEntValeClie').AsString <> '' then
    Par_FiadoEntregaViraValeCliente := Trim( Table_Parametro.FieldByName('Par_FiadoEntValeClie').AsString )
  Else
    Par_FiadoEntregaViraValeCliente := 'N';

  If Table_Parametro.FieldByName('Par_ImpCmdFiadoEnt').AsString <> '' then
    Par_ImprimeCmdFiadoEntrega := Trim( Table_Parametro.FieldByName('Par_ImpCmdFiadoEnt').AsString )
  Else
    Par_ImprimeCmdFiadoEntrega := 'N';

  If Table_Parametro.FieldByName('Par_SolConfImpCmdFiado').AsString <> '' then
    Par_SolConfImpCmdFiadoEnt := Trim( Table_Parametro.FieldByName('Par_SolConfImpCmdFiado').AsString )
  Else
    Par_SolConfImpCmdFiadoEnt := 'N';

  If Table_Parametro.FieldByName('Par_ImpCpEntregaSeFiado').AsString <> '' then
    Par_ImpCupomEntregaSeFiado := Trim( Table_Parametro.FieldByName('Par_ImpCpEntregaSeFiado').AsString )
  Else
    Par_ImpCupomEntregaSeFiado := 'S';

  If Table_Parametro.FieldByName('Par_EntAcionaSempreF1').AsString <> '' then
    Par_EntAcionaSempreF1 := Trim( Table_Parametro.FieldByName('Par_EntAcionaSempreF1').AsString )
  Else
    Par_EntAcionaSempreF1 := 'S';

  If Table_Parametro.FieldByName('Par_BuscaCliEntPor').AsString <> '' then
    Par_BuscaClienteEntregaF1Por := Trim( Table_Parametro.FieldByName('Par_BuscaCliEntPor').AsString )
  Else
    Par_BuscaClienteEntregaF1Por := 'Fone';

  If Table_Parametro.FieldByName('Par_PergFiadoEntrViraVale').AsString <> '' then
    Par_PergFiadoEntrViraVale := Trim( Table_Parametro.FieldByName('Par_PergFiadoEntrViraVale').AsString )
  Else
    Par_PergFiadoEntrViraVale := 'S';


  If Table_Parametro.FieldByName('Par_AcionaF2EntBuscaClieC').AsString <> '' then
    Par_AcionaF2EntBuscaClieCombobox := Trim( Table_Parametro.FieldByName('Par_AcionaF2EntBuscaClieC').AsString )
  Else
    Par_AcionaF2EntBuscaClieCombobox := 'N';


  If Table_Parametro.FieldByName('Par_LiberaEntAutomatica').AsString <> '' then
    Par_LiberaAutomaticamenteEntrega := Table_Parametro.FieldByName('Par_LiberaEntAutomatica').AsString
  Else
    Par_LiberaAutomaticamenteEntrega := 'N';

  If Table_Parametro.FieldByName('Par_AbreTelaClieMensal').AsString <> '' then
    Par_PermiteLanctoVendasClienteMensalistas := Table_Parametro.FieldByName('Par_AbreTelaClieMensal').AsString
  Else
    Par_PermiteLanctoVendasClienteMensalistas := 'N';


  If Table_Parametro.FieldByName('Par_PedeSenhaClieMens').AsString <> '' then
    Par_PedeSenhaClieRecemCadastrado := Table_Parametro.FieldByName('Par_PedeSenhaClieMens').AsString
  Else
    Par_PedeSenhaClieRecemCadastrado := 'N';

  If Table_Parametro.FieldByName('Par_LanctoAutProdClieMens').AsString <> '' then
    Par_LanctoAutomProdEntClieMensalista := Table_Parametro.FieldByName('Par_LanctoAutProdClieMens').AsString
  Else
    Par_LanctoAutomProdEntClieMensalista := 'N';

  If Table_Parametro.FieldByName('Par_FechaAutEntLanctoAut').AsString <> '' then
    Par_FechaAutEntregaAposLanctoProdEntPadrao := Table_Parametro.FieldByName('Par_FechaAutEntLanctoAut').AsString
  Else
    Par_FechaAutEntregaAposLanctoProdEntPadrao := 'N';

  If Table_Parametro.FieldByName('Par_EntLeUltimaVenda').AsString <> '' then
    Par_LeDadosUltimaVenda := Table_Parametro.FieldByName('Par_EntLeUltimaVenda').AsString
  Else
    Par_LeDadosUltimaVenda := 'N';


  If Table_Parametro.FieldByName('Par_EntImpCupomEntrega').AsString <> '' then
    Par_ImprimeCupomEntrega := Table_Parametro.FieldByName('Par_EntImpCupomEntrega').AsString
  Else
    Par_ImprimeCupomEntrega := 'N';


  If Table_Parametro.FieldByName('Par_EntPedeConfImpCpEnt').AsString <> '' then
    Par_PedeConfImpCupomEntrega := Table_Parametro.FieldByName('Par_EntPedeConfImpCpEnt').AsString
  Else
    Par_PedeConfImpCupomEntrega := 'S';

  If Table_Parametro.FieldByName('Par_EntCpImpTitCliente').AsString <> '' then
    Par_ImprimeTituloDadosClienteCpEntrega := Table_Parametro.FieldByName('Par_EntCpImpTitCliente').AsString
  Else
    Par_ImprimeTituloDadosClienteCpEntrega := 'S';

  If Table_Parametro.FieldByName('Par_EntCpImpTrocoTrocoP').AsString <> '' then
    Par_ImprimeFechCpTrocoTrocoPara := Table_Parametro.FieldByName('Par_EntCpImpTrocoTrocoP').AsString
  Else
    Par_ImprimeFechCpTrocoTrocoPara := 'N';

  If Table_Parametro.FieldByName('Par_AlertaAltTaxaManual').AsString <> '' then
    Par_AlertaAltTaxaManual := Table_Parametro.FieldByName('Par_AlertaAltTaxaManual').AsString
  Else
    Par_AlertaAltTaxaManual := 'N';

  If Table_Parametro.FieldByName('Par_AnotaObsDadosEntLida').AsString <> '' then
    Par_AnotaObsDadosUltimaEntregaLida := Table_Parametro.FieldByName('Par_AnotaObsDadosEntLida').AsString
  Else
    Par_AnotaObsDadosUltimaEntregaLida := 'S';

  If Table_Parametro.FieldByName('Par_LanctoAutProdPadEmpMe').AsString <> '' then
    Par_LanctoAutomaticoProdPadraoEmpresaClienteMensalista := Table_Parametro.FieldByName('Par_LanctoAutProdPadEmpMe').AsString
  Else
    Par_LanctoAutomaticoProdPadraoEmpresaClienteMensalista := 'N';


  If Table_Parametro2.FieldByName('Par_UsaAnimacaoImagens').AsString <> '' then
    Par_UsaAnimacaoImagens := Table_Parametro2.FieldByName('Par_UsaAnimacaoImagens').AsString
  Else
    Par_UsaAnimacaoImagens := 'S';

  //--

  //-----------------
  //
  // Parâmetros para definir se deve praticar um valor diferenciado para a tela
  // de vendas (Mesa, Entrega e Conveniência)
  //
  //----------------------------------------------
  If Table_Parametro2.FieldByName('Par_ADEVlrProdMesa').AsString <> '' then
    Par_AcresceDecresceEquiparaVlrProdMesa := Table_Parametro2.FieldByName('Par_ADEVlrProdMesa').AsString
  Else
    Par_AcresceDecresceEquiparaVlrProdMesa := 'Equipara';


  If Table_Parametro2.FieldByName('Par_VlrProdDifMesa').AsString <> '' then
    Par_ADE_VlrProdDifMesa := Table_Parametro2.FieldByName('Par_VlrProdDifMesa').AsFloat
  Else
    Par_ADE_VlrProdDifMesa := 0;


  If Table_Parametro2.FieldByName('Par_ADEVlrProdEntrega').AsString <> '' then
    Par_AcresceDecresceEquiparaVlrProdEntrega := Table_Parametro2.FieldByName('Par_ADEVlrProdEntrega').AsString
  Else
    Par_AcresceDecresceEquiparaVlrProdEntrega := 'Equipara';


  If Table_Parametro2.FieldByName('Par_VlrProdDifEntrega').AsString <> '' then
    Par_ADE_VlrProdDifEntrega := Table_Parametro2.FieldByName('Par_VlrProdDifEntrega').AsFloat
  Else
    Par_ADE_VlrProdDifEntrega := 0;


  If Table_Parametro2.FieldByName('Par_ADEVlrProdConvenienc').AsString <> '' then
    Par_AcresceDecresceEquiparaVlrProdConv := Table_Parametro2.FieldByName('Par_ADEVlrProdConvenienc').AsString
  Else
    Par_AcresceDecresceEquiparaVlrProdConv := 'Equipara';


  If Table_Parametro2.FieldByName('Par_VlrProdDifConvenienc').AsString <> '' then
    Par_ADE_VlrProdDifConv := Table_Parametro2.FieldByName('Par_VlrProdDifConvenienc').AsFloat
  Else
    Par_ADE_VlrProdDifConv := 0;


  If Table_Parametro.FieldByName('Par_FechaAutEntProdPad').AsString <> '' then
    Par_FechAutomaticamenteEntregaAposLactoProdPadraoEmpresa := Table_Parametro.FieldByName('Par_FechaAutEntProdPad').AsString
  Else
    Par_FechAutomaticamenteEntregaAposLactoProdPadraoEmpresa := 'S';


  If Table_Parametro.FieldByName('Par_PadEntTipoPagto').AsString <> '' then
    Par_PadEntTipoPagto := Trim( Table_Parametro.FieldByName('Par_PadEntTipoPagto').AsString )
  Else
    Par_PadEntTipoPagto := 'A Vista';

  If Table_Parametro.FieldByName('Par_PadEntEntregador').AsInteger > 0 then
    Par_PadEntEntregador := Table_Parametro.FieldByName('Par_PadEntEntregador').AsInteger
  Else
    Par_PadEntEntregador := 0;


  If Table_Parametro.FieldByName('Par_CodProd1EntPad').AsInteger > 0 then
    Par_PadEntCodProduto1 := Table_Parametro.FieldByName('Par_CodProd1EntPad').AsInteger
  Else
    Par_PadEntCodProduto1 := 0;

  If Table_Parametro.FieldByName('Par_CodProd2EntPad').AsInteger > 0 then
    Par_PadEntCodProduto2 := Table_Parametro.FieldByName('Par_CodProd2EntPad').AsInteger
  Else
    Par_PadEntCodProduto2 := 0;

  If Table_Parametro.FieldByName('Par_CodProd3EntPad').AsInteger > 0 then
    Par_PadEntCodProduto3 := Table_Parametro.FieldByName('Par_CodProd3EntPad').AsInteger
  Else
    Par_PadEntCodProduto3 := 0;

  If Table_Parametro.FieldByName('Par_CodProd4EntPad').AsInteger > 0 then
    Par_PadEntCodProduto4 := Table_Parametro.FieldByName('Par_CodProd4EntPad').AsInteger
  Else
    Par_PadEntCodProduto4 := 0;

  If Table_Parametro.FieldByName('Par_CodProd5EntPad').AsInteger > 0 then
    Par_PadEntCodProduto5 := Table_Parametro.FieldByName('Par_CodProd5EntPad').AsInteger
  Else
    Par_PadEntCodProduto5 := 0;


  If Table_Parametro2.FieldByName('Par_EntTelaPadraoEntrega').AsString <> '' then
    Par_TelaPadraoEntrega := Table_Parametro2.FieldByName('Par_EntTelaPadraoEntrega').AsString
  Else
    Par_TelaPadraoEntrega := 'Entrega padrão';


  If (Par_TelaPadraoEntrega = 'Entrega padrão') then
    Label_TipoEntrega.Caption := 'Entregas'
  Else
    Label_TipoEntrega.Caption := 'Entrega rápida.';

  Spb_Entrega.Hint := 'Clique aqui para abrir a tela de '+Label_TipoEntrega.Caption;

  //----
  // Parâmetros de controle do Limite dos Clientes mensalistas
  //----------------

  If Table_Parametro2.FieldByName('Par_UtilizaLimiteMensalis').AsString <> '' then
    Par_UtilizaLimiteMensalistas := Table_Parametro2.FieldByName('Par_UtilizaLimiteMensalis').AsString
  Else
    Par_UtilizaLimiteMensalistas := 'N';

  If Table_Parametro2.FieldByName('Par_LimiteMensalistaPor').AsString <> '' then
    Par_LimiteMensalistaPor := Table_Parametro2.FieldByName('Par_LimiteMensalistaPor').AsString
  Else
    Par_LimiteMensalistaPor := 'Mês fechado';

  If Table_Parametro2.FieldByName('Par_BloqVendaMaiorLimite').AsString <> '' then
    Par_BloqueiaVendaMaiorqueLimite := Table_Parametro2.FieldByName('Par_BloqVendaMaiorLimite').AsString
  Else
    Par_BloqueiaVendaMaiorqueLimite := 'N';

  If Table_Parametro2.FieldByName('Par_LiberaVendaLimSuperv').AsString <> '' then
    Par_LiberaVendaMaiorqueLimiteSupervisor := Table_Parametro2.FieldByName('Par_LiberaVendaLimSuperv').AsString
  Else
    Par_LiberaVendaMaiorqueLimiteSupervisor := 'N';

  If Table_Parametro2.FieldByName('Par_LiberaVendaLimSuperv').AsString <> '' then
    Par_AlertaConsumoLimite := Table_Parametro2.FieldByName('Par_LiberaVendaLimSuperv').AsString
  Else
    Par_AlertaConsumoLimite := 'N';

  If Table_Parametro2.FieldByName('Par_PercMinAlertaLimite').AsString <> '' then
    Par_PercMinimoAlertaLimite := Table_Parametro2.FieldByName('Par_PercMinAlertaLimite').AsFloat
  Else
    Par_PercMinimoAlertaLimite := 0;

  If Table_Parametro2.FieldByName('Par_LancaMensalistaPor').AsString <> '' then
    Par_LancaMensalistaPor := Table_Parametro2.FieldByName('Par_LancaMensalistaPor').AsString
  Else
    Par_LancaMensalistaPor := 'CPF';

  If Table_Parametro2.FieldByName('Par_LancaMensalistaPor').AsString <> '' then
    Par_LancaMensalistaPor := Table_Parametro2.FieldByName('Par_LancaMensalistaPor').AsString
  Else
    Par_LancaMensalistaPor := 'CPF';

  If Table_Parametro2.FieldByName('Par_BotaoPadraoFecharMens').AsString <> '' then
    Par_BotaoPadraoAoFecharMensalista := Table_Parametro2.FieldByName('Par_BotaoPadraoFecharMens').AsInteger
  Else
    Par_BotaoPadraoAoFecharMensalista := 2;


  If Table_Parametro2.FieldByName('Par_ImpCF_CabecCompleto').AsString <> '' then
    Par_ImpCF_ImprimeCabecalhoCompleto := Table_Parametro2.FieldByName('Par_ImpCF_CabecCompleto').AsString
  Else
    Par_ImpCF_ImprimeCabecalhoCompleto := 'S';

  If Table_Parametro2.FieldByName('Par_ImpCF_DadosImpCliComp').AsString <> '' then
    Par_ImpCF_ImprimeDadosCompletoCliente := Table_Parametro2.FieldByName('Par_ImpCF_DadosImpCliComp').AsString
  Else
    Par_ImpCF_ImprimeDadosCompletoCliente := 'S';

  If Table_Parametro2.FieldByName('Par_ImpCF_ImpEmpEmpreg').AsString <> '' then
    Par_ImpCF_ImprimeEmpresaEmpregadora := Table_Parametro2.FieldByName('Par_ImpCF_ImpEmpEmpreg').AsString
  Else
    Par_ImpCF_ImprimeEmpresaEmpregadora := 'S';

  If Table_Parametro2.FieldByName('Par_ImpCF_ImpAssinatura').AsString <> '' then
    Par_ImpCF_ImprimeLocalAssinaturaCliente := Table_Parametro2.FieldByName('Par_ImpCF_ImpAssinatura').AsString
  Else
    Par_ImpCF_ImprimeLocalAssinaturaCliente := 'S';

  If Table_Parametro2.FieldByName('Par_ImpCF_ImprimeCPFCNPJ').AsString <> '' then
    Par_ImpCF_ImprimeCPFCNPJCliente := Table_Parametro2.FieldByName('Par_ImpCF_ImprimeCPFCNPJ').AsString
  Else
    Par_ImpCF_ImprimeCPFCNPJCliente := 'S';


  //-----------------------------------------------
  // Configurações de campos a serem usados na tela de entrega direta
  //----------------------

  If Table_Parametro2.FieldByName('Par_EntRapida_UsaBalcao').AsString <> '' then
    Par_EntregaRapida_UsaBalcao := Table_Parametro2.FieldByName('Par_EntRapida_UsaBalcao').AsString
  Else
    Par_EntregaRapida_UsaBalcao := 'S';


  If Table_Parametro2.FieldByName('Par_EntRapida_UsaMPizza').AsString <> '' then
    Par_EntregaRapida_UsaMeiaPizza := Table_Parametro2.FieldByName('Par_EntRapida_UsaMPizza').AsString
  Else
    Par_EntregaRapida_UsaMeiaPizza := 'S';


  If Table_Parametro2.FieldByName('Par_EntRapida_UsaAdd').AsString <> '' then
    Par_EntregaRapida_UsaAdicional := Table_Parametro2.FieldByName('Par_EntRapida_UsaAdd').AsString
  Else
    Par_EntregaRapida_UsaAdicional := 'S';

  If Table_Parametro2.FieldByName('Par_EntRapida_UsaPnl5mtde').AsString <> '' then
    Par_EntregaRapida_UsaPainel5Metades := Table_Parametro2.FieldByName('Par_EntRapida_UsaPnl5mtde').AsString
  Else
    Par_EntregaRapida_UsaPainel5Metades := 'N';

  //**--**--**--**--**--**--**--**--//
  // 3ª Aba: Conveniência
  //**--**--**--**--**--**--**--**--**--**--**--**--//

  If Table_Parametro.FieldByName('Par_LancaProdConv').AsString <> '' then
    Par_LanctoProdutosConv := Trim( Table_Parametro.FieldByName('Par_LancaProdConv').AsString )
  Else
    Par_LanctoProdutosConv := 'Descrição';

  // Caso este parâmetro seja 'S', o foco irá automaticamente para a qtde.
  // caso contrário, para o nome do produto (Combobox)
  If Table_Parametro.FieldByName('Par_FocoCursorConv').AsString <> '' then
    Par_FocoCursorConv := Table_Parametro.FieldByName('Par_FocoCursorConv').AsString
  Else
    Par_FocoCursorConv := 'N';

  If Table_Parametro.FieldByName('Par_LancaProdNovConv').AsString <> '' then
    Par_LancaProdNovConv := Trim( Table_Parametro.FieldByName('Par_LancaProdNovConv').AsString )
  Else
    Par_LancaProdNovConv := 'N';


  If Table_Parametro.FieldByName('Par_LimpaCvnDiaAnt').AsString <> '' then
    begin
      Par_LimpaConvenienciaDiaAnterior := Table_Parametro.FieldByName('Par_LimpaCvnDiaAnt').AsString;

      If Table_Parametro.FieldByName('Par_QtdeDiasLimpaCvn').AsString <> '' then
        Par_QtdeDiasLimpaConveniencia := Table_Parametro.FieldByName('Par_QtdeDiasLimpaCvn').AsInteger
      Else
        Par_QtdeDiasLimpaConveniencia := 1;

    end
  Else
    begin
      Par_LimpaConvenienciaDiaAnterior := 'N';
      Par_QtdeDiasLimpaConveniencia    := 0;
    end;

  If Table_Parametro.FieldByName('Par_ImpArqCupomConv').AsString <> '' then
    Par_ImprimeArquivoConveniencia := Table_Parametro.FieldByName('Par_ImpArqCupomConv').AsString
  Else
    Par_ImprimeArquivoConveniencia := 'N';


  // Armazena o tipo de impressora usada para imprimir venda conveniência...
  If Table_Parametro.FieldByName('Par_TipoImpressoraConv').AsString <> '' then
    Par_TipoImpressoraConv := Table_Parametro.FieldByName('Par_TipoImpressoraConv').AsString
  Else
    Par_TipoImpressoraConv := 'Paralela';

  // Armazena a porta usada pela impressora para imprimir...
  If Table_Parametro.FieldByName('Par_SaidaImpressoraConv').AsString <> '' then
    Par_PortaConv := Table_Parametro.FieldByName('Par_SaidaImpressoraConv').AsString
  Else
    Par_PortaConv := 'LPT1';

  If Table_Parametro.FieldByName('Par_TipoCupomConv').AsString <> '' then
    Par_TipoCupomConv := Trim( Table_Parametro.FieldByName('Par_TipoCupomConv').AsString )
  Else
    Par_TipoCupomConv := 'Sintético';


  // Qtde. avanços linha após cupom de venda conveniência.
  If Table_Parametro.FieldByName('Par_QtdeAvancosConv').Value <> Null then
    Qtde_AvancosLinhaConv := Table_Parametro.FieldByName('Par_QtdeAvancosConv').Value
  Else
    Qtde_AvancosLinhaConv := 5;


  // Qtde. de caracteres possíveis em modo normal na impressão conveniência
  If Table_Parametro.FieldByName('Par_QtdeCaracNormalImpCon').Value <> Null then
    QtdeCaracteresNormalImpConv := Table_Parametro.FieldByName('Par_QtdeCaracNormalImpCon').AsInteger
  Else
    QtdeCaracteresNormalImpConv := 54;

  // Qtde. de caracteres possíveis em modo comprimido na impressão conveniência.
  If Table_Parametro.FieldByName('Par_QtdeCaracCompImpConv').Value <> Null then
    QtdeCaracteresComprimidoImpConv := Table_Parametro.FieldByName('Par_QtdeCaracCompImpConv').AsInteger
  Else
    QtdeCaracteresComprimidoImpConv := 54;

  // Qtde. de caracteres possíveis em modo expandido na impressão conveniência.
  If Table_Parametro.FieldByName('Par_QtdeCaracExpImpConv').Value <> Null then
    QtdeCaracteresExpandidoImpConv := Table_Parametro.FieldByName('Par_QtdeCaracExpImpConv').AsInteger
  Else
    QtdeCaracteresExpandidoImpConv := 54;

  // Armazena o tipo de comando enviado para abrir a porta de impressão.
  If Table_Parametro.FieldByName('Par_AbrePortaImpConv').AsString <> '' then
    Par_ComandoAbrePortaConv := Table_Parametro.FieldByName('Par_AbrePortaImpConv').AsString
  Else
    Par_ComandoAbrePortaConv := 'AssignFile';


  // Armazena o tipo de comando enviado para imprimir dados nesta porta de impressão.
  If Table_Parametro.FieldByName('Par_ComandoEnvPortaConv').AsString <> '' then
    Par_ComandoImprimePortaConv := Table_Parametro.FieldByName('Par_ComandoEnvPortaConv').AsString
  Else
    Par_ComandoImprimePortaConv := 'WriteLn';


  If Table_Parametro.FieldByName('Par_PrefConv_Func').AsString <> '' then
    Par_PrefConv_Func := Table_Parametro.FieldByName('Par_PrefConv_Func').AsString
  Else
    Par_PrefConv_Func := 'S';

  If Table_Parametro.FieldByName('Par_PrefConv_TipoP').AsString <> '' then
    Par_PrefConv_TipoP := Table_Parametro.FieldByName('Par_PrefConv_TipoP').AsString
  Else
    Par_PrefConv_TipoP := 'S';

  If Table_Parametro.FieldByName('Par_PrefConv_Clie').AsString <> '' then
    Par_PrefConv_Clie := Table_Parametro.FieldByName('Par_PrefConv_Clie').AsString
  Else
    Par_PrefConv_Clie := 'S';


  If Table_Parametro.FieldByName('Par_PrefConv_Obs').AsString <> '' then
    Par_PrefConv_Obs := Table_Parametro.FieldByName('Par_PrefConv_Obs').AsString
  Else
    Par_PrefConv_Obs := 'S';


  If Table_Parametro.FieldByName('Par_FiadoCvnValeClie').AsString <> '' then
    Par_FiadoConvViraValeCliente := Trim( Table_Parametro.FieldByName('Par_FiadoCvnValeClie').AsString )
  Else
    Par_FiadoConvViraValeCliente := 'N';

  If Table_Parametro.FieldByName('Par_ImpCmdFiadoCvn').AsString <> '' then
    Par_ImprimeCmdFiadoConv := Trim( Table_Parametro.FieldByName('Par_ImpCmdFiadoCvn').AsString )
  Else
    Par_ImprimeCmdFiadoConv := 'N';

  If Table_Parametro.FieldByName('Par_SolConfImpCmdFiadoCvn').AsString <> '' then
    Par_SolConfImpCmdFiadoCvn := Trim( Table_Parametro.FieldByName('Par_SolConfImpCmdFiadoCvn').AsString )
  Else
    Par_SolConfImpCmdFiadoCvn := 'N';

  //**--**--**--**--**--**--**--**--//
  // 4ª Aba: Venda em Mesa/Ficha
  //**--**--**--**--**--**--**--**--**--**--**--**--//

  // Armazena o tipo de impressora usada para imprimir venda mesa.
  If Table_Parametro.FieldByName('Par_TipoImpressoraMesa').AsString <> '' then
    Par_TipoImpressoraMesa := Table_Parametro.FieldByName('Par_TipoImpressoraMesa').AsString
  Else
    Par_TipoImpressoraMesa := 'Paralela';

  If Table_Parametro.FieldByName('Par_ImpArqCupomMesa').AsString <> '' then
    Par_ImprimeArquivoMesa := Table_Parametro.FieldByName('Par_ImpArqCupomMesa').AsString
  Else
    Par_ImprimeArquivoMesa := 'N';

  // Armazena a porta usada pela impressora para imprimir...
  If Table_Parametro.FieldByName('Par_SaidaImpressoraMesa').AsString <> '' then
    Par_PortaMesa := Table_Parametro.FieldByName('Par_SaidaImpressoraMesa').AsString
  Else
    Par_PortaMesa := 'LPT1';

  If Table_Parametro.FieldByName('Par_TipoCupomMesa').AsString <> '' then
    Par_TipoCupomMesa := Trim( Table_Parametro.FieldByName('Par_TipoCupomMesa').AsString )
  Else
    Par_TipoCupomMesa := 'Sintético';


  If Table_Parametro.FieldByName('Par_QtdeAvancosMesa').Value <> Null then
    Qtde_AvancosLinhaMesa := Table_Parametro.FieldByName('Par_QtdeAvancosMesa').Value
  Else
    Qtde_AvancosLinhaMesa := 5;


  // Qtde. de caracteres possíveis em modo normal na impressão mesa.
  If Table_Parametro.FieldByName('Par_QtdeCaracNormalImpMes').Value <> Null then
    QtdeCaracteresNormalImpMesa := Table_Parametro.FieldByName('Par_QtdeCaracNormalImpMes').AsInteger
  Else
    QtdeCaracteresNormalImpMesa := 54;

  // Qtde. de caracteres possíveis em modo comprimido na impressão mesa.
  If Table_Parametro.FieldByName('Par_QtdeCaracCompImpMesa').Value <> Null then
    QtdeCaracteresComprimidoImpMesa := Table_Parametro.FieldByName('Par_QtdeCaracCompImpMesa').AsInteger
  Else
    QtdeCaracteresComprimidoImpMesa := 54;

  // Qtde. de caracteres possíveis em modo expandido na impressão mesa.
  If Table_Parametro.FieldByName('Par_QtdeCaracExpImpMesa').Value <> Null then
    QtdeCaracteresExpandidoImpMesa := Table_Parametro.FieldByName('Par_QtdeCaracExpImpMesa').AsInteger
  Else
    QtdeCaracteresExpandidoImpMesa := 54;

  // Tipo de impressão da mensagem do cupom de venda em mesa (comprimido,normal ou expandido).
  If Table_Parametro.FieldByName('Par_TipoImpressaoMsgCupom').Value <> Null then
    Par_TipoImpressaoMsgCupomMesa := Table_Parametro.FieldByName('Par_TipoImpressaoMsgCupom').Value
  Else
    Par_TipoImpressaoMsgCupomMesa := 'Comprimido';


  // Armazena o tipo de comando enviado para abrir a porta de impressão mesa.
  If Table_Parametro.FieldByName('Par_AbrePortaImpMesa').AsString <> '' then
    Par_ComandoAbrePortaMesa := Table_Parametro.FieldByName('Par_AbrePortaImpMesa').AsString
  Else
    Par_ComandoAbrePortaMesa := 'AssignFile';


  // Armazena o tipo de comando enviado para imprimir dados nesta porta de impressão mesa.
  If Table_Parametro.FieldByName('Par_ComandoEnvPortaMesa').AsString <> '' then
    Par_ComandoImprimePortaMesa := Table_Parametro.FieldByName('Par_ComandoEnvPortaMesa').AsString
  Else
    Par_ComandoImprimePortaMesa := 'WriteLn';


  // Impressora cozinha...

  // Armazena se imprime ou não uma comanda cozinha...
  If Table_Parametro.FieldByName('Par_ImpCmdCzAbMesa').AsString <> '' then
    Par_ImpCmdCzMesa := Table_Parametro.FieldByName('Par_ImpCmdCzAbMesa').AsString
  Else
    Par_ImpCmdCzMesa := 'N';

  // Armazena o tipo de impressora usada para imprimir comanda cozinha
  If Table_Parametro.FieldByName('Par_TipoImpCmdCzMesa').AsString <> '' then
    Par_TipoImpMesaCz := Table_Parametro.FieldByName('Par_TipoImpCmdCzMesa').AsString
  Else
    Par_TipoImpMesaCz := 'Paralela';

  // Armazena a porta usada pela impressora para imprimir...
  If Table_Parametro.FieldByName('Par_SaidaImpCmdCzMesa').AsString <> '' then
    Par_PortaMesaCz := Table_Parametro.FieldByName('Par_SaidaImpCmdCzMesa').AsString
  Else
    Par_PortaMesaCz := 'LPT1';

  // Qtde de avanços ao final da impressão da comanda cozinha
  If Table_Parametro.FieldByName('Par_QtdeAvancosCmdCzMesa').Value <> Null then
    Qtde_AvancosLinhaMesaCz := Table_Parametro.FieldByName('Par_QtdeAvancosCmdCzMesa').Value
  Else
    Qtde_AvancosLinhaMesaCz := 5;


  // Qtde. de caracteres possíveis em modo normal na impressão da comanda cozinha
  If Table_Parametro.FieldByName('Par_QtdeCaracNormalImpCz').Value <> Null then
    QtdeCaracNormalImpMesaCz := Table_Parametro.FieldByName('Par_QtdeCaracNormalImpCz').AsInteger
  Else
    QtdeCaracNormalImpMesaCz := 54;

  // Qtde. de caracteres possíveis em modo comprimido na impressão da comanda cozinha
  If Table_Parametro.FieldByName('Par_QtdeCaracCompImpCz').Value <> Null then
    QtdeCaracComprimidoImpMesaCz := Table_Parametro.FieldByName('Par_QtdeCaracCompImpCz').AsInteger
  Else
    QtdeCaracComprimidoImpMesaCz := 54;

  // Qtde. de caracteres possíveis em modo expandido na impressão da comanda cozinha
  If Table_Parametro.FieldByName('Par_QtdeCaracExpImpCz').Value <> Null then
    QtdeCaracExpandidoImpMesaCz := Table_Parametro.FieldByName('Par_QtdeCaracExpImpCz').AsInteger
  Else
    QtdeCaracExpandidoImpMesaCz := 54;

  // Armazena o tipo de comando enviado para abrir a porta de impressão da comanda cozinha
  If Table_Parametro.FieldByName('Par_AbrePortaImpCmdCzMesa').AsString <> '' then
    Par_CmdAbrePortaMesaCz := Table_Parametro.FieldByName('Par_AbrePortaImpCmdCzMesa').AsString
  Else
    Par_CmdAbrePortaMesaCz := 'AssignFile';

  // Armazena o tipo de comando enviado para imprimir dados nesta porta de impressão da comanda cozinha...
  If Table_Parametro.FieldByName('Par_CmdEnvPortaMesaCz').AsString <> '' then
    Par_CmdImprimePortaMesaCz := Table_Parametro.FieldByName('Par_CmdEnvPortaMesaCz').AsString
  Else
    Par_CmdImprimePortaMesaCz := 'WriteLn';

  //--////////////////////////////////////////////////////////////////////////////

  If Table_Parametro.FieldByName('Par_LancaProdMesa').AsString <> '' then
    Par_LanctoProdutosMesa := Trim( Table_Parametro.FieldByName('Par_LancaProdMesa').AsString )
  Else
    Par_LanctoProdutosMesa := 'Descrição';

  // Caso este parâmetro seja 'S', o foco irá automaticamente para a qtde.
  // caso contrário, para o nome do produto (Combobox)
  If Table_Parametro.FieldByName('Par_FocoCursorMesa').AsString <> '' then
    Par_FocoCursorMesa := Table_Parametro.FieldByName('Par_FocoCursorMesa').AsString
  Else
    Par_FocoCursorMesa := 'N';


  If Table_Parametro.FieldByName('Par_LancaProdNovMesa').AsString <> '' then
    Par_LancaProdNovMesa := Trim( Table_Parametro.FieldByName('Par_LancaProdNovMesa').AsString )
  Else
    Par_LancaProdNovMesa := 'N';


  If Table_Parametro.FieldByName('Par_ImprimeObsItemMesa').AsString <> '' then
    Par_ImprimeObsItemMesa := Trim( Table_Parametro.FieldByName('Par_ImprimeObsItemMesa').AsString )
  Else
    Par_ImprimeObsItemMesa := 'S';


  If Table_Parametro.FieldByName('Par_ImpArqImpPadrao').AsString <> '' then
    Par_ImprimeArquivoImpPadrao := Table_Parametro.FieldByName('Par_ImpArqImpPadrao').AsString
  Else
    Par_ImprimeArquivoImpPadrao := 'N';

  // Armazena o tipo de impressão padrão usada para relatório de conf. e outros.
  If Table_Parametro.FieldByName('Par_ImpressoraPadrao').AsString <> '' then
    Par_ImpressoraPadrao := Table_Parametro.FieldByName('Par_ImpressoraPadrao').AsString
  Else
    Par_ImpressoraPadrao := 'Paralela';


  // Armazena a porta usada pela impressora para imprimir usando a impressora padrao...
  If Table_Parametro.FieldByName('Par_SaidaImpressoraPadrao').AsString <> '' then
    Par_PortaImpressoraPadrao := Table_Parametro.FieldByName('Par_SaidaImpressoraPadrao').AsString
  Else
    Par_PortaImpressoraPadrao := 'LPT1';

  // Qtde. avanços linha após impressão de relatórios padrões do sistema.
  If Table_Parametro.FieldByName('Par_QtdeAvancosImpPadrao').Value <> Null then
    Qtde_AvancosImpPadrao := Table_Parametro.FieldByName('Par_QtdeAvancosImpPadrao').Value
  Else
    Qtde_AvancosImpPadrao := 5;

  // Qtde. de caracteres possíveis em modo normal na impressão padrão
  If Table_Parametro.FieldByName('Par_QtdeCaracNormalImpPad').Value <> Null then
    QtdeCaracteresNormalImpPadrao := Table_Parametro.FieldByName('Par_QtdeCaracNormalImpPad').AsInteger
  Else
    QtdeCaracteresNormalImpPadrao := 54;

  // Qtde. de caracteres possíveis em modo comprimido na impressão padrão.
  If Table_Parametro.FieldByName('Par_QtdeCaracCompImpPad').Value <> Null then
    QtdeCaracteresComprimidoImpPadrao := Table_Parametro.FieldByName('Par_QtdeCaracCompImpPad').AsInteger
  Else
    QtdeCaracteresComprimidoImpPadrao := 54;

  // Qtde. de caracteres possíveis em modo expandido na impressão padrão.
  If Table_Parametro.FieldByName('Par_QtdeCaracExpImpPad').Value <> Null then
    QtdeCaracteresExpandidoImpPadrao := Table_Parametro.FieldByName('Par_QtdeCaracExpImpPad').AsInteger
  Else
    QtdeCaracteresExpandidoImpPadrao := 54;


  // Armazena o tipo de comando enviado para abrir a porta de impressão padrão.
  If Table_Parametro.FieldByName('Par_AbrePortaImpPadrao').AsString <> '' then
    Par_ComandoAbrePortaPadrao := Table_Parametro.FieldByName('Par_AbrePortaImpPadrao').AsString
  Else
    Par_ComandoAbrePortaPadrao := 'AssignFile';


  // Armazena o tipo de comando enviado para imprimir dados nesta porta de impressão padrão.
  If Table_Parametro.FieldByName('Par_ComandoEnvPortaPadrao').AsString <> '' then
    Par_ComandoImprimePortaPadrao := Table_Parametro.FieldByName('Par_ComandoEnvPortaPadrao').AsString
  Else
    Par_ComandoImprimePortaPadrao := 'WriteLn';



  If Table_Parametro.FieldByName('Par_PrefMesa_Data').AsString <> '' then
    Par_PrefMesa_Data := Table_Parametro.FieldByName('Par_PrefMesa_Data').AsString
  Else
    Par_PrefMesa_Data := 'S';



  If Table_Parametro.FieldByName('Par_PrefMesa_QtdeP').AsString <> '' then
    Par_PrefMesa_QtdeP := Table_Parametro.FieldByName('Par_PrefMesa_QtdeP').AsString
  Else
    Par_PrefMesa_QtdeP := 'S';



  If Table_Parametro.FieldByName('Par_PrefMesa_Obs').AsString <> '' then
    Par_PrefMesa_Obs := Table_Parametro.FieldByName('Par_PrefMesa_Obs').AsString
  Else
    Par_PrefMesa_Obs := 'S';


  If Table_Parametro.FieldByName('Par_PrefMesa_Func').AsString <> '' then
    Par_PrefMesa_Func := Table_Parametro.FieldByName('Par_PrefMesa_Func').AsString
  Else
    Par_PrefMesa_Func := 'S';

  //--

  // Se utiliza múltiplos garçons na venda.
  If Table_Parametro.FieldByName('Par_MultiplosGarconsVenda').AsString <> '' then
    Par_MultiplosGarconsnaVenda := Table_Parametro.FieldByName('Par_MultiplosGarconsVenda').AsString
  Else
    Par_MultiplosGarconsnaVenda := 'N';

  //--

  If Table_Parametro.FieldByName('Par_AdicionaVlrGarcomVend').AsString <> '' then
    Par_AdicionaVlrGarcomaoCaixa := Table_Parametro.FieldByName('Par_AdicionaVlrGarcomVend').AsString
  Else
    Par_AdicionaVlrGarcomaoCaixa := 'N';

  //--

  If Table_Parametro.FieldByName('Par_CobraSempreVlrGarcom').AsString <> '' then
    Par_CobraSempreVlrGarcom := Table_Parametro.FieldByName('Par_CobraSempreVlrGarcom').AsString
  Else
    Par_CobraSempreVlrGarcom := 'N';

  //--

  If Table_Parametro.FieldByName('Par_LimpaVendasDiaAnt').AsString <> '' then
    begin
      Par_LimpaVendaMesaDiaAnterior := Table_Parametro.FieldByName('Par_LimpaVendasDiaAnt').AsString;

      If Table_Parametro.FieldByName('Par_QtdeDiasLimpaVendas').AsString <> '' then
        Par_QtdeDiasLimpaVendaMesa := Table_Parametro.FieldByName('Par_QtdeDiasLimpaVendas').AsInteger
      Else
        Par_QtdeDiasLimpaVendaMesa := 1;

    end
  Else
    begin
      Par_LimpaVendaMesaDiaAnterior := 'N';
      Par_QtdeDiasLimpaVendaMesa    := 0;
    end;

  If Table_Parametro.FieldByName('Par_FiadoMesaValeClie').AsString <> '' then
    Par_FiadoMesaViraValeCliente := Trim( Table_Parametro.FieldByName('Par_FiadoMesaValeClie').AsString )
  Else
    Par_FiadoMesaViraValeCliente := 'N';

  If Table_Parametro.FieldByName('Par_ImpCmdFiadoMesa').AsString <> '' then
    Par_ImprimeCmdFiadoMesa := Trim( Table_Parametro.FieldByName('Par_ImpCmdFiadoMesa').AsString )
  Else
    Par_ImprimeCmdFiadoMesa := 'N';

  If Table_Parametro.FieldByName('Par_SolConfImpCmdFiadoMes').AsString <> '' then
    Par_SolConfImpCmdFiadoMesa := Trim( Table_Parametro.FieldByName('Par_SolConfImpCmdFiadoMes').AsString )
  Else
    Par_SolConfImpCmdFiadoMesa := 'N';

  //**--**--**--**--**--**--**--**--//
  // 5ª Aba: Imagens e Ícones
  //**--**--**--**--**--**--**--**--**--**--**--**--//

  // Chama função que verifica, define e ativas as imagens pré-definidas, levando
  // em consideração a finalidade do sistema.
  If (Par_UsaAnimacaoImagens = 'S') then
    Verifica_Imagens_Definidas();

  If Table_Parametro.FieldByName('Par_IconeSyspizza').AsString <> '' then
    Par_ArquivoIcone := Trim( Table_Parametro.FieldByName('Par_IconeSyspizza').AsString )
  Else
    Par_ArquivoIcone := 'C:\Syspizza\SysPizza1.ico';

  //---
  // Ativando o ícone da Aplicação...
  //-----------

  Verifica_Carrega_IconeAplicacao;

  ////////////////////////////////////

  // Definição da imagem padrão dos relatórios.

  If Table_Parametro.FieldByName('Par_ImagemRelatorio').AsString <> '' then
    Par_ImagemRelatorios := Table_Parametro.FieldByName('Par_ImagemRelatorio').AsString
  Else
    Par_ImagemRelatorios := 'C:\Syspizza\Images\Comida02.jpg';

  //**--**--**--**--**--**--**--**--//
  // 6ª Aba: Configurações [1]
  //**--**--**--**--**--**--**--**--**--**--**--**--//

  If Table_Parametro.FieldByName('Par_ExcluiDefinitivamente').AsString <> '' then
    Par_ExcluiDefinitivamente := Table_Parametro.FieldByName('Par_ExcluiDefinitivamente').AsString
  Else
    Par_ExcluiDefinitivamente := 'N';

  If Table_Parametro.FieldByName('Par_BackupAutomatico').AsString <> '' then
    Par_BackupAutomatico := Trim( Table_Parametro.FieldByName('Par_BackupAutomatico').AsString )
  Else
    Par_BackupAutomatico := 'N';

  If Par_BackupAutomatico = 'S' then
    Image_Backup.visible := True
  Else
    Image_Backup.visible := False;

  //--

  If Table_Parametro.FieldByName('Par_FinalidadeSistema').AsString <> '' then
    begin
      Par_FinalidadeSistema := Table_Parametro.FieldByName('Par_FinalidadeSistema').AsString;
      Par_NomeSistema       := 'Apolo';
    end
  Else
    begin
      Par_FinalidadeSistema := 'Pizzaria';
      Par_NomeSistema       := 'Syspizza';
    end;

  Checa_FinalidadeSistema();

  // Permite ou não usuário fechar caixa de outro dia...
  If Table_Parametro.FieldByName('Par_FechaCxOutrodia').Value <> Null then
    Par_FechaCxOutrodia := Table_Parametro.FieldByName('Par_FechaCxOutrodia').Value
  Else
    Par_FechaCxOutrodia := 'N';


  // Permite ou não usuário fechar caixa de outro dia...
  If Table_Parametro2.FieldByName('Par_UtilizaCaixaDiario').Value <> Null then
    Par_UtilizaCaixaDiario := Table_Parametro2.FieldByName('Par_UtilizaCaixaDiario').Value
  Else
    Par_UtilizaCaixaDiario := 'S';



  If Table_Parametro.FieldByName('Par_OrdemRelCategoria').AsString <> '' then
    Par_OrdemRelCategoria := Trim( Table_Parametro.FieldByName('Par_OrdemRelCategoria').AsString )
  Else
    Par_OrdemRelCategoria := 'Descrição';


  If Table_Parametro.FieldByName('Par_ExibeAlertaMesa').AsString <> '' then
    Par_ExibeAlertaMesa := Trim( Table_Parametro.FieldByName('Par_ExibeAlertaMesa').AsString )
  Else
    Par_ExibeAlertaMesa := 'S';


  If Table_Parametro.FieldByName('Par_ExibeAlertaEntrega').AsString <> '' then
    Par_ExibeAlertaEntrega := Trim( Table_Parametro.FieldByName('Par_ExibeAlertaEntrega').AsString )
  Else
    Par_ExibeAlertaEntrega := 'S';



  If Table_Parametro.FieldByName('Par_ExibeAlertaConv').AsString <> '' then
    Par_ExibeAlertaConv := Trim( Table_Parametro.FieldByName('Par_ExibeAlertaConv').AsString )
  Else
    Par_ExibeAlertaConv := 'S';


  If Table_Parametro.FieldByName('Par_LimVlrCaixa').AsFloat <> Null then
    Par_LimVlrCaixa := Table_Parametro.FieldByName('Par_LimVlrCaixa').AsFloat
  Else
    Par_LimVlrCaixa := 0;


  If Table_Parametro.FieldByName('Par_VerifProdSembaixaEst').AsString <> '' then
    Par_VerifProdSembaixaEst := Table_Parametro.FieldByName('Par_VerifProdSembaixaEst').AsString
  Else
    Par_VerifProdSembaixaEst := 'N';


  If Table_Parametro.FieldByName('Par_AlertaEstoqueNegativo').AsString <> '' then
    Par_AlertaEstoqueNegativoZerado := Table_Parametro.FieldByName('Par_AlertaEstoqueNegativo').AsString
  Else
    Par_AlertaEstoqueNegativoZerado := 'N';


  If Table_Parametro.FieldByName('Par_UtilizaSaltodePagina').AsString <> '' then
    begin
      Par_UtilizaSaltodePagina := Table_Parametro.FieldByName('Par_UtilizaSaltodePagina').AsString;
      Par_QtdeMaxLinhas        := Table_Parametro.FieldByName('Par_QtdeLinhasPagina').AsInteger;
    end
  Else
    begin
      Par_UtilizaSaltodePagina := 'N';
      Par_QtdeMaxLinhas        := 0;
    end;


  If Table_Parametro.FieldByName('Par_VerificaCaixaAberto').AsString <> '' then
    Par_VerificaCaixaAberto := Table_Parametro.FieldByName('Par_VerificaCaixaAberto').AsString
  Else
    Par_VerificaCaixaAberto := 'N';

    
  If Table_Parametro.FieldByName('Par_PermiteAbrirCxVenda').AsString <> '' then
    Par_PermiteAbrirCxVenda := Table_Parametro.FieldByName('Par_PermiteAbrirCxVenda').AsString
  Else
    Par_PermiteAbrirCxVenda := 'N';


  If Table_Parametro2.FieldByName('Par_UsaMsgConfTelasCxd').AsString <> '' then
    Par_UsaMsgConfirmacaoTelasCadCxDiario := Table_Parametro2.FieldByName('Par_UsaMsgConfTelasCxd').AsString
  Else
    Par_UsaMsgConfirmacaoTelasCadCxDiario := 'S';

  If Table_Parametro2.FieldByName('Par_ValidaMvAntCxDiario').AsString <> '' then
    Par_ValidaMovAnteriorCxDiario := Table_Parametro2.FieldByName('Par_ValidaMvAntCxDiario').AsString
  Else
    Par_ValidaMovAnteriorCxDiario := 'S';


  If Table_Parametro2.FieldByName('Par_PodeFecharCxVlrAbaixo').AsString <> '' then
    Par_PodeFecharCxComValorAbaixo := Table_Parametro2.FieldByName('Par_PodeFecharCxVlrAbaixo').AsString
  Else
    Par_PodeFecharCxComValorAbaixo := 'N';


  If Table_Parametro.FieldByName('Par_AvancaFolhaaoFinal').AsString <> '' then
    Par_AvancaFolhaaoFinal := Table_Parametro.FieldByName('Par_AvancaFolhaaoFinal').AsString
  Else
    Par_AvancaFolhaaoFinal := 'N';

  If Table_Parametro2.FieldByName('Par_UsaMsgConfTelasCad').AsString <> '' then
    Par_UsaMsgConfirmacaoTelasCadastro := Table_Parametro2.FieldByName('Par_UsaMsgConfTelasCad').AsString
  Else
    Par_UsaMsgConfirmacaoTelasCadastro := 'S';

  If Table_Parametro2.FieldByName('Par_QtdeUsuSupervisor').AsString <> '' then
    Par_QtdeMaximaUsuariosSupervisor := Table_Parametro2.FieldByName('Par_QtdeUsuSupervisor').AsInteger
  Else
    Par_QtdeMaximaUsuariosSupervisor := 3;


  If Table_Parametro2.FieldByName('Par_ExcluiVendaDefinitivo').AsString <> '' then
    Par_ExcluiDefinitivamenteVendas := Table_Parametro2.FieldByName('Par_ExcluiVendaDefinitivo').AsString
  Else
    Par_ExcluiDefinitivamenteVendas := 'N';


  If Table_Parametro.FieldByName('Par_AbrePesquisaTeclaF2').AsString <> '' then
    Par_AcionaPesquisaMesaTeclaF2 := Table_Parametro.FieldByName('Par_AbrePesquisaTeclaF2').AsString
  Else
    Par_AcionaPesquisaMesaTeclaF2 := 'N';


  If Table_Parametro.FieldByName('Par_RetotalizaProdutoFunc').AsString <> '' then
    Par_RetotalizaProdutoFunc := Table_Parametro.FieldByName('Par_RetotalizaProdutoFunc').AsString
  Else
    Par_RetotalizaProdutoFunc := 'N';


  If Table_Parametro.FieldByName('Verifica_ImpressoraAtiva').AsString <> '' then
    VerificaImpressoraAtiva := Trim(Table_Parametro.FieldByName('Verifica_ImpressoraAtiva').AsString)
  Else
    VerificaImpressoraAtiva := 'S';


  If Table_Parametro.FieldByName('EscondeBotaoIniciar').AsString <> '' then
    P_EscondeBotaoIniciar := Table_Parametro.FieldByName('EscondeBotaoIniciar').AsString
  Else
    P_EscondeBotaoIniciar := 'N';

  If P_EscondeBotaoIniciar = 'S' then
    EscondebotaoIniciar( True )
  Else
    EscondebotaoIniciar( False );


  If Table_Parametro.FieldByName('ScreenSaver').AsString = 'S' then
    ScreenSaver( True )
  Else
    ScreenSaver( False );

    
  If Table_Parametro.FieldByName('Limitamouse').AsString <> '' then
    LimitaMouse := Trim(Table_Parametro.FieldByName('Limitamouse').AsString)
  Else
    Limitamouse := 'N';


  If Table_Parametro.FieldByName('EscondeSysPizzaBarTarefa').AsString <> '' then
    EscondeSysPizzaBarraTarefa := Table_Parametro.FieldByName('EscondeSysPizzaBarTarefa').AsString
  Else
    EscondeSysPizzaBarraTarefa := 'N';

  If EscondeSysPizzaBarraTarefa = 'S' then
    Esconde_Aplicacao_BarraTarefa( True )
  Else
    Esconde_Aplicacao_BarraTarefa( False );


  If Table_Parametro.FieldByName('EscondeBarradeTarefas').AsString = 'S' then
    begin
      // Esconde a barra de tarefa do windows
      EscondeTaskBar( False ); // Esconde a barra de tarefa...
      EscondeBarradeTarefa := 'S';

      // Coloca os parâmetros: OcultaRelogio, EscondeSysPizzaBarradeTarefas e Escondebotaoiniciar
      // para falso, pois a barra de tarefas não estará mais visível.
      Par_Oculta_Relogio := 'N';
      OcultaRelogio( False );

      P_EscondeBotaoIniciar := 'N';
      EscondebotaoIniciar( False );

      EscondeSysPizzaBarraTarefa := 'N';
      Esconde_Aplicacao_BarraTarefa( False );
    end
  Else
    begin
      EscondeTaskBar( True ); // Mostra a barra de tarefa...
      EscondeBarradeTarefa := 'N';
    end;


  If Table_Parametro.FieldByName('OcultaRelogio').AsString = 'S' then
    begin
      Par_Oculta_Relogio := 'S';
      OcultaRelogio( True )
    end
  Else
    begin
      Par_Oculta_Relogio := 'N';
      OcultaRelogio( False );
    end;


  If Table_Parametro.FieldByName('MostraEntregadoresEntrega').AsString <> '' then
    MostraEntregadores := Trim(Table_Parametro.FieldByName('MostraEntregadoresEntrega').AsString)
  Else
    MostraEntregadores := 'N';


  If Table_Parametro.FieldByName('Intervalo_Agendamento').AsString <> '' then
    Intervalo_Agendamento := Trim(Table_Parametro.FieldByName('Intervalo_Agendamento').AsString)
  Else
    Intervalo_Agendamento := '30 min.';

  If Table_Parametro.FieldByName('Par_OperaemRede').AsString <> '' then
    Par_OperaemRede := Trim(Table_Parametro.FieldByName('Par_OperaemRede').AsString)
  Else
    Par_OperaemRede := 'N';

  RxGIFAnimator_Network.visible := (Par_OperaemRede = 'S');
  RxGIFAnimator_Network.Animate := (Par_OperaemRede = 'S');

  //--

  // Parametrização sobre o padrão de permissão de acesso ao gerar.
  If Table_Parametro.FieldByName('Par_AcessoIncluir').AsString <> '' then
    Par_AcessoIncluir := Table_Parametro.FieldByName('Par_AcessoIncluir').AsString
  Else
    Par_AcessoIncluir := 'N';


  If Table_Parametro.FieldByName('Par_AcessoAlterar').AsString <> '' then
    Par_AcessoAlterar := Table_Parametro.FieldByName('Par_AcessoAlterar').AsString
  Else
    Par_AcessoAlterar := 'N';


  If Table_Parametro.FieldByName('Par_AcessoExcluir').AsString <> '' then
    Par_AcessoExcluir := Table_Parametro.FieldByName('Par_AcessoExcluir').AsString
  Else
    Par_AcessoExcluir := 'N';

    
  // Parametrização sobre a utilização de Composição de Produto ou não...
  If Table_Parametro.FieldByName('Par_UtilizaComposicao').AsString <> '' then
    Par_UtilizaComposicao := Table_Parametro.FieldByName('Par_UtilizaComposicao').AsString
  Else
    Par_UtilizaComposicao := 'N';

  If Par_UtilizaComposicao = 'S' then
    begin

      If Table_Parametro.FieldByName('Par_TrabalhaMargemPerda').AsString <> '' then
        Par_TrabalhaMargemPerda := Table_Parametro.FieldByName('Par_TrabalhaMargemPerda').AsString
      Else
        Par_TrabalhaMargemPerda := 'N';

      If Table_Parametro.FieldByName('Par_AlertaProdSComposicao').AsString <> '' then
        Par_AlertaProdSemComposicao := Table_Parametro.FieldByName('Par_AlertaProdSComposicao').AsString
      Else
        Par_AlertaProdSemComposicao := 'S';

    end;

  // Parametrização sobre Couvert Artístico...

  If Table_Parametro.FieldByName('Par_UtilizaCouvert').AsString <> '' then
    Par_UtilizaCouvert := Table_Parametro.FieldByName('Par_UtilizaCouvert').AsString
  Else
    Par_UtilizaCouvert := 'N';


  If Par_UtilizaCouvert = 'S' then
    begin

      //---
      // Domingo...
      //-------------------

      If Table_Parametro.FieldByName('Par_UtilizaCouvertDomingo').AsString <> '' then
        Par_UsaCouvertDomingo := Table_Parametro.FieldByName('Par_UtilizaCouvertDomingo').AsString
      Else
        Par_UsaCouvertDomingo := 'N';

      If Table_Parametro.FieldByName('Par_ValorCouvertDomingo').AsString <> '' then
        Par_ValorCouvertDomingo := Table_Parametro.FieldByName('Par_ValorCouvertDomingo').AsCurrency
      Else
        Par_ValorCouvertDomingo := 0;

      If Table_Parametro.FieldByName('Par_HorarioIniCouvertDom').AsString <> '' then
        Par_HorarioIniCouvertDomingo := Table_Parametro.FieldByName('Par_HorarioIniCouvertDom').AsString
      Else
        Par_HorarioIniCouvertDomingo := '';

      If Table_Parametro.FieldByName('Par_HorarioFimCouvertDom').AsString <> '' then
        Par_HorarioFimCouvertDomingo := Table_Parametro.FieldByName('Par_HorarioFimCouvertDom').AsString
      Else
        Par_HorarioFimCouvertDomingo := '';

      //---------
      // Segunda-feira.
      //-------------------------

      If Table_Parametro.FieldByName('Par_UtilizaCouvertSegunda').AsString <> '' then
        Par_UsaCouvertSegunda := Table_Parametro.FieldByName('Par_UtilizaCouvertSegunda').AsString
      Else
        Par_UsaCouvertSegunda := 'N';


      If Table_Parametro.FieldByName('Par_ValorCouvertSegunda').AsString <> '' then
        Par_ValorCouvertSegunda := Table_Parametro.FieldByName('Par_ValorCouvertSegunda').AsCurrency
      Else
        Par_ValorCouvertSegunda := 0;

      If Table_Parametro.FieldByName('Par_HorarioIniCouvertSeg').AsString <> '' then
        Par_HorarioIniCouvertSegunda := Table_Parametro.FieldByName('Par_HorarioIniCouvertSeg').AsString
      Else
        Par_HorarioIniCouvertSegunda := '';

      If Table_Parametro.FieldByName('Par_HorarioFimCouvertSeg').AsString <> '' then
        Par_HorarioFimCouvertSegunda := Table_Parametro.FieldByName('Par_HorarioFimCouvertSeg').AsString
      Else
        Par_HorarioFimCouvertSegunda := '';


      //---
      // Terça-feira...
      //-------------------

      If Table_Parametro.FieldByName('Par_UtilizaCouvertTerca').AsString <> '' then
        Par_UsaCouvertTerca := Table_Parametro.FieldByName('Par_UtilizaCouvertTerca').AsString
      Else
        Par_UsaCouvertTerca := 'N';

      If Table_Parametro.FieldByName('Par_ValorCouvertTerca').AsString <> '' then
        Par_ValorCouvertTerca := Table_Parametro.FieldByName('Par_ValorCouvertTerca').AsCurrency
      Else
        Par_ValorCouvertTerca := 0;

      If Table_Parametro.FieldByName('Par_HorarioIniCouvertTer').AsString <> '' then
        Par_HorarioIniCouvertTerca := Table_Parametro.FieldByName('Par_HorarioIniCouvertTer').AsString
      Else
        Par_HorarioIniCouvertTerca := '';

      If Table_Parametro.FieldByName('Par_HorarioFimCouvertTer').AsString <> '' then
        Par_HorarioFimCouvertTerca := Table_Parametro.FieldByName('Par_HorarioFimCouvertTer').AsString
      Else
        Par_HorarioFimCouvertTerca := '';

      //---
      // Quarta-feira...
      //-------------------

      If Table_Parametro.FieldByName('Par_UtilizaCouvertQuarta').AsString <> '' then
        Par_UsaCouvertQuarta := Table_Parametro.FieldByName('Par_UtilizaCouvertQuarta').AsString
      Else
        Par_UsaCouvertQuarta := 'N';

      If Table_Parametro.FieldByName('Par_ValorCouvertQuarta').AsString <> '' then
        Par_ValorCouvertQuarta := Table_Parametro.FieldByName('Par_ValorCouvertQuarta').AsCurrency
      Else
        Par_ValorCouvertQuarta := 0;

      If Table_Parametro.FieldByName('Par_HorarioIniCouvertQua').AsString <> '' then
        Par_HorarioIniCouvertQuarta := Table_Parametro.FieldByName('Par_HorarioIniCouvertQua').AsString
      Else
        Par_HorarioIniCouvertQuarta := '';

      If Table_Parametro.FieldByName('Par_HorarioFimCouvertQua').AsString <> '' then
        Par_HorarioFimCouvertQuarta := Table_Parametro.FieldByName('Par_HorarioFimCouvertQua').AsString
      Else
        Par_HorarioFimCouvertQuarta := '';

      //---
      // Quinta-feira...
      //-------------------

      If Table_Parametro.FieldByName('Par_UtilizaCouvertQuinta').AsString <> '' then
        Par_UsaCouvertQuinta := Table_Parametro.FieldByName('Par_UtilizaCouvertQuinta').AsString
      Else
        Par_UsaCouvertQuinta := 'N';

      If Table_Parametro.FieldByName('Par_ValorCouvertQuinta').AsString <> '' then
        Par_ValorCouvertQuinta := Table_Parametro.FieldByName('Par_ValorCouvertQuinta').AsCurrency
      Else
        Par_ValorCouvertQuinta := 0;

      If Table_Parametro.FieldByName('Par_HorarioIniCouvertQui').AsString <> '' then
        Par_HorarioIniCouvertQuinta := Table_Parametro.FieldByName('Par_HorarioIniCouvertQui').AsString
      Else
        Par_HorarioIniCouvertQuinta := '';

      If Table_Parametro.FieldByName('Par_HorarioFimCouvertQui').AsString <> '' then
        Par_HorarioFimCouvertQuinta := Table_Parametro.FieldByName('Par_HorarioFimCouvertQui').AsString
      Else
        Par_HorarioFimCouvertQuinta := '';


      //---
      // Sexta-feira...
      //-------------------

      If Table_Parametro.FieldByName('Par_UtilizaCouvertSexta').AsString <> '' then
        Par_UsaCouvertSexta := Table_Parametro.FieldByName('Par_UtilizaCouvertSexta').AsString
      Else
        Par_UsaCouvertSexta := 'N';

      If Table_Parametro.FieldByName('Par_ValorCouvertSexta').AsString <> '' then
        Par_ValorCouvertSexta := Table_Parametro.FieldByName('Par_ValorCouvertSexta').AsCurrency
      Else
        Par_ValorCouvertSexta := 0;

      If Table_Parametro.FieldByName('Par_HorarioIniCouvertSex').AsString <> '' then
        Par_HorarioIniCouvertSexta := Table_Parametro.FieldByName('Par_HorarioIniCouvertSex').AsString
      Else
        Par_HorarioIniCouvertSexta := '';

      If Table_Parametro.FieldByName('Par_HorarioFimCouvertSex').AsString <> '' then
        Par_HorarioFimCouvertSexta := Table_Parametro.FieldByName('Par_HorarioFimCouvertSex').AsString
      Else
        Par_HorarioFimCouvertSexta := '';


      //---
      // Sábado...
      //-------------------

      If Table_Parametro.FieldByName('Par_UtilizaCouvertSabado').AsString <> '' then
        Par_UsaCouvertSabado := Table_Parametro.FieldByName('Par_UtilizaCouvertSabado').AsString
      Else
        Par_UsaCouvertSabado := 'N';

      If Table_Parametro.FieldByName('Par_ValorCouvertSabado').AsString <> '' then
        Par_ValorCouvertSabado := Table_Parametro.FieldByName('Par_ValorCouvertSabado').AsCurrency
      Else
        Par_ValorCouvertSabado := 0;

      If Table_Parametro.FieldByName('Par_HorarioIniCouvertSab').AsString <> '' then
        Par_HorarioIniCouvertSabado := Table_Parametro.FieldByName('Par_HorarioIniCouvertSab').AsString
      Else
        Par_HorarioIniCouvertSabado := '';

      If Table_Parametro.FieldByName('Par_HorarioFimCouvertSab').AsString <> '' then
        Par_HorarioFimCouvertSabado := Table_Parametro.FieldByName('Par_HorarioFimCouvertSab').AsString
      Else
        Par_HorarioFimCouvertSabado := '';

    end;

  //--

  If Table_Parametro.FieldByName('Par_UtilizaNomeFichaMesa').AsString <> '' then
    Par_NomemclaturaMesa := Trim( Table_Parametro.FieldByName('Par_UtilizaNomeFichaMesa').AsString )
  Else
    Par_NomemclaturaMesa := 'Mesa';

  // Desabilita a opção de Geração de Numeração de ficha para Mesa...
  nMenu := MainMenu1.Items.Items[4].Find('Gera Numeração de fichas/mesa');
  nMenu.enabled := (FrmPrincipal.Par_NomemclaturaMesa = 'Ficha');

  //--

  If Table_Parametro.FieldByName('Par_SugereProximaFicha').AsString <> '' then
    Par_SugereProximaFicha := Table_Parametro.FieldByName('Par_SugereProximaFicha').AsString
  Else
    Par_SugereProximaFicha := 'N';


  If Table_Parametro.FieldByName('Par_UsaFichasOrfas').AsString <> '' then
    Par_UtilizaNumerosPerdidosFicha := Table_Parametro.FieldByName('Par_UsaFichasOrfas').AsString
  Else
    Par_UtilizaNumerosPerdidosFicha := 'N';


  If Table_Parametro.FieldByName('Par_AlertaRestaXFichas').AsString <> '' then
    Par_AlertaRestaXFichas := Table_Parametro.FieldByName('Par_AlertaRestaXFichas').AsString
  Else
    Par_AlertaRestaXFichas := 'N';


  If Table_Parametro.FieldByName('Par_QtdeFichasRestantes').AsString <> '' then
    Par_QtdeFichasRestantes := Table_Parametro.FieldByName('Par_QtdeFichasRestantes').AsInteger
  Else
    Par_QtdeFichasRestantes := -1;

  If Table_Parametro.FieldByName('Par_ReUtilizaNFicha').AsString <> '' then
    Par_ReUtilizaNFicha := Table_Parametro.FieldByName('Par_ReUtilizaNFicha').AsString
  Else
    Par_ReUtilizaNFicha := 'N';


  If Table_Parametro.FieldByName('Par_SugereProximaMesa').AsString <> '' then
    Par_SugereProximaMesa := Table_Parametro.FieldByName('Par_SugereProximaMesa').AsString
  Else
    Par_SugereProximaMesa := 'N';

  If Table_Parametro2.FieldByName('Par_PermiteVariosPagFicha').AsString <> '' then
    Par_PermiteVariosPagFicha := Table_Parametro2.FieldByName('Par_PermiteVariosPagFicha').AsString
  Else
    Par_PermiteVariosPagFicha := 'N';


  If Table_Parametro2.FieldByName('Par_VinculaFichaCliente').AsString <> '' then
    Par_VinculaFichaCliente := Table_Parametro2.FieldByName('Par_VinculaFichaCliente').AsString
  Else
    Par_VinculaFichaCliente := 'N';


  If Table_Parametro2.FieldByName('Par_VlrInicialFichaHomem').AsString <> '' then
    Par_VlrFichaHomem := Table_Parametro2.FieldByName('Par_VlrInicialFichaHomem').AsFloat
  Else
    Par_VlrFichaHomem := 0;

  If Table_Parametro2.FieldByName('Par_VlrInicialFichaMulher').AsString <> '' then
    Par_VlrFichaMulher := Table_Parametro2.FieldByName('Par_VlrInicialFichaMulher').AsFloat
  Else
    Par_VlrFichaMulher := 0;

  If Table_Parametro2.FieldByName('Par_VlrInicialFichaCortes').AsString <> '' then
    Par_VlrInicialFichaCortesia := Table_Parametro2.FieldByName('Par_VlrInicialFichaCortes').AsFloat
  Else
    Par_VlrInicialFichaCortesia := 0;

  If Table_Parametro2.FieldByName('Par_VlrInicialFichaCama3P').AsString <> '' then
    Par_VlrInicialFichaCamarote3P := Table_Parametro2.FieldByName('Par_VlrInicialFichaCama3P').AsFloat
  Else
    Par_VlrInicialFichaCamarote3P := 0;

  If Table_Parametro2.FieldByName('Par_VlrInicialFichaCama6P').AsString <> '' then
    Par_VlrInicialFichaCamarote6P := Table_Parametro2.FieldByName('Par_VlrInicialFichaCama6P').AsFloat
  Else
    Par_VlrInicialFichaCamarote6P := 0;


  If Table_Parametro2.FieldByName('Par_VlrInicialFichaOutros').AsString <> '' then
    Par_VlrFichaOutros := Table_Parametro2.FieldByName('Par_VlrInicialFichaOutros').AsFloat
  Else
    Par_VlrFichaOutros := 0;


  If Table_Parametro.FieldByName('Par_QuerAlertaSonoro').AsString <> '' then
    Par_QuerAlertaSonoro := Trim( Table_Parametro.FieldByName('Par_QuerAlertaSonoro').AsString )
  Else
    Par_QuerAlertaSonoro := 'N';


  If Table_Parametro.FieldByName('Par_TipoAlertaErro').AsString <> '' then
    Par_TipoAlertaErro := Trim( Table_Parametro.FieldByName('Par_TipoAlertaErro').AsString )
  Else
    Par_TipoAlertaErro := 'Nenhum';


  If Table_Parametro.FieldByName('Par_BeepCliquebotoes').AsString <> '' then
    Par_BeepCliquebotoes := Table_Parametro.FieldByName('Par_BeepCliquebotoes').AsString
  Else
    Par_BeepCliquebotoes := 'N';


  If Table_Parametro.FieldByName('Par_TrabalhaSabado').AsString <> '' then
    Par_TrabalhaSabado := Table_Parametro.FieldByName('Par_TrabalhaSabado').AsString
  Else
    Par_TrabalhaSabado := 'N';


  If Table_Parametro.FieldByName('Par_TrabalhaDomingo').AsString <> '' then
    Par_TrabalhaDomingo := Table_Parametro.FieldByName('Par_TrabalhaDomingo').AsString
  Else
    Par_TrabalhaDomingo := 'N';

  //--

  If Table_Parametro.FieldByName('Par_1AtalhoProduto').Value <> Null then
    Par_1Atalho := Table_Parametro.FieldByName('Par_1AtalhoProduto').AsInteger
  Else
    Par_1Atalho := 0;


  If Table_Parametro.FieldByName('Par_2AtalhoProduto').Value <> Null then
    Par_2Atalho := Table_Parametro.FieldByName('Par_2AtalhoProduto').AsInteger
  Else
    Par_2Atalho := 0;

  If Table_Parametro.FieldByName('Par_3AtalhoProduto').Value <> Null then
    Par_3Atalho := Table_Parametro.FieldByName('Par_3AtalhoProduto').AsInteger
  Else
    Par_3Atalho := 0;

  If Table_Parametro.FieldByName('Par_4AtalhoProduto').Value <> Null then
    Par_4Atalho := Table_Parametro.FieldByName('Par_4AtalhoProduto').AsInteger
  Else
    Par_4Atalho := 0;

  If Table_Parametro.FieldByName('Par_5AtalhoProduto').Value <> Null then
    Par_5Atalho := Table_Parametro.FieldByName('Par_5AtalhoProduto').AsInteger
  Else
    Par_5Atalho := 0;

  If Table_Parametro.FieldByName('Par_6AtalhoProduto').Value <> Null then
    Par_6Atalho := Table_Parametro.FieldByName('Par_6AtalhoProduto').AsInteger
  Else
    Par_6Atalho := 0;

  If Table_Parametro.FieldByName('Par_7AtalhoProduto').Value <> Null then
    Par_7Atalho := Table_Parametro.FieldByName('Par_7AtalhoProduto').AsInteger
  Else
    Par_7Atalho := 0;

  If Table_Parametro.FieldByName('Par_8AtalhoProduto').Value <> Null then
    Par_8Atalho := Table_Parametro.FieldByName('Par_8AtalhoProduto').AsInteger
  Else
    Par_8Atalho := 0;

  If Table_Parametro.FieldByName('Par_9AtalhoProduto').Value <> Null then
    Par_9Atalho := Table_Parametro.FieldByName('Par_9AtalhoProduto').AsInteger
  Else
    Par_9Atalho := 0;

  // Atribui três (3) à qtde. de vezes em que a impressora é testada.
  nQtdeTotalTesteImpressora := 3;

  //------

  // Meia-Pizza

  If Table_Parametro.FieldByName('Par_PrecoMPizzaEnt').Value <> Null then
    Par_PrecoMPizzaEnt := Table_Parametro.FieldByName('Par_PrecoMPizzaEnt').AsString
  Else
    Par_PrecoMPizzaEnt := 'Maior';

  If Table_Parametro.FieldByName('Par_PrecoMPizzaMesa').Value <> Null then
    Par_PrecoMPizzaMesa := Table_Parametro.FieldByName('Par_PrecoMPizzaMesa').AsString
  Else
    Par_PrecoMPizzaMesa := 'Maior';

  //----

  // Balanca Eletrônica

  // Usa balança Eletrônica ?
  If Table_Parametro2.FieldByName('Par_UsaBalancaEletronica').Value <> Null then
    Par_UsaBalancaEletronica := Table_Parametro2.FieldByName('Par_UsaBalancaEletronica').AsString
  Else
    Par_UsaBalancaEletronica := 'N';


  // Qtde de dígitos que começa o código de barras gerado pela balança
  If Table_Parametro2.FieldByName('Par_QtdeDigCodBarraBalanc').Value <> Null then
    Par_QtdeDigComecamCodBarraBalanca := Table_Parametro2.FieldByName('Par_QtdeDigCodBarraBalanc').AsInteger
  Else
    Par_QtdeDigComecamCodBarraBalanca := 0;

  // Qtde de dígitos que tem o código de barras gerado pela balança
  If Table_Parametro2.FieldByName('Par_QtdeDigitoCodBarraBal').Value <> Null then
    Par_QtdeDigitosCodigoBarrasBalanca := Table_Parametro2.FieldByName('Par_QtdeDigitoCodBarraBal').AsInteger
  Else
    Par_QtdeDigitosCodigoBarrasBalanca := 0;


  // Detecção do código do produto no código de barras gerado pela Balança

  // Posição inicial aonde começa o código do produto
  If Table_Parametro2.FieldByName('Par_PosInCodProdCBBalanca').Value <> Null then
    Par_PosicaoInicCodProdCodBarraBalanca := Table_Parametro2.FieldByName('Par_PosInCodProdCBBalanca').AsInteger
  Else
    Par_PosicaoInicCodProdCodBarraBalanca := 0;

  // Posição final aonde termina o código do produto
  If Table_Parametro2.FieldByName('Par_PosFimCodProdCBBalanc').Value <> Null then
    Par_PosicaoFimCodProdCodBarraBalanca := Table_Parametro2.FieldByName('Par_PosFimCodProdCBBalanc').AsInteger
  Else
    Par_PosicaoFimCodProdCodBarraBalanca := 0;


  // Detecção do peso do produto no código de barras gerado pela Balança

  // Posição inicial aonde começa o peso do produto
  If Table_Parametro2.FieldByName('Par_PosInicPesoCBBalanca').Value <> Null then
    Par_PosicaoInicPesoCodBarraBalanca := Table_Parametro2.FieldByName('Par_PosInicPesoCBBalanca').AsInteger
  Else
    Par_PosicaoInicPesoCodBarraBalanca := 0;

  // Posição final aonde termina o peso do produto
  If Table_Parametro2.FieldByName('Par_PosFimPesoCBBalanca').Value <> Null then
    Par_PosicaoFimPesoCodBarraBalanca := Table_Parametro2.FieldByName('Par_PosFimPesoCBBalanca').AsInteger
  Else
    Par_PosicaoFimPesoCodBarraBalanca := 0;


  // Define se o sistema deve usar o caracter que retorna a impressora matricial
  // ao seu default.
  If Table_Parametro2.FieldByName('Par_ImpUsandoCaracDPadrao').Value <> Null then
    Par_ImprimeUsandoCaracDefault := Table_Parametro2.FieldByName('Par_ImpUsandoCaracDPadrao').AsVariant
  Else
    Par_ImprimeUsandoCaracDefault := 'S';


  If Table_Parametro2.FieldByName('Par_ImpUsandoCaracDPadrao').AsString = 'S' then
    Par_CaracDefaultImpCupom := cDefault_PAD
  Else
    begin
      // Caracter padrão que retorna a impressora de cupom ao seu estado padrão...
      If Table_Parametro2.FieldByName('Par_CaracDefImpCupom').Value <> Null then
        Par_CaracDefaultImpCupom := Table_Parametro2.FieldByName('Par_CaracDefImpCupom').AsVariant
      Else
        Par_CaracDefaultImpCupom := '';
    end;

  // Define se ao imprimir qualquer cupom para impressoras autenticadoras na
  // porta [ Default printer ] deve retirar os efeitos de
  // negrito/itálico/expandido, etc.

    If Table_Parametro2.FieldByName('Par_RetiraEfImpCpDefPrint').AsString <> '' then
    Par_RetiraEfeitosImprimirCupomDefaultPrinter := Table_Parametro2.FieldByName('Par_RetiraEfImpCpDefPrint').AsString
  Else
    Par_RetiraEfeitosImprimirCupomDefaultPrinter := 'N';

  If Table_Parametro2.FieldByName('Par_PermTxtoLivreNomeMesa').AsString <> '' then
    Par_PermiteCadastrarMesaLivre := Trim( Table_Parametro2.FieldByName('Par_PermTxtoLivreNomeMesa').AsString )
  Else
    Par_PermiteCadastrarMesaLivre := 'N';

  If Table_Parametro2.FieldByName('Par_VendaMesaUsaAdic').AsString <> '' then
    Par_VendaMesaUsaAdicionais := Trim( Table_Parametro2.FieldByName('Par_VendaMesaUsaAdic').AsString )
  Else
    Par_VendaMesaUsaAdicionais := 'N';

  //-----------
  // Entrega rápida
  //------------------------------
  If Table_Parametro2.FieldByName('Par_EntRap_ImpDadosCliCab').AsString <> '' then
    Par_ImprimeDadosClienteNoCabecalho := Trim( Table_Parametro2.FieldByName('Par_EntRap_ImpDadosCliCab').AsString )
  Else
    Par_ImprimeDadosClienteNoCabecalho := 'N';

  If Table_Parametro2.FieldByName('Par_EntRap_PergImpCupom').AsString <> '' then
    Par_EntRap_PerguntaSeImprimeCupomAofinalizarPedido := Trim( Table_Parametro2.FieldByName('Par_EntRap_PergImpCupom').AsString )
  Else
    Par_EntRap_PerguntaSeImprimeCupomAofinalizarPedido := 'N';

  If Table_Parametro2.FieldByName('Par_EntRap_ImpCmdPadrao').AsString <> '' then
    Par_EntRap_ImpComandaPadraoAofinalizarPedido := Trim( Table_Parametro2.FieldByName('Par_EntRap_ImpCmdPadrao').AsString )
  Else
    Par_EntRap_ImpComandaPadraoAofinalizarPedido := 'N';

  If Table_Parametro2.FieldByName('Par_EntRap_ImpCmdCz').AsString <> '' then
    Par_EntRap_ImpComandaCozinhaAofinalizarPedido := Trim( Table_Parametro2.FieldByName('Par_EntRap_ImpCmdCz').AsString )
  Else
    Par_EntRap_ImpComandaCozinhaAofinalizarPedido := 'N';

  If Table_Parametro2.FieldByName('Par_EntRap_ImpAmbasCmd').AsString <> '' then
    Par_EntRap_ImpAmbasComandasAofinalizarPedido := Trim( Table_Parametro2.FieldByName('Par_EntRap_ImpAmbasCmd').AsString )
  Else
    Par_EntRap_ImpAmbasComandasAofinalizarPedido := 'N';

  //-----//--------//--------

  Table_Parametro.Close;

  // Carregando parâmetros para label abaixo da imagem azul
  Label_Empresa.Caption  := NomeEmpresa;
  Label_Endereco.Caption := EnderecoEmpresa+' - '+BairroEmpresa;

  Label_Cidade.Caption := CidadeEmpresa+' - '+UFEmpresa+' - Cep: '+CepEmpresa;

  //---

  // Converte o CGC para número e verifica se é um valor válido.
  Val( CGCEmpresa, nValor, nQtde);

  If (CGCEmpresa <> '') And (nValor > 0) then
    begin

      If Length(Captura_SoNumeroString(Trim(CGCEmpresa))) = 14 then
        begin
          If Length(Trim(CGCEmpresa)) > 14 then
            Label_Cidade.Caption := Label_Cidade.Caption + ' - CGC: '+Trim(CGCEmpresa)
          Else
            Label_Cidade.Caption := Label_Cidade.Caption + ' - CGC: '+Copy(Trim(CGCEmpresa),1,2)+'.'+Copy(Trim(CGCEmpresa),3,3)+'.'+Copy(Trim(CGCEmpresa),6,3)+'/'+Copy(Trim(CGCEmpresa),9,4)+'-'+Copy(Trim(CGCEmpresa),13,2);
        end
      Else If Length(Captura_SoNumeroString(Trim(CGCEmpresa))) = 11 then
        begin
          If Length(Trim(CGCEmpresa)) > 11 then
            Label_Cidade.Caption := Label_Cidade.Caption + ' - CPF: '+Trim(CGCEmpresa)
          Else
            Label_Cidade.Caption := Label_Cidade.Caption + ' - CPF: '+Copy(Trim(CGCEmpresa),1,3)+'.'+Copy(Trim(CGCEmpresa),4,3)+'.'+Copy(Trim(CGCEmpresa),7,3)+'-'+Copy(Trim(CGCEmpresa),10,2);
        end;
        
    end;

  // Converte a IE para número e verifica se é um valor válido.
  Val( FrmPrincipal.IEEmpresa, nValor, nQtde);

  If (IEEmpresa <> '') And (nValor > 0) then
    Label_Cidade.Caption :=  Label_Cidade.Caption + ' - IE: '+IEEmpresa;

  //--

  //---------------------
  // Item Nº 43 - Lista de ajustes gerais a fazer nos meus sistemas
  //-------------------------------------------
  cNomeEmpRegistrada         := NomeEmpresa;
  cEnderecoEmpRegistrada     := EnderecoEmpresa;
  cBairroEmpRegistrada       := BairroEmpresa;

  cCEPEmpRegistrada          := CepEmpresa;
  cCidadeEmpRegistrada       := CidadeEmpresa;
  cUFEmpRegistrada           := UFEmpresa;

  cFone1EmpRegistrada        := FoneEmpresa;
  cFone2EmpRegistrada        := '';
  cCGCEmpRegistrada          := CGCEmpresa;

  cInscricaoEstEmpRegistrada := IEEmpresa;
  cNomeContatoEmpRegistrada  := 'a própria.';

  //--

  Label_Empresa.Width  := 475;
  Label_Endereco.Width := 475;
  Label_Cidade.Width   := 475;

  Label_Empresa.Refresh;
  Label_Endereco.Refresh;
  Label_Cidade.Refresh;

  //--

  //----------------------------------------------
  // Exibindo dados da empresa desenvolvedora do sistema.
  //----------------------------------------------------------------
  Label2.Caption := 'Desenvolvido por '+cNomeEmpU+' - '+'Fone: '+cFone1EmpU + Iif( (cFone2EmpU <> ''), ' / '+cFone2EmpU, '');
  Label3.Caption := cCidadeEmpU;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Parmetros1Click(Sender: TObject);
begin

  FrmParametros := TFrmParametros.Create(Application);

  FrmParametros.Table_Parametro.Open;
  FrmParametros.Table_Parametro2.Open;
  FrmParametros.Table_Produtos.Open;

  FrmParametros.Showmodal;

  FrmParametros.Table_Parametro.Close;
  FrmParametros.Table_Parametro2.Close;
  FrmParametros.Table_Produtos.Close;

  FreeAndNil(FrmParametros);

  //---

  Verifica_BotaoFechar;

  (*
  HABILITAR
  If Par_Exibebotaofechar = 'N' then
    Desabilita_Botaofechar( True )
  Else
    Desabilita_Botaofechar( False );
  *)

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  If ( ( Shift = [ssAlt] ) And ( Key = VK_F4 ) ) Or ( ( Shift = [ssCtrl] ) And ( Key = VK_F4 ) ) then
    begin
      Som(15);
      Messagedlg('Procedimento padrão do windows cancelado!!!'+#13+#13+'"Feche" esta janela pelo procedimento normal !!!', mtInformation, [mbOk], 0 );
      Key := 0;
    end;

  //--

  If (Key = VK_ESCAPE) and Printer.Printing then
    begin
      Som(15);

      Printer.Abort;
      MessageDlg('>>> Impressão cancelada !!!! <<<', mtInformation, [mbOK],0);
    end;

  //--

  If Key = VK_F11 then
    begin

      Som(15);

      // Tecla para exibir informacoes da instalacao...
      FrmInformacoesInstalacao := TFrmInformacoesInstalacao.Create(Application);
      FrmInformacoesInstalacao.Showmodal;
      FreeAndNil(FrmInformacoesInstalacao);
    end;

  //--

  If ( Shift = [ssCtrl] ) and ( Key = VK_F1 ) then
    begin
      Som(15);

      // Aciona tela de Venda na mesa...
      FrmCaixa := TFrmCaixa.Create(Application);
      FrmCaixa.Showmodal;
      FreeAndNil(FrmCaixa);

      Key := 0;
      Exit;
    end;

  // Calendário...

  If ( Shift = [ssCtrl] ) and ( Key = VK_F2 ) then
    begin
      Som(15);
      Calendrio2Click(Nil);
      Key := 0;
      Exit;
    end;

  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  // Tela de Entregas...
  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-

  If ( Shift = [ssCtrl] ) and ( Key = VK_F3 ) then
    begin
      Som(15);

      //--

      // Aciona tela de Entrega....

      If (FrmPrincipal.Par_TelaPadraoEntrega = 'Entrega padrão') then
        begin
          FrmEntregaPizzas := TFrmEntregaPizzas.Create(Application);
          FrmEntregaPizzas.Showmodal;
          FreeAndNil(FrmEntregaPizzas);
        end
      Else
        begin
          FrmEntregaPizzasDireta := TFrmEntregaPizzasDireta.Create(Application);
          FrmEntregaPizzasDireta.Showmodal;
          FreeAndNil(FrmEntregaPizzasDireta);
        end;

      //--
      
      Key := 0;
      Exit;
    end;

  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  // Tela de Conveniência..
  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-

  If ( Shift = [ssCtrl] ) and ( Key = VK_F5 ) then
    begin

      Som(15);

      // Aciona tela de Conveniencias...
      FrmConveniencia := TFrmConveniencia.Create(Application);
      FrmConveniencia.Showmodal;
      FreeAndNil(FrmConveniencia);

      Key := 0;
      Exit;
    end;

  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  // Tela de Parâmetros...(Ctrl+P)
  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-
                      
  If ( Shift = [ssCtrl] ) and ( (Key = 80) Or (Key = 112) ) then
    begin

      If Nivel <> 1 then // Supervisor
        begin
          Alerta('Erro Leve');
          MessageDlg('Atenção...'+#13+#13+'Usuário sem permissão para acessar tela de parâmetros !!!'+#13+#13+'Contacte Supervisor do sistema!', mtError, [mbOk], 0 );

          Som( 14 );
          FrmErroRotina := TFrmErroRotina.Create(Application);
          FrmErroRotina.ShowModal;
          FreeAndNil(FrmErroRotina);

          Exit;
        end;

      Som(15);
      // Aciona tela de parâmetros....
      Parmetros1Click(Nil);
    end;

  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  // Tela de Caixa diário...(Ctrl+G)
  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-

  If ( Shift = [ssCtrl] ) and ( (Key = 103 ) Or (Key = 71) ) then
    begin

      If Nivel = 3 then // Operacional
        begin
          Alerta('Erro Leve');
          MessageDlg('Atenção...'+#13+#13+'Usuário sem nível de acesso para acessar tela de parâmetros !!!'+#13+#13+'Contacte Supervisor do sistema!', mtError, [mbOk], 0 );

          Som( 14 );
          FrmErroRotina := TFrmErroRotina.Create(Application);
          FrmErroRotina.ShowModal;
          FreeAndNil(FrmErroRotina);

          Exit;
        end;

      Som(15);
      // Aciona tela de caixa diário...
      CriaAbreCaixadirio1Click(Nil);
    end;

  //-----
  // Verifica se houve mudança de usuário e retorna...
  //--------------------------
  If ( Shift = [ssCtrl] ) and ( Key = VK_F10 ) then
    begin

      If Cod_UserAntigo = 0 then
        begin
          Som(7);
          MessageDlg('Atenção...'+#13+#13+'Não houve mudança de usuário ativo...'+#13+#13+'Impossível retornar ao usuário anterior...', mtError, [mbOk], 0 );
          Key := 0;
          Exit;
        end
      Else
        begin
          If MessageDlg('Confirma o retorno ao usuário inicial do sistema ?',mtConfirmation,[mbYES,mbNO],0) = mrNO then
            begin
              Key := 0;
              Exit;
            end;

          //---

          FrmAcess.Table_Usuario.FindKey( [Cod_UserAntigo] );

          //////
          // Carrega o cód. usuário, nível e s tem acesso a rotinas especiais nas telas de venda...
          Carrega_DireitosUsuario;

          // Chama função que altera o caption do form colocando o nome da empresa, endereço e fone...
          Define_Titulo_Form;

          // Procedure que coloca itens de menu desabilitados de acordo com o nível de acesso do usuário.
          AnalisaNivelAcesso;

          // Chama função para habilitar e desabilitar as opções de menus de acordo
          // com as definições de menu deste usuário...
          Define_Menu();

          JvGradientHeaderPanel_MudancaUsuario.visible := False;
          ThreadedTimer_AlertaMudancaUsuario.enabled   := False;
          Application.ProcessMessages;

          //--

          If Limitamouse = 'S' then
            Libera_area_Mouse;

          //--

          Cod_UserAntigo := 0;
          Exit;
        end;
    end;

  //---

  //--------------
  // Chama tela de Travamento do sistema (Ctrl+y)
  //-----------------------------------------------

  If ( Shift = [ssCtrl] ) And ( (Char(Key) = #89) Or (Char(Key) = #121) ) then
    begin
    
      FrmTravaTela := TFrmTravaTela.Create(Application);
      FrmTravaTela.Showmodal;
      FreeandNil(FrmTravaTela);

      Som(19);

      Key := 0;
      Exit;
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.FormActivate(Sender: TObject);
const
  ScreenWidth : LongInt = 800;
  ScreenHeight : LongInt = 600;

Var
  st   :SYSTEMTIME;
  cLocal : String;
begin

  If (Self.Visible = False) Or (Self.Active = False) then Exit;

  //--

  // Inicializa os nomes dos arquivos temporários de Pesquisa de Bairros.
  cNomeArquivoTempBairroFrmPesqBairro  := '';
  cNomeArquivoTempBairroFrmPesqBairro2 := '';
  cNomeArquivoTempBairroFrmPesqBairro3 := '';
  cNomeArquivoTempPesqLogradouro       := '';
  
  //--

  If (Arquivos_Temporarios_Eliminados = True) then Exit;

  Verifica_Elimina_Arquivos_Temporarios();

  //--

  If (Retorna_Chave_Arq_Inicializacao( 'INICIAR', 'Indexar' ) = 'Sim') then
    begin
      ReindexaarquivosSysPizza1Click(Nil);

      Limpa_Chave_Arq_Inicializacao( 'INICIAR', 'Indexar' );
    end;

  //--

  bAlterouDataTrabalho := False;

  //--

  cDiretorioAlias := RetornaCaminhoAlias('Pizza')+'\';

  //--

  //cNomeEmpU     := 'Matrix Systems';
  //cEnderecoEmpU := 'R. Francisco Amaral Militão, 1475';
  //cBairroEmpU   := 'Jd. Monumento';
  //cFone1EmpU    := '3044-0398';
  //cFone2EmpU    := '9955-4696';
  //cCepEmpU      := '79063-180';
  //cCidadeEmpU   := 'Campo Grande';
  //cEstadoEmpU   := 'MS';

  //--

  //Trava_TeclasEspeciaisWindows( False );

  Cod_UserAntigo := 0;

  // Emite um beep muito curto somente para alertar sobre a exibição do form principal.
  Som(15);

  // Mostra panel demonstracao, caso esta cópia seja demonstracao....

  If (FrmAcess.Retorna_Tipo_Instalacao_Vigente() <> 'USO ILIMITADO') and (FrmAcess.Retorna_Tipo_Instalacao_Vigente() <> 'SEM TRAVA') then
    Panel_Demonstracao.Visible := True
  Else
    begin
      //Panel_Demonstracao.Visible := False;

      //--

      Panel_Rotulo.Color      := $0099FF77;
      Panel_Rotulo.Font.Color := clMaroon;
      Panel_Rotulo.Font.Name  := 'Calibri';
      Panel_Rotulo.Font.Size  := 26;

      //--

      Panel_Rotulo.Caption    := FrmAcess.Retorna_Tipo_Instalacao_Vigente();

      Panel_Demonstracao.Visible := True;
    end;

  // Chama rotina que zera arquivos temporários...
  Zera_Temporarios();

  //---
  // Verifica resolucao...
  //-----------

  //If VerificaResolucao = False then
  //  begin
  //    Application.Terminate;
  //    Exit;
  //  end;

  //--

  If Carrega_Impressoras() = False then
    begin
      Alerta('Erro Leve');
      MessageDlg('Atenção...'+#13+#13+'Nenhuma impressora instalada no Windows !!! Verifique...', mtInformation, [mbOk], 0 );
    end;

  If Valida_Ano4Digitos = False then
    begin
      Som(15);
      MessageDlg('Atenção...'+#13+#13+'O formato do ano não está configurado para 4 dígitos. Configure !', mtError, [mbOk], 0 );

      //If FrmPrincipal.Limitamouse = 'S' then
      //  Libera_area_mouse;

      Application.Terminate;
    end;

  // A função Carrega_Parâmetros é acionada no evento OnShow...
  Carrega_Texto_Scroll();

  //--

  Verifica_Produtos_Iguais_Tamanhos_Diferentes();

  //--

  SecretPanel_Logo.Active := True;

  Data_Sistema := StrToDate( FrmAcess.MaskEdit_DataTrabalho.Text );

  Table_Acessos.Open;  // abre tabela para pesquisar acessos definidos para cada usuário...

  // Carrega o cód. usuário, nível e se tem acesso a rotinas especiais nas telas de venda...
  Carrega_DireitosUsuario();

  // Chama função que altera o caption do form colocando o nome da empresa, endereço e fone...
  Define_Titulo_Form;

  // Procedure que coloca itens de menu desabilitados de acordo com o nível de acesso do usuário.
  AnalisaNivelAcesso;

  // Chama função para habilitar e desabilitar as opções de menus de acordo
  // com as definições de menu deste usuário...
  Define_Menu();

  //==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==//

  Verifica_BotaoFechar();

  (*
  If Par_Exibebotaofechar = 'N' then
    Desabilita_Botaofechar( True );
  Else
    Desabilita_Botaofechar( False );
  *)

  // Carrega o ícone padrão para os forms
  //FrmPrincipal.Icon.LoadFromFile('C:\Syspizza\images2\015.ico');

  FrmPrincipal.Refresh;

  Par_QtdeMaxLinhas := 58;

  If FileExists('C:\SysPizza\Cool.avi') then
    Animate_LogoSys.Active := True
  Else
    begin
      Alerta('Erro Leve');
      MessageDlg('O Arquivo <Cool.avi> não foi encontrado no diretório padrão do Syspizza....'+#13+#13+'Alguma(s) animação(ões) não aparecerá(ão)...', mtError, [mbOk], 0 );
    end;

  //--

  If FileExists('C:\Syspizza\Avi20.avi') then
    lgErro_Arquivo_Animacao := False
  Else
    begin
      Alerta('Erro Leve');
      MessageDlg('O Arquivo <Avi20.avi> não foi encontrado no diretório padrão do Syspizza....'+#13+#13+'Alguma(s) animação(ões) não aparecerá(ão)...', mtError, [mbOk], 0 );

      lgErro_Arquivo_Animacao := True;
    end;

  //--
  //
  ///-----

  Animate_LogoSys.Top := SBMensagem.Top - (SBMensagem.Height+20);

  Label30.Top                := SBMensagem.Top - SBMensagem.Height;
  Label25.Top                := Label30.Top;

  Label_ErroPrtScreen.Top    := Label30.Top - 15;
  Label_ErroAltPrtScreen.Top := Label_ErroPrtScreen.Top;

  SecretPanel_Logo.Top       := Label30.Top - 10;
  BitBtn_DadosEmpresa.Top    := Label30.Top - 07;
  RxGIFAnimator_Network.Top  := Label30.Top - 06;

  //--

  If (Par_TelaPadraoEntrega = 'Entrega padrão') then
    Label_TipoEntrega.Caption := 'Entregas'
  Else
    Label_TipoEntrega.Caption := 'Entrega rápida.';

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Image_ParametrosClick(Sender: TObject);
begin

  Parmetros1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Image_SairClick(Sender: TObject);
begin

  SairdoSistema1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Verifica_Carrega_IconeAplicacao;
Var
  B             : TStream;
  Stream2       : TMemoryStream;

  Icone         : TIcon;

  //--

  cCaminhoIcone : String;
begin

  Try
    If Table_Parametro.Active = False then
      Table_Parametro.Open
    Else
      Table_Parametro.Refresh;

    //--

    Try
      cCaminhoIcone := Carrega_CaminhoIconeAplicacao();

      If (Table_Parametro.FieldByName('Par_IconeSyspizza').AsString = '') Or (cCaminhoIcone = '') then
        begin
          Carrega_Icone_Final();
          Exit;
        end
      Else
        begin

          //Application.Icon.LoadFromFile(DM_Principal.ZTable_Parametro.FieldByName('Par_IconeSistema').AsString);

          Application.Icon.LoadFromFile( cCaminhoIcone );
          FrmAcess.Icon.LoadFromFile( cCaminhoIcone );
        end;

    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Impossível carregar ícone do Sistema Syspizza® !'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0);

      Carrega_Icone_Final();
      Exit;
    end;

    //--

    Application.ProcessMessages;

  Except
    Carrega_Icone_Final();

    Exit;
  end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Carrega_CaminhoIconeAplicacao : String;
begin

  If (Table_Parametro.Active = False) then
    Table_Parametro.Active := True;

  If (Table_Parametro.FieldByName('Par_IconeSyspizza').Value <> Null) then
    begin
      Try
        Result := Table_Parametro.FieldByName('Par_IconeSyspizza').AsString;

      Except
        MessageBeep(32);
        MessageDlg('Atenção...'+#13+#13+'Impossível carregar caminho do ícone do Sistema Syspizza® !'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0);

        //Table_Parametro.Active := False;
        Result := '';
      end;

    end
  Else
    Result := '';

  //--

  //Table_Parametro.Active := False;
end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Carrega_Icone_Final : String;
Var
  Icone  : TIcon;
begin

  If FileExists(ExtractFilePath(ParamStr(0))+'Syspizza1.ico') then
    begin
      Application.Icon.LoadFromFile(ExtractFilePath(ParamStr(0))+'Syspizza1.ico');
      FrmAcess.Icon.LoadFromFile(ExtractFilePath(ParamStr(0))+'Syspizza1.ico');
    end
  Else
    begin

      //----
      // Tenta buscar o ícone do Imagelist padrão, dentro do sistema.
      //----------

      Try
        Icone := TIcon.Create();

        FrmAcess.ImageList_ErroIcone.GetIcon(0, Icone);

        If Icone <> Nil then
          begin
            Application.Icon := Icone;
            FrmAcess.Icon    := Icone;
          end;
      Except

        //----
        // Tenta buscar o ícone de erro do Imagelist padrão, dentro do sistema.
        //----------

        FrmAcess.ImageList_ErroIcone.GetIcon(3, Icone);

        If Icone <> Nil then
          begin
            Application.Icon := Icone;
            FrmAcess.Icon    := Icone;
          end;

        //--

        Som(7);
        MessageDlg('Atenção...'+#13+#13+'O arquivo de ícone do sistema Syspizza não pode ser carregado !'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

        Icone := Nil;
      end;

    end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Abre_Arquivos_Fechados_Indexacao;
begin

  FrmAcess.Table_Permissoes.Open;
  FrmAcess.Table_Forms.Open;
  FrmAcess.Table_Usuario.Open;

  //--

  Self.Height := Self.Height - Panel_IndexandoArquivo.Height;
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.ReindexaarquivosSysPizza1Click(Sender: TObject);
Var
  bConfReindexacao : Boolean;
begin

  If (Retorna_Chave_Arq_Inicializacao( 'INICIAR', 'Indexar' ) <> 'Sim') then
    begin
      If MessageDlg('Confirma o início da Reindexação dos arquivos do SysPizza ?', mtConfirmation, [mbYES,mbNO],0) = mrNO then Exit;

      bConfReindexacao := True;
    end
  Else
    bConfReindexacao := True;

  //--

  Alerta('Confirmacao');
  //If MessageDlg('Confirma o início da Reindexação dos arquivos do SysPizza ?', mtConfirmation, [mbYES,mbNO],0) = mrNO then Exit;
  If (bConfReindexacao = False) then Exit;

  //--

  Progressbar_Indexacao.Visible := True;
  Progressbar_Indexacao.Min     := 0;
  Progressbar_Indexacao.Max     := 71;

  If (lgErro_Arquivo_Animacao = False) then
    begin
      Animate_Indexacao.Visible := True;
      Animate_Indexacao.Active  := True;
    end;

  //--

  Panel_IndexandoArquivo.Visible := True;

  Application.ProcessMessages;

  //---------//-----------//---------

  // Fecha arquivo de acessos para evitar erro na indexação e ao final reabre-o.

  If Table_Acessos.Active then
    Table_Acessos.Close;

  // Fecha arquivos que estão abertos no FrmAcess.
  FrmAcess.Table_Permissoes.Close;
  FrmAcess.Table_Forms.Close;
  FrmAcess.Table_Usuario.Close;

  EliminaIndices();

  //--

  //--------
  // Arquivo: Acessos.db
  //------------------------

  Label_Arquivo.Caption := 'Acessos.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName := 'Acessos.db';
    Table_Indexacao.TableType := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Ace_CodUsuario;Ace_CodForm', [ixPrimary]);

        // índices secundários,...
        //Table_Indexacao.AddIndex( 'CEPMSMT', 'LOG_LOGR', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Acessos.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;

      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;

  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;

  //--------
  // Arquivo: Adicional.db
  //------------------------

  Label_Arquivo.Caption := 'Adicional.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName := 'Adicional.db';
    Table_Indexacao.TableType := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Adic_Codigo', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndDescricao', 'Adic_Descricao', [ixCaseInSensitive] );

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Adicional.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;

      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;

  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;

  //*************************
  // Arquivo: Agenda.db
  //**************************************

  Label_Arquivo.Caption := 'Agenda.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Agenda.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Data_Agendamento;Hora_Agenda;NOrdem', [ixPrimary]);

        // índices secundários,...
        //Table_Indexacao.AddIndex( 'CEPMSMT', 'LOG_LOGR', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Agenda.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Anot_Age.db
  //**************************************

  Label_Arquivo.Caption := 'Anot_age.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Anot_Age.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Data_Agendamento;Hora_Agendamento;NOrdem', [ixPrimary]);

        // índices secundários,...
        //Table_Indexacao.AddIndex( 'CEPMSMT', 'LOG_LOGR', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Anot_Age.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Backup.db
  //**************************************

  Label_Arquivo.Caption := 'Backup.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Backup.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Data_Backup', [ixPrimary]);

        // índices secundários,...
        //Table_Indexacao.AddIndex( 'CEPMSMT', 'LOG_LOGR', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Backup.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Bairros.db
  //**************************************

  Label_Arquivo.Caption := 'Bairros.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Bairros.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Bai_Codigo', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndDescricao', 'Bai_Descricao', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Bairros.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: CartCred.db
  //**************************************

  Label_Arquivo.Caption := 'CartCred.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'CartCred.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Cart_Codigo', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndDescricao', 'Cart_Descricao', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo CartCred.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Categori.db
  //**************************************

  Label_Arquivo.Caption := 'Categori.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Categori.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Cat_Codigo', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndDescricao', 'Cat_Descricao', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Categori.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: CepMSMT.db
  //**************************************
  Label_Arquivo.Caption := 'CepMSMT.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'CepMSMT.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Log_Codi', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'CepMSMT', 'Log_Logr', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo CepMSMT.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Cliente.db
  //**************************************
  Label_Arquivo.Caption := 'Cliente.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Cliente.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Cli_Codigo', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndFone',       'Cli_Fone',        [ixCaseInSensitive] );
        Table_Indexacao.AddIndex( 'IndFone2',      'Cli_Fone2',       [ixCaseInSensitive] );
        Table_Indexacao.AddIndex( 'IndNome',       'Cli_Nome',        [ixCaseInSensitive] );
        Table_Indexacao.AddIndex( 'IndNumCelular', 'Cli_FoneCelular', [ixCaseInSensitive] );

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Cliente.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;

  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;

  //*************************
  // Arquivo: CompProd.db
  //**************************************

  Label_Arquivo.Caption := 'CompProd.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'CompProd.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','CpoProd_CodigoProduto;CpoProd_CodMateriaPrima', [ixPrimary]);

        // índices secundários,...
        //Table_Indexacao.AddIndex( 'IndNome',  'Cli_Nome',  [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo CompProd.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Cvn_ITVe.db
  //**************************************

  Label_Arquivo.Caption := 'Cvn_ItVe.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Cvn_ItVe.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','CvnItVe_DataVenda;CvnItVe_NumVenda;CvnItVe_NumItem', [ixPrimary]);

        // índices secundários,...
        //Table_Indexacao.AddIndex( 'IndNome',  'Cli_Nome',  [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Cvn_ItVe.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Cvn_Vend.db
  //**************************************

  Label_Arquivo.Caption := 'Cvn_Vend.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Cvn_Vend.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Cvn_DataVenda;Cvn_NumVenda', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndObservacao', 'Cvn_Observacao',  [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Cvn_Vend.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: CxDiario.db
  //**************************************
  Label_Arquivo.Caption := 'CxDiario.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'CxDiario.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Cod_Usuario;Data_Movimentacao', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndDataUsuario', 'Data_Movimentacao;Cod_Usuario',  [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo CxDiario.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);
      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: CxMovime.db
  //**************************************

  Label_Arquivo.Caption := 'CxMovime.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'CxMovime.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','CxMovim_CodUsuario;CxMovim_Data_Movimentacao;CxMovim_Num_Item', [ixPrimary]);

        // índices secundários,...
        //Table_Indexacao.AddIndex( 'IndNome',  'Cli_Nome',  [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo CxMovime.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Data_Age.db
  //**************************************

  Label_Arquivo.Caption := 'Data_Age.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Data_Age.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Data_Agendamento', [ixPrimary]);

        // índices secundários,...
        //Table_Indexacao.AddIndex( 'IndNome',  'Cli_Nome',  [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Data_Age.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Despesa.db
  //**************************************

  Label_Arquivo.Caption := 'Despesa.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Despesa.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Des_Codigo', [ixPrimary]);

        // índices secundários,...
        //Table_Indexacao.AddIndex( 'IndDescricao',  'Des_Nome',  [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Despesa.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;

  //*************************
  // Arquivo: Empresas.db
  //**************************************

  Label_Arquivo.Caption := 'Empresas.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Empresas.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Emp_Codigo', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndNome',  'Emp_Nome',  [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Empresas.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: EmpLimite.db
  //**************************************

  Label_Arquivo.Caption := 'EmpLimite.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'EmpLimite.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','EmpLim_CodEmpresa;EmpLim_NumOrdem', [ixPrimary]);

        // índices secundários,...
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo EmpLimite.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: EmprProd.db
  //**************************************

  Label_Arquivo.Caption := 'EmprProd.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'EmprProd.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','EmprPro_CodEmpresa;EmprPro_CodProduto', [ixPrimary]);

        // índices secundários,...

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo EmprProd.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Encerran.db
  //**************************************

  Label_Arquivo.Caption := 'Encerran.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Encerran.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Enc_DataEncerrante', [ixPrimary]);

        // índices secundários,...
        //Table_Indexacao.AddIndex( 'IndNome',  'Cli_Nome',  [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Encerran.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;

  //*************************
  // Arquivo: Entrega.db
  //**************************************

  Label_Arquivo.Caption := 'Entrega.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Entrega.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Ent_DataEntrega;Ent_NumEntrega', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndCodCliente',      'Ent_CodCliente',  [ixCaseInSensitive] );
        Table_Indexacao.AddIndex( 'IndDataDescendente', 'Ent_DataEntrega', [ixCaseInsensitive,ixDescending] );
        Table_Indexacao.AddIndex( 'IndDataHoraPedNumEntrega', 'Ent_DataEntrega;Ent_HoraPedido;Ent_NumEntrega', [ixCaseInsensitive,ixDescending] );

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Entrega.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Fich_Cli.db
  //**************************************

  Label_Arquivo.Caption := 'Fich_Cli.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Fich_Cli.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','FichCli_CodFicha', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Fich_Cli.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;

      Panel_IndexandoArquivo.visible := False;

      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;

  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Forma_Pagto.db
  //**************************************

  Label_Arquivo.Caption := 'Forma_Pagto.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Forma_Pagto.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','FormaPagto_CodFicha;FormaPagto_FormaPagto', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Forma_Pagto.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;

      Panel_IndexandoArquivo.visible := False;

      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;

  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;

  
  //*************************
  // Arquivo: Forms.db
  //**************************************

  Label_Arquivo.Caption := 'Forms.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Forms.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Frm_Codigo', [ixPrimary]);

        // índices secundários,...
        //Table_Indexacao.AddIndex( 'IndCodCliente',      'Ent_CodCliente',  [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Forms.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;

  //*************************
  // Arquivo: Forneced.db
  //**************************************

  Label_Arquivo.Caption := 'Forneced.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Forneced.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','For_Codigo', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndNome', 'For_Nome',  [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Forneced.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Funciona.db
  //**************************************

  Label_Arquivo.Caption := 'Funciona.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Funciona.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Fun_Codi', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndFone', 'Fun_Fone', [ixCaseInSensitive] );
        Table_Indexacao.AddIndex( 'IndNome', 'Fun_Nome', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Funciona.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Hist_Ent.db
  //**************************************

  Label_Arquivo.Caption := 'Hist_Ent.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Hist_Ent.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','HistEnt_CodCliente;HistEnt_CodProd', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Hist_Ent.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: It_Desp.db
  //**************************************

  Label_Arquivo.Caption := 'It_Desp.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'It_Desp.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','ItDes_Codigo;ItDes_NumItem', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo It_Desp.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: It_Locac.db
  //**************************************

  Label_Arquivo.Caption := 'It_Locac.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'It_Locac.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','ItLoc_NumLocacao;ItLoc_NumItem', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo It_Locac.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: ItEntreg.db
  //**************************************

  Label_Arquivo.Caption := 'ItEntreg.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'ItEntreg.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','ItEntrega_DataEntrega;ItEntrega_NumEntrega;ItEntrega_NumItem', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo ItEntreg.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: ItNotEnt.db
  //**************************************

  Label_Arquivo.Caption := 'ItNotEnt.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'ItNotEnt.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','ItEnt_NumNota;ItEnt_NumItem', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo ItNotEnt.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;



  //*************************
  // Arquivo: ItNtEnMP.db
  //**************************************

  Label_Arquivo.Caption := 'ItNtEnMP.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'ItNtEnMP.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','ItEnt_NumNota;ItEnt_NumItem', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo ItNtEnMP.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;



  //*************************
  // Arquivo: ItTransa.db
  //**************************************

  Label_Arquivo.Caption := 'ItTransa.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'ItTransa.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','ItTrans_Numero;ItTrans_NumItem', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo ItTransa.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: ITValeFu.db
  //**************************************

  Label_Arquivo.Caption := 'ItValeFu.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'ItValeFu.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','ItVl_NumVale;ItVl_NumItem', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo ItValeFu.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: ItVenda.db
  //**************************************

  Label_Arquivo.Caption := 'ItVenda.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'ItVenda.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','ItVen_CodMesa;ItVen_NumSerie;ItVen_DataVenda;ItVen_NumVenda;ItVen_NumItem', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo ItVenda.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: ItVendPg.db
  //**************************************

  Label_Arquivo.Caption := 'ItVendPg.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'ItVendPg.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','ItVen_CodMesa;ItVen_NumSerie;ItVen_DataVenda;ItVen_NumVenda;ItVen_NumPagtoParcial;ItVen_NumItem', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo ItVendPg.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Locacao.db
  //**************************************

  Label_Arquivo.Caption := 'Locacao.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Locacao.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Loc_NumLocacao', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'Loc_IndDataNumCliente', 'Loc_DtLocacao;Loc_NumCliente', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Locacao.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;



  //*************************
  // Arquivo: MatPrima.db
  //**************************************

  Label_Arquivo.Caption := 'MatPrima.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'MatPrima.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Mat_Codigo', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'Ind_Descricao', 'Mat_Descricao', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo MatPrima.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Mesas.db
  //**************************************

  Label_Arquivo.Caption := 'Mesas.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Mesas.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Mes_Codi', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndDescricao',       'Mes_Descricao',                 [ixCaseInSensitive] );
        Table_Indexacao.AddIndex( 'IndSerieDescricao',  'Mes_SerieGerada;Mes_Descricao', [ixCaseInSensitive] );

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Mesas.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: NotaEnt.db
  //**************************************

  Label_Arquivo.Caption := 'NotaEnt.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'NotaEnt.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Ent_NumNota', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo NotaEnt.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;



  //*************************
  // Arquivo: NotEntMP.db
  //**************************************

  Label_Arquivo.Caption := 'NotEntMP.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'NotEntMP.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Ent_NumNota', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo NotEntMP.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Numeraca.db
  //**************************************

  Label_Arquivo.Caption := 'Numeraca.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Numeraca.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Num_Codigo', [ixPrimary]);

        // Índices secundários
        Table_Indexacao.AddIndex( 'IndSerie', 'Num_Serie',                       [ixCaseInSensitive] );
        Table_Indexacao.AddIndex( 'IndData',  'Num_DataGeracao;Num_HoraGeracao', [ixCaseInSensitive] );

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Numeraca.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: PosCaixa.db
  //**************************************

  Label_Arquivo.Caption := 'PosCaixa.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'PosCaixa.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','PosCaixa_DataMovimentacao;PosCaixa_NomeUsuario', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo PosCaixa.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;



  //*************************
  // Arquivo: PosEstoq.db
  //**************************************

  Label_Arquivo.Caption := 'PosEstoq.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'PosEstoq.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','PosEst_DataMovimentacao;PosEst_CodProd', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo PosEstoq.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Printers.db
  //**************************************

  Label_Arquivo.Caption := 'Printers.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Printers.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Cod_Empresa', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndNome', 'Nome_Impressora',  [ixCaseInSensitive] );

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Printers.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: ProdExcl.db
  //**************************************

  Label_Arquivo.Caption := 'ProdExcl.db';
  Label_Arquivo.Refresh;


  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'ProdExcl.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','ProdExcl_DataMovim;ProdExcl_TipoMovim;ProdExcl_CodProduto;ProdExcl_NumItem', [ixPrimary]);

        // índices secundários,...
        //Table_Indexacao.AddIndex( 'IndDescricao', 'Pro_Descricao', [ixCaseInSensitive] );

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo ProdExcl.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Produtos.db
  //**************************************

  Label_Arquivo.Caption := 'Produtos.db';
  Label_Arquivo.Refresh;


  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Produtos.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Pro_Codigo', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'Ind_CodBarra', 'Pro_Codbarra',  [ixCaseInSensitive] );
        Table_Indexacao.AddIndex( 'IndDescricao', 'Pro_Descricao', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Produtos.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Res_Caix.db
  //**************************************

  Label_Arquivo.Caption := 'Res_Caix.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Res_Caix.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Res_DataCaixa;Res_CodUsuario', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Res_Caix.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;



  //*************************
  // Arquivo: Tab_Desp.db
  //**************************************

  Label_Arquivo.Caption := 'Tab_Desp.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Tab_Desp.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Des_Codigo', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndDescricao', 'Des_Descricao', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Tab_Desp.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Taxa.db
  //**************************************

  Label_Arquivo.Caption := 'Taxa.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Taxa.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Tax_Codigo', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndDescricao', 'Tax_Descricao', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Taxa.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Temp.db
  //**************************************

  Label_Arquivo.Caption := 'Temp.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Temp.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Tmp_CodProd', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'I_NomeProd', 'Tmp_NomeProd', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Temp.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;

  //*************************
  // Arquivo: Temp_Mot.db
  //**************************************

  Label_Arquivo.Caption := 'Temp_Mot.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Temp_Mot.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Data', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Temp_Mot.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Temp_Rec.db
  //**************************************

  Label_Arquivo.Caption := 'Temp_Rec.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Temp_Rec.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Data_Entrega;Num_Entrega', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Temp_Rec.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: TipoFunc.db
  //**************************************

  Label_Arquivo.Caption := 'TipoFunc.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'TipoFunc.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','TipoFunc_Codigo', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndDescricao', 'TipoFunc_Descricao', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo TipoFunc.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Tmp_0001.db
  //**************************************

  Label_Arquivo.Caption := 'Tmp_0001.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Tmp_0001.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Tmp_DataMovimentacao;Tmp_CodProd', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'I_NomeProd', 'Tmp_DataMovimentacao;Tmp_NomeProd', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Tmp_0001.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Tmp_0002.db
  //**************************************

  Label_Arquivo.Caption := 'Tmp_0002.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Tmp_0002.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Tmp_DataVenda;Tmp_CodMesa;Tmp_NumSerie;Tmp_NumVenda;Tmp_NumPagto', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Tmp_0002.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Tmp_0003.db
  //**************************************

  Label_Arquivo.Caption := 'Tmp_0003.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Tmp_0003.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Tmp_CodClie', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndNome', 'Tmp_NomeCliente', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Tmp_0003.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Tmp_0004.db
  //**************************************

  Label_Arquivo.Caption := 'Tmp_0004.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Tmp_0004.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Tmp_CodCategoria;Tmp_CodProd', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'Ind_Categoria_Nome', 'Tmp_CodCategoria;Tmp_NomeProd', [ixCaseInSensitive] );

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Tmp_0004.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Tmp_0005.db
  //**************************************

  Label_Arquivo.Caption := 'Tmp_0005.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Tmp_0005.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Tmp_CodCategoria;Tmp_CodProduto', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndCategoriaNome', 'Tmp_CodCategoria;Tmp_NomeProduto', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Tmp_0005.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);
      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Tmp_0006.db
  //**************************************

  Label_Arquivo.Caption := 'Tmp_0006.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Tmp_0006.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','PosCaixa_CodUsuario;PosCaixa_DataMovimentacao', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Tmp_0006.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;



  //*************************
  // Arquivo: Tmp_0007.db
  //**************************************

  Label_Arquivo.Caption := 'Tmp_0007.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Tmp_0007.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Tmp_CodCategoria;Tmp_CodProduto', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Tmp_0007.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;



  //*************************
  // Arquivo: Tmp_Esto.db
  //**************************************

  Label_Arquivo.Caption := 'Tmp_Esto.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Tmp_Esto.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Tmp_CodProd;Tmp_DataMovimentacao', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Tmp_Esto.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: Transac.db
  //**************************************

  Label_Arquivo.Caption := 'Transac.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Transac.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Trans_Numero', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndFuncionario', 'Trans_Funcionario',     [ixCaseInSensitive] );
        Table_Indexacao.AddIndex( 'IndHistorico',   'Trans_Hist',            [ixCaseInSensitive] );
        Table_Indexacao.AddIndex( 'IndTipo',        'Trans_Tipo',            [ixCaseInSensitive] );
        Table_Indexacao.AddIndex( 'IndTipoData',    'Trans_Tipo;Trans_Data', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Transac.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;

  //*************************
  // Arquivo: Unidade.db
  //**************************************

  Label_Arquivo.Caption := 'Unidade.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Unidade.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Un_Codigo', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndDescricao', 'Un_Descricao', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Unidade.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;

  //*************************
  // Arquivo: Usuario.db
  //**************************************

  Label_Arquivo.Caption := 'Usuario.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Usuario.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Usu_Codi', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndNome', 'Usu_Nome', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Usuario.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;

  //*************************
  // Arquivo: Val_Entr.db
  //**************************************

  Label_Arquivo.Caption := 'Val_Entr.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Val_Entr.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','ValEnt_NumVale', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Val_Entr.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: ValeClie.db
  //**************************************

  Label_Arquivo.Caption := 'ValeClie.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'ValeClie.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Val_CodigoClie;Val_NumVale', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo ValeClie.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;



  //*************************
  // Arquivo: ValeFunc.db
  //**************************************

  Label_Arquivo.Caption := 'ValeFunc.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'ValeFunc.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Val_NumVale', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'Ind_DataRetirada', 'Val_DataRetirada;Val_CodigoFunc', [ixCaseInSensitive] );
        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo ValeFunc.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);
      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;

  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;



  //*************************
  // Arquivo: Venda.db
  //**************************************

  Label_Arquivo.Caption := 'Venda.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'Venda.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','Ven_CodMesa;Ven_NumSerie;Ven_DataVenda;Ven_NumVenda', [ixPrimary]);

        // índices secundários,...
        Table_Indexacao.AddIndex( 'IndDataHora',              'Ven_DataVenda;Ven_HoraAbertura', [ixCaseInSensitive] );
        Table_Indexacao.AddIndex( 'IndDataMesaSerieNumVenda', 'Ven_DataVenda;Ven_CodMesa;Ven_NumSerie;Ven_NumVenda', [ixCaseInSensitive] );

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo Venda.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);

      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  Progressbar_Indexacao.Position := Progressbar_Indexacao.Position + 1;


  //*************************
  // Arquivo: VendaPg.db
  //**************************************

  Label_Arquivo.Caption := 'VendaPg.db';
  Label_Arquivo.Refresh;

  Try
    Table_Indexacao.Close;
    Table_Indexacao.TableName    := 'VendaPg.db';
    Table_Indexacao.TableType    := ttParadox;

    { adiciona a chave primária e as secundárias (se houver) }
    With Table_Indexacao.IndexDefs do
      begin
        Table_Indexacao.AddIndex('','VenPg_CodMesa;VenPg_NumSerie;VenPg_DataVenda;VenPg_NumVenda;VenPg_NumPagto', [ixPrimary]);

        Update;
      end;
    Table_Indexacao.Open;

  Except
    begin
      Som(7);
      MessageDlg('Atenção...'+#13+#13+'Ocorreu um erro na criação do índice do arquivo VendaPg.db !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0);
      Progressbar_Indexacao.Position := 0;
      Progressbar_Indexacao.Visible  := False;
      Panel_IndexandoArquivo.visible := False;
      Animate_Indexacao.Active       := False;
      Animate_Indexacao.Visible      := False;
      Abre_Arquivos_Fechados_Indexacao();
      Exit;
    end;

  end;
  // Compacta tabela para melhorar performance...
  ParadoxPack(Table_Indexacao);
  ProgressBar_Indexacao.Position := Progressbar_Indexacao.Position + 1;

  Label_Arquivo.Caption := '';
  Label_Arquivo.Refresh;

  //--------------------------------------------------------------------------//
  //--------------------------------------------------------------------------//
  //--------------------------------------------------------------------------//

  //---
  // Reabre arquivo de acessos que estava aberto antes de iniciar esta rotina.
  //-------------------------------
  If Table_Acessos.Active = False then
    Table_Acessos.Open;

  Progressbar_Indexacao.Position := 0;
  Progressbar_Indexacao.Visible  := False;

  Animate_Indexacao.Visible := False;
  Animate_Indexacao.Active  := False;

  Panel_IndexandoArquivo.Visible := False;
  Application.ProcessMessages;

  Alerta('Sucesso');
  MessageDlg('Atenção...'+#13+#13+'Reorganização do(s) índice(s) do sistema SysPizza foi efetuada com sucesso !!!', mtInformation, [mbOk], 0);

  FrmAcess.Table_Permissoes.Open;
  FrmAcess.Table_Forms.Open;
  FrmAcess.Table_Usuario.Open;

end;

//**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--//

procedure TFrmPrincipal.TotaisVendaporperiodomesaClick(Sender: TObject);
begin

  FrmSRelTotaisVendas := TFrmSRelTotaisVendas.Create(Application);

  FrmSRelTotaisVendas.Showmodal;

  FreeAndNil(FrmSRelTotaisVendas);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.VerificaResolucao : Boolean;
Var
 lRet : Boolean;
begin

  Res_y := getdevicecaps( getdc(0), VERTRES);  {pega a vertical}
  Res_x := getdevicecaps( getdc(0), HORZRES);  {pega a horizontal}

  lRet := True;

  If (Res_x = 640) and (Res_y = 480) then
    begin
      Alerta('Erro Leve');
      Mensagem2( 'Atenção...'+#13+#13+'Sua resolução de vídeo é muito baixa para a exibição correta das telas do sistema !!!'+#13+#13+'O mínimo necessário é: 800x600 pixels...'+#13+#13+'Qualquer dúvida, contacte suporte !', 'W' );

      lRet := False;
    end
  Else If (Res_x = 800) And (Res_y = 600) then
    begin
      //FrmPrincipal.Position := poDesigned
      Self.Position := poDesktopCenter;
      Self.Top := FrmPrincipal.Top - 15;
    end
  Else If (Res_x > 800) and (Res_y > 600) then
    Self.Position := poDesktopCenter;

  Result := lRet;
end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.CadUsuarios1Click(Sender: TObject);
begin

  FrmUsuarios := TFrmUsuarios.Create(Application);

  FrmUsuarios.Table_Usuario.Open;
  FrmUsuarios.Table_Forms.Open;
  FrmUsuarios.Table_Permissoes.Open;

  FrmUsuarios.Showmodal;

  FrmUsuarios.Table_Usuario.Close;
  FrmUsuarios.Table_Usuario.Close;
  FrmUsuarios.Table_Permissoes.Close;

  FreeAndNil(FrmUsuarios);

end;

//==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>//



procedure TFrmPrincipal.CaddeForms1Click(Sender: TObject);
begin

  FrmForms := TFrmForms.Create(Application);

  FrmForms.Table_Forms.Open;

  FrmForms.Showmodal;

  FrmForms.Table_Forms.Close;

  FreeAndNil(FrmForms);

end;

//**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--//

procedure TFrmPrincipal.CaddePermissesdeacessos1Click(Sender: TObject);
begin

  FrmPermissaoAcesso := TFrmPermissaoAcesso.Create(Application);

  FrmPermissaoAcesso.Table_Forms.Open;
  FrmPermissaoAcesso.Table_Acessos.Open;
  FrmPermissaoAcesso.Table_Usua.Open;
  FrmPermissaoAcesso.Table_Usuarios2.Open;

  FrmPermissaoAcesso.Showmodal;

  FrmPermissaoAcesso.Table_Forms.Close;
  FrmPermissaoAcesso.Table_Acessos.Close;
  FrmPermissaoAcesso.Table_Usua.Close;
  FrmPermissaoAcesso.Table_Usuarios2.Close;

  FreeAndNil(FrmPermissaoAcesso);

  //--

  AnalisaNivelAcesso();
  
end;

//**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--//

procedure TFrmPrincipal.SpeedButton_RelatoriosClick(Sender: TObject);
begin

  SairdoSistema1Click(Nil);

end;

//**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--//

procedure TFrmPrincipal.EntradadeProduto1Click(Sender: TObject);
begin

  If Verifica_LimiteRegistros('NOTAENTRADA') = True then
    begin
      Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmS_RelEntProdEst := TFrmS_RelEntProdEst.Create(Application);
  FrmS_RelEntProdEst.Showmodal;
  FreeAndNil(FrmS_RelEntProdEst);

end;

//**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--//


procedure TFrmPrincipal.Calculadora1Click(Sender: TObject);
const
  s = 'Calc.exe';
var
  c : Array[0..79] of Char;
begin

  // Verifica se usuário pode acessar esta rotina...
  FrmPrincipal.Table_Acessos.FindKey([FrmPrincipal.Cod_User,590]);
  If (FrmPrincipal.Table_Acessos.FieldByName('Ace_Incluir').AsString = 'N') and
  (FrmPrincipal.Table_Acessos.FieldByName('Ace_Alterar').AsString = 'N') And (FrmPrincipal.Table_Acessos.FieldByName('Ace_Excluir').AsString = 'N')  then
    begin
      FrmPrincipal.Alerta('Erro Leve');

      MessageDlg('Atenção...'+#13+#13+'Usuário sem permissão para acessar esta tela !!!'+#13+#13+'Contacte Supervisor do sistema!', mtError, [mbOk], 0 );

      Som( 14 );
      FrmErroRotina := TFrmErroRotina.Create(Application);
      FrmErroRotina.ShowModal;
      FreeAndNil(FrmErroRotina);

      Exit;
    end;


  //--

  Janela := FindWindow('Scicalc', nil );

  If Janela <> 0 then
    begin
      Som(7);
      MessageDlg('Atenção...Calculadora já aberta !', mtError, [mbOk], 0 );
      Exit;
    end;

  StrCopy(c, s );
  WinExec(c, 1 );
end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

(*
  Texto:
Primeiro você precisa criar uma type com as variaveis de sistema. Isso pode ser feito depois da cláusula implementation.

...

implementation

{$R *.DFM}

Type
   //Dados para a procura
   PDadoProcura = ^TDadoProcura;
   TDadoProcura = record
   Win : THandle;
   YPos : Integer;
end;

Agora você precisa criar a function que procura a calculadora

   //Procura pelo TStatic visível com a menor coordenada Y

function ListaFilhos(Win: THandle; lp: LPARAM): Boolean; stdcall;
var
   P: PDadoProcura;
   R: TRect;
   ClassName: array[0..255] of char;
begin
   P:=PDadoProcura(lp);
   GetClassName(Win, ClassName, sizeof(ClassName));
   //Verifica se é um campo estático
   If StrPas(ClassName) = 'Static' Then
      begin
         //Verifica se está visível
         If IsWindowVisible(Win) Then
            begin
               //Pega a posição e o tamanho da janela
               GetWindowRect(Win, R);
               //Verifica se a coordenada Y é menor
               If R.Top < P^.YPos then
                  begin
                     //É, assume que é esta
                     P^.YPos := R.Top;
                     P^.Win := Win;
                  end;
            end;
      end;
      //Continua chamando a enumeração
      Result:=True;
end;
//Retorna o valor do campo Label da Calculadora cuja coordena Y é menor
//e estiver visível

agora pegue o valor da calculadora

function ResultadoDaCalculadora : String;
var
   CalcWin: THandle;
   P : TDadoProcura;
   Buffer: array[0..80] of char;
begin
   Result:='';
   //Pega o handle da calculadora, se estiver aberta
   CalcWin:= FindWindow('SciCalc',nil);
   If CalcWin <> 0 Then
      begin
         //Assume nenhuma janela em coordenada Y absurda
         P.Win:=0;
         P.YPos:=Maxint;
         //Lista todas as janelas filhas
         EnumChildWindows(CalcWin,@ListaFilhos,LPARAM(@P));
         //Verifica se realmente achou
         If P.Win <> 0 then
            begin
               //Recupera o texto da janela
               GetWindowText(P.Win, Buffer, sizeof(Buffer));
               Result:=Buffer;
            end
         Else
            //Opa, a calculadora não é conhecida
            Raise Exception.Create('Esta calculadora não é familiar.');
            end
         Else
            //A calculadora não está aberta
            Raise Exception.Create('A calculadora não está aberta.');

end;

Use o programa assim

procedure TForm1.Button1Click(Sender: TObject);
begin
   Edit1.Text:=ResultadoDaCalculadora;
end;

*)

//==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>==<>//

procedure TFrmPrincipal.Entradadeprodutoemestoque1Click(Sender: TObject);
begin

  FrmNotaEntradaEstoque := TFrmNotaEntradaEstoque.Create(Application);
  FrmNotaEntradaEstoque.Showmodal;
  FreeAndNil(FrmNotaEntradaEstoque);
  
end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.CriaAbreCaixadirio1Click(Sender: TObject);
begin

  If Verifica_LimiteRegistros('CAIXADIARIO') = True then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmCxDiario := TFrmCxDiario.Create(Application);

  FrmCxDiario.Table_Caixa.Open;
  FrmCxDiario.Table_CxMovimentacao.Open;
  FrmCxDiario.Table_Func.Open;
  FrmCxDiario.Table_Usuario.Open;
  FrmCxDiario.Table_Contador.Open;

  FrmCxDiario.Showmodal;

  FrmCxDiario.Table_Caixa.Close;
  FrmCxDiario.Table_CxMovimentacao.Close;
  FrmCxDiario.Table_Func.Close;
  FrmCxDiario.Table_Usuario.Close;
  FrmCxDiario.Table_Contador.Close; 

  FreeAndNil(FrmCxDiario);
end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Mudanadeusurio1Click(Sender: TObject);
begin

  FrmMudaUsuario := TFrmMudaUsuario.Create(Application);

  FrmMudaUsuario.Table_Usuario.Open;

  FrmMudaUsuario.Showmodal;

  FrmMudaUsuario.Table_Usuario.Close;

  FreeAndNil(FrmMudaUsuario);
  
end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Define_Menu();
begin

  { Objetivo: Para cada tela(form) cadastrado verificar se o usuário está definido
              para acessá-la...Cada tela(form) tem seu no. fixo e não pode ser mudado. }

  // Verificando acessos a cada tela que foi definido para o usuário atual...
  Table_Acessos.First;
  //Table_Acessos.FindNearest([FrmPrincipal.Cod_User]);

  If Table_Acessos.Locate( 'Ace_CodUsuario', Cod_User, [loPartialKey] ) = False then
    begin
      Alerta('Erro Leve');
      Messagedlg('Atenção...'+#13+#13+'Não existe nenhum acesso definido para este usuário...'+#13+#13+'Não será possível acessar nenhum menu do sistema !!!'+#13+#13+'Contacte supervisor para maiores esclarecimentos !', mtInformation, [mbOk], 0 );

      Desabilita_todas_Opcoes();

      Exit;
    end;

  //-------------

  // Cadastro de Bairros....
  If Table_Acessos.FindKey([Cod_User,10]) = False then
    begin
      Bairros1.enabled := False;
      Bairros2.enabled := False;
    end
  Else
    begin
      Bairros1.enabled := True;
      Bairros2.enabled := True;
    end;


  // Cadastro de Cartão de crédito...
  If Table_Acessos.FindKey([Cod_User,20]) = False then
    begin
      CartaodeCredito1.enabled := False;
      CartodeCrdito2.enabled   := False;
    end
  Else
    begin
      CartaodeCredito1.enabled := True;
      CartodeCrdito2.enabled   := True;
    end;


  // Cadastro de Categoria..
  If Table_Acessos.FindKey([Cod_User,30]) = False then
    begin
      Categoria1.enabled := False;
      Categoria2.enabled := False;
    end
  Else
    begin
      Categoria1.enabled := True;
      Categoria2.enabled := True;
    end;


  // Cadastro de Clientes...
  If Table_Acessos.FindKey([Cod_User,40]) = False then
    begin
      Clientes1.enabled := False;
      Clientes5.enabled := False;
    end
  Else
    begin
      Clientes1.enabled := True;
      Clientes5.enabled := True;
    end;


  // Cadastro de Despesas...
  If Table_Acessos.FindKey([Cod_User,50]) = False then
    begin
      Despesas1.enabled := False;
      Despesas2.enabled := False;
    end
  Else
    begin
      Despesas1.enabled := True;
      Despesas2.enabled := True;
    end;


  // Cadastro de Empresas...
  If Table_Acessos.FindKey([Cod_User,60]) = False then
    begin
      Fornecedores1.enabled := False;
      Fornecedores2.enabled := False;
    end
  Else
    begin
      Fornecedores1.enabled := True;
      Fornecedores2.enabled := True;
    end;

  // Cadastro de Fornecedores...
  If Table_Acessos.FindKey([Cod_User,70]) = False then
    begin
      Fornecedores1.enabled := False;
      Fornecedores2.enabled := False;
    end
  Else
    begin
      Fornecedores1.enabled := True;
      Fornecedores2.enabled := True;
    end;


  // Cadastro de Funcionários...
  If Table_Acessos.FindKey([Cod_User,80]) = False then
    begin
      Funcionarios1.enabled := False;
      Funcionarios2.enabled := False
    end
  Else
    begin
      Funcionarios1.enabled := True;
      Funcionarios2.enabled := True;
    end;


  // Cadastro de Matéria-prima...
  If Table_Acessos.FindKey([Cod_User,90]) = False then
    begin
      MateriaPrima1.enabled := False;
      MateriaPrima2.enabled := False;
    end
  Else
    begin
      MateriaPrima1.enabled := True;
      MateriaPrima2.enabled := True;
    end;


  // Cadastro de Mesas...
  If Table_Acessos.FindKey([Cod_User,100]) = False then
    begin
      Mesas1.enabled := False;
      Mesas2.enabled := False;
    end
  Else
    begin
      Mesas1.enabled := True;
      Mesas2.enabled := True;
    end;


  // Cadastro de Produtos...
  If Table_Acessos.FindKey([Cod_User,110]) = False then
    begin
      Produtos3.enabled := False;
      Produto2.enabled  := False;
    end
  Else
    begin
      Produtos3.enabled := True;
      Produto2.enabled  := True;
    end;


  // Cadastro de Taxas..
  If Table_Acessos.FindKey([Cod_User,120]) = False then
    begin
      Taxa1.enabled := False;
      Taxa2.enabled := False;
    end
  Else
    begin
      Taxa1.enabled := True;
      Taxa2.enabled := True;
    end;


  // Cadastro de Tipo Funcionário...
  If Table_Acessos.FindKey([Cod_User,130]) = False then
    begin
      TipoFuncionario1.enabled := False;
      TipoFuncionario2.enabled := False;
    end
  Else
    begin
      TipoFuncionario1.enabled := True;
      TipoFuncionario2.enabled := True;
    end;


  // Cadastro de Unidade...
  If Table_Acessos.FindKey([Cod_User,140]) = False then
    begin
      Unidade1.enabled := False;
    end
  Else
    begin
      Unidade1.enabled := True;
    end;

  //--< Movimento >----

  // Movimento - Entrada de matéria-prima em estoque.
  If Table_Acessos.FindKey([Cod_User,150]) = False then
    EntradadeMateriaprimaemestoque1.enabled := False
  Else
    EntradadeMateriaprimaemestoque1.enabled := True;


  // Movimento - Entrada de produto em estoque.
  If Table_Acessos.FindKey([Cod_User,160]) = False then
    Entradadeprodutoemestoque1.enabled := False
  Else
    Entradadeprodutoemestoque1.enabled := True;


  // Movimento - Caixa diário (Cria/Abre/Fecha).
  If Table_Acessos.FindKey([Cod_User,170]) = False then
    Caixadirio1.enabled := False
  Else
    Caixadirio1.enabled := True;


  // Movimento - Saída (venda em mesa)
  If Table_Acessos.FindKey([Cod_User,180]) = False then
    VendaemMesas2.enabled := False
  Else
    VendaemMesas2.enabled := True;


  // Movimento - Saída (Entregas)
  If Table_Acessos.FindKey([Cod_User,190]) = False then
    Entregas2.enabled := False
  Else
    Entregas2.enabled := True;


  // Movimento - Saída (Conveniência)
  If Table_Acessos.FindKey([Cod_User,200]) = False then
    Conveniencia1.enabled := False
  Else
    Conveniencia1.enabled := True;


  // Movimento - Lançamento - Vales Funcionário
  If Table_Acessos.FindKey([Cod_User,210]) = False then
    Funcionario4.enabled := False
  Else
    Funcionario4.enabled := True;


  // Movimento - Quitação de Vales Cliente
  If Table_Acessos.FindKey([Cod_User,220]) = False then
    Funcionario4.enabled := False
  Else
    Funcionario4.enabled := True;

  // Movimento - Lançamento de Despesas...
  If Table_Acessos.FindKey([Cod_User,230]) = False then
    LancamentodeDespesas1.enabled := False
  Else
    LancamentodeDespesas1.enabled := True;


  // Movimento - Locação de mesas.
  If Table_Acessos.FindKey([Cod_User,240]) = False then
    Locaodemesas1.enabled := False
  Else
    Locaodemesas1.enabled := True;


  // Movimento - Transações financeiras.
  If Table_Acessos.FindKey([Cod_User,250]) = False then
    Transacoes1.enabled := False
  Else
    Transacoes1.enabled := True;


  // Movimento - Encerrante.
  If Table_Acessos.FindKey([Cod_User,260]) = False then
    Encerrante1.enabled := False
  Else
    Encerrante1.enabled := True;


  //--< Relatórios >----

  // Relatórios - Totais de produto por período
  If Table_Acessos.FindKey([Cod_User,270]) = False then
    Tabelas1.enabled := False
  Else
    Tabelas1.enabled := True;


  // Relatórios - Totais de venda por período (mesa).
  If Table_Acessos.FindKey([Cod_User,280]) = False then
    Totaldevendasporperodomesa2.enabled := False
  Else
    Totaldevendasporperodomesa2.enabled := True;


  // Relatórios - Vendas por categoria
  If Table_Acessos.FindKey([Cod_User,290]) = False then
    Vendasporcategoria1.enabled := False
  Else
    Vendasporcategoria1.enabled := True;


  // Relatórios - Caixas - Abertos/Fechados
  If Table_Acessos.FindKey([Cod_User,300]) = False then
    AbertosFechados1.enabled := False
  Else
    AbertosFechados1.enabled := True;


  // Relatórios - Caixas - Posicao Financeira
  If Table_Acessos.FindKey([Cod_User,310]) = False then
    PosiodeCaixa1.enabled := False
  Else
    PosiodeCaixa1.enabled := True;


  // Relatórios - Estoque - Entrada de produto
  If Table_Acessos.FindKey([Cod_User,320]) = False then
    Entradadeproduto1.enabled := False
  Else
    Entradadeproduto1.enabled := True;


  // Relatórios - Estoque - Estoque atual
  If Table_Acessos.FindKey([Cod_User,330]) = False then
    Estoqueatual1.enabled := False
  Else
    Estoqueatual1.enabled := True;


  // Relatórios - Estoque - Ponto de Ressuprimento
  If Table_Acessos.FindKey([Cod_User,340]) = False then
    Produtosnopontoderessuprimento1.enabled := False
  Else
    Produtosnopontoderessuprimento1.enabled := True;

  // Relatórios - Estoque - Entrada de Matéria-prima
  If Table_Acessos.FindKey([Cod_User,350]) = False then
    EntradadeMateriaprima1.enabled := False
  Else
    EntradadeMateriaprima1.enabled := True;


  // Relatórios - Clientes - Aniversariantes
  If Table_Acessos.FindKey([Cod_User,360]) = False then
    Aniversariantes1.enabled := False
  Else
    Aniversariantes1.enabled := True;


  // Relatórios - Clientes - Ativos
  If Table_Acessos.FindKey([Cod_User,370]) = False then
    Clientesativos1.enabled := False
  Else
    Clientesativos1.enabled := True;


  // Relatórios - Clientes - Sem compras há x tempo
  If Table_Acessos.FindKey([Cod_User,380]) = False then
    Clientesemcomprashxtempo1.enabled := False
  Else
    Clientesemcomprashxtempo1.enabled := True;


  // Relatórios - Financeiro - Vales - Funcionário
  If Table_Acessos.FindKey([Cod_User,390]) = False then
    Funcionrio2.enabled := False
  Else
    Funcionrio2.enabled := True;


  // Relatórios - Financeiro - Vales - Cliente
  If Table_Acessos.FindKey([Cod_User,400]) = False then
    Cliente2.enabled := False
  Else
    Cliente2.enabled := True;


  // Relatórios - Financeiro - Receita do dia motoqueiro/entregador
  If Table_Acessos.FindKey([Cod_User,410]) = False then
    Receitadodiamotoqueiroentregador1.enabled := False
  Else
    Receitadodiamotoqueiroentregador1.enabled := True;


  // Relatórios - Financeiro - Receita/Despesa motoqueiro/entregador mensal
  If Table_Acessos.FindKey([Cod_User,420]) = False then
    ReceitaDespesamotoqueiroentregadormensal1.enabled := False
  Else
    ReceitaDespesamotoqueiroentregadormensal1.enabled := True;


  // Relatórios - Financeiro - Receita do dia garçom...
  If Table_Acessos.FindKey([Cod_User,430]) = False then
    Receitadodiagarcom1.enabled := False
  Else
    Receitadodiagarcom1.enabled := True;


  // Relatórios - Financeiro - Receita/despesa garçom mensal.
  If Table_Acessos.FindKey([Cod_User,440]) = False then
    ReceitaDespesagarcommensal1.enabled := False
  Else
    ReceitaDespesagarcommensal1.enabled := True;


  // Relatórios - Financeiro - Vendas de caixa num período.
  If Table_Acessos.FindKey([Cod_User,450]) = False then
    VendasdeCaixasnumperiodo1.enabled := False
  Else
    VendasdeCaixasnumperiodo1.enabled := True;


  // Relatórios - Financeiro - Despesas do dia.
  If Table_Acessos.FindKey([Cod_User,460]) = False then
    Despesasdodia1.enabled := False
  Else
    Despesasdodia1.Enabled := True;


  // Relatórios - Financeiro - Resumo do caixa...
  If Table_Acessos.FindKey([Cod_User,470]) = False then
    ResumodoCaixa1.enabled := False
  Else
    ResumodoCaixa1.enabled := True;


  // Relatórios - Financeiro - Couvert Artístico...
  If Table_Acessos.FindKey([Cod_User,480]) = False then
    CouvertArtistico1.enabled := False
  Else
    CouvertArtistico1.enabled := True;


  // Relatórios - Financeiro - Ranking de Funcionários...
  If Table_Acessos.FindKey([Cod_User,490]) = False then
    RankingdeFuncionarios1.enabled := False
  Else
    RankingdeFuncionarios1.enabled := True;


  // Relatórios - Produtos - Produtos mais vendidos
  If Table_Acessos.FindKey([Cod_User,500]) = False then
    Produtosmaisvendidos1.enabled := False
  Else
    Produtosmaisvendidos1.enabled := True;


  // Relatórios - Produtos - Produtos sem vendas num período
  If Table_Acessos.FindKey([Cod_User,510]) = False then
    Produtossemvendasnumperiodo1.enabled := False
  Else
    Produtossemvendasnumperiodo1.enabled := True;


  // Relatórios - Inconsistências - Bairros sem taxa cadastrada
  If Table_Acessos.FindKey([Cod_User,520]) = False then
    Bairrossemtaxacadastrada1.enabled := False
  Else
    Bairrossemtaxacadastrada1.enabled := True;

  // Relatórios - Emissão de Recibo
  If Table_Acessos.FindKey([Cod_User,530]) = False then
    EmissaodeRecibo1.enabled := False
  Else
    EmissaodeRecibo1.enabled := True;

  // Relatórios - Tabelas - Matéria-prima
  If Table_Acessos.FindKey([Cod_User,540]) = False then
    MateriaPrima3.enabled := False
  Else
    MateriaPrima3.enabled := True;

  // Relatórios - Tabelas - Produtos
  If Table_Acessos.FindKey([Cod_User,550]) = False then
    Produtos2.enabled := False
  Else
    Produtos2.enabled := True;

  // Relatórios - Funcionários por Empresa
  If Table_Acessos.FindKey([Cod_User,560]) = False then
    FuncionriosporEmpresa1.enabled := False
  Else
    FuncionriosporEmpresa1.enabled := True;

  //--< Rotinas especiais >----

  // Rotinas especiais - Backup dos dados.
  If Table_Acessos.FindKey([Cod_User,570]) = False then
    Backupdosdadoscopia1.enabled := False
  Else
    Backupdosdadoscopia1.enabled := True;


  // Rotinas especiais - Restauração de backup dos dados.
  If Table_Acessos.FindKey([Cod_User,580]) = False then
    Restauracaodebackup1.enabled := False
  Else
    Restauracaodebackup1.enabled := True;

  //--< Utilitários >----

    // Utilitários - Calculadora
  If Table_Acessos.FindKey([Cod_User,590]) = False then
    Calculadora1.enabled := False
  Else
    Calculadora1.enabled := True;

  // Utilitários - Calendário
  If Table_Acessos.FindKey([Cod_User,600]) = False then
    Calendrio2.enabled := False
  Else
    Calendrio2.enabled := True;

  // Utilitários - Agenda
  If Table_Acessos.FindKey([Cod_User,610]) = False then
    Agenda1.enabled := False
  Else
    Agenda1.enabled := True;

  // Utilitários - Windows Explorer
  If Table_Acessos.FindKey([Cod_User,620]) = False then
    WindowsExplorer1.enabled := False
  Else
    WindowsExplorer1.enabled := True;

  // Utilitários - Informações sobre SO
  If Table_Acessos.FindKey([Cod_User,630]) = False then
    InformacoesSobreSistemaOperacional.enabled := False
  Else
    InformacoesSobreSistemaOperacional.enabled := True;

  // Utilitários - Visualiza backups feitos
  If Table_Acessos.FindKey([Cod_User,640]) = False then
    VisualizaBackupsFeitos.enabled := False
  Else
    VisualizaBackupsFeitos.enabled := True;


  // Utilitários - Estoque - Zera estoque
  If Table_Acessos.FindKey([Cod_User,650]) = False then
    ZeraEstoque1.enabled := False
  Else
    ZeraEstoque1.enabled := True;


  // Utilitários - Estoque - Autoestoque
  If Table_Acessos.FindKey([Cod_User,660]) = False then
    Autoestoque1.enabled := False
  Else
    Autoestoque1.enabled := True;


  // Utilitários - Estoque - Reprocessa notas de entrada
  If Table_Acessos.FindKey([Cod_User,670]) = False then
    Reprocessanotasdeentrada1.enabled := False
  Else
    Reprocessanotasdeentrada1.enabled := True;


  // Utilitários - Estoque - Zera estoque de Matéria-prima
  If Table_Acessos.FindKey([Cod_User,680]) = False then
    ZeraestoquedeMateriaprima1.enabled := False
  Else
    ZeraestoquedeMateriaprima1.enabled := True;


  // Utilitários - Estoque - Auto-estoque de Matéria-prima
  If Table_Acessos.FindKey([Cod_User,690]) = False then
    AutoEstoquedeMateriaprima1.enabled := False
  Else
    AutoEstoquedeMateriaprima1.enabled := True;


  // Utilitários - Movimentacao - Zera venda do dia
  If Table_Acessos.FindKey([Cod_User,700]) = False then
    Zeravendasdodia1.enabled := False
  Else
    Zeravendasdodia1.enabled := True;


  // Utilitários - Movimentacao - Zera taxa de todos os bairros.
  If Table_Acessos.FindKey([Cod_User,710]) = False then
    ZeraTaxadetodososbairros1.enabled := False
  Else
    ZeraTaxadetodososbairros1.enabled := True;


  // Utilitários - Movimentacao - Transfere vendas para um usuário
  If Table_Acessos.FindKey([Cod_User,720]) = False then
    Transferevendasparaumusuario1.enabled := False
  Else
    Transferevendasparaumusuario1.enabled := True;


  // Utilitários - Movimentacao - Valida movimentação do dia
  If Table_Acessos.FindKey([Cod_User,730]) = False then
    ValidaMovimentacaododia1.enabled := False
  Else
    ValidaMovimentacaododia1.enabled := True;


  // Utilitários - Impressao cupom - Teste de posicionamento
  If Table_Acessos.FindKey([Cod_User,740]) = False then
    Testedeposicionamento1.enabled := False
  Else
    Testedeposicionamento1.enabled := True;


  // Utilitários - Impressao cupom - Programa Bematech
  If Table_Acessos.FindKey([Cod_User,750]) = False then
    ProgramaBematechMICI1.enabled := False
  Else
    ProgramaBematechMICI1.enabled := True;


  If (Table_Acessos.FindKey([Cod_User,740]) = False) and
  (Table_Acessos.FindKey([Cod_User,750]) = False) then
    ImpressaoCupom2.enabled := False;


  // Utilitários - Impressao cupom fiscal - Gerenciador Bematech de Comandos
  If Table_Acessos.FindKey([Cod_User,760]) = False then
    GerenciadorBematechdeComandos1.enabled := False
  Else
    GerenciadorBematechdeComandos1.enabled := True;


  // Utilitários - Impressao cupom fiscal - Comandos Principais
  If Table_Acessos.FindKey([Cod_User,770]) = False then
    ComandosPrincipais1.enabled := False
  Else
    ComandosPrincipais1.enabled := True;

  // Verifica se as duas sub-opções não estão ativas, então desativa a mestre.
  If (Table_Acessos.FindKey([Cod_User,760]) = False) and
  (Table_Acessos.FindKey([Cod_User,770]) = False) then
    ImpressaodeCupomFiscal1.enabled := False;


  // Utilitários - Reativação de registros.
  If Table_Acessos.FindKey([Cod_User,780]) = False then
    ReativaodeRegistros1.enabled := False
  Else
    ReativaodeRegistros1.enabled := True;


  // Utilitários - Zera tabelas do sistema uma a uma.
  If Table_Acessos.FindKey([Cod_User,790]) = False then
    Zeratabelassistemasumaauma1.enabled := False
  Else
    Zeratabelassistemasumaauma1.enabled := True;


  // Utilitários - Gera numeração de Fichas/Mesa.
  If Table_Acessos.FindKey([Cod_User,800]) = False then
    GeraNumeracaodefichasmesa1.enabled := False
  Else
    GeraNumeracaodefichasmesa1.enabled := True;

  // Utilitários - Cria atalho Desktop
  If Table_Acessos.FindKey([Cod_User,810]) = False then
    Criaatalhodesktop1.enabled := False
  Else
    Criaatalhodesktop1.enabled := True;

  //--< Segurança >----

  // Segurança - Cadastro de usuários
  If Table_Acessos.FindKey([Cod_User,820]) = False then
    CadUsuarios1.enabled := False
  Else
    CadUsuarios1.enabled := True;


  // Segurança - Cadastro de forms
  If Table_Acessos.FindKey([Cod_User,830]) = False then
    CaddeForms1.enabled := False
  Else
    CaddeForms1.enabled := True;


  // Segurança - Cadastro de permissões de acesso.
  If Table_Acessos.FindKey([Cod_User,840]) = False then
    CaddePermissesdeacessos1.enabled := False
  Else
    CaddePermissesdeacessos1.enabled := True;


  // Segurança - Rotinas especiais de geração de acesso.
  If Table_Acessos.FindKey([Cod_User,850]) = False then
    Rotinasespeciaisdegeracaodeacesso1.enabled := False
  Else
    Rotinasespeciaisdegeracaodeacesso1.enabled := True;


  // Segurança - Abre janela MS-DOS
  If Table_Acessos.FindKey([Cod_User,860]) = False then
    AbreJanelaMSDOS1.enabled := False
  Else
    AbreJanelaMSDOS1.enabled := True;


  // Segurança - Reindexa arquivos do sistema
  If Table_Acessos.FindKey([Cod_User,870]) = False then
    ReindexaarquivosSysPizza1.enabled := False
  Else
    ReindexaarquivosSysPizza1.enabled := True;


  // Segurança - Parâmetros gerais do sistema
  If Table_Acessos.FindKey([Cod_User,880]) = False then
    Parmetros1.enabled := False
  Else
    Parmetros1.enabled := True;


  // Segurança - Mudança de usuário ativo.
  If Table_Acessos.FindKey([Cod_User,890]) = False then
    Mudanadeusurio1.enabled := False
  Else
    Mudanadeusurio1.enabled := True;

  // Segurança - Senhas dos usuários.
  If Table_Acessos.FindKey([Cod_User,900]) = False then
    SenhadosUsurios1.enabled := False
  Else
    SenhadosUsurios1.enabled := True;

  //--

  If FrmPrincipal.Nivel = 3 then
    begin
      Spb_Mesas.Enabled         := False;
      Label60.Enabled           := False;
      Label18.Enabled           := False;

      Spb_Entrega.Enabled       := False;
      Label14.Enabled           := False;
      Label_TipoEntrega.Enabled := False;

      PopupMenu_Entregas.Items[0].Enabled := False;
      PopupMenu_Entregas.Items[1].Enabled := False;

      Spb_Conveniencia.Enabled  := False;
      Label11.Enabled           := False;
      Label12.Enabled           := False;

      Spb_Backup.Enabled        := False;
      Label20.Enabled           := False;
      Label22.Enabled           := False;

      Spb_CaixaDiario.Enabled   := False;
      Label23.Enabled           := False;
      Label24.Enabled           := False;

      Spb_Configuracoes.Enabled := False;
      Label17.Enabled           := False;
      Label21.Enabled           := False;
    end
  Else If FrmPrincipal.Nivel = 2 then
    begin
      Spb_Mesas.Enabled         := True;
      Label60.Enabled           := True;
      Label18.Enabled           := True;

      Spb_Entrega.Enabled       := True;
      Label14.Enabled           := True;
      Label_TipoEntrega.Enabled := True;

      PopupMenu_Entregas.Items[0].Enabled := True;
      PopupMenu_Entregas.Items[1].Enabled := True;

      Spb_Conveniencia.Enabled  := True;
      Label11.Enabled           := True;
      Label12.Enabled           := True;

      Spb_Backup.Enabled        := True;
      Label20.Enabled           := True;
      Label22.Enabled           := True;

      Spb_CaixaDiario.Enabled   := True;
      Label23.Enabled           := True;
      Label24.Enabled           := True;

      Spb_Configuracoes.Enabled := False;
      Label17.Enabled           := False;
      Label21.Enabled           := False;
    end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Desabilita_todas_Opcoes : Boolean;
begin

  { Objetivo: Desabilitar todas as opções de menu, pois não há nenhum acesso definido
              para este usuário...Cada tela(form) tem seu no. fixo e não pode ser mudado. }

  ////////////////////////
  (*
  Bairros1.enabled         := False;
  CartaodeCredito1.enabled := False;
  Categoria1.enabled       := False;
  Clientes1.enabled        := False;
  Despesas1.enabled        := False;
  Fornecedores1.enabled    := False;
  Funcionarios1.enabled    := False;
  MateriaPrima1.enabled    := False;
  Mesas1.enabled           := False;
  Produtos3.enabled        := False;
  Taxa1.enabled            := False;
  TipoFuncionario1.enabled := False;

  //--< Movimento >----

  Entrada1.enabled              := False;
  Caixadirio1.enabled           := False;
  VendaemMesas2.enabled         := False;
  Entregas2.enabled             := False;
  Conveniencia1.enabled         := False;
  Funcionario4.enabled          := False;
  LancamentodeDespesas1.enabled := False;
  Locaodemesas1.enabled         := False;
  Transacoes1.enabled           := False;
  Encerrante1.enabled           := False;

  //--< Relatórios >----

  Tabelas1.enabled := False;
  Totaldevendasporperodomesa2.enabled               := False;
  Vendasporcategoria1.enabled                       := False;
  AbertosFechados1.enabled                          := False;
  PosiodeCaixa1.enabled                             := False;
  Entradadeproduto1.enabled                         := False;
  Estoqueatual1.enabled                             := False;
  Produtosnopontoderessuprimento1.enabled           := False;
  Aniversariantes1.enabled                          := False;
  Clientesativos1.enabled                           := False;
  Clientesemcomprashxtempo1.enabled                 := False;
  Funcionrio2.enabled                               := False;
  Cliente2.enabled                                  := False;
  Receitadodiamotoqueiroentregador1.enabled         := False;
  ReceitaDespesamotoqueiroentregadormensal1.enabled := False;
  Receitadodiagarcom1.enabled                       := False;
  ReceitaDespesagarcommensal1.enabled               := False;
  VendasdeCaixasnumperiodo1.enabled                 := False;
  Despesasdodia1.enabled                            := False;
  ResumodoCaixa1.enabled                            := False;
  Produtosmaisvendidos1.enabled                     := False;
  Produtossemvendasnumperiodo1.enabled              := False;
  Bairrossemtaxacadastrada1.enabled                 := False;

  //--< Rotinas especiais >----

  Backupdosdadoscopia1.enabled          := False;
  Restauracaodebackup1.enabled          := False;
  Agenda1.enabled                       := False;
  VisualizaBackupsFeitos.enabled        := False;
  ZeraEstoque1.enabled                  := False;
  Autoestoque1.enabled                  := False;
  Reprocessanotasdeentrada1.enabled     := False;
  Zeravendasdodia1.enabled              := False;
  ZeraTaxadetodososbairros1.enabled     := False;
  Transferevendasparaumusuario1.enabled := False;
  ValidaMovimentacaododia1.enabled      := False;
  Testedeposicionamento1.enabled        := False;
  ProgramaBematechMICI1.enabled         := False;
  ReativaodeRegistros1.enabled          := False;
  Zeratabelassistemasumaauma1.enabled   := False;
  GeraNumeracaodefichasmesa1.enabled    := False;

  //--< Segurança >----

  CadUsuarios1.enabled                       := False;
  CaddeForms1.enabled                        := False;
  CaddePermissesdeacessos1.enabled           := False;
  Rotinasespeciaisdegeracaodeacesso1.enabled := False;
  AbreJanelaMSDOS1.enabled                   := False;
  ReindexaarquivosSysPizza1.enabled          := False;
  Parmetros1.enabled                         := False;
  Mudanadeusurio1.enabled                    := False;
  *)

  Cadastro1.enabled         := False;
  Movimento1.enabled        := False;
  Impresso1.enabled         := False;
  RotinasEspeciais1.enabled := False;
  Utilitarios1.enabled      := False;
  Seguranca1.enabled        := False;

  // Desabilitando os eventos Click das images...
  Spb_Mesas.enabled         := False;
  Spb_Entrega.enabled       := False;
  Spb_Conveniencia.enabled  := False;
  Spb_BotaoEsqMouse.enabled := False;
  Spb_Backup.enabled        := False;
  Spb_CaixaDiario.enabled   := False;
  Spb_Configuracoes.enabled := False;
  Spb_Calendario.enabled    := False;

  // Desabiitando opções do menu popup Cadastros:
  // Cadastro de Bairros....
   Bairros2.enabled         := False;
   CartodeCrdito2.enabled   := False;
   Categoria2.enabled       := False;
   Clientes5.enabled        := False;
   Despesas2.enabled        := False;
   Fornecedores2.enabled    := False;
   Funcionarios2.enabled    := False;
   MateriaPrima2.enabled    := False;
   Mesas2.enabled           := False;
   Produto2.enabled         := False;
   Taxa2.enabled            := False;
   TipoFuncionario2.enabled := False;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Calendrio2Click(Sender: TObject);
begin

  FrmCalendario := TFrmCalendario.Create(Application);
  FrmCalendario.Showmodal;
  FreeAndNil(FrmCalendario);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.VendaemMesas2Click(Sender: TObject);
begin

  If Nivel = 3 then // Operacional
    begin
      Alerta('Erro Leve');
      MessageDlg('Atenção...'+#13+#13+'Usuário sem nível de acesso para acessar tela de Venda em mesa !!!'+#13+#13+'Contacte Supervisor do sistema!', mtError, [mbOk], 0 );

      Som(7);
      FrmErroRotina := TFrmErroRotina.Create(Application);
      FrmErroRotina.ShowModal;
      FreeAndNil(FrmErroRotina);

      Exit;
    end;

  FrmCaixa := TFrmCaixa.Create(Application);
  FrmCaixa.Showmodal;
  FreeAndNil(FrmCaixa);
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//


procedure TFrmPrincipal.Entregas2Click(Sender: TObject);
begin

  If Nivel = 3 then // Operacional
    begin
      Alerta('Erro Leve');
      MessageDlg('Atenção...'+#13+#13+'Usuário sem nível de acesso para acessar tela de Entregas !!!'+#13+#13+'Contacte Supervisor do sistema!', mtError, [mbOk], 0 );

      Som(7);
      FrmErroRotina := TFrmErroRotina.Create(Application);

      FrmErroRotina.ShowModal;

      FreeAndNil(FrmErroRotina);

      Exit;
    end;

  //-------
  // Aciona tela de Entregas...
  //----------------


  If (FrmPrincipal.Par_TelaPadraoEntrega = 'Entrega padrão') then
    begin
      FrmEntregaPizzas := TFrmEntregaPizzas.Create(Application);

      If (FrmPrincipal.Res_x >= 1024) and (FrmPrincipal.Res_y >= 768) then
        FrmEntregaPizzas.Position := poDesktopCenter
      Else
        FrmEntregaPizzas.Position := poScreenCenter;

      FrmEntregaPizzas.Showmodal;
      FreeAndNil(FrmEntregaPizzas);
    end
  Else
    begin
      FrmEntregaPizzasDireta := TFrmEntregaPizzasDireta.Create(Application);

      If (FrmPrincipal.Res_x >= 1024) and (FrmPrincipal.Res_y >= 768) then
        FrmEntregaPizzasDireta.Position := poDesktopCenter
      Else
        FrmEntregaPizzasDireta.Position := poScreenCenter;

      FrmEntregaPizzasDireta.Showmodal;
      FreeAndNil(FrmEntregaPizzasDireta);
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//


procedure TFrmPrincipal.Define_Titulo_Form();
begin

  FrmPrincipal.Caption := 'Menu Principal - Syspizza - '+FrmPrincipal.NomeEmpresa+' - '+FrmPrincipal.EnderecoEmpresa+' - '+FrmPrincipal.FoneEmpresa+' - versão: '+GetBuildInfo();

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Zeraestoque1Click(Sender: TObject);
begin

  Alerta('Confirmacao');
  If MessageDlg('Tem certeza de que deseja realmente zerar o estoque ?'+#13+#13+'(Todos os produtos, sem excessão ficarão com estoque atual zerado !)', mtConfirmation, [mbYes, mbNo], 0 ) = mrNO then Exit;

  Table_Prod.Open;
  Table_Prod.First;

  ProgressBar_ZeraEstoque.Visible := True;
  ProgressBar_ZeraEstoque.Min     := 0;
  ProgressBar_ZeraEstoque.Max     := Table_Prod.RecordCount;

  While Not(Table_Prod.Eof) do
    begin
      Table_Prod.Edit;
      Table_Prod.FieldByName('Pro_QtdeEstoque').AsFloat := 0;
      Table_Prod.Post;
      Table_Prod.Refresh;

      ProgressBar_ZeraEstoque.Position := Table_Prod.RecNo;

      Table_Prod.Next;
    end;

  Table_Prod.Close;

  ProgressBar_ZeraEstoque.Position := 0;
  ProgressBar_ZeraEstoque.Visible  := False;

  Alerta('Sucesso');
  MessageDlg('Estoque atual de todos os produtos foi zerado !!!'+#13+#13+'Procedimento realizado com sucesso !', mtInformation, [mbOk], 0 );
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Table_ProdAfterPost(DataSet: TDataSet);
Var
 Retorno : integer;

Begin

  Retorno := DBISaveChanges( Table_Prod.Handle );
  Table_Prod.FlushBuffers;

  If Retorno = DBIERR_NODISKSPACE then
    begin
      Som(7);
      MessageDlg('Atenção....'+#13+#13+'A última inclusão/alteração de dados NÃO PODE SER CONCLUÍDA'+#13+'COM SUCESSO DEVIDO A FALTA DE ESPAÇO EM DISCO!!!!'+#13+#13+'Libere espaço e reexecute esta modificação!'+#13+#13+'Qualquer dúvida, contacte suporte...', mtError, [mbOk], 0 );
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Funcionrio2Click(Sender: TObject);
begin

  If Verifica_LimiteRegistros('VALEFUNC') = True then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmSRelValeFunc := TFrmSRelValeFunc.Create(Application);
  FrmSRelValeFunc.Showmodal;
  FreeAndNil(FrmSRelValeFunc);
  
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Zeravendasdodia1Click(Sender: TObject);
begin

  If FrmAcess.Table_Usuario.FieldByName('Usu_Nivel').AsInteger > 1 then
    begin
      Alerta('Erro Leve');
      MessageDlg('A opção << Zerar venda do dia >> permitido somente para usuário: Supervisor !!!', mtError, [mbOk], 0 );
      Exit;
    end;

  FrmZeraVendadia := TFrmZeraVendadia.Create(Application);
  FrmZeraVendadia.Showmodal;
  FreeAndNil(FrmZeraVendadia);
  
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Cliente2Click(Sender: TObject);
begin

  If Verifica_LimiteRegistros('VALECLIENTE') = True then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmSRelValeClie := TFrmSRelValeClie.Create(Application, '', '', 0, 0, False);
  FrmSRelValeClie.Showmodal;
  FreeAndNil(FrmSRelValeClie);
  
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.WindowsExplorer1Click(Sender: TObject);
begin

  ShellExecute(0, 'Open', 'Explorer.exe', PChar('C:\SysPizza'), nil, SW_MAXIMIZE);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.AutoEstoque1Click(Sender: TObject);
begin

  FrmAutoEstoque := TFrmAutoEstoque.Create(Application);
  FrmAutoEstoque.Showmodal;
  FreeAndNil(FrmAutoEstoque);
  
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

{
Fecha a janela da calculadora no form que a abriu...

procedure TForm1.FormClose(Sender: TObject; var TAction: TCloseAction );
Var
  Janela : THandle;
begin
  Janela := FindWindow('SiCalc', nil );
  If Janela <> 0 then
    SendMessage( Janela, WM_CLOSE, 0, 0);
end;

}

{
Select to_char(datavcto,'mm') as mes, count(*) as nreg
from pagamentos
where datavcto > '01/02/2001'
group by to_char(datavcto,'mm') as mes

(*
SELECT Sum(Valor) AS SomaValor FROM servicos
where codigo = :Controle

select sum(Val_tot) as SomaValTot from nome_sua_tabela where Dt_compra>=:pDatai
       and Dt_compra <=:pDataf
*)


}


procedure TFrmPrincipal.Timer_PizzasTimer(Sender: TObject);
begin

  If Image1.Visible then
    begin
      Image1.visible  := False;
      Image2.visible  := True;
      Image11.visible := False;
      Image13.visible := False;
      Image14.visible := False;
      Image15.visible := False;
      Image16.visible := False;
      Image17.visible := False;
      Image18.visible := False;
      Image19.visible := False;
      Image21.visible := False;
      Image22.visible := False;
    end
  Else If Image2.Visible then
    begin
      Image1.visible  := False;
      Image2.visible  := False;
      Image11.visible := True;
      Image13.visible := False;
      Image14.visible := False;
      Image15.visible := False;
      Image16.visible := False;
      Image17.visible := False;
      Image18.visible := False;
      Image19.visible := False;
      Image21.visible := False;
      Image22.visible := False;
    end
  Else If Image11.Visible then
    begin
      Image1.visible  := False;
      Image2.visible  := False;
      Image11.visible := False;
      Image13.visible := True;
      Image14.visible := False;
      Image15.visible := False;
      Image16.visible := False;
      Image17.visible := False;
      Image18.visible := False;
      Image19.visible := False;
      Image21.visible := False;
      Image22.visible := False;
    end
  Else If Image13.Visible then
    begin
      Image1.visible  := False;
      Image2.visible  := False;
      Image11.visible := False;
      Image13.visible := False;
      Image14.visible := True;
      Image15.visible := False;
      Image16.visible := False;
      Image17.visible := False;
      Image18.visible := False;
      Image19.visible := False;
      Image21.visible := False;
      Image22.visible := False;
    end
  Else If Image14.Visible then
    begin
      Image1.visible  := False;
      Image2.visible  := False;
      Image11.visible := False;
      Image13.visible := False;
      Image14.visible := False;
      Image15.visible := True;
      Image16.visible := False;
      Image17.visible := False;
      Image18.visible := False;
      Image19.visible := False;
      Image21.visible := False;
      Image22.visible := False;
    end
  Else If Image15.Visible then
    begin
      Image1.visible  := False;
      Image2.visible  := False;
      Image11.visible := False;
      Image13.visible := False;
      Image14.visible := False;
      Image15.visible := False;
      Image16.visible := True;
      Image17.visible := False;
      Image18.visible := False;
      Image19.visible := False;
      Image21.visible := False;
      Image22.visible := False;
    end
  Else If Image16.Visible then
    begin
      Image1.visible  := False;
      Image2.visible  := False;
      Image11.visible := False;
      Image13.visible := False;
      Image14.visible := False;
      Image15.visible := False;
      Image16.visible := False;
      Image17.visible := True;
      Image18.visible := False;
      Image19.visible := False;
      Image21.visible := False;
      Image22.visible := False;
    end
  Else If Image17.Visible then
    begin
      Image1.visible  := False;
      Image2.visible  := False;
      Image11.visible := False;
      Image13.visible := False;
      Image14.visible := False;
      Image15.visible := False;
      Image16.visible := False;
      Image17.visible := False;
      Image18.visible := True;
      Image19.visible := False;
      Image21.visible := False;
      Image22.visible := False;
    end
  Else If Image18.Visible then
    begin
      Image1.visible  := False;
      Image2.visible  := False;
      Image11.visible := False;
      Image13.visible := False;
      Image14.visible := False;
      Image15.visible := False;
      Image16.visible := False;
      Image17.visible := False;
      Image18.visible := False;
      Image19.visible := True;
      Image21.visible := False;
      Image22.visible := False;
    end
  Else If Image19.Visible then
    begin
      Image1.visible  := False;
      Image2.visible  := False;
      Image11.visible := False;
      Image13.visible := False;
      Image14.visible := False;
      Image15.visible := False;
      Image16.visible := False;
      Image17.visible := False;
      Image18.visible := False;
      Image19.visible := False;
      Image21.visible := True;
      Image22.visible := False;
    end
  Else If Image21.Visible then
    begin
      Image1.visible  := False;
      Image2.visible  := False;
      Image11.visible := False;
      Image13.visible := False;
      Image14.visible := False;
      Image15.visible := False;
      Image16.visible := False;
      Image17.visible := False;
      Image18.visible := False;
      Image19.visible := False;
      Image21.visible := False;
      Image22.visible := True;
    end
  Else If Image22.Visible then
    begin
      Image1.visible  := True;
      Image2.visible  := False;
      Image11.visible := False;
      Image13.visible := False;
      Image14.visible := False;
      Image15.visible := False;
      Image16.visible := False;
      Image17.visible := False;
      Image18.visible := False;
      Image19.visible := False;
      Image21.visible := False;
      Image22.visible := False;
    end;

end;

//**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--//

procedure TFrmPrincipal.Agenda1Click(Sender: TObject);
begin

  FrmAgenda := TFrmAgenda.Create(Application);

  FrmAgenda.Showmodal;

  FreeAndNil(FrmAgenda);

end;

//**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--//
//**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--//
//**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--//

procedure TFrmPrincipal.FormNaoRetangular;
var Region : HRGN;
begin

  Region := CreateEllipticRgn(0,0,width,height);
  SetWindowRgn(Handle, Region, True);

end;

//**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--//

procedure TFrmPrincipal.Aniversariantes1Click(Sender: TObject);
begin

  FrmSEtiq_Aniv := TFrmSEtiq_Aniv.Create(Application);
  FrmSEtiq_Aniv.Showmodal;
  FreeAndNil(FrmSEtiq_Aniv);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Clientesativos1Click(Sender: TObject);
begin

  FrmSClientesAtivos := TFrmSClientesAtivos.Create(Application);
  FrmSClientesAtivos.Showmodal;
  FreeAndNil(FrmSClientesAtivos);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Clientesemcomprashxtempo1Click(Sender: TObject);
begin

  FrmSRelClientesSemCompras := TFrmSRelClientesSemCompras.Create(Application);
  FrmSRelClientesSemCompras.Showmodal;
  FreeAndNil(FrmSRelClientesSemCompras);
  
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Vendasporcategoria1Click(Sender: TObject);
begin

  If Verifica_LimiteRegistros('VENDA') = True then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmSRelVendasCategoria := TFrmSRelVendasCategoria.Create(Application);
  FrmSRelVendasCategoria.Showmodal;
  FreeAndNil(FrmSRelVendasCategoria);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin

  SBMensagem.Panels[0].Text := '';
  SBMensagem.Panels[1].Text := '';
  SBMensagem.Panels[2].Text := '';
  SBMensagem.Panels[3].Text := '';
  SBMensagem.Panels[4].Text := '';

  //--

  Self.Height := Self.Height - Panel_IndexandoArquivo.Height;

  //--

  // Torna form em Auto-Size para evitar ficar com barras de rolagem verticais/horizontais no Vista...
  If (PlataForma() = 'WINDOWS VISTA') then self.AutoSize := True;

  //--

  Table_Validade.DatabaseName := RetornaCaminhoArquivosControle();

  //--

  // Verifica o tipo de instalação e alerta quantos dias faltam para vender ou quantas execuções faltam...
  If FrmAcess.Retorna_Tipo_Instalacao_Vigente() <> 'USO ILIMITADO' then
    begin

      Verifica_Exibicao_Painel_Demonstracao_CopiaRegistrada();

      //--

      Table_Temp.Close;
      Table_Temp.DatabaseName := 'Pizza';

      FrmPrincipal.Update;
    end;

  //--

  Limpa_Images_Piscantes( True );

  Carrega_Parametros();

  //--

  Timer_Pizzas.enabled := (Par_UsaAnimacaoImagens = 'S');

  //--

  //Application.Icon := Nil;
  //Application.Icon.LoadFromFile(Carrega_CaminhoIconeAplicacao());

  //Self.Update;
  //FrmAcess.Icon.LoadFromFile(Carrega_CaminhoIconeAplicacao());
  
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.RetornaQtdePizzasNaComposicao( nCodProduto : integer ) : integer;
Var
  nQtde : integer;
begin

  nQtde := -1;

  //--

  QueryAux.Close;
  QueryAux.SQL.Clear;
  QueryAux.SQL.Add('Select Pro_Codigo, Pro_Descricao from Produtos Where Pro_Codigo = '+inttostr(nCodProduto));
  QueryAux.Open;

  If (QueryAux.RecordCount > 0) then
    nQtde := ContaOcorrencias('/', Trim(QueryAux.FieldByName('Pro_Descricao').AsString) );

  QueryAux.Close;

  //--

  Inc(nQtde);
  Result := nQtde;
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Testedeposicionamento1Click(Sender: TObject);
begin

  FrmTestePosicionamento := TFrmTestePosicionamento.Create(Application);
  FrmTestePosicionamento.Showmodal;
  FreeAndNil(FrmTestePosicionamento);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.AnalisaNivelAcesso;
Var
  cTexto, cNivel : string;
begin

  //
  // Menus:            Cadastro  | Movimento  |  Relatório  | Rotinas Especiais |Utilitários |  Segurança  |
  // Nível permitidos:   1,2,3   |   1,2      |    1,2      |        1,2,3      |    1       |     1       |
  //
  //

  // Variável pública.
  // Nivel : integer; // 1 - Supervisor   2 - Gerência   3 - Operacional

  // Caso nível seja 1 (Supervisor) nada precisa ser desabilitado.

  If Nivel = 1 then // Supervisor
    begin
      Cadastro1.enabled         := True;
      Movimento1.Enabled        := True;
      Impresso1.Enabled         := True;
      RotinasEspeciais1.enabled := True;
      Utilitarios1.enabled      := True;
      Seguranca1.Enabled        := True;
    end
  Else If Nivel = 2 then // Gerência
    begin
      Cadastro1.enabled         := True;
      Movimento1.Enabled        := True;
      Impresso1.Enabled         := True;
      RotinasEspeciais1.enabled := True;
      Utilitarios1.enabled      := False;
      Seguranca1.Enabled        := False;
    end
  Else If Nivel = 3 then // Operacional
    begin
      Cadastro1.enabled         := True;
      Movimento1.Enabled        := False;
      Impresso1.Enabled         := False;
      RotinasEspeciais1.enabled := False;
      Utilitarios1.enabled      := False;
      Seguranca1.Enabled        := False;
    end;

  //-------

  If Nivel = 1 then
     cNivel := 'Supervisor'
  Else If Nivel = 2 then
    cNivel := 'Gerência'
  Else If Nivel = 3 then
    cNivel := 'Operacional';

  cTexto := 'Usuário: '+FormatFloat('00', FrmAcess.Table_Usuario.FieldByname('Usu_Codi').value )+' - '+Frmacess.Table_Usuario.FieldByname('Usu_Nome').asString+' - Nível: '+cNivel+'.';

  SBMensagem.Panels[0].Text := cTexto;

  SBMensagem.Panels[1].Text := '';
  SBMensagem.Panels[2].Text := '';

  // Exibe o tipo de instalação executada na máquina..
  If FrmAcess.Table_Controle.Active = False then FrmAcess.Table_Controle.Open;
  SBMensagem.Panels[3].Text := MudaCaracter('D', FrmAcess.Table_Controle.FieldByName('Tipo_Instalacao').AsString );
  If FrmAcess.Table_Controle.Active then FrmAcess.Table_Controle.Close;

  //--

  If (Par_FinalidadeSistema = 'Pizzaria') And (Par_NomeSistema = 'Syspizza') then
    SBMensagem.Panels[4].Text := 'Finalidade do sistema: [Geral]'
  Else
    SBMensagem.Panels[4].Text := 'Finalidade do sistema: ['+Par_FinalidadeSistema+']';

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Carrega_DireitosUsuario;
begin

  Cod_User      := FrmAcess.Table_Usuario.FieldByName('Usu_Codi').AsInteger;
  Nivel         := FrmAcess.Table_Usuario.FieldByName('Usu_Nivel').AsInteger;
  NomeUser      := FrmAcess.Table_Usuario.FieldByName('Usu_Nome').AsString;
  Valor_MaxDesc := FrmAcess.Table_Usuario.FieldByName('Usu_ValorMaxDesc').AsFloat;

  // Variáveis para armazenamento de parâmetros de usuário para rotinas especiais

  If FrmAcess.Table_Usuario.FieldByName('Usu_CaixaTotaisVenda').AsString = 'S' then
    Caixa_RelatorioTotaisVenda := 'S'
  Else
    Caixa_RelatorioTotaisVenda := 'N';


  If FrmAcess.Table_Usuario.FieldByName('Usu_CaixaAlteradados').AsString = 'S' then
    Caixa_AlteradadosNota := 'S'
  Else
    Caixa_AlteradadosNota := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_CaixaSalvadadosnota').AsString = 'S' then
    Caixa_SalvadadosNota := 'S'
  Else
    Caixa_SalvadadosNota := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_CaixaMudaVendaMesa').AsString = 'S' then
    Caixa_MudaVenda := 'S'
  Else
    Caixa_MudaVenda := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_CaixaRelatorioTotais').AsString = 'S' then
    Caixa_RelatorioTotais := 'S'
  Else
    Caixa_RelatorioTotais := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_CaixaReabreVenda').AsString = 'S' then
    Caixa_ReabreVenda := 'S'
  Else
    Caixa_ReabreVenda := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_CaixaPagtoParcial').AsString = 'S' then
    Caixa_PagtoParcial := 'S'
  Else
    Caixa_PagtoParcial := 'N';


  If FrmAcess.Table_Usuario.FieldByName('Usu_CaixaF10').AsString = 'S' then
    Caixa_F10 := 'S'
  Else
    Caixa_F10 := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_CaixaF11').AsString = 'S' then
    Caixa_F11 := 'S'
  Else
    Caixa_F11 := 'N';

  //--------------

  If FrmAcess.Table_Usuario.FieldByName('Usu_EntregaAlteradadosNot').AsString = 'S' then
    Entrega_AlteradadosNota := 'S'
  Else
    Entrega_AlteradadosNota := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_EntregaSalvadadosNota').AsString = 'S' then
    Entrega_SalvadadosNota := 'S'
  Else
    Entrega_SalvadadosNota := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_EntregaReabreVenda').AsString = 'S' then
    Entrega_ReabreVenda := 'S'
  Else
    Entrega_ReabreVenda := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_EntregaF10').AsString = 'S' then
    Entrega_F10 := 'S'
  Else
    Entrega_F10 := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_EntregaF11').AsString = 'S' then
    Entrega_F11 := 'S'
  Else
    Entrega_F11 := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_EntregaExcluir').AsString = 'S' then
    Entrega_Excluir := 'S'
  Else
    Entrega_Excluir := 'N';

  //--------------

  If FrmAcess.Table_Usuario.FieldByName('Usu_CvnRelatorioTotaisVen').AsString = 'S' then
    Cvn_RelatorioTotaisVenda := 'S'
  Else
    Cvn_RelatorioTotaisVenda := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_CvnAlteradadosNota').AsString = 'S' then
    Cvn_AlteradadosNota := 'S'
  Else
    Cvn_AlteradadosNota := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_CvnSalvadadosNota').AsString = 'S' then
    Cvn_SalvadadosNota := 'S'
  Else
    Cvn_SalvadadosNota := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_CvnRelatorioTotais').AsString = 'S' then
    Cvn_RelatorioTotais := 'S'
  Else
    Cvn_RelatorioTotais := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_CvnReabreVenda').AsString = 'S' then
    Cvn_ReabreVenda := 'S'
  Else
    Cvn_ReabreVenda := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_CvnF10').AsString = 'S' then
    Cvn_F10 := 'S'
  Else
    Cvn_F10 := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_CvnF11').AsString = 'S' then
    Cvn_F11 := 'S'
  Else
    Cvn_F11 := 'N';

  //--

  If FrmAcess.Table_Usuario.FieldByName('Usu_CriaAbreCaixa').AsString = 'S' then
    Par_UsuCriaAbreCaixa := 'S'
  Else
    Par_UsuCriaAbreCaixa := 'N';

  If FrmAcess.Table_Usuario.FieldByName('Usu_ReabreCaixa').AsString = 'S' then
    Par_UsuReabreCaixa := 'S'
  Else
    Par_UsuReabreCaixa := 'N';

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Rotinasespeciaisdegeracaodeacesso1Click( Sender: TObject);
begin

  FrmRotinasEspeciaisAcesso := TFrmRotinasEspeciaisAcesso.Create(Application);
  FrmRotinasEspeciaisAcesso.Showmodal;
  FreeAndNil(FrmRotinasEspeciaisAcesso);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Bairrossemtaxacadastrada1Click(Sender: TObject);
begin

  Alerta('Confirmacao');
  If MessageDlg('Deseja emitir uma relação de bairros sem taxa cadastrada ?',mtConfirmation,[mbYES,mbNO],0) = mrNO then Exit;

  //--
  
  FrmLBairrosSemTaxaCadastrada := TFrmLBairrosSemTaxaCadastrada.Create(Application);

  FrmLBairrosSemTaxaCadastrada.Table_Bairros.Open;

  FrmLBairrosSemTaxaCadastrada.QuickRep_BairrosSemTaxaCadastrada.Preview;
  FrmLBairrosSemTaxaCadastrada.QuickRep_BairrosSemTaxaCadastrada.CleanUpInstance;

  FrmLBairrosSemTaxaCadastrada.Table_Bairros.Close;

  FreeAndNil(FrmLBairrosSemTaxaCadastrada);
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Zerataxadetodososbairros1Click(Sender: TObject);
begin

  Alerta('Confirmacao');
  If MessageDlg('Tem certeza de que deseja realmente zerar todas as taxas dos bairros ?'+#13+#13+'(Se este processo for iniciado, não poderá ser cancelado !!!)', mtConfirmation, [mbYes, mbNo], 0 ) = mrNO then Exit;

  Application.ProcessMessages;

  Table_Bairros.Open;
  Table_Bairros.First;

  ProgressBar_ZeraEstoque.Visible := True;
  ProgressBar_ZeraEstoque.Min := 0;
  ProgressBar_ZeraEstoque.Max := Table_Bairros.RecordCount;

  While Not(Table_Bairros.Eof) do
    begin
      Table_Bairros.Edit;
      Table_Bairros.FieldByName('Bai_Taxa').Value := Null;
      Table_Bairros.Post;
      Table_Bairros.Refresh;

      ProgressBar_ZeraEstoque.Position := Table_Bairros.RecNo;

      Table_Bairros.Next;
    end;

  Table_Bairros.Close;

  ProgressBar_ZeraEstoque.Position := 0;
  ProgressBar_ZeraEstoque.Visible  := True;

  Alerta('Sucesso');
  MessageDlg('Todas os bairros estão com as taxas zeradas (nulas) !!!'+#13+#13+'Procedimento realizado com sucesso !', mtInformation, [mbOk], 0 );

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.ProgramaBematechMICI1Click(Sender: TObject);
begin

  FrmBematech := TFrmBematech.Create(Application);
  FrmBematech.Showmodal;
  FreeAndNil(FrmBematech);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.VendasdeCaixasnumperiodo1Click(Sender: TObject);
begin

  If (Verifica_LimiteRegistros('VENDA') = True) Or (Verifica_LimiteRegistros('ENTREGA') = True) then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmS_RelVendasCaixasNumPeriodo := TFrmS_RelVendasCaixasNumPeriodo.Create(Application);
  FrmS_RelVendasCaixasNumPeriodo.Showmodal;
  FreeAndNil(FrmS_RelVendasCaixasNumPeriodo);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.SenhadosUsurios1Click(Sender: TObject);
begin

  FrmSenhaUsuarios := TFrmSenhaUsuarios.Create(Application);
  FrmSenhaUsuarios.Showmodal;
  FreeAndNil(FrmSenhaUsuarios);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//


procedure TFrmPrincipal.Transferevendasparaumusuario1Click( Sender: TObject);
begin

  FrmTransfereVendas := TFrmTransfereVendas.Create(Application);
  FrmTransfereVendas.Showmodal;
  FreeAndNil(FrmTransfereVendas);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.CriaArquivoWord;

// Unit: ComOBJ

var
  MSWord: Variant;
begin
  MSWord:= CreateOleObject ('Word.Basic');
  MSWord.AppShow;//mostra o word
  MSWord.FileNew;//inicia um novo documento
  MSWord.insert('Contrato de Locação'); //Escreve algo
  MSWord.insert(#13+'Contrato de Locação');//Pula uma linha e escreve
  MSWord.FontSize(24);//muda o tamanho da fonte
  MSWord.italic;//coloca italico
  MSWord.bold;//coloca negrito
  MSWord.underline;//sublina
  MSWord.insert(#13+'Contrato de Locação');//pula a linha e escreve novamente
  MSWord.FontSize(12);//muda o tamanho da fonte
  MSWord.Font('Arial');//muda a fonte usada
  MSWord.underline(false);//retira o sublinhado
  MSWord.italic(false);//retira o italico
  MSWord.bold(false);//retira o bold
  MSWord.insert(#13 +'teste');
  MSWord.insert(#13+#9 +'teste');//nova linha e um TAB
  //MSWord.insert(#13+Table1Razao_Social.Value);//insere algo de uma tabela
  MSWord.LineUp(2, 1); //seleciona uma parte do texto
  MSWord.TextToTable(ConvertFrom := 2, NumColumns := 1);// monta uma tabela com o texto selecionado

  MSWord.FileSaveAs('C:\Temp\Test.txt', 3); //Salva o arquivo
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.ObtemUsuarios(UserList: TStrings);

(*
//***************
// CRIE NA FORM UM CAMPO MEMO E UM BOTAO
// DENTRO DO EVENTO DO BOTAO UTILIZE
//***************
Memo1.Lines.Clear;
GetUsers(Memo1.Lines);
Memo1.Refresh;
*)

var
  TmpCursor: hDbiCur;
  rslt: dbiResult;
  UsrDesc: USERDesc;
begin

  UserList.Clear;
  Check(DbiOpenUserList(TmpCursor));
  try
    repeat
      Rslt:= DbiGetNextRecord(TmpCursor, dbiNOLOCK, @UsrDesc, nil);
      if Rslt <> DBIERR_EOF then
        UserList.Add(UsrDesc.szUserName);
    until Rslt <> DBIERR_NONE;
  finally
    Check(DbiCloseCursor(TmpCursor));
  end;

end;

//****---****---***---****---***---****---***---****---***---****---***---****-//

(*

// Reindexar tabelas
Para usar você terá que adicionar os componentes:

Table
Database { se sua aplicação possuir este componente pode usar o mesmo}

O componente Table a propriedade exclusive tem que ser true. Senão não funciona.
*)

(*
procedure TFrmPrincipal.Reindexar(DataBase : TDatabase; Tabela : TTable);
var
  List : TStrings;
  i : Integer;
begin

  try
    Database.Connected:=true;
  except
    Raise;
    Exit;
  end;

  List := TStringList.create;
  Session.GetTableNames(DataBase.aliasName, '', true, false,List);

  for i:= 0 to List.Count - 1 do
    begin
      if (Entidade2) then break;
      application.ProcessMessages;
      Tabela.close;
      Tabela.TableName:=List[i];
      Try
        Tabela.open;
        Check(dbiRegenIndexes(Tabela.Handle));
      except
        Raise;
      end;
    end;

  List.Free;
  Database.Connected:=false;
end;
*)

//****---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Backupdosdadoscopia1Click(Sender: TObject);
begin

  If Nivel = 3 then // Operacional
    begin
      Alerta('Erro Leve');
      MessageDlg('Atenção...'+#13+#13+'Usuário sem nível de acesso para acessar tela de Backup !!!'+#13+#13+'Contacte Supervisor do sistema!', mtError, [mbOk], 0 );

      Som(7);
      FrmErroRotina := TFrmErroRotina.Create(Application);
      FrmErroRotina.ShowModal;
      FreeAndNil(FrmErroRotina);

      Exit;
    end;

  //-- 

  FrmS_Back := TFrmS_Back.Create(Application);
  FrmS_Back.Showmodal;
  FreeAndNil(FrmS_Back);
end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Restauracaodebackup1Click(Sender: TObject);
begin

  FrmS_Rest := TFrmS_Rest.Create(Application);
  FrmS_Rest.Showmodal;
  FreeAndNil(FrmS_Rest);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.VisualizaBackupsFeitosClick(Sender: TObject);
begin

  FrmVisualizaBackups := TFrmVisualizaBackups.Create(Application);
  FrmVisualizaBackups.Showmodal;
  FreeAndNil(FrmVisualizaBackups);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Reprocessanotasdeentrada1Click(Sender: TObject);
begin

  FrmReprocessaNotadeEntrada := TFrmReprocessaNotadeEntrada.Create(Application);
  FrmReprocessaNotadeEntrada.Showmodal;
  FreeAndNil(FrmReprocessaNotadeEntrada);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.ReativaodeRegistros1Click(Sender: TObject);
begin

  FrmReativaRegistros := TFrmReativaRegistros.Create(Application);
  FrmReativaRegistros.Showmodal;
  FreeAndNil(FrmReativaRegistros);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Validamovimentacaododia1Click(Sender: TObject);
begin

  FrmVerificacaoVendas := TFrmVerificacaoVendas.Create(Application);
  FrmVerificacaoVendas.Showmodal;
  FreeAndNil(FrmVerificacaoVendas);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.AbertosFechados1Click(Sender: TObject);
begin

  If ( Par_UtilizaCaixaDiario = 'N' ) then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', '+#13+#13+'O sistema não está configurado para usar Caixa Diário !'+#13+#13+'Porisso este relatório não pode ser impresso !!!'+#13+#13+'Caso queira trabalhar com Caixa Diário, vá em Parâmetros > Aba "Configurações" -> Item Caixa Diário !', mtError, [mbOk], 0 );


      Exit;
    end;

  //--

  FrmSRelCaixasAbertosFechados := TFrmSRelCaixasAbertosFechados.Create(Application);
  FrmSRelCaixasAbertosFechados.Showmodal;
  FreeAndNil(FrmSRelCaixasAbertosFechados);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.PosiodeCaixa1Click(Sender: TObject);
begin

  If (Verifica_LimiteRegistros('VENDA') = True) Or (Verifica_LimiteRegistros('ENTREGA') = True) then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmSRelPosicaoFinanceiraCaixa := TFrmSRelPosicaoFinanceiraCaixa.Create(Application);
  FrmSRelPosicaoFinanceiraCaixa.Showmodal;
  FreeAndNil(FrmSRelPosicaoFinanceiraCaixa);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

(*
function TFrmPrincipal.Alinha_Numeral( nNumero :Real; nTamanho : integer; lMoeda : Boolean ) : string;
Var
 nTamanho_N  :integer;
 cNumero, Resultado : string;

begin

 nTamanho_N := Length((TrimLeft(FloatToStr(nNumero))));

 cNumero    := TrimLeft(FloatToStr(nNumero));

 nTamanho := (nTamanho - 3);

 Resultado := ('R$ '+Space( (nTamanho - nTamanho_N ) )+cNumero);

 // Testa caso usuario envie um no. maior do que o tamanho que ele deseja.
 If Length(cNumero) > nTamanho then
   begin
     Result := 'null';
     Exit;
   end;

 Result := Resultado;

end;
*)

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Produtosmaisvendidos1Click(Sender: TObject);
begin

  If (Verifica_LimiteRegistros('VENDA') = True) Or (Verifica_LimiteRegistros('ENTREGA') = True)then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmSRelProdutosMaisVendidos := TFrmSRelProdutosMaisVendidos.Create(Application);
  FrmSRelProdutosMaisVendidos.Showmodal;
  FreeAndNil(FrmSRelProdutosMaisVendidos);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Registra_Ultimo_Acesso : Boolean;
Var
  lAtualizacao1, lAtualizacao2, lAtualizacao3 : Boolean;
begin

  lAtualizacao1 := True;
  lAtualizacao2 := True;
  lAtualizacao3 := True;

  //If Not ( (Trim(UpperCase(ParamStr(1))) = 'INSTALL') ) And (FrmAcess.lErro_Validade = False ) then
  If (FrmAcess.lErro_Validade = False ) then
    begin

      //--------
      // 1º Passo: Atualização em arquivo de Controle de Validade da cópia.
      //------------------------------

      Try
        If Table_Validade.Active = False then Table_Validade.Open;

        If Table_Validade.RecordCount = 1 then
          begin
            // Grava último acesso no arquivo de validade.
            Table_Validade.Edit;
            Table_Validade.FieldByName('Data_UltAcesso').AsString := MudaCaracter('E', DateToStr(Date()) );
            Table_Validade.Post;
          end;

        Table_Validade.Refresh;
        lAtualizacao1 := True;
      Except
        lAtualizacao1 := False;
      end;

      //--

      //------
      // 2º Passo: Atualização de dados em arquivo oculto....
      //----------------

      Try
        If FileExists('C:\Windows\System32\Security.db') then
          begin
            If Table_Temp.Active then Table_Temp.Close;

            Table_Temp.DatabaseName := 'C:\Windows\System32';
            Table_Temp.TableName    := 'Security.db';
            Table_Temp.Open;

            //--

            Table_Temp.Edit;
            Table_Temp.FieldByName('Data_UltAcesso').AsString := MudaCaracter('E', DateToStr(Date()) );
            Table_Temp.Post;
            Table_Temp.Refresh;

            Table_Temp.Close;

            lAtualizacao2 := True;
          end;
      Except
        lAtualizacao2 := False;
      end;

      // 3º Passo: Atualização de dados em registro do Windows...
      Try
        If Atualiza_RegWinDemo_DataUltimoAcesso( 'G' ) = False then
          lAtualizacao3 := False
        Else
          lAtualizacao3 := True;
      Except
        lAtualizacao3 := False;
      end;
    end;

  //--

  Result := (lAtualizacao1 = True) and (lAtualizacao2 = True) and (lAtualizacao3 = True);
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Zera_Temporarios;
Var
  I : integer;
//
// Objetivo: Zerar arquivos temporários( PosCaixa.db, Temp*.db, Tmp*.db, Tmp_Bair.db, Tmp_Esto.db).
//
begin

  For I := 1 to 14 do
    begin
      Table_Temp.TableName := Tabela_Zera_Arquivos[I];
      Table_Temp.Exclusive := True;

      with Table_Temp do
        begin
          Active       := False;
          DatabaseName := 'Pizza';
          TableName    := Tabela_Zera_Arquivos[I];
          TableType    := ttParadox;
          EmptyTable;
        end;

      Table_Temp.Exclusive := False;
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Zeratabelassistemasumaauma1Click(Sender: TObject);
begin

  FrmZeraTabelas := TFrmZeraTabelas.Create(Application);
  FrmZeraTabelas.Showmodal;
  FreeAndNil(FrmZeraTabelas);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Produtossemvendasnumperiodo1Click(Sender: TObject);
begin

  FrmSRelProdutossemVendas := TFrmSRelProdutossemVendas.Create(Application);
  FrmSRelProdutossemVendas.Showmodal;
  FreeAndNil(FrmSRelProdutossemVendas);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Funcionario4Click(Sender: TObject);
begin

  FrmLanctoValesFuncionario := TFrmLanctoValesFuncionario.Create(Application);
  FrmLanctoValesFuncionario.Showmodal;
  FreeAndNil(FrmLanctoValesFuncionario);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Receitadodiamotoqueiroentregador1Click( Sender: TObject);
begin

  If Verifica_LimiteRegistros('ENTREGA') = True then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmReceitaDiaria := TFrmReceitaDiaria.Create(Application);
  FrmReceitaDiaria.Showmodal;
  FreeAndNil(FrmReceitaDiaria);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Conveniencia1Click(Sender: TObject);
begin

  If Verifica_LimiteRegistros('CONVENIENCIA') = True then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;


  If Nivel = 3 then // Operacional
    begin
      Alerta('Erro Leve');
      MessageDlg('Atenção...'+#13+#13+'Usuário sem nível de acesso para acessar tela de Venda na Conveniência !!!'+#13+#13+'Contacte Supervisor do sistema!', mtError, [mbOk], 0 );

      Som(7);
      FrmErroRotina := TFrmErroRotina.Create(Application);

      FrmErroRotina.ShowModal;

      FreeAndNil(FrmErroRotina);

      Exit;
    end;

  FrmConveniencia := TFrmConveniencia.Create(Application);
  FrmConveniencia.Showmodal;
  FreeAndNil(FrmConveniencia);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Locaodemesas1Click(Sender: TObject);
begin

  FrmLocacaoMesas := TFrmLocacaoMesas.Create(Application);
  FrmLocacaoMesas.Showmodal;
  FreeAndNil(FrmLocacaoMesas);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Transacoes1Click(Sender: TObject);
begin

  FrmTransacao := TFrmTransacao.Create(Application);
  FrmTransacao.Showmodal;
  FreeAndNil(FrmTransacao);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.ReceitaDespesamotoqueiroentregadormensal1Click( Sender: TObject);
begin

  If Verifica_LimiteRegistros('ENTREGA') = True then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmSRelReceitaMotoqueiro := TFrmSRelReceitaMotoqueiro.Create(Application);
  FrmSRelReceitaMotoqueiro.Showmodal;
  FreeAndNil(FrmSRelReceitaMotoqueiro);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.ReceitaDespesagarcommensal1Click(Sender: TObject);
begin

  If Verifica_LimiteRegistros('VENDA') = True then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmReceitaDespesaGarcom := TFrmReceitaDespesaGarcom.Create(Application);
  FrmReceitaDespesaGarcom.Showmodal;
  FreeAndNil(FrmReceitaDespesaGarcom);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Estoqueatual1Click(Sender: TObject);
begin

  If Verifica_LimiteRegistros('PRODUTO') = True then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmS_EstoqueAtual := TFrmS_Estoqueatual.Create(Application);
  FrmS_EstoqueAtual.Showmodal;
  FreeAndNil(FrmS_EstoqueAtual);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Receitadodiagarcom1Click(Sender: TObject);
begin

  If Verifica_LimiteRegistros('VENDA') = True then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmReceitaDiariaGarcom := TFrmReceitaDiariaGarcom.Create(Application);
  FrmReceitaDiariaGarcom.Showmodal;
  FreeAndNil(FrmReceitaDiariaGarcom);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Produtosnopontoderessuprimento1Click(Sender: TObject);
begin

  If Verifica_LimiteRegistros('PRODUTO') = True then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmS_PontoRessuprimento := TFrmS_PontoRessuprimento.Create(Application);
  FrmS_PontoRessuprimento.Showmodal;
  FreeAndNil(FrmS_PontoRessuprimento);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//


procedure TFrmPrincipal.VerificaComandoImpressao( cTexto : string; cEfeito: string );
Var
  cCaracInicio, cCaracFim : string;
  nModo, nItalico, nSublinhado, nExpandido, nNegrito, I, Code :  integer;

begin

  If (cTexto = 'Fecha') then
    begin
      If Par_ComandoAbrePortaPadrao = 'AssignFile' then
        CloseFile(Arquivo)
      Else If Par_ComandoAbrePortaPadrao = 'AbrePorta' then
        FechaPorta();

      Exit;
    end;

  //--

  If Par_ComandoAbrePortaPadrao = 'AssignFile' then
    begin
      If Par_ComandoImprimePortaPadrao = 'WriteLn' then
        WriteLn( Arquivo, cCaracInicio+cTexto+cCaracFim )
    end
  Else If Par_ComandoAbrePortaPadrao = 'AbrePorta' then
    begin
      // Verifica se não foi enviado nenhum efeito.
      If Trim(cEfeito) = '' then
        begin
          nModo       := 3;
          nItalico    := 0;
          nSublinhado := 0;
          nExpandido  := 0;
          nNegrito    := 0;
        end
      Else
        begin
          Val(Copy(cEfeito,01,01), nModo, Code);
          Val(Copy(cEfeito,02,01), nItalico, Code);
          Val(Copy(cEfeito,03,01), nSublinhado, Code);
          Val(Copy(cEfeito,04,01), nExpandido, Code);
          Val(Copy(cEfeito,05,01), nNegrito, Code);
        end;

      cTexto  := cTexto+chr(13)+chr(10);
      Comando := FormataTX(cTexto, nModo, nItalico, nSublinhado, nExpandido, nNegrito);
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Cabecalho_Padrao( Pg : integer );
Var
  cNada                         : String;
  nMeio, nTemp, nEspacos, nQtde : integer;
  nCalc, nValor                 : double;

begin

  (*
  If Length(Trim(FrmPrincipal.NomeEmpresa)) > FrmPrincipal.QtdeCaracteresExpandidoImpPadrao then
    cNada := Copy( Trim(FrmPrincipal.NomeEmpresa), 01, FrmPrincipal.QtdeCaracteresExpandidoImpPadrao)
  Else
    begin
      nTemp := FrmPrincipal.QtdeCaracteresExpandidoImpPadrao - Length(Trim(FrmPrincipal.NomeEmpresa));
      nEspacos := nTemp div 2;

      nCalc := nTemp / 2;

      If Frac(nCalc) > 0 then
        nEspacos := nEspacos+1;

      cNada := Replicate(' ', nEspacos)+Trim(FrmPrincipal.NomeEmpresa)+Replicate(' ', nEspacos);
    end;

  //---

  cTexto := Centered( cNada, FrmPrincipal.QtdeCaracteresExpandidoImpPadrao, ' ');
  VerificaComandoImpressao( cDefault+cICondensado+cIExpandido+cTexto+cICondensado, '' );
  *)

  If Length(Trim(FrmPrincipal.NomeEmpresa)) > FrmPrincipal.QtdeCaracteresExpandidoImpPadrao then
    cNada := Copy( Trim(FrmPrincipal.NomeEmpresa), 01, FrmPrincipal.QtdeCaracteresExpandidoImpPadrao)
  Else
    begin
      nTemp := FrmPrincipal.QtdeCaracteresExpandidoImpPadrao - Length(Trim(FrmPrincipal.NomeEmpresa));
      nEspacos := nTemp div 2;

      nCalc := nTemp / 2;

      If Frac(nCalc) > 0 then
        nEspacos := nEspacos+1;

      cNada := Replicate(' ', nEspacos)+Trim(FrmPrincipal.NomeEmpresa)+Replicate(' ', nEspacos);
    end;

  cTexto := Centered( cNada, FrmPrincipal.QtdeCaracteresExpandidoImpPadrao, ' ');
  VerificaComandoImpressao( cDefault+cICondensado+cIExpandido+cTexto+cICondensado, '' );

  //----

  If Par_UtilizaSaltodePagina = 'N' then
    cTexto := Padc( (Trim(EnderecoEmpresa)+' - Fone: '+Trim(FoneEmpresa)+' - '+Trim(BairroEmpresa)), QtdeCaracteresComprimidoImpPadrao, ' ' )
  Else
    cTexto := Padc( (Trim(EnderecoEmpresa)+' - Fone: '+Trim(FoneEmpresa)+' - '+Trim(BairroEmpresa)), QtdeCaracteresComprimidoImpPadrao, ' ' );


  If Length(cTexto) <= FrmPrincipal.QtdeCaracteresNormalImpPadrao then
    begin
      cTexto := Padc( cTexto, FrmPrincipal.QtdeCaracteresNormalImpPadrao, ' ');
      //cTexto := Centered( cNada, FrmPrincipal.QtdeCaracteresExpandidoImpPadrao, ' ');
      //VerificaComandoImpressao( cDefault+cICondensado+cIExpandido+cTexto+cICondensado, '' );
      VerificaComandoImpressao( cTexto, '' )
    end
  Else
    begin
      cTexto := Padc( cDefault+cICondensado+cTexto+cICondensado+cDefault, FrmPrincipal.QtdeCaracteresComprimidoImpPadrao, ' ');
      VerificaComandoImpressao( cTexto, '' );
    end;


  cTexto := Padc( (Trim(CidadeEmpresa)+' - '+UFEmpresa+' - Cep: '+Trim(CepEmpresa)+' Hora: '+TimeToStr(SysUtils.Time())), QtdeCaracteresComprimidoImpPadrao, ' ' );
  If Length(cTexto) <= FrmPrincipal.QtdeCaracteresNormalImpPadrao then
    begin
      cTexto := Padc( cTexto, FrmPrincipal.QtdeCaracteresNormalImpPadrao, ' ');
      VerificaComandoImpressao( cTexto, '' )
    end
  Else
    begin
      cTexto := Padc( cDefault+cICondensado+cTexto+cICondensado+cDefault, FrmPrincipal.QtdeCaracteresComprimidoImpPadrao, ' ');
      VerificaComandoImpressao( cTexto, '' );
    end;

  //--  

  cTexto := '';
  cNada  := '';

  ////////////////////////////////////////////////////////////////////////////

  If (Trim(FrmPrincipal.CGCEmpresa) <> '') Or (Trim(FrmPrincipal.IEEmpresa) <> '') then
    begin

      // Converte o CGC para número e verifica se é um valor válido.
      Val( FrmPrincipal.CGCEmpresa, nValor, nQtde);

      If (Trim(FrmPrincipal.CGCEmpresa) <> '') And (nValor > 0 ) then
        cTexto := PadC( 'CGC: '+Trim(FrmPrincipal.CGCEmpresa), FrmPrincipal.QtdeCaracteresComprimidoImpPadrao, ' ' );

      // Converte a Inscrição Estadual para número e verifica se é um valor válido.
      Val( FrmPrincipal.IEEmpresa, nValor, nQtde);

      If (Trim(FrmPrincipal.IEEmpresa) <> '') And (nValor > 0 ) then
        begin
          If cTexto <> '' then
            begin
              cNada  := Trim(cTexto);
              cTexto := PadC( (cNada+' - IE.: '+Trim(FrmPrincipal.IEEmpresa)), FrmPrincipal.QtdeCaracteresComprimidoImpPadrao, ' ' );
            end
          Else
            cTexto := PadC( 'IE.: '+Trim(FrmPrincipal.IEEmpresa), FrmPrincipal.QtdeCaracteresComprimidoImpPadrao, ' ' );
        end;

      If Trim(cTexto) <> '' then
        VerificaComandoImpressao( cTexto, '' );
    end;

  cTexto := Replicate('=', FrmPrincipal.QtdeCaracteresNormalImpPadrao);
  VerificaComandoImpressao( cDefault+cTexto, '' );
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Aciona_Porta() : Boolean;
Var
  PrintDialog1: TPrintDialog;

begin

  If Par_ImprimeArquivoImpPadrao = 'S' then
    begin
      FrmEscolhaImpressaoArquivo := TFrmEscolhaImpressaoArquivo.Create(Application);
      FrmEscolhaImpressaoArquivo.Showmodal;
      FreeAndNil(FrmEscolhaImpressaoArquivo);

      //--

      If (Par_DiretorioImpressaoArquivo = '') Or (Par_NomeImpressaoArquivo = '') then
        begin
          Result := False;
          Exit;
        end;
    end;

  //--

  // Verifica o tipo de comando enviado à porta para abri-la.

  If FrmPrincipal.Par_ComandoAbrePortaPadrao = 'AssignFile' then
    begin

      If (Par_PortaImpressoraPadrao = '[ Default Printer ]') then
        begin

          PrintDialog1 := TPrintDialog.Create(Self);

          If PrintDialog1.Execute then
            begin
              Try
                AssignPrn(Arquivo);
                ReWrite(Arquivo);

                Result := True;
              Except

              end;
            end
          Else
            begin
              Try
                AssignFile( Arquivo, Pchar(Par_PortaImpressoraPadrao) );
                ReWrite(Arquivo);

                Result := True;
              except

              end;
            end;

        end
      Else
        begin
          If (Trim(FrmPrincipal.Par_DiretorioImpressaoArquivo) <> '') and (Trim(FrmPrincipal.Par_NomeImpressaoArquivo) <> '') then
            AssignFile( Arquivo, FrmPrincipal.Par_DiretorioImpressaoArquivo+'\'+FrmPrincipal.Par_NomeImpressaoArquivo )
          Else
            AssignFile( Arquivo, Pchar(Par_PortaImpressoraPadrao) );
        end;

      ReWrite(Arquivo);
      
      Result := True;
   end
  Else If FrmPrincipal.Par_ComandoAbrePortaPadrao = 'AbrePorta' then
    begin
      Porta := IniciaPorta(Pchar(Par_PortaImpressoraPadrao));

      If Porta <= 0 Then
        begin
          Alerta('Erro Leve');
          Messagedlg('Atenção...'+#13+#13+'Problemas ao abrir a porta de Comunicação. Verifique.', mtError, [mbOk], 0);
          Exit;
        end;

      Result := True;
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Totaldevendasporperodomesa2Click(Sender: TObject);
begin

  If Verifica_LimiteRegistros('VENDA') = True then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--
  
  FrmSRelTotaisVendas := TFrmSRelTotaisVendas.Create(Application);
  FrmSRelTotaisVendas.Showmodal;
  FreeAndNil(FrmSRelTotaisVendas);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Tabelas1Click(Sender: TObject);
begin

  If Verifica_LimiteRegistros('VENDA') = True then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmSRelTotaisPeriodo := TFrmSRelTotaisPeriodo.Create(Application);
  FrmSRelTotaisPeriodo.Showmodal;
  FreeAndNil(FrmSRelTotaisPeriodo);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.ImageBackupClick(Sender: TObject);
begin

  Backupdosdadoscopia1Click(Nil);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

(*
function TFrmPrincipal.Cabec( nTipo: integer; cArquivo : Textfile );
Var
  cEndereco, cTexto, cLinha, cEspaco : string;
  nTam : integer;

begin

    NomeEmpresa : string;
    EnderecoEmpresa : string;

    FoneEmpresa : string;
    CGCEmpresa : string;
    BairroEmpresa : string;
    CepEmpresa    : string;
    CidadeEmpresa : string;
    UFEmpresa     : string;
    IEEmpresa     : string;
    FraseRodape   : string;

  If nTipo = 1 then  // Paralela...
    begin
      Write( cArquivo, PadC( #14+#15+Trim(NomeEmpresa), 40, ' ')+#13+#10 );
      Write( cArquivo, ''+#18+#13+#10 );

      cLinha := Trim(EnderecoEmpresa)+Trim(BairroEmpresa);
      nTam   := Length(cLinha);

      If nTam >= 45 then
        cTexto := Copy(cLinha,01,45)
      Else
        begin
          cTexto  := cLinha;
          cEspaco := Replicate(' ', (45-nTam) );
          cTexto  := cTexto+cEspaco;
        end;

      Write( cArquivo, Center( 45, #15+cTexto+#13+#10 ) );

      //=============//

      cLinha := Trim(FoneEmpresa)+Trim(CEPEmpresa)+Trim(CidadeEmpresa)+UFEmpresa;
      nTam   := Length(cLinha);

      If nTam >= 45 then
        cTexto := Copy(cLinha,01,45)
      Else
        begin
          cTexto  := cLinha;
          cEspaco := Replicate(' ', (45-nTam) );
          cTexto  := cTexto+cEspaco;
        end;

      Write( cArquivo, Center( 45, #15+cTexto+#13+#10 ) );

      //===========//

      cLinha := Trim(CGCEmpresa)+Trim(IEEmpresa);
      nTam   := Length(cLinha);

      If nTam >= 45 then
        cTexto := Copy(cLinha,01,45)
      Else
        begin
          cTexto  := cLinha;
          cEspaco := Replicate(' ', (45-nTam) );
          cTexto  := cTexto+cEspaco;
        end;

      Write( cArquivo, Center( 45, #15+cTexto+#13+#10 ) );

      //=================//

      Write( cArquivo, #15+'Data: '+Datetostr(Date())+' / '+TimeToStr(SysUtils.Time)+' - OMH'+#13+#10 );

    end

end;
*)

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.LancamentodeDespesas1Click(Sender: TObject);
begin

  If Verifica_LimiteRegistros('NOTADESPESA') = True then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--


  FrmLanctoDespesas := TFrmLanctoDespesas.Create(Application);
  FrmLanctoDespesas.Showmodal;
  FreeAndNil(FrmLanctoDespesas);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Despesasdodia1Click(Sender: TObject);
begin

  FrmSRelDespesasdodia := TFrmSRelDespesasdodia.Create(Application);
  FrmSRelDespesasdodia.Showmodal;
  FreeAndNil(FrmSRelDespesasdodia);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Resumodocaixa1Click(Sender: TObject);
begin

  If (Verifica_LimiteRegistros('RESUMOCAIXA') = True) then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmResumoCaixa := TFrmResumoCaixa.Create(Application);
  FrmResumoCaixa.Showmodal;
  FreeAndNil(FrmResumoCaixa);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.BitBtn_DadosEmpresaClick(Sender: TObject);
begin

  //FrmVendaRapida := TFrmVendaRapida.Create(Application);
  //FrmVendaRapida.Showmodal;
  //FreeAndNil(FrmVendaRapida);
  //--

  Som(15);
  FrmEmpresaUsuaria := TFrmEmpresaUsuaria.Create(Application);
  FrmEmpresaUsuaria.ShowModal;
  FreeAndNil(FrmEmpresaUsuaria);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.SobreaEmpresausuaria1Click(Sender: TObject);
begin

  BitBtn_DadosEmpresaClick(Nil);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Faz_Query_Permanente( cQuery : TQuery; cNomeTabela : string );
begin
  DBIMakePermanent( cQuery.Handle, #39+'+cNomeTabela+'+#39, True );
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

(*

Recomendação para Desenvolvimento:

  Code Generation
    Optimization - OFF
    Aligned record fields - ON
    Stack frames - ON
    Pentium-safe DIV - OFF

  Sintaxe Options
    Strict var-strings - ON
    Complete boolean eval - OFF
    Extended syntax - ON
    Typed @ operator - ON
    Open parameters - ON
    Huge strings - ON
    Assignable typed constants - OFF

  RunTime erros
    Range checking - ON
    I/O checking - ON
    Overflow checking (Q) - ON

  Debug
    Debug Information - ON
    Local Symbols - ON
    Reference info (Y) - ON
    Definitions only - ON
    Assertions (C) - ON
    Use Debug DCUs - ON

  Messages
    Show hints - ON
    Show warnings - ON

 |---------------------------|

   Code Generation
    Optimization - ON
    Aligned record fields - ON
    Stack frames - OFF
    Pentium-safe DIV - OFF

  Sintaxe Options
    Strict var-strings - ON
    Complete boolean eval - OFF
    Extended syntax - ON
    Typed @ operator - ON
    Open parameters - ON
    Huge strings - ON
    Assignable typed constants - OFF

  RunTime erros
    Range checking - OFF
    I/O checking - ON
    Overflow checking (Q) - OFF

  Debug
    Debug Information - OFF
    Local Symbols - OFF
    Reference info (Y) - OFF
    Definitions only - OFF
    Assertions (C) - OFF
    Use Debug DCUs - OFF

  Messages
    Show hints - ON
    Show warnings - ON

*)

procedure TFrmPrincipal.Alerta( cTipo : string );
begin

  //---------
  // Caso seja alerta num pressionamento de botão de manutenção...
  //-----------------

  If UpperCase(Trim(cTipo)) = 'BOTAO' then
    begin
      If Par_QuerAlertaSonoro = 'S' then
        begin
          If Par_BeepCliqueBotoes = 'S' then
            TocaSom(5)
          Else
            Som(15);
        end;
    end;

  //--------
  // Erro Leve...
  //------------------------

  If UpperCase(Trim(cTipo)) = 'ERRO LEVE' then
    begin
      If Par_QuerAlertaSonoro = 'S' then
        begin
          If Par_TipoAlertaErro = 'Sirene' then
            TocaSom(2)
          Else If Par_TipoAlertaErro = 'Beep' then
            Som(6);
        end;
    end;

  //---------------
  // Erro crítico...
  //-----------------------

  If UpperCase(Trim(cTipo)) = 'ERRO CRITICO' then
    begin
      If Par_QuerAlertaSonoro = 'S' then
        begin
          If Par_TipoAlertaErro = 'Sirene' then
            TocaSom(4)
          Else If Par_TipoAlertaErro = 'Beep' then
            Som(7);
        end;
    end;

  //-----
  // Solicitação de Confirmação...
  //------------------

  If UpperCase(Trim(cTipo)) = 'CONFIRMACAO' then
    begin
      If Par_QuerAlertaSonoro = 'S' then
        begin
          If Par_TipoAlertaErro = 'Sirene' then
            TocaSom(1)
          Else If Par_TipoAlertaErro = 'Beep' then
            Som(8);
        end;
    end;

  //------
  // Operação bem sucedida...
  //---------------------

  If UpperCase(Trim(cTipo)) = 'SUCESSO' then
    begin
      If Par_QuerAlertaSonoro = 'S' then
        begin
          If Par_TipoAlertaErro = 'Sirene' then
            TocaSom(3)
          Else If Par_TipoAlertaErro = 'Beep' then
            Som(9);
        end;
    end;

  //-----
  // Saída do sistema...
  //-------------------

  If UpperCase(Trim(cTipo)) = 'SAIDA DO SISTEMA' then
    begin
      If Par_QuerAlertaSonoro = 'S' then
        begin
          If Par_TipoAlertaErro = 'Sirene' then
            TocaSom(3)
          Else If Par_TipoAlertaErro = 'Beep' then
            Som(11);  // 15
        end;
    end;

  //------
  // Ao gravar venda (Som de Caixa registradora)
  //--------------------

  If UpperCase(Trim(cTipo)) = 'CAIXA REGISTRADORA' then
    begin
      If Par_QuerAlertaSonoro = 'S' then
        begin
          If Par_TipoAlertaErro = 'Sirene' then
            TocaSom(7)
          Else If Par_TipoAlertaErro = 'Beep' then
            Som(13);
        end
    end;

  //---
  // Alerta de erro grave, som grave para chamar atenção 1...
  //--------------

  If UpperCase(Trim(cTipo)) = 'ERRO GRAVE1' then
    begin
      If Par_QuerAlertaSonoro = 'S' then
        begin
          If Par_TipoAlertaErro = 'Sirene' then
            TocaSom(18)
          Else If Par_TipoAlertaErro = 'Beep' then
            Som(6);
        end;
    end;

  //---
  // Alerta de erro grave, som grave para chamar atenção 2...
  //--------------

  If UpperCase(Trim(cTipo)) = 'ERRO GRAVE2' then
    begin
      If Par_QuerAlertaSonoro = 'S' then
        begin
          If Par_TipoAlertaErro = 'Sirene' then
            TocaSom(17)
          Else If Par_TipoAlertaErro = 'Beep' then
            Som(6);
        end;
    end;


  //---
  // Ops...
  //--------------

  If UpperCase(Trim(cTipo)) = 'OPS' then
    begin
      If Par_QuerAlertaSonoro = 'S' then
        begin
          If Par_TipoAlertaErro = 'Sirene' then
            TocaSom(16)
          Else If Par_TipoAlertaErro = 'Beep' then
            Som(6);
        end;
    end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Emite_Sons_MultiMidia( cTipo : string );
begin

  If UpperCase(Trim(cTipo)) = 'BOTAO' then
    begin
      If (WaveOutGetNumDevs > 0 ) then
        TocaSom(5)
    end;

  // Erro Leve...

  If UpperCase(Trim(cTipo)) = 'ERRO LEVE' then
    begin
      If (WaveOutGetNumDevs > 0 ) then
        TocaSom(2)
    end;

  // Erro crítico...

  If UpperCase(Trim(cTipo)) = 'ERRO CRITICO' then
    begin
      If (WaveOutGetNumDevs > 0 ) then
        TocaSom(4)
    end;

  // Solicitação de Confirmação...

  If UpperCase(Trim(cTipo)) = 'CONFIRMACAO' then
    begin
      If (WaveOutGetNumDevs > 0 ) then
        TocaSom(1)
    end;

  // Operação bem sucedida...

  If UpperCase(Trim(cTipo)) = 'SUCESSO' then
    begin
      If (WaveOutGetNumDevs > 0 ) then
        TocaSom(3)
    end;

  // Saída do sistema...

  If UpperCase(Trim(cTipo)) = 'SAIDA DO SISTEMA' then
    begin
      If (WaveOutGetNumDevs > 0 ) then
        TocaSom(3)
    end;

  // Ao gravar venda (Som de Caixa registradora)

  If UpperCase(Trim(cTipo)) = 'CAIXA REGISTRADORA' then
    begin
      If (WaveOutGetNumDevs > 0 ) then
        TocaSom(7)
    end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Encerrante1Click(Sender: TObject);
begin

  FrmEncerrante := TFrmEncerrante.Create(Application);

  FrmEncerrante.Showmodal;

  FreeandNil(FrmEncerrante);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

// Formas de liberar o form da memória:
//
//
// FrmEncerrante.Free => Deixa resquicio na memória e o método Assigned acaba retornando true
//                       mesmo quando o form não existe.
//
//
// FreeandNil(FrmEncerrante) => Elimina definitivamente o form sem deixar resto na memória.
//
//
//

//***---***---***---***---***---***---***---***---***---***---***---***---***-//


procedure TFrmPrincipal.GeraNumeracaodefichasmesa1Click(Sender: TObject);
begin

  FrmGeracaoNumerosFichaMesa := TFrmGeracaoNumerosFichaMesa.Create(Application);
  FrmGeracaoNumerosFichaMesa.Showmodal;
  FreeAndNil(FrmGeracaoNumerosFichaMesa);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Bairros2Click(Sender: TObject);
begin

  Bairros1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.CartodeCrdito2Click(Sender: TObject);
begin

  CartaodeCredito1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Categoria2Click(Sender: TObject);
begin

  Categoria1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Clientes5Click(Sender: TObject);
begin

  Clientes1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Despesas2Click(Sender: TObject);
begin

  Despesas1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Fornecedores2Click(Sender: TObject);
begin

  Fornecedores1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Funcionarios2Click(Sender: TObject);
begin

  Funcionarios1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Materiaprima2Click(Sender: TObject);
begin

  MateriaPrima1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Mesas2Click(Sender: TObject);
begin

  Mesas1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Produto2Click(Sender: TObject);
begin

  Produtos3Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Taxa2Click(Sender: TObject);
begin

  Taxa1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.TipoFuncionario2Click(Sender: TObject);
begin

  TipoFuncionario1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Bairros1Click(Sender: TObject);
begin

  FrmBairros := TFrmBairros.Create(Application);

  //FrmBairros.Table_Taxa.Open;
  FrmBairros.Table_Bairros.Open;

  FrmBairros.Showmodal;

  //FrmBairros.Table_Taxa.Close;
  FrmBairros.Table_Bairros.Close;

  FreeAndNil(FrmBairros);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.CartaodeCredito1Click(Sender: TObject);
begin


  FrmCartaodeCredito := TFrmCartaodeCredito.Create(Application);
  FrmCartaodeCredito.Table_Cartao.Open;

  FrmCartaodeCredito.Showmodal;

  FrmCartaodeCredito.Table_Cartao.Close;
  FreeAndNil(FrmCartaodeCredito);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Categoria1Click(Sender: TObject);
begin

  FrmCategoria := TFrmCategoria.Create(Application);

  FrmCategoria.Showmodal;

  FreeAndNil(FrmCategoria);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Clientes1Click(Sender: TObject);
begin

  FrmC_Clie := TFrmC_Clie.Create(Application);

  FrmC_Clie.Table_Clientes.Open;
  FrmC_Clie.Table_MSMT.Open;
  FrmC_Clie.Table_Bairro.Open;
  FrmC_Clie.Table_Empresas.Open;
  FrmC_Clie.Table_Taxa.Open;
  FrmC_Clie.Table_ValeClie.Open;

  FrmC_Clie.Showmodal;

  FrmC_Clie.Table_Clientes.Close;
  FrmC_Clie.Table_MSMT.Close;
  FrmC_Clie.Table_Bairro.Close;
  FrmC_Clie.Table_Empresas.Close;
  FrmC_Clie.Table_Taxa.Close;
  FrmC_Clie.Table_ValeClie.Close;

  FreeAndNil(FrmC_Clie);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Despesas1Click(Sender: TObject);
begin

  FrmDespesa := TFrmDespesa.Create(Application);

  FrmDespesa.Showmodal;

  FreeAndNil(FrmDespesa);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Fornecedores1Click(Sender: TObject);
begin

  FrmFornecedores := TFrmFornecedores.Create(Application);

  FrmFornecedores.Table_Forn.Open;

  FrmFornecedores.Showmodal;

  FrmFornecedores.Table_Forn.Close;

  FreeAndNil(FrmFornecedores);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Funcionarios1Click(Sender: TObject);
begin

  FrmFuncionarios := TFrmFuncionarios.Create(Application);

  FrmFuncionarios.Table_Func.Open;
  FrmFuncionarios.Table_TipoFunc.Open;

  FrmFuncionarios.Showmodal;

  FrmFuncionarios.Table_Func.Close;
  FrmFuncionarios.Table_TipoFunc.Close;

  FreeAndNil(FrmFuncionarios);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Materiaprima1Click(Sender: TObject);
begin

  FrmMateriaPrima := TFrmMateriaPrima.Create(Application);

  FrmMateriaPrima.Table_MateriaPrima.Open;
  FrmMateriaPrima.Table_Unidade.Open;

  FrmMateriaPrima.Showmodal;

  FrmMateriaPrima.Table_MateriaPrima.Close;
  FrmMateriaPrima.Table_Unidade.Close;

  FreeAndNil(FrmMateriaPrima);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Mesas1Click(Sender: TObject);
begin

  FrmMesas := TFrmMesas.Create(Application);

  FrmMesas.Table_Mesas.Open;

  FrmMesas.Showmodal;

  FrmMesas.Table_Mesas.Close;

  FreeAndNil(FrmMesas);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Produtos3Click(Sender: TObject);
begin

  FrmProdutos := TFrmProdutos.Create(Application);

  FrmProdutos.Table_Produtos.Open;
  FrmProdutos.Table_Categoria.Open;
  FrmProdutos.Table_Unidade.Open;
  FrmProdutos.Table_MateriaPrima.Open;
  FrmProdutos.Table_Composicao.Open;
  FrmProdutos.Table_Adicional.Open;

  FrmProdutos.Showmodal;

  FrmProdutos.Table_Produtos.Close;
  FrmProdutos.Table_Categoria.Close;
  FrmProdutos.Table_Unidade.Close;
  FrmProdutos.Table_MateriaPrima.Close;
  FrmProdutos.Table_Composicao.Close;
  FrmProdutos.Table_Adicional.Close;

  FreeAndNil(FrmProdutos);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Taxa1Click(Sender: TObject);
begin

  FrmTaxa := TFrmTaxa.Create(Application);

  FrmTaxa.Table_Taxa.Open;

  FrmTaxa.Showmodal;

  FrmTaxa.Table_Taxa.Close;

  FreeAndNil(FrmTaxa);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.TipoFuncionario1Click(Sender: TObject);
begin

  FrmTipoFuncionario := TFrmTipoFuncionario.Create(Application);

  FrmTipoFuncionario.Table_TipoFunc.Open;

  FrmTipoFuncionario.Showmodal;

  FrmTipoFuncionario.Table_TipoFunc.Close;

  FreeAndNil(FrmTipoFuncionario);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.InformacoesSobreSistemaOperacionalClick(Sender: TObject);
begin

  FrmInfo := TFrmInfo.Create(Application);
  FrmInfo.Showmodal;
  FreeAndNil(FrmInfo);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Executa_Backup;
Var
  cTexto : string;
begin

  // Cria diretório "BACKUP" caso não exista.
  If DirectoryExists(RetornaCaminhoAlias('Pizza')+'\BACKUP') = False then // então cria o diretório
    begin
      If CreateDir(RetornaCaminhoAlias('Pizza')+'\BACKUP') = FALSE then
        begin
          FrmPrincipal.Alerta('Erro Leve');
          MessageDlg('Atenção...'+#13+#13+'Impossível criar diretório de gravação de backup´s!!!'+#13+#13+'Contacte suporte...', mtError, [mbOk], 0 );
          Exit;
        end
      Else
        begin
          // Criando os diretórios de backup diários, caso não existam.
          If CreateDir(RetornaCaminhoAlias('Pizza')+'\BACKUP\SEGQUINT') = FALSE then
            begin
              FrmPrincipal.Alerta('Erro Leve');
              MessageDlg('Atenção...'+#13+#13+'Impossível criar diretório de gravação de backup (SEGQUINT) !!!'+#13+#13+'Contacte suporte...', mtError, [mbOk], 0 );
              Exit;
            end;

          If CreateDir(RetornaCaminhoAlias('Pizza')+'\BACKUP\TERSEXTA') = FALSE then
            begin
              FrmPrincipal.Alerta('Erro Leve');
              MessageDlg('Atenção...'+#13+#13+'Impossível criar diretório de gravação de backup (TERSEXTA) !!!'+#13+#13+'Contacte suporte...', mtError, [mbOk], 0 );
              Exit;
            end;

          If CreateDir(RetornaCaminhoAlias('Pizza')+'\BACKUP\QUARSABA') = FALSE then
            begin
              FrmPrincipal.Alerta('Erro Leve');
              MessageDlg('Atenção...'+#13+#13+'Impossível criar diretório de gravação de backup (QUARSABA) !!!'+#13+#13+'Contacte suporte...', mtError, [mbOk], 0 );
              Exit;
            end;

          If CreateDir(RetornaCaminhoAlias('Pizza')+'\BACKUP\DOMINGO') = FALSE then
            begin
              FrmPrincipal.Alerta('Erro Leve');
              MessageDlg('Atenção...'+#13+#13+'Impossível criar diretório de gravação de backup (DOMINGO) !!!'+#13+#13+'Contacte suporte...', mtError, [mbOk], 0 );
              Exit;
            end;

        end;
    end;

  //-----

  If AbreTabela( Table_Backup, True ) = False then
    begin
      Alerta('Erro Leve');
      Messagedlg('Atenção...'+#13+#13+'Não foi possível abrir a tabela de registro de backups !'+#13+'Por favor, contacte suporte !', mtError, [mbOk], 0 );
      Exit;
    end;

  If Table_Backup.FindKey([FrmPrincipal.Data_Sistema]) then
    Table_Backup.Delete;

  // Grava dados deste backup efetuado.
  Table_Backup.Insert;
  Table_Backup.FieldByName('Data_Backup').Value     := FrmPrincipal.Data_Sistema;
  Table_Backup.FieldByName('Hora_Backup').Value     := TimeToStr( SysUtils.Time() );
  Table_Backup.FieldByName('Usuario').AsInteger     := FrmPrincipal.Cod_User;
  Table_Backup.FieldByName('Nome_Usuario').AsString := FrmPrincipal.NomeUser;
  Table_Backup.FieldByName('Usu_Nivel').AsInteger   := FrmPrincipal.Nivel;

  If FrmPrincipal.Nivel = 1 then
    Table_Backup.FieldByName('Descricao_Nivel').Value := 'Supervisor'
  Else If FrmPrincipal.Nivel = 2 then
    Table_Backup.FieldByName('Descricao_Nivel').Value := 'Gerência'
  Else If FrmPrincipal.Nivel = 1 then
    Table_Backup.FieldByName('Descricao_Nivel').Value := 'Operacional';

  Table_Backup.Post;
  Table_Backup.Refresh;
  Table_Backup.Close;

  //---

  If ( Plataforma() <> 'WINDOWS NT') And ( Plataforma() <> 'WINDOWS VISTA') then
    begin
      If DayofWeek(Date) = 1 then
        begin
          cTexto := 'COMMAND.COM /C COPY '+FrmPrincipal.cDiretorioAlias+'*.* '+RetornaCaminhoAlias('Pizza')+'\Backup\Domingo /V /Y';
          WinExec(PChar(cTexto), SW_HIDE );
        end
      Else If (DayofWeek(Date) = 2 ) Or (DayofWeek(Date) = 5 ) then
        begin
          cTexto := 'COMMAND.COM /C COPY '+FrmPrincipal.cDiretorioAlias+'*.* '+RetornaCaminhoAlias('Pizza')+'\Backup\SegQuint /V /Y';
          WinExec(PChar(cTexto), SW_HIDE );
        end
      Else If (DayofWeek(Date) = 3 ) Or (DayofWeek(Date) = 6 ) then
        begin
          cTexto := 'COMMAND.COM /C COPY '+FrmPrincipal.cDiretorioAlias+'*.* '+RetornaCaminhoAlias('Pizza')+'\Backup\TerSexta /V /Y';
          WinExec(PChar(cTexto), SW_HIDE );
        end
      Else If (DayofWeek(Date) = 4 ) Or (DayofWeek(Date) = 7 ) then
        begin
          cTexto := 'COMMAND.COM /C COPY '+FrmPrincipal.cDiretorioAlias+'*.* '+RetornaCaminhoAlias('Pizza')+'\Backup\Quarsaba /V /Y';
          WinExec(PChar(cTexto), SW_HIDE );
        end;
    end
  Else
    begin

      If DayofWeek(Date) = 1 then
        begin
          cTexto := 'CMD.EXE START /c COPY '+FrmPrincipal.cDiretorioAlias+'*.* '+RetornaCaminhoAlias('Pizza')+'\Backup\Domingo /V /Y';
          WinExec(PChar(cTexto), SW_HIDE )
        end
      Else If (DayofWeek(Date) = 2 ) Or (DayofWeek(Date) = 5 ) then
        begin
          cTexto := 'CMD.EXE START /c COPY '+FrmPrincipal.cDiretorioAlias+'*.* '+RetornaCaminhoAlias('Pizza')+'\Backup\SegQuint /V /Y';
          WinExec(PChar(cTexto), SW_HIDE )
        end
      Else If (DayofWeek(Date) = 3 ) Or (DayofWeek(Date) = 6 ) then
        begin
          cTexto := 'CMD.EXE START /c COPY '+FrmPrincipal.cDiretorioAlias+'*.* '+RetornaCaminhoAlias('Pizza')+'\Backup\TerSexta /V /Y';
          WinExec(PChar(cTexto), SW_HIDE )
        end
      Else If (DayofWeek(Date) = 4 ) Or (DayofWeek(Date) = 7 ) then
        begin
          cTexto := 'CMD.EXE START /c COPY '+FrmPrincipal.cDiretorioAlias+'*.* '+RetornaCaminhoAlias('Pizza')+'\Backup\QuarSaba /V /Y';
          WinExec(PChar(cTexto), SW_HIDE )
        end;
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Table_BackupAfterPost(DataSet: TDataSet);
Var
 Retorno : integer;

Begin

  Retorno := DBISaveChanges( Table_Backup.Handle );
  Table_Backup.FlushBuffers;

  If Retorno = DBIERR_NODISKSPACE then
    begin
      TocaSom(8);
      MessageDlg('Atenção....'+#13+#13+'A última inclusão/alteração de dados (Backup.db) NÃO PODE SER CONCLUÍDA'+#13+'COM SUCESSO DEVIDO A FALTA DE ESPAÇO EM DISCO!!!!'+#13+#13+'Libere espaço e reexecute esta modificação!'+#13+#13+'Qualquer dúvida, contacte suporte...', mtError, [mbOk], 0 );
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Limpa_Images_Piscantes( lAtiva :Boolean );
begin

  If lAtiva then
    begin
     Image1.Visible  := False;
     Image2.Visible  := False;
     Image11.Visible := False;
     Image17.Visible := False;
     Image14.Visible := False;
     Image22.Visible := False;
     Image13.Visible := False;
     Image16.Visible := False;
     Image15.Visible := False;
     Image18.Visible := False;
     Image19.Visible := False;
    end
  Else
    begin
     Image1.Visible  := True;
     Image2.Visible  := True;
     Image11.Visible := True;
     Image17.Visible := True;
     Image14.Visible := True;
     Image22.Visible := True;
     Image13.Visible := True;
     Image16.Visible := True;
     Image15.Visible := True;
     Image18.Visible := True;
     Image19.Visible := True;
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.GerenciadorBematechdeComandos1Click(Sender: TObject);
begin

  FrmImpressoraFiscal := TFrmImpressoraFiscal.Create(Application);
  FrmImpressoraFiscal.Showmodal;
  FreeAndNil(FrmImpressoraFiscal);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.ComandosPrincipais1Click(Sender: TObject);
begin

  FrmImpressoraFiscalPrincipaisComandos := TFrmImpressoraFiscalPrincipaisComandos.Create(Application);
  FrmImpressoraFiscalPrincipaisComandos.Showmodal;
  FreeAndNil(FrmImpressoraFiscalPrincipaisComandos);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.ZeraestoquedeMateriaprima1Click(Sender: TObject);
begin

  Alerta('Confirmacao');
  If MessageDlg('Tem certeza de que deseja realmente zerar o estoque de todas as matérias-primas ?'+#13+#13+'(Todos as MP´s, sem excessão, ficarão com estoque atual zerado !)', mtConfirmation, [mbYes, mbNo], 0 ) = mrNO then Exit;

  Table_MateriaPrima.Open;

  Table_MateriaPrima.First;

  ProgressBar_ZeraEstoque.Visible := True;
  ProgressBar_ZeraEstoque.Min     := 0;
  ProgressBar_ZeraEstoque.Max     := Table_MateriaPrima.RecordCount;

  While Not(Table_MateriaPrima.Eof) do
    begin
      Table_MateriaPrima.Edit;
      Table_MateriaPrima.FieldByName('Mat_EstoqueSaida').AsFloat := 0;
      Table_MateriaPrima.Post;
      Table_MateriaPrima.Refresh;

      ProgressBar_ZeraEstoque.Position := Table_MateriaPrima.RecNo;

      Table_MateriaPrima.Next;
    end;

  Table_MateriaPrima.Close;

  ProgressBar_ZeraEstoque.Position := 0;
  ProgressBar_ZeraEstoque.Visible  := True;

  Alerta('Sucesso');
  MessageDlg('Estoque atual de todos as MP´s foi zerado !!!'+#13+#13+'Procedimento realizado com sucesso !', mtInformation, [mbOk], 0 );
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.AutoEstoquedeMateriaprima1Click(Sender: TObject);
begin

  FrmAutoEstoqueMateriaPrima := TFrmAutoEstoqueMateriaPrima.Create(Application);
  FrmAutoEstoqueMateriaPrima.Showmodal;
  FreeAndNil(FrmAutoEstoqueMateriaPrima);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.CouvertArtistico1Click(Sender: TObject);
Var
  cStatus, cTransferencia_mesa :string;
begin

  If (Verifica_LimiteRegistros('VENDA') = True) then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  // Verifica se o sistema está configurado para trabalhar com Couvert artístico.
  // Se não, ele não permite acessar este relatório.

  If FrmPrincipal.Par_UtilizaCouvert = 'N' then
    begin
      Alerta('Erro Leve');
      MessageDlg('Atenção...'+#13+#13+'Este relatório pode ser emitido SOMENTE quando o sistema está configurado para Utilização de Couvert Artístico, e no momento não está !'+#13+#13+'Verifique !!!', mtError, [mbOk], 0 );
      Exit;
    end;

  FrmS_RelCouvertArtistico := TFrmS_RelCouvertArtistico.Create(Application);
  FrmS_RelCouvertArtistico.Showmodal;
  FreeAndNil(FrmS_RelCouvertArtistico);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.RankingdeFuncionarios1Click(Sender: TObject);
begin

  If (Verifica_LimiteRegistros('VENDA') = True) then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  //If Par_MultiplosGarconsnaVenda = 'N' then
  //  begin
  //    Alerta('Erro Leve');
  //    MessageDlg('Atenção...'+#13+#13+'O sistema não está configurado para trabalhar com múltiplos garçons nas vendas !'+#13+#13+'Porisso é impossível a emissão deste relatório de Ranking de vendas de produtos por parte dos funcionários !', mtError, [mbOk], 0 );
  //    Exit;
  //  end;

  FrmS_RelRankingFuncionarios := TFrmS_RelRankingFuncionarios.Create(Application);
  FrmS_RelRankingFuncionarios.Showmodal;
  FreeAndNil(FrmS_RelRankingFuncionarios);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.EntradadeMateriaprimaemestoque1Click(Sender: TObject);
begin

  FrmNotaEntradaEstoqueMP := TFrmNotaEntradaEstoqueMP.Create(Application);
  FrmNotaEntradaEstoqueMP.Showmodal;
  FreeAndNil(FrmNotaEntradaEstoqueMP);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Verifica_Cria50Mesas;
Var
  I : integer;
  cNome : string;
begin

  If FrmPrincipal.Par_NomemclaturaMesa = 'Ficha' then
    Exit;

  //--

  If Table_Temp.Active then Table_Temp.Close;
  Table_Temp.DatabaseName := 'Pizza';
  cNome := Table_Temp.TableName;

  Table_Temp.TableName := 'Mesas.db';
  Table_Temp.Open;
  If Table_Temp.RecordCount > 0 then
    begin
      Table_Temp.Close;
      Table_Temp.TableName := cNome;
      Exit;
    end;

  Table_Temp.Close;
  Table_Temp.Exclusive := True;
  Table_Temp.Open;

  //--

  For I := 1 To 50 do
    begin
      Table_Temp.Insert;
      Table_Temp.FieldByName('Mes_Codi').AsInteger     := I;

      If I < 10 then
        Table_Temp.FieldByName('Mes_Descricao').AsString := 'MESA 0'+IntToStr(I)
      Else
        Table_Temp.FieldByName('Mes_Descricao').AsString := 'MESA '+IntToStr(I);

      Table_Temp.FieldByName('Mes_Status').AsString    := 'A';
      Table_Temp.Post;
      Table_Temp.Refresh;
    end;

  Table_Temp.Close;
  Table_Temp.Exclusive := False;
  Table_Temp.TableName := cNome;
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Checa_FinalidadeSistema();
begin

  // 1.Bar
  // 2.Conveniência
  // 3.Lanchonete
  // 4.Restaurante
  // 5.Pizzaria

  //--

  If Trim(Table_Parametro.FieldByName('Par_FinalidadeSistema').AsString) = 'Bar' then
    begin

      lErro := False;
      If (Table_Parametro.FieldByName('Par_ImagemEsquerda').Value <> Null) And (Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString <> '') then
        begin
          If FileExists(Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString) then
            Imagem_Esquerda.Picture.LoadFromFile( Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString )
          Else
            lErro := True;
        end;

      If (lErro = True) then
        begin
          If FileExists('C:\SysPizza\Images\Comida03.jpg') then
            Imagem_Esquerda.Picture.LoadFromFile('C:\SysPizza\Images\Comida03.jpg')
          Else If (FileExists('C:\SysPizza\Images\LogoEsquerda.jpg') = True) then
            Imagem_Esquerda.Picture.LoadFromFile( 'C:\SysPizza\Images\LogoEsquerda.jpg' )
          Else If FileExists('C:\SysPizza\Images\Img_Nula.bmp') then
            Imagem_Esquerda.Picture.LoadFromFile('C:\SysPizza\Images\Img_Nula.bmp')
          Else
            Imagem_Esquerda.visible := False;
        end;

      //--

      lErro := False;
      If (Table_Parametro.FieldByName('Par_ImagemDireita').Value <> Null) And (Table_Parametro.FieldByName('Par_ImagemDireita').AsString <> '') then
        begin
          If FileExists(Table_Parametro.FieldByName('Par_ImagemDireita').AsString) then
            Imagem_Direita.Picture.LoadFromFile( Table_Parametro.FieldByName('Par_ImagemDireita').AsString )
          Else
            lErro := True;
        end;

      If (lErro = True) then
        begin
          If FileExists('C:\SysPizza\Images\Garcom3.jpg') then
            Imagem_Direita.Picture.LoadFromFile('C:\SysPizza\Images\Garcom3.jpg')
          Else If (FileExists('C:\SysPizza\Images\LogoDireita.jpg') = True) then
            Imagem_Direita.Picture.LoadFromFile( 'C:\SysPizza\Images\LogoDireita.jpg' )
          Else If FileExists('C:\SysPizza\Images\Img_Nula.bmp') then
            Imagem_Direita.Picture.LoadFromFile('C:\SysPizza\Images\Img_Nula.bmp')
          Else
            Imagem_Direita.visible := False;
        end;

    end

  Else If Trim(Table_Parametro.FieldByName('Par_FinalidadeSistema').AsString) = 'Conveniência' then
    begin

      lErro := False;
      If (Table_Parametro.FieldByName('Par_ImagemEsquerda').Value <> Null) And (Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString <> '') then
        begin
          If FileExists(Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString) then
            Imagem_Esquerda.Picture.LoadFromFile( Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString )
          Else
            lErro := True;
        end;

      If (lErro = True) then
        begin
          If FileExists('C:\SysPizza\Images\Compras1.jpg') then
            Imagem_Esquerda.Picture.LoadFromFile('C:\SysPizza\Images\Compras1.jpg')
          Else If (FileExists('C:\SysPizza\Images\LogoEsquerda.jpg') = True) then
            Imagem_Esquerda.Picture.LoadFromFile( 'C:\SysPizza\Images\LogoEsquerda.jpg' )
          Else If FileExists('C:\SysPizza\Images\Img_Nula.bmp') then
            Imagem_Esquerda.Picture.LoadFromFile('C:\SysPizza\Images\Img_Nula.bmp')
          Else
            Imagem_Esquerda.visible := False;
        end;

      //--

      lErro := False;
      If (Table_Parametro.FieldByName('Par_ImagemDireita').Value <> Null) And (Table_Parametro.FieldByName('Par_ImagemDireita').AsString <> '') then
        begin
          If FileExists(Table_Parametro.FieldByName('Par_ImagemDireita').AsString) then
            Imagem_Direita.Picture.LoadFromFile( Table_Parametro.FieldByName('Par_ImagemDireita').AsString )
          Else
            lErro := True;
        end;

      If (lErro = True) then
        begin
          If FileExists('C:\SysPizza\Images\Conveniência.jpg') then
            Imagem_Direita.Picture.LoadFromFile('C:\SysPizza\Images\Conveniência.jpg')
          Else If (FileExists('C:\SysPizza\Images\LogoDireita.jpg') = True) then
            Imagem_Direita.Picture.LoadFromFile( 'C:\SysPizza\Images\LogoDireita.jpg' )
          Else If FileExists('C:\SysPizza\Images\Img_Nula.bmp') then
            Imagem_Direita.Picture.LoadFromFile('C:\SysPizza\Images\Img_Nula.bmp')
          Else
            Imagem_Direita.visible := False;
        end;

    end

  Else If Trim(Table_Parametro.FieldByName('Par_FinalidadeSistema').AsString) = 'Lanchonete' then
    begin

      lErro := False;
      If (Table_Parametro.FieldByName('Par_ImagemEsquerda').Value <> Null) And (Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString <> '') then
        begin
          If FileExists(Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString) then
            Imagem_Esquerda.Picture.LoadFromFile( Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString )
          Else
            lErro := True;
        end;

      If (lErro = True) then
        begin
          If FileExists('C:\SysPizza\Images\Alim005.jpg') then
            Imagem_Esquerda.Picture.LoadFromFile('C:\SysPizza\Images\Alim005.jpg')
          Else If (FileExists('C:\SysPizza\Images\LogoEsquerda.jpg') = True) then
            Imagem_Esquerda.Picture.LoadFromFile( 'C:\SysPizza\Images\LogoEsquerda.jpg' )
          Else If FileExists('C:\SysPizza\Images\Img_Nula.bmp') then
            Imagem_Esquerda.Picture.LoadFromFile('C:\SysPizza\Images\Img_Nula.bmp')
          Else
            Imagem_Esquerda.visible := False;
        end;

      //--

      lErro := False;
      If (Table_Parametro.FieldByName('Par_ImagemDireita').Value <> Null) And (Table_Parametro.FieldByName('Par_ImagemDireita').AsString <> '') then
        begin
          If FileExists(Table_Parametro.FieldByName('Par_ImagemDireita').AsString) then
            Imagem_Direita.Picture.LoadFromFile( Table_Parametro.FieldByName('Par_ImagemDireita').AsString )
          Else
            lErro := True;
        end;

      If (lErro = True) then
        begin
          If FileExists('C:\SysPizza\Images\SysLanche.jpg') then
            Imagem_Direita.Picture.LoadFromFile('C:\SysPizza\Images\SysLanche.jpg')
          Else If (FileExists('C:\SysPizza\Images\LogoDireita.jpg') = True) then
            Imagem_Direita.Picture.LoadFromFile( 'C:\SysPizza\Images\LogoDireita.jpg' )
          Else If FileExists('C:\SysPizza\Images\Img_Nula.bmp') then
            Imagem_Direita.Picture.LoadFromFile('C:\SysPizza\Images\Img_Nula.bmp')
          Else
            Imagem_Direita.visible := False;
        end;

    end

  Else If Trim(Table_Parametro.FieldByName('Par_FinalidadeSistema').AsString) = 'Restaurante' then
    begin

      lErro := False;
      If (Table_Parametro.FieldByName('Par_ImagemEsquerda').Value <> Null) And (Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString <> '') then
        begin
          If FileExists(Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString) then
            Imagem_Esquerda.Picture.LoadFromFile( Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString )
          Else
            lErro := True;
        end;

      If (lErro = True) then
        begin
          If FileExists('C:\SysPizza\Images\Mesa.jpg') then
            Imagem_Esquerda.Picture.LoadFromFile('C:\SysPizza\Images\Mesa.jpg')
          Else If (FileExists('C:\SysPizza\Images\LogoEsquerda.jpg') = True) then
            Imagem_Esquerda.Picture.LoadFromFile( 'C:\SysPizza\Images\LogoEsquerda.jpg' )
          Else If FileExists('C:\SysPizza\Images\Img_Nula.bmp') then
            Imagem_Esquerda.Picture.LoadFromFile('C:\SysPizza\Images\Img_Nula.bmp')
          Else
            Imagem_Esquerda.visible := False;
        end;

      //--

      lErro := False;
      If (Table_Parametro.FieldByName('Par_ImagemDireita').Value <> Null) And (Table_Parametro.FieldByName('Par_ImagemDireita').AsString <> '') then
        begin
          If FileExists(Table_Parametro.FieldByName('Par_ImagemDireita').AsString) then
            Imagem_Direita.Picture.LoadFromFile( Table_Parametro.FieldByName('Par_ImagemDireita').AsString )
          Else
            lErro := True;
        end;

      If (lErro = True) then
        begin
          If FileExists('C:\SysPizza\Images\Garcom2.jpg') then
            Imagem_Direita.Picture.LoadFromFile('C:\SysPizza\Images\Garcom2.jpg')
          Else If (FileExists('C:\SysPizza\Images\LogoDireita.jpg') = True) then
            Imagem_Direita.Picture.LoadFromFile( 'C:\SysPizza\Images\LogoDireita.jpg' )
          Else If FileExists('C:\SysPizza\Images\Img_Nula.bmp') then
            Imagem_Direita.Picture.LoadFromFile('C:\SysPizza\Images\Img_Nula.bmp')
          Else
            Imagem_Direita.visible := False;
        end;

    end

  Else If Trim(Table_Parametro.FieldByName('Par_FinalidadeSistema').AsString) = 'Pizzaria' then
    begin

      lErro := False;
      If (Table_Parametro.FieldByName('Par_ImagemEsquerda').Value <> Null) And (Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString <> '') then
        begin
          If FileExists(Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString) then
            Imagem_Esquerda.Picture.LoadFromFile( Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString )
          Else
            lErro := True;
        end;

      If (lErro = True) then
        begin
          If FileExists('C:\SysPizza\Images\LogoEsquerda.jpg') then
            Imagem_Esquerda.Picture.LoadFromFile('C:\SysPizza\Images\LogoEsquerda.jpg')
          Else If FileExists('C:\SysPizza\Images\Img_Nula.bmp') then
            Imagem_Esquerda.Picture.LoadFromFile('C:\SysPizza\Images\Img_Nula.bmp')
          Else
            Imagem_Esquerda.visible := False;
        end;

      //--

      lErro := False;
      If (Table_Parametro.FieldByName('Par_ImagemDireita').Value <> Null) And (Table_Parametro.FieldByName('Par_ImagemDireita').AsString <> '') then
        begin
          If FileExists(Table_Parametro.FieldByName('Par_ImagemDireita').AsString) then
            Imagem_Direita.Picture.LoadFromFile( Table_Parametro.FieldByName('Par_ImagemDireita').AsString )
          Else
            lErro := True;
        end;

      If (lErro = True) then
        begin
          If FileExists('C:\SysPizza\Images\LogoDireita.jpg') then
            Imagem_Direita.Picture.LoadFromFile('C:\SysPizza\Images\LogoDireita.jpg')
          Else If FileExists('C:\SysPizza\Images\Img_Nula.bmp') then
            Imagem_Direita.Picture.LoadFromFile('C:\SysPizza\Images\Img_Nula.bmp')
          Else
            Imagem_Direita.visible := False;
        end;

    end;

  Imagem_Esquerda.Refresh;
  Imagem_Direita.Refresh;

  //---


  If (Table_Parametro.FieldByName('Par_FinalidadeSistema').AsString = 'Nenhum') Or (Table_Parametro.FieldByName('Par_FinalidadeSistema').Value = Null) then
    Label_NomeTipoSistema.Caption := 'Sistema de Pizzarias, Bares, Lanchonetes, Conveniências e Restaurantes'
  Else
    Label_NomeTipoSistema.Caption := 'Sistema de Controle de ['+Trim(Table_Parametro.FieldByName('Par_FinalidadeSistema').AsString)+']';

  Label_NomeTipoSistema.Refresh;
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.EmissaodeRecibo1Click(Sender: TObject);
begin

  If (Verifica_LimiteRegistros('VENDA') = True) then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmS_ImpressaoRecibo := TFrmS_ImpressaoRecibo.Create(Application);
  FrmS_ImpressaoRecibo.Showmodal;
  FreeAndNil(FrmS_ImpressaoRecibo);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Libera_Usuario;
begin

  If FrmAcess.Table_Usuario.Active = False then
    FrmAcess.Table_Usuario.Active := True;


  If FrmAcess.Table_Usuario.Locate('Usu_Codi', Cod_User, []) then
    begin
      If NetErr( FrmAcess.Table_Usuario, 'A', 'Usuário') = False then
        begin
          Alerta('Erro Leve');
          MessageDlg('Atenção...'+#13+#13+'Impossível desconectar este usuário do sistema !'+#13+#13+'Contacte suporte para maiores esclarecimentos !', mtError, [mbOk], 0 );
          Exit;
        end;

      FrmAcess.Table_Usuario.FieldByName('Usu_EmUso').AsString := 'N';
      FrmAcess.Table_Usuario.Post;
      FrmAcess.Table_Usuario.Refresh;
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Materiaprima3Click(Sender: TObject);
begin

  Alerta('Confirmacao');
  If MessageDlg('Deseja emitir a relação de Matérias-primas ?', mtConfirmation,[mbYES,mbNO],0) = mrNO then Exit;

  //--

  FrmL_MateriaPrima := TFrmL_MateriaPrima.Create(Application);

  FrmL_MateriaPrima.Table_MateriaPrima.Open;

  FrmL_MateriaPrima.QuickRepL_MateriaPrima.Preview;
  FrmL_MateriaPrima.QuickRepL_MateriaPrima.CleanUpInstance;

  FrmL_MateriaPrima.Table_MateriaPrima.Close;

  FreeAndNil(FrmL_MateriaPrima);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Produtos2Click(Sender: TObject);
begin

  FrmS_RelProdutos := TFrmS_RelProdutos.Create(Application);
  FrmS_RelProdutos.Showmodal;
  FreeAndNil(FrmS_RelProdutos);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.SobreoSistema1Click(Sender: TObject);
begin

  FrmSobre := TFrmSobre.Create(Application);
  FrmSobre.Showmodal;
  FreeAndNil(FrmSobre);

  //--

  If lRegistrouSistema then
    begin

      If Verifica_Registrado_RegWinDemo() then
        begin
          Panel_Rotulo.Color         := $00FFECC4;
          Panel_Rotulo.Font.Color    := clBlack;
          Panel_Rotulo.Caption       := 'OBRIGADO POR REGISTRAR O SYSPIZZA® !';
        end;


      Table_Parametro.Close;
      Table_Parametro.Open;
      If Table_Parametro.FieldByName('Texto_Rolagem').Value <> Null then
        Frase_Rolagem := Table_Parametro.FieldByName('Texto_Rolagem').AsString;

      Carrega_Texto_Scroll();
    end;

end;

//****----****----****----****----****----****----****----****----****----****//

function TFrmPrincipal.Instala_RegWin( cTipoAcao : string ) : Boolean;
var
  Reg: TRegistry;
begin

  // Objetivo: Grava o texto: MatrixCode31051975Syspizza criptografado
  //           no registro do Windows criando uma chave titulada:
  //
  //           Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_
  //
  //            (que quer dizer: MatrixCode31051975Syspizza)
  //
  //          Ativado quando na instalação a 11ª trava é ativada...
  //

  Reg := TRegistry.Create;

  Try
    Try
      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      If cTipoAcao = 'G' then  // deve gravar...
        begin
          { Abre a chave (path). Se não existir, cria e abre. }
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_', True);
          
          { Escreve um inteiro }
          //Reg.WriteInteger('Tipo Instalação', StrToInt(Edit1.Text));

          { Escreve uma string }
          Reg.WriteString('¶µ¥¢_±_¹ß', '¥');  // Instalado = 'S'
          Result := True;
        end

      Else if cTipoAcao = 'L' then // deve ler...
        begin
          If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_') then
            begin
              Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_', false);

              If Reg.ValueExists('¶µ¥¢_±_¹ß') then
                begin
                  If Reg.ReadString('¶µ¥¢_±_¹ß') = MudaCaracter('E', 'S') then
                    Result := True
                  Else
                    Result := False;
                end;
            end
          Else
            Result := False;
        end

      Else if cTipoAcao = 'D' then // deve deletar...
        begin
          If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_') then
            Reg.DeleteKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_');

          Result := True;
        end
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101A1 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
      Result := False;
    end;
  Finally
    Reg.Free;
  end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Instala_RegWinDemo( cTipoAcao : string; nQtdeInstalacao, nQtdeInstalacoesPermitidas, nQtdeDiasValidade, nQtdeMaximaExecucoes, nQtdeMaximaRegistrosSistemaCAD, nQtdeMaximaRegistrosSistemaMOV, NumExecucaoAtual : integer; lgRegistro : Boolean ) : Boolean;
var
  Reg: TRegistry;
  cInstalado : String;
begin

  // Objetivo: Grava o texto: MatrixCode31051975SyspizzaDemo criptografado
  //           no registro do Windows criando uma chave titulada:
  //
  //           Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß
  //
  //            (que quer dizer: MatrixCode31051975SyspizzaDemo)
  //
  // Serve para informar se esta cópia já foi instalada via parâmetro "Demo"
  // para evitar usuário repetir o processo mais de 1 vez...
  // Grava várias informações de controle necessários a validação da execução da cópia.
  //

  //

  // Se nQtdeInstalacoesPermitidas     = 000, qtde. indefinida.
  // Se nQtdeDiasValidade              = 000, prazo indefinido.
  // Se nQtdeMaximaExecucoes           = 000, prazo indefinido.
  // Se nQtdeMaximaRegistrosSistemaCAD = 000, qtde. indefinida.
  // Se nQtdeMaximaRegistrosSistemaMOV = 000, qtde. indefinida.
  //

  //function TFrmPrincipal.Instala_RegWinDemo( cTipoAcao : string; nQtdeInstalacao, nQtdeInstalacoesPermitidas, nQtdeDiasValidade, nQtdeMaximaExecucoes, nQtdeMaximaRegistrosSistemaCAD, nQtdeMaximaRegistrosSistemaMOV, NumExecucaoAtual : integer ) : Boolean;

  //--

  Reg := TRegistry.Create;

  Try
    Try
      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      If cTipoAcao = 'G' then  // deve gravar...
        begin
          { Abre a chave (path). Se não existir, cria e abre. }
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', True);

          { Escreve uma string }
          Reg.WriteString('¶µ¥¢_±_¹ß',   MudaCaracter('E', 'S') );                                                              // Instalado
          Reg.WriteString('¶µ¥¢_±_²ß°¥', MudaCaracter('E', FormatFloat('00', nQtdeInstalacao) ) );                              // Instalacoes

          Reg.WriteString('ð¢¹°¶µ¥¢_±_²ß°¥Ð°¤Þ¶¢¶¹_¥', MudaCaracter('E', FormatFloat('00', nQtdeInstalacoesPermitidas) ) );     // QtdeInstalacoesPermitidas

          If nQtdeDiasValidade > 0 then
            begin
              If nQtdeInstalacao = 1 then
                begin
                  Reg.WriteString('¹_¢_×¶µ¥¢_±_}!ß¿',  MudaCaracter('E', DateToStr(Date())) );                                       // Data_Instalação1
                  Reg.WriteString('¹_¢_×±¶Þ¶¢°¿',      MudaCaracter('E', DateToStr( ((Date()+nQtdeDiasValidade-1)))) );              // Data_Limite1
                  Reg.WriteString('ð¢¹°¹¶_¥»_±¶¹_¹°¿', MudaCaracter('E', FormatFloat('00000', nQtdeDiasValidade)) );                 // QtdeDiasValidade1
                end
              Else If nQtdeInstalacao = 2 then
                begin
                  Reg.WriteString('¹_¢_×¶µ¥¢_±_}!ßº',  MudaCaracter('E', DateToStr(Date())) );                                       // Data_Instalação2
                  Reg.WriteString('¹_¢_×±¶Þ¶¢°º',      MudaCaracter('E', DateToStr( ((Date()+nQtdeDiasValidade-1)))) );              // Data_Limite2
                  Reg.WriteString('ð¢¹°¹¶_¥»_±¶¹_¹°º', MudaCaracter('E', FormatFloat('00000', nQtdeDiasValidade)) );                 // QtdeDiasValidade2
                end;
            end;

          Reg.WriteString('¹_¢_×©±¢_²°¥¥ß',        MudaCaracter('E', '') );                                                         // Data_UltAcesso

          //--

          If nQtdeMaximaExecucoes > 0 then
            begin
              If nQtdeInstalacao = 1 then
                begin
                  Reg.WriteString('¹_¢_×¶µ¥¢_±_}!ß¿',     MudaCaracter('E', DateToStr(Date())) );                                    // Data_Instalação1
                  Reg.WriteString('ð¢¹°Þ_«¶Þ_°«°²©²ß°¥¿', MudaCaracter('E', FormatFloat('00000', nQtdeMaximaExecucoes)) );           // QtdeMaximaExecucoes1
                  Reg.WriteString('µ©Þ°«°²©²_ß_¢©_±¿',    MudaCaracter('E', FormatFloat('00000', NumExecucaoAtual)) );               // NumExecucaoAtual1

                  // Grava string nulo neste outro campo, para ele pelo menos existir, para comparações futuras...
                  Reg.WriteString('ð¢¹°Þ_«¶Þ_°«°²©²ß°¥º', MudaCaracter('E', '0' ));                                                  // QtdeMaximaExecucoes2
                  Reg.WriteString('µ©Þ°«°²©²_ß_¢©_±º',    MudaCaracter('E', '0' ));                                                  // NumExecucaoAtual2
                end
              Else If nQtdeInstalacao = 2 then
                begin
                  Reg.WriteString('¹_¢_×¶µ¥¢_±_}!ßº',     MudaCaracter('E', DateToStr(Date())) );                                    // Data_Instalação2
                  Reg.WriteString('ð¢¹°Þ_«¶Þ_°«°²©²ß°¥º', MudaCaracter('E', FormatFloat('00000', nQtdeMaximaExecucoes)) );           // QtdeMaximaExecucoes2
                  Reg.WriteString('µ©Þ°«°²©²_ß_¢©_±º',    MudaCaracter('E', FormatFloat('00000', NumExecucaoAtual)) );               // NumExecucaoAtual2

                  // Grava string nulo neste outro campo, para ele pelo menos existir, para comparações futuras...
                  Reg.WriteString('ð¢¹°Þ_«¶Þ_°«°²©²ß°¥¿', MudaCaracter('E', '0' ));                                                  // QtdeMaximaExecucoes1
                  Reg.WriteString('µ©Þ°«°²©²_ß_¢©_±¿',    MudaCaracter('E', '0' ));                                                  // NumExecucaoAtual1
                end;
            end;

          If lgRegistro then
            Reg.WriteString('¤°÷¶¥¢¤_¹ß',   MudaCaracter('E', 'S') )                                                                 // Registrado
          Else
            Reg.WriteString('¤°÷¶¥¢¤_¹ß',   MudaCaracter('E', 'N') );                                                                // Registrado
            

          Reg.WriteString('ð¢¹°Þ_«¶Þ_¤°÷¶¥¢¤ß¥²_¹', MudaCaracter('E', FormatFloat('00000', nQtdeMaximaRegistrosSistemaCAD)) );       // QtdeMaximaRegistrosCad
          Reg.WriteString('ð¢¹°Þ_«¶Þ_¤°÷¶¥¢¤ß¥Þß»', MudaCaracter('E', FormatFloat('00000', nQtdeMaximaRegistrosSistemaMOV)) );       // QtdeMaximaRegistrosMov

          //--

          Result := True;
        end

      Else if cTipoAcao = 'L' then // deve ler...
        begin

          If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
            begin
              Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

              If Reg.ValueExists('¶µ¥¢_±_¹ß') then  // Se Instalado...
                begin
                  cInstalado := Reg.ReadString('¶µ¥¢_±_¹ß');

                  If MudaCaracter('D', cInstalado ) = 'S' then  // Lê chave "Instalado" e compara com valor = 'S' só que criptografado..
                    Result := True
                  Else
                    Result := False;
                end;
            end
          Else
            Result := False;
        end

      Else if cTipoAcao = 'D' then // deve deletar...
        begin
          If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
            Reg.DeleteKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß');

            Result := True;
        end;
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101A2 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
      Result := False;
    end;

  Finally
    Reg.Free;
  end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Atualiza_RegWinDemo_DataUltimoAcesso( cTipoAcao : String ) : Boolean;
var
  cDataUltimoAcesso : String;
  Reg: TRegistry;
begin

  // Objetivo: Grava o texto: MatrixCode31051975SyspizzaDemo criptografado
  //           no registro do Windows criando uma chave titulada:
  //
  //           Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß
  //
  //            (que quer dizer: MatrixCode31051975SyspizzaDemo)
  //
  // Serve para registrar ou ler a Data do último acesso ao sistema.

  Reg := TRegistry.Create;

  Try
    Try
      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      { Abre a chave (path). Se não existir, cria e abre. }
      Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', True);

      If cTipoAcao = 'G' then
        { Escreve uma string }
        Reg.WriteString('¹_¢_×©±¢_²°¥¥ß', MudaCaracter('E', DateToStr(Date())) ) // Data_UltAcesso
      Else If cTipoAcao = 'L' then
        cDataUltimoAcesso := MudaCaracter('D', Reg.ReadString('¹_¢_×©±¢_²°¥¥ß') );

      //--

      Result := True;
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101A3 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
      Result := False;
    end;
  Finally
    Reg.Free;
  end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Retorna_RegWinDemo_DataUltimoAcesso() : String;
var
  Reg: TRegistry;
begin

  // Serve para ler a Data do último acesso ao sistema.

  Reg := TRegistry.Create;

  Try
    Try
      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      { Se existe esta chave }
      If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
        begin
          { Abre a chave (path). Se não existir, cria e abre. }
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', True);
          Result := MudaCaracter('D', Reg.ReadString('¹_¢_×©±¢_²°¥¥ß') );
        end
      Else
        Result := 'nil';
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101A3 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
      Result := 'nil';
    end;
  Finally
    Reg.Free;
  end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Atualiza_RegWinDemo_QtdeExecucoes( nQtdeExecucoes : integer ) : Boolean;
var
  Reg: TRegistry;
  nQtdeMaximaExecucoes2, nNumeroExecucaoAtual2, nNumeroExecucaoAtual1 : integer;
begin

  // Objetivo: Grava o texto: MatrixCode31051975SyspizzaDemo criptografado
  //           no registro do Windows criando uma chave titulada:
  //
  //           Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß
  //
  //            (que quer dizer: MatrixCode31051975SyspizzaDemo)
  //
  // Serve para

  Reg := TRegistry.Create;

  Try
    Try
      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      //--

      If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
        begin
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

          //--

          If nQtdeExecucoes > 0 then                        
            begin
              If Reg.ValueExists('ð¢¹°Þ_«¶Þ_°«°²©²ß°¥º') then  // QtdeMaximaExecucoes2
                nQtdeMaximaExecucoes2 := StrToInt( MudaCaracter('D', Reg.ReadString('ð¢¹°Þ_«¶Þ_°«°²©²ß°¥º') ));

              If Reg.ValueExists('µ©Þ°«°²©²_ß_¢©_±º') then  // NumExecucaoAtual2
                nNumeroExecucaoAtual2 := StrToInt( MudaCaracter('D', Reg.ReadString('µ©Þ°«°²©²_ß_¢©_±º') ) );

              If Reg.ValueExists('µ©Þ°«°²©²_ß_¢©_±¿') then  // NumExecucaoAtual1
                nNumeroExecucaoAtual1 := StrToInt( MudaCaracter('D', Reg.ReadString('µ©Þ°«°²©²_ß_¢©_±¿') ) );

              //--

              If (nQtdeMaximaExecucoes2 > 0) and (nNumeroExecucaoAtual2 > 0) then  // Incremente a NumeroExecucaoAtual2
                Reg.WriteString('µ©Þ°«°²©²_ß_¢©_±º', MudaCaracter('E', FormatFloat('00000', (nNumeroExecucaoAtual2+1) )) ) // NumExecucaoAtual2
              Else
                Reg.WriteString('µ©Þ°«°²©²_ß_¢©_±¿', MudaCaracter('E', FormatFloat('00000', (nNumeroExecucaoAtual1+1) )) ); // NumExecucaoAtual1
            end
          Else
            begin
              If (Retorna_Data1Instalacao_RegWinDemo() <> '') and (Retorna_Data2Instalacao_RegWinDemo() = '') then
                Reg.WriteString('µ©Þ°«°²©²_ß_¢©_±¿', MudaCaracter('E', FormatFloat('00000', nQtdeExecucoes) ) ) // NumExecucaoAtual1
              Else If (Retorna_Data2Instalacao_RegWinDemo() = '') then
                Reg.WriteString('µ©Þ°«°²©²_ß_¢©_±º', MudaCaracter('E', FormatFloat('00000', nQtdeExecucoes) ) ); // NumExecucaoAtual2
            end;

          Result := True;
        end
      Else
        Result := False;
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101A4 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);

      Result := False;
    end;
  Finally
    Reg.Free;
  end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Retorna_QtdeInstalacoes_RegWinDemo() : integer;
var
  Reg: TRegistry;
  nQtde, Code : integer;
  cQtdeExecucoes : String;
begin

  // Objetivo: Retorna a qtde. de instalações efetuadas via parâmetro DEMO.
  //           Procura a chave Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß (MATRIXCODE31051975SYSPIZZADEMO)
  //           e verifica a qtde. de instalações já efetuadas...
  //
  //
  //

  nQtde := 0;
  Reg   := TRegistry.Create;

  Try
    Try
      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
        begin
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

          If Reg.ValueExists('¶µ¥¢_±_²ß°¥') then
            begin
              cQtdeExecucoes := Reg.ReadString('¶µ¥¢_±_²ß°¥');
              Val( MudaCaracter('D', cQtdeExecucoes), nQtde, code );
            end;
        end
      Else
        nQtde := 0;
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101A5 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
      nQtde := 0;
    end;

  Finally
    Reg.Free;
  end;

  Result := nQtde;
end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Retorna_QtdeInstalacoesPermitidas_RegWinDemo() : integer;
var
  Reg: TRegistry;
  nQtdeInstalacoesPermitidas, Code : integer;
  cQtdeExecucoesPermitidas : String;
begin

  // Objetivo: Retorna a qtde. de instalações permitidas que podem ser efetuadas via parâmetro DEMO.
  //           Procura a chave ð¢¹°¶µ¥¢_±_²ß°¥Ð°¤Þ¶¢¶¹_¥ e verifica a qtde. de instalações permitidas...
  //
  //

  //--

  nQtde := 0;
  Reg   := TRegistry.Create;

  Try
    Try
      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
        begin
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

          If Reg.ValueExists('ð¢¹°¶µ¥¢_±_²ß°¥Ð°¤Þ¶¢¶¹_¥') then
            begin
              cQtdeExecucoesPermitidas := Reg.ReadString('ð¢¹°¶µ¥¢_±_²ß°¥Ð°¤Þ¶¢¶¹_¥');

              Val( MudaCaracter('D', cQtdeExecucoesPermitidas), nQtdeInstalacoesPermitidas, code );
            end;

        end
      Else
        Result := 0;
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101A6 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
      Result := 0;
    end;

  Finally
    Reg.Free;
  end;

  Result := nQtdeInstalacoesPermitidas;
end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Retorna_Data1Instalacao_RegWinDemo() : String;
Var
  Reg: TRegistry;
begin

  // Objetivo: Retorna a qtde. de instalações efetuadas via parâmetro DEMO.
  //           Procura a chave Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß e verifica a
  //           qtde. de instalações já efetuadas...
  //
  //
  //

  nQtde := 0;

  Try
    Try
      Reg   := TRegistry.Create;

      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
        begin
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

          If Reg.ValueExists('¹_¢_×¶µ¥¢_±_}!ß¿') then
            Result := MudaCaracter('D', Reg.ReadString('¹_¢_×¶µ¥¢_±_}!ß¿') );
        end
      Else
        Result := 'nil';
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101A7 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
      Result := 'nil';
    end;

  Finally
    Reg.Free;
  end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Retorna_DataLimite1_RegWinDemo() : String;
var
  Reg: TRegistry;
  cDataLimite1 : String;
begin

  // Objetivo: Retorna a data limite de execução do sistema
  //           Procura a chave Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß e verifica a data
  //           limite que permite executar o sistema...
  //
  //
  //

  Reg   := TRegistry.Create;

  Try
    Try
      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
        begin
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

          If Reg.ValueExists('¹_¢_×±¶Þ¶¢°¿') then
            begin
              cDataLimite1 := MudaCaracter('D', Reg.ReadString('¹_¢_×±¶Þ¶¢°¿'));

              Result := cDataLimite1;
            end
          Else
            Result := 'nil';

        end
      Else
        Result := 'nil';
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101A8 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);

      Result := 'nil';
    end;

  Finally
    Reg.Free;
  end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Retorna_Data2Instalacao_RegWinDemo() : String;
var
  Reg: TRegistry;
  cData2Instalacao : String;
begin

  // Objetivo: Retorna a qtde. de instalações efetuadas via Registro Windows...
  //           Procura a chave Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß e verifica a
  //           qtde. de instalações já efetuadas...
  //
  //
  //

  Reg   := TRegistry.Create;

  Try
    Try
      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
        begin
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

          If Reg.ValueExists('¹_¢_×¶µ¥¢_±_}!ßº') then
            begin
              cData2Instalacao := MudaCaracter('D', Reg.ReadString('¹_¢_×¶µ¥¢_±_}!ßº'));

              Result := cData2Instalacao;
            end;

        end
      Else
        Result := 'nil';
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101A9 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
      Result := 'nil';
    end;

  Finally
    Reg.Free;
  end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Retorna_DataLimite2_RegWinDemo() : String;
var
  Reg: TRegistry;
  cDataLimite1 : String;
begin

  // Objetivo: Retorna a data limite de execução do sistema
  //           Procura a chave Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß e verifica a data
  //           limite que permite executar o sistema...
  //
  //
  //

  Reg   := TRegistry.Create;

  Try
    Try

      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
        begin
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

          If Reg.ValueExists('¹_¢_×±¶Þ¶¢°º') then
            begin
              cDataLimite1 := MudaCaracter('D', Reg.ReadString('¹_¢_×±¶Þ¶¢°º'));

              Result := cDataLimite1;
            end
          Else
            Result := 'nil';
        end
      Else
        Result := 'nil';
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101B0 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
      Result := 'nil';
    end;

  Finally
    Reg.Free;
  end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Retorna_QtdeMaximaExecucoes1_RegWinDemo() : Integer;
var
  Reg: TRegistry;
  cNumeroExecucoes : String;
begin

  // Objetivo: Retorna a qtde. máxima de execuções permitidas via parâmetro DEMO.
  //           Procura a chave Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß e verifica a
  //           qtde. de instalações já efetuadas...
  //
  //
  //

  Reg   := TRegistry.Create;

  Try
    Try
      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
        begin
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

          If Reg.ValueExists('ð¢¹°Þ_«¶Þ_°«°²©²ß°¥¿') then
            begin
              cNumeroExecucoes := MudaCaracter('D', Reg.ReadString('ð¢¹°Þ_«¶Þ_°«°²©²ß°¥¿'));

              Result := StrToInt(cNumeroExecucoes);
            end;

        end
      Else
        Result := 0;
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101B1 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
      Result := 0;
    end;

  Finally
    Reg.Free;
  end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Retorna_NumExecucaoAtual1_RegWinDemo() : Integer;
var
  Reg: TRegistry;
  nNumeroExecucao : String;
begin

  // Objetivo: Retorna o número da última execução do sistema.
  //           Procura a chave Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß e verifica a
  //           qtde. de instalações já efetuadas...
  //
  //
  //

  Reg   := TRegistry.Create;

  Try
    Try
      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
        begin
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

          If Reg.ValueExists('µ©Þ°«°²©²_ß_¢©_±¿') then
            begin
              nNumeroExecucao := MudaCaracter('D', Reg.ReadString('µ©Þ°«°²©²_ß_¢©_±¿') );

              Result := StrToInt(nNumeroExecucao);
            end;

        end
      Else
        Result := 0;
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101B2 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
      Result := 0;
    end;

  Finally
    Reg.Free;
  end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Retorna_QtdeMaximaExecucoes2_RegWinDemo() : Integer;
var
  Reg: TRegistry;
  cNumeroExecucoes : String;
begin

  // Objetivo: Retorna a qtde. máxima de execuções permitidas numa 2ª instalação, caso
  //           ocorra.
  //           Procura a chave Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß e verifica a
  //           qtde. de instalações já efetuadas...
  //
  //
  //

  Reg   := TRegistry.Create;

  Try
    Try
      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
        begin
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

          If Reg.ValueExists('ð¢¹°Þ_«¶Þ_°«°²©²ß°¥º') then
            begin
              cNumeroExecucoes := MudaCaracter('D', Reg.ReadString('ð¢¹°Þ_«¶Þ_°«°²©²ß°¥º'));

              Result := StrToInt(cNumeroExecucoes);
            end;

        end
      Else
        Result := 0;
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101B3 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
      Result := 0;
    end;

  Finally
    Reg.Free;
  end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Retorna_NumExecucaoAtual2_RegWinDemo() : Integer;
var
  Reg: TRegistry;
  nNumeroExecucao : String;
begin

  // Objetivo: Retorna o número da execução atual do sistema após uma 2ª instalação.
  //           Procura a chave Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß e realiza as verificações...
  //
  //

  Reg   := TRegistry.Create;

  Try
    Try
      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
        begin
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

          If Reg.ValueExists('µ©Þ°«°²©²_ß_¢©_±º') then
            begin
              nNumeroExecucao := MudaCaracter('D',Reg.ReadString('µ©Þ°«°²©²_ß_¢©_±º'));

              Result := StrToInt(nNumeroExecucao);
            end;

        end
      Else
        Result := 0;
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101B4 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
      Result := 0;
    end;

  Finally
    Reg.Free;
  end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Retorna_QtdeMaximaRegistrosRegWin( cTipoRegistro : String ) : integer;
var
  nQtdeMaximaRegistrosRegWin, nQtdeMaximaRegistrosTableValidade, nQtdeMaximaRegistrosArquivoOculto : Integer;
  cDataUltimaInstalacao : String;
  Reg: TRegistry;
begin

  // Objetivo: Retorna a qtde. máxima de registros permitida.
  //           Procura a chave Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß e verifica a
  //           qtde. máxima de registros que está permitida...
  //

  If FrmAcess.Retorna_Tipo_Instalacao_Vigente() = 'USO ILIMITADO' then
    begin
      Result := 0;
      Exit;
    end
  Else
    begin
      Reg   := TRegistry.Create;

      nQtdeMaximaRegistrosRegWin         := -1;
      nQtdeMaximaRegistrosTableValidade  := -1;
      nQtdeMaximaRegistrosArquivoOculto  := -1;

      //--

      //--------
      // 1º Passo: Calculando a qtde. máxima de registros registrada no registro do Windows...
      //---------------

      Try
        Try
          { Define a chave-raiz do registro }
          Reg.RootKey := HKEY_CURRENT_USER;

          If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
            begin
              Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

              //--

              If cTipoRegistro = 'C' then // Cadastro
                begin
                  If Reg.ValueExists('ð¢¹°Þ_«¶Þ_¤°÷¶¥¢¤ß¥²_¹') then
                    begin
                      If MudaCaracter('D', Reg.ReadString('ð¢¹°Þ_«¶Þ_¤°÷¶¥¢¤ß¥²_¹') ) <> '' then
                        nQtdeMaximaRegistrosRegWin := StrToInt( MudaCaracter('D', Reg.ReadString('ð¢¹°Þ_«¶Þ_¤°÷¶¥¢¤ß¥²_¹') ) )
                      Else
                        nQtdeMaximaRegistrosRegWin := 0;
                    end
                end
              Else If  cTipoRegistro = 'M' then // Movimento
                begin
                  If Reg.ValueExists('ð¢¹°Þ_«¶Þ_¤°÷¶¥¢¤ß¥Þß»') then
                    begin
                      If MudaCaracter('D', Reg.ReadString('ð¢¹°Þ_«¶Þ_¤°÷¶¥¢¤ß¥Þß»') ) <> '' then
                        nQtdeMaximaRegistrosRegWin := StrToInt( MudaCaracter('D', Reg.ReadString('ð¢¹°Þ_«¶Þ_¤°÷¶¥¢¤ß¥Þß»') ) )
                      Else
                        nQtdeMaximaRegistrosRegWin := 0;
                    end;
                end;
            end;
        Except
          MessageBeep(32);
          MessageDlg('Atenção...'+#13+#13+'Erro: 0101B5 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
          nQtdeMaximaRegistrosRegWin := -1;
        end;

      Finally
        Reg.Free;
      end;

      //--

      //--------
      // 2º Passo: Calculando a qtde. máxima de registros registrada na tabela de Validade...
      //------------------------------

      Try
        If Table_Validade.Active = False then Table_Validade.Open;

        If Table_Validade.RecordCount = 1 then
          begin
            If cTipoRegistro = 'C' then  // Cadastro
              begin
                If MudaCaracter('D', Table_Validade.FieldByName('QtdeMaxRegistrosCAD').AsString) <> '' then
                  nQtdeMaximaRegistrosTableValidade := StrToInt( MudaCaracter('D', Table_Validade.FieldByName('QtdeMaxRegistrosCAD').AsString) )
                Else
                  nQtdeMaximaRegistrosTableValidade := 0;
              end
            Else If cTipoRegistro = 'M' then
              begin
                If MudaCaracter('D', Table_Validade.FieldByName('QtdeMaxRegistrosMOV').AsString) <> '' then
                  nQtdeMaximaRegistrosTableValidade := StrToInt( MudaCaracter('D', Table_Validade.FieldByName('QtdeMaxRegistrosMOV').AsString) )
                Else
                  nQtdeMaximaRegistrosTableValidade := 0;
              end;
          end;
      Except
      end;

      //--

      //------
      // 3º Passo: Calculando a qtde. máxima de registros registrada no arquivo oculto...
      //----------------

      Try
        If FileExists('C:\Windows\System32\Security.db') then
          begin
            If Table_Temp.Active then Table_Temp.Close;

            Table_Temp.DatabaseName := 'C:\Windows\System32';
            Table_Temp.TableName    := 'Security.db';
            Table_Temp.Open;

            //--

            If cTipoRegistro = 'C' then  // Cadastro
              begin
                If MudaCaracter('D', Table_Temp.FieldByName('QtdeMaxRegistrosCAD').AsString ) <> '' then
                  nQtdeMaximaRegistrosArquivoOculto := StrToInt( MudaCaracter('D', Table_Temp.FieldByName('QtdeMaxRegistrosCAD').AsString ) )
                Else
                  nQtdeMaximaRegistrosArquivoOculto := 0;
              end
            Else If cTipoRegistro = 'M' then
              begin
                If MudaCaracter('D', Table_Temp.FieldByName('QtdeMaxRegistrosMOV').AsString ) <> '' then
                  nQtdeMaximaRegistrosArquivoOculto := StrToInt( MudaCaracter('D', Table_Temp.FieldByName('QtdeMaxRegistrosMOV').AsString ) )
                Else
                  nQtdeMaximaRegistrosArquivoOculto := 0;
              end;

            Table_Temp.Close;
          end;
      Except
      end;

    end;

  //--

  cDataUltimaInstalacao := FrmPrincipal.Retorna_Data1Instalacao_RegWinDemo();

  If ( (FrmAcess.Copia_Expirada(cDataUltimaInstalacao, False) = True) and (Verifica_Registrado_RegWinDemo() = False) ) Or ( (nQtdeMaximaRegistrosArquivoOculto > 0) and (Verifica_Registrado_RegWinDemo() = False) ) then
    begin
      If (nQtdeMaximaRegistrosRegWin <> nQtdeMaximaRegistrosTableValidade) Or (nQtdeMaximaRegistrosRegWin <> nQtdeMaximaRegistrosArquivoOculto) Or
      (nQtdeMaximaRegistrosTableValidade <> nQtdeMaximaRegistrosArquivoOculto) then
        Result := -1
      Else
        Result := nQtdeMaximaRegistrosArquivoOculto;
    end
  Else
    Result := -1;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Verifica_Registrado_RegWinDemo() : Boolean;
Var
  lRegistrado1, lRegistrado2, lRegistrado3 : Boolean;
  cRegistrado : String;
  Reg: TRegistry;
begin

  lRegistrado1 := True;
  lRegistrado2 := True;
  lRegistrado3 := True;

  If (FrmAcess.lErro_Validade = False ) then
    begin

      //--------
      // 1º Passo: Atualização em arquivo de Controle de Validade da cópia.
      //------------------------------

      Table_Validade.DatabaseName := RetornaCaminhoArquivosControle();
      //Table_Validade.DatabaseName := FrmPrincipal.retor

      Try
        If Table_Validade.Active = False then Table_Validade.Open;

        If Table_Validade.RecordCount = 1 then
          begin
            // Grava último acesso no arquivo de validade.

            If (MudaCaracter('D', Table_Validade.FieldByName('Registrado').AsString) = 'S') and (MudaCaracter('D', Table_Validade.FieldByName('Data_Registro').AsString) <> '')
            and (MudaCaracter('D', Table_Validade.FieldByName('Hora_Registro').AsString) <> '') then
              lRegistrado1 := True
            Else
              lRegistrado1 := False;
          end;

      Except
        lRegistrado1 := False;
      end;

      //--

      //------
      // 2º Passo: Atualização de dados em arquivo oculto....
      //----------------

      Try
        If FileExists('C:\Windows\System32\Security.db') then
          begin
            If Table_Temp.Active then Table_Temp.Close;

            Table_Temp.DatabaseName := 'C:\Windows\System32';
            Table_Temp.TableName    := 'Security.db';
            Table_Temp.Open;

            //--

            If (MudaCaracter('D', Table_Temp.FieldByName('Registrado').AsString) = 'S') and (MudaCaracter('D', Table_Temp.FieldByName('Data_Registro').AsString) <> '')
            and (MudaCaracter('D', Table_Temp.FieldByName('Hora_Registro').AsString) <> '') then
              lRegistrado2 := True
            Else
              lRegistrado2 := False;

            Table_Temp.Close;
          end;
      Except
        lRegistrado2 := False;
      end;

      //--

      //------
      // 3º Passo: Validação no registro do Windows.
      //----------------

      Reg := TRegistry.Create;

      Try
        Try
          { Define a chave-raiz do registro }
          Reg.RootKey := HKEY_CURRENT_USER;

          If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
            begin
              Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

              If Reg.ValueExists('¤°÷¶¥¢¤_¹ß') then  // Se valor de chave Registrado existe...
                begin
                  cRegistrado := Reg.ReadString('¤°÷¶¥¢¤_¹ß');

                  If MudaCaracter('D', cRegistrado ) = 'S' then  // Lê chave "Registrado" e compara com valor = 'S' só que criptografado..
                    lRegistrado3 := True
                  Else
                    lRegistrado3 := False;
                end;
            end
          Else
            lRegistrado3 := False;
        Except
          MessageBeep(32);
          MessageDlg('Atenção...'+#13+#13+'Erro: 0101B6 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
          lRegistrado3 := False;
        end;

      Finally
        Reg.Free;
      end;

    end;

  //--

  If (lRegistrado1 = True) and (lRegistrado2 = True) and (lRegistrado3 = True ) then
    Result := True
  Else
    Result := False;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Verifica_Instalado : Boolean;
Var
  lInstalado1, lInstalado2, lInstalado3 : Boolean;
  cInstalado                            : String;
  Reg                                   : TRegistry;
begin

  lInstalado1 := False;
  lInstalado2 := False;
  lInstalado3 := False;

  If (FrmAcess.lErro_Validade = False ) then
    begin

      //--------
      // 1º Passo: Atualização em arquivo de Controle de Validade da cópia.
      //------------------------------

      Try

        If FileExists(RetornaCaminhoArquivosControle()+'Vali_Piz.db') then
          begin
            If (Table_Validade.Active) then Table_Validade.Close;
            Table_Validade.DatabaseName := RetornaCaminhoArquivosControle();
            If Table_Validade.Active = False then Table_Validade.Open;

            //--

            If Table_Validade.RecordCount = 1 then
              begin
                If (MudaCaracter('D', Table_Validade.FieldByName('Instalado').AsString) = 'S') and (MudaCaracter('D', Table_Validade.FieldByName('Data_Inst').AsString) <> '') then
                  lInstalado1 := True
                Else
                  lInstalado1 := False;
              end;
          end
        Else
          lInstalado1 := False;
      Except
        lInstalado1 := False;
      end;

      //--

      //------
      // 2º Passo: Atualização de dados em arquivo oculto....
      //----------------

      Try
        If FileExists('C:\Windows\System32\Security.db') then
          begin
            If Table_Temp.Active then Table_Temp.Close;

            Table_Temp.DatabaseName := 'C:\Windows\System32';
            Table_Temp.TableName    := 'Security.db';
            Table_Temp.Open;

            //--

            If (FrmAcess.Retorna_Tipo_Instalacao_Vigente()) <> 'USO ILIMITADO' then
              begin
                If (MudaCaracter('D', Table_Temp.FieldByName('Instalado').AsString) = 'S') and
                ( (MudaCaracter('D', Table_Temp.FieldByName('Data_Inst1').AsString) <> '') Or (MudaCaracter('D', Table_Temp.FieldByName('Data_Inst2').AsString) <> '') ) then
                  lInstalado2 := True
                Else
                 lInstalado2 := False;
              end
            Else
              lInstalado2 := True;

            Table_Temp.Close;
          end
        Else
          lInstalado2 := False;
      Except
        lInstalado2 := False;
      end;

      //--

      //------
      // 3º Passo: Validação no registro do Windows.
      //----------------

      Reg := TRegistry.Create;

      Try
        Try
          { Define a chave-raiz do registro }
          Reg.RootKey := HKEY_CURRENT_USER;

          If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
            begin
              Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

              If Reg.ValueExists('¶µ¥¢_±_¹ß') then  // Se valor de chave Instalado existe...
                begin
                  cInstalado := Reg.ReadString('¶µ¥¢_±_¹ß');

                  If MudaCaracter('D', cInstalado ) = 'S' then  // Lê chave "Instalado" e compara com valor = 'S' só que criptografado..
                    lInstalado3 := True
                  Else
                    lInstalado3 := False;
                end;
            end
          Else
            lInstalado3 := False;
        Except
          MessageBeep(32);
          MessageDlg('Atenção...'+#13+#13+'Erro: 0101B7 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);

          lInstalado3 := False;
        end;

      Finally
        Reg.Free;
      end;

    end;

  //--

  If (lInstalado1 = True) and (lInstalado2 = True) and (lInstalado3 = True ) then
    Result := True
  Else
    Result := False;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.RegistraCopia_RegWinDemo() : Boolean;
var
  Reg: TRegistry;
  cInstalado : String;

begin

  // Objetivo: Grava o texto: MatrixCode31051975SyspizzaDemoFix criptografado
  //           no registro do Windows criando uma chave titulada:
  //
  //           Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß
  //
  //            (que quer dizer: MatrixCode31051975SyspizzaDemoFix)
  //
  // Serve para atualizar chave "Registrado" passando para "S" (Sim)
  //

  Reg := TRegistry.Create;

  Try
    Try
      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
        begin
          { Abre a chave (path). Se não existir, cria e abre. }
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', True);

          Reg.WriteString('¤°÷¶¥¢¤_¹ß',   MudaCaracter('E', 'S') );   // Registrado
        end;

      Result := True;
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101B8 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
      Result := False;
    end;

  Finally
    //MessageBeep(32);
    //Messagedlg('Atenção...'+#13+#13+'Erro ao tentar registrar cópia (RegWinDemoFix) !!!', mtError, [mbOk], 0);

    Reg.Free;
    //Result := False;
  end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Verifica_Imagens_Definidas();
Var
  Img1Modelo                                    : TImage;
  cNomePadraoImgEsquerda, cNomePadraoImgDireita : String;
begin

  If (Table_Parametro.FieldByName('Par_FinalidadeSistema').AsString = 'Nenhum') Or (Table_Parametro.FieldByName('Par_FinalidadeSistema').Value = Null) then
    begin

      // Definição da imagem que fica a direita.
      If (Table_Parametro.FieldByName('Par_ImagemDireita').Value = Null) Or (Table_Parametro.FieldByName('Par_ImagemDireita').AsString = '') then
        begin
          If FileExists('C:\Syspizza\Images\Img_Nula.bmp') = False then
            Imagem_direita.Visible := False
          Else
            Imagem_direita.Picture.LoadFromFile('C:\Syspizza\Images\Img_Nula.bmp');

          Limpa_Images_Piscantes( True );
        end
      Else If FileExists(Table_Parametro.FieldByName('Par_ImagemDireita').AsString) = False then
        begin
          Som(15);
          MessageDlg('Atenção...'+#13+#13+'A imagem padrão a direita na tela principal do sistema não pode ser localizada neste local informado !'+#13+#13+'Será assumida a imagem padrão !!!', mtInformation, [mbOk], 0 );

          If FileExists('C:\Syspizza\Images\Img_Nula.bmp') = False then
            Imagem_direita.Visible := False
          Else
            Imagem_direita.Picture.LoadFromFile('C:\Syspizza\Images\Img_Nula.bmp');

          Limpa_Images_Piscantes( True );
        end
      Else
        begin
          If Table_Parametro.FieldByName('Par_Imagemdireita').AsString <> 'C:\SysPizza\Images\Logodireita.jpg' then
            Limpa_Images_Piscantes( True )
          Else
            Limpa_Images_Piscantes( False );

          //--

          cNomePadraoImgDireita := 'C:\SysPizza\Images\Logodireita.jpg';

          If ( Table_Parametro.FieldByName('Par_ImagemDireita').AsString <> 'C:\SysPizza\Images\Logodireita.jpg') then
            begin

              //----------------------------
              // Verifica o tamanho da imagem escolhida e vê se é necessário ativar Stretch ou não...
              //----------
              Img1Modelo := TImage.Create(Self);
              Img1Modelo.AutoSize := True;
              Img1Modelo.Picture.LoadFromFile( Table_Parametro.FieldByName('Par_ImagemDireita').AsString );

              If ( Img1Modelo.Height > Imagem_Direita.Height) Or (Img1Modelo.Width > Imagem_Direita.Width) then
                Imagem_Direita.Stretch := True;

              Img1Modelo.Destroy;
            end;

          //--
          
          Imagem_direita.Picture.LoadFromFile(Table_Parametro.FieldByName('Par_ImagemDireita').AsString);
          Imagem_direita.Visible := True;
        end;

      Imagem_direita.Refresh;

      //--------------------

      // Definição da imagem que fica a esquerda.

      If (Table_Parametro.FieldByName('Par_ImagemEsquerda').Value = Null) Or (Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString = '') then
        begin
          If FileExists('C:\Syspizza\Images\Img_Nula.bmp') = False then
            Imagem_Esquerda.Visible := False
          Else
            Imagem_Esquerda.Picture.LoadFromFile('C:\Syspizza\Images\Img_Nula.bmp');

        end
      Else If FileExists(Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString) = False then
        begin
          Som(15);
          MessageDlg('Atenção...'+#13+#13+'A imagem padrão a esquerda na tela principal do sistema não pode ser localizada neste local informado !'+#13+#13+'Será assumida a imagem padrão !!!', mtInformation, [mbOk], 0 );

          If FileExists('C:\Syspizza\Images\Img_Nula.bmp') = False then
            Imagem_Esquerda.Visible := False
          Else
            Imagem_Esquerda.Picture.LoadFromFile('C:\Syspizza\Images\Img_Nula.bmp');
        end
      Else
        begin
          cNomePadraoImgEsquerda := 'C:\SysPizza\Images\Logoesquerda.jpg';

          If ( Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString <> 'C:\SysPizza\Images\Logoesquerda.jpg') then
            begin

              //---------
              // Verifica o tamanho da imagem escolhida e vê se é necessário ativar Stretch ou não...
              //----------------------------------------------
              Img1Modelo := TImage.Create(Self);
              Img1Modelo.AutoSize := True;
              Img1Modelo.Picture.LoadFromFile( Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString );

              If ( Img1Modelo.Height > Imagem_Esquerda.Height) Or (Img1Modelo.Width > Imagem_Esquerda.Width) then
                Imagem_Esquerda.Stretch := True;

              Img1Modelo.Destroy;
            end;

          //--

          Imagem_Esquerda.Picture.LoadFromFile(Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString);
          Imagem_Esquerda.Visible := True;
        end;

      Imagem_Esquerda.Refresh;
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Desativa_Usuario;
begin

  If AbreTabela( FrmAcess.Table_Usuario, False) = False then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...'+#13+#13+'Impossível abrir arquivo para tirar usuário de uso !'+#13+#13+'Contacte suporte para maiores informações...', mtError, [mbOk], 0 );

      Exit;
    end;

  If NetErr( FrmAcess.Table_Usuario, 'A', 'Usuário') = False then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...'+#13+#13+'Impossível utilizar este usuário para desativar seu uso no sistema !'+#13+#13+'É impossível tirá-lo de uso pelo sistema...'+#13+#13+'Contacte suporte par maiores esclarecimentos !', mtError, [mbOk], 0 );
      Exit;
    end;

  FrmAcess.Table_Usuario.FieldByName('Usu_EmUso').AsString := 'N';
  FrmAcess.Table_Usuario.Post;
  FrmAcess.Table_Usuario.Refresh;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

// Cores especiais: $00F5ECAA, $00D5ECAA, $00E5ECAA

procedure TFrmPrincipal.Spb_ConvenienciaClick(Sender: TObject);
begin

  Conveniencia1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Spb_EntregaClick(Sender: TObject);
begin

  Entregas2Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Spb_MesasClick(Sender: TObject);
begin

  VendaemMesas2Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Spb_BotaoEsqMouseClick(Sender: TObject);
begin

  If (Res_X = 800) and (Res_Y = 600) then  // OK
    begin
      PosicaoX := (Res_X div 6) - 50;  // eixo y: (vertical)   - ok
      PosicaoY := (Res_Y div 2) + 15;  // eixo x: (horizontal) - ok
    end
  Else If (Res_X = 1024) and (Res_Y = 768) then  // OK
    begin
      // Calcule a proporção para a nova resolução...
      PosicaoX := (Res_X div 5) - 20;  // eixo y: (vertical)   - ok
      PosicaoY := (Res_Y div 2) + 25;  // eixo x: (horizontal) - ok
    end
  Else If (Res_X = 1152) and (Res_Y = 864) then  // OK
    begin
      // Calcule a proporção para a nova resolução...
      PosicaoX := (Res_X div 5);       // eixo y: (vertical)   - ok
      PosicaoY := (Res_Y div 2) + 45;  // eixo x: (horizontal) - ok
    end
  Else If (Res_X = 1280) and (Res_Y = 600) then // Resolução problemática
    begin
      // Calcule a proporção para a nova resolução...
      PosicaoX := (Res_X div 5);       // eixo y: (vertical)   -
      PosicaoY := (Res_Y div 2) + 45;  // eixo x: (horizontal) -
    end
  Else If (Res_X = 1280) and (Res_Y = 720) then // Resolução problemática
    begin
      // Calcule a proporção para a nova resolução...
      PosicaoX := (Res_X div 5);       // eixo y: (vertical)   -
      PosicaoY := (Res_Y div 2) + 45;  // eixo x: (horizontal) -
    end
  Else If (Res_X = 1280) and (Res_Y = 768) then //  OK
    begin
      PosicaoX := 190;  // eixo y: (vertical)   - ok
      PosicaoY := 555;  // eixo x: (horizontal) - ok
    end
  Else If (Res_X = 1280) and (Res_Y = 960) then // OK
    begin
      PosicaoX := 290;  // eixo y: (vertical)   - ok
      PosicaoY := 555;  // eixo x: (horizontal) - ok
    end
  Else If (Res_X = 1280) and (Res_Y = 1024) then // OK
    begin
      PosicaoX := 330;  // eixo y: (vertical)   - ok
      PosicaoY := 550;  // eixo x: (horizontal) - ok
    end;

  //--

  PopUpMenu_Cadastros.PopUp( (Self.Left+300), (Self.Top+90)  );

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Spb_BackupClick(Sender: TObject);
begin

  Backupdosdadoscopia1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Spb_SairClick(Sender: TObject);
begin

  SairdoSistema1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Spb_CalendarioClick(Sender: TObject);
begin

  Calendrio2Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Spb_ConfiguracoesClick(Sender: TObject);
begin

  If Nivel <> 1 then // Supervisor
    begin
      Alerta('Erro Leve');
      MessageDlg('Atenção...'+#13+#13+'Usuário sem nível de acesso para acessar tela de parâmetros !!!'+#13+#13+'Contacte Supervisor do sistema!', mtError, [mbOk], 0 );

      Som( 14 );
      FrmErroRotina := TFrmErroRotina.Create(Application);

      FrmErroRotina.ShowModal;

      FreeAndNil(FrmErroRotina);

      Exit;
    end;

  Parmetros1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Spb_CaixaDiarioClick(Sender: TObject);
begin

  If Nivel = 3 then // Operacional
    begin
      Alerta('Erro Leve');
      MessageDlg('Atenção...'+#13+#13+'Usuário sem nível de acesso para acessar tela de parâmetros !!!'+#13+#13+'Contacte Supervisor do sistema!', mtError, [mbOk], 0 );

      Som(7);
      FrmErroRotina := TFrmErroRotina.Create(Application);

      FrmErroRotina.ShowModal;

      FreeAndNil(FrmErroRotina);

      Exit;
    end;

  CriaAbreCaixadirio1Click(Nil);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Imagem_EsquerdaDblClick(Sender: TObject);
Var
  Img1Modelo : Timage;
begin

  If Nivel <> 1 then // Supervisor
    begin
      Alerta('Erro Leve');
      MessageDlg('Atenção...'+#13+#13+'Usuário sem permissão para mudar imagem de fundo !!!'+#13+#13+'Contacte Supervisor do sistema!', mtError, [mbOk], 0 );

      Som( 14 );
      FrmErroRotina := TFrmErroRotina.Create(Application);
      FrmErroRotina.ShowModal;
      FreeAndNil(FrmErroRotina);

      Exit;
    end;

  //--

  VarMudandoImagensFrmPrincipal := True;

  //--

  FrmParametros := TFrmParametros.Create(Application);
  FrmParametros.Table_Parametro.Open;

  //--

  FrmParametros.OpenPictureDialog_Imagemesquerda.Title := 'Alteração da imagem a esquerda - Tela Principal - H: 215 / W: 342';
  FrmParametros.OpenPictureDialog_Imagemesquerda.Execute;

  If (Trim(FrmParametros.OpenPictureDialog_ImagemEsquerda.FileName) <> '') then
    begin
      //-----
      // Verifica o tamanho da imagem escolhida e vê se é necessário ativar...
      //-------------------------------------
      Img1Modelo := TImage.Create(Self);
      Img1Modelo.AutoSize := True;
      Img1Modelo.Picture.LoadFromFile( FrmParametros.OpenPictureDialog_ImagemEsquerda.FileName );

      If ( Img1Modelo.Height > Imagem_Esquerda.Height) Or (Img1Modelo.Width > Imagem_Esquerda.Width) then
        begin

          If MessageDlg('ATENÇÃO...'+#13+#13+'A imagem escolhida (Imagem a esquerda) é maior do que o tamanho da imagem permitida !'+#13+#13+'Continua assim mesmo ?', mtConfirmation,[mbYES,mbNO],0) = mrNO then
              Exit;

        end;

      //--

      If (FrmParametros.Table_Parametro.state <> dsEdit) then
        FrmParametros.Table_Parametro.Edit;

      FrmParametros.Table_Parametro.FieldByName('Par_ImagemEsquerda').AsString    := FrmParametros.OpenPictureDialog_Imagemesquerda.FileName;
      FrmParametros.Table_Parametro.FieldByName('Par_FinalidadeSistema').AsString := 'Nenhum';

      FrmParametros.Table_Parametro.Post;
    end;

  //--

  FrmParametros.Table_Parametro.Close;
  FrmParametros.Recarrega_Parametros;
  FrmParametros.Close;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Imagem_direitaDblClick(Sender: TObject);
Var
  Img1Modelo : TImage;
begin

  If Nivel <> 1 then // Supervisor
    begin
      Alerta('Erro Leve');
      MessageDlg('Atenção...'+#13+#13+'Usuário sem permissão para mudar imagem de fundo !!!'+#13+#13+'Contacte Supervisor do sistema!', mtError, [mbOk], 0 );

      Som( 14 );
      FrmErroRotina := TFrmErroRotina.Create(Application);
      FrmErroRotina.ShowModal;
      FreeAndNil(FrmErroRotina);

      Exit;
    end;

  //--

  VarMudandoImagensFrmPrincipal := True;

  //--

  FrmParametros := TFrmParametros.Create(Application);

  FrmParametros.Table_Parametro.Open;

  //--

  FrmParametros.OpenPictureDialog_ImagemDireita.Title := 'Alteração da imagem a direita - Tela Principal - H: 300 / W: 477';
  FrmParametros.OpenPictureDialog_ImagemDireita.Execute;

  If (Trim(FrmParametros.OpenPictureDialog_ImagemDireita.FileName) <> '') then
    begin

      //-----
      // Verifica o tamanho da imagem escolhida e vê se é necessário ativar...
      //-------------------------------------
      Img1Modelo := TImage.Create(Self);
      Img1Modelo.AutoSize := True;
      Img1Modelo.Picture.LoadFromFile( FrmParametros.OpenPictureDialog_ImagemDireita.FileName );

      If ( Img1Modelo.Height > Imagem_Direita.Height) Or (Img1Modelo.Width > Imagem_Direita.Width) then
        begin

          If MessageDlg('ATENÇÃO...'+#13+#13+'A imagem escolhida (Imagem a direita) é maior do que o tamanho da imagem permitida !'+#13+#13+'Continua assim mesmo ?', mtConfirmation,[mbYES,mbNO],0) = mrNO then
              Exit;

        end;

      //--

      If (FrmParametros.Table_Parametro.state <> dsEdit) then
        FrmParametros.Table_Parametro.Edit;

      FrmParametros.Table_Parametro.FieldByName('Par_ImagemDireita').AsString     := FrmParametros.OpenPictureDialog_ImagemDireita.FileName;
      FrmParametros.Table_Parametro.FieldByName('Par_FinalidadeSistema').AsString := 'Nenhum';

      FrmParametros.Table_Parametro.Post;
    end;

  //--

  FrmParametros.Table_Parametro.Close;

  FrmParametros.Recarrega_Parametros;

  FrmParametros.Close;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Unidade1Click(Sender: TObject);
begin

  FrmUnidade := TFrmUnidade.Create(Application);

  FrmUnidade.Showmodal;

  FreeAndNil(FrmUnidade);

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Table_ValidadeAfterPost(DataSet: TDataSet);
Var
 Retorno : integer;
begin

  Retorno := DBISaveChanges( Table_Validade.Handle );
  Table_Validade.FlushBuffers;

  If Retorno = DBIERR_NODISKSPACE then
    begin
      Som(7);
      MessageDlg('Atenção....'+#13+#13+'A última inclusão/alteração de dados (CATEGORI.DB) NÃO PODE SER CONCLUÍDA'+#13+'COM SUCESSO DEVIDO A FALTA DE ESPAÇO EM DISCO!!!!'+#13+#13+'Libere espaço e reexecute esta modificação!'+#13+#13+'Qualquer dúvida, contacte suporte...', mtError, [mbOk], 0 );
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//


procedure TFrmPrincipal.EntradadeMateriaprima1Click(Sender: TObject);
begin

  FrmS_RelEntMPEst := TFrmS_RelEntMPEst.Create(Application);
  FrmS_RelEntMPEst.Showmodal;
  FreeAndNil(FrmS_RelEntMPEst);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.RetornaCaminhoArquivosControle : string;
var
  cCaminhoArquivosControle : string;
begin

  If (VersaoWindows_Superior_XP() = True) then
    cCaminhoArquivosControle := 'C:\Syspizza\'
  Else
    cCaminhoArquivosControle := 'C:\';

  //--

  RetornaCaminhoArquivosControle := cCaminhoArquivosControle;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Retorna_QtdeMaximaRegistrosTableValidade : integer;
Var
  nQtdeMaxRegistros : integer;
begin

  nQtdeMaxRegistros := -1;

  Try
    Table_Validade.Close;
    Table_Validade.DataBaseName := FrmPrincipal.RetornaCaminhoArquivosControle();

    If Table_Validade.Active = False then Table_Validade.Open;

    If Table_Validade.RecordCount = 1 then
      // Retorna a qtde. máxima de registros permitida...
      nQtdeMaxRegistros := StrToInt( MudaCaracter('D', Table_Validade.FieldByName('QtdeMaxRegistros').AsString ) );

    Result := nQtdeMaxRegistros;

  Except
    Result := -1;
  end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Retorna_DataLimiteTableValidade : String;
Var
  dDataLimite : String;
begin

  //nQtdeMaxRegistros := -1;

  Try
    Table_Validade.Close;
    Table_Validade.DataBaseName := FrmPrincipal.RetornaCaminhoArquivosControle();

    If Table_Validade.Active = False then Table_Validade.Open;

    If Table_Validade.RecordCount = 1 then
      // Retorna a data limite de validade desta cópia...
      dDataLimite := MudaCaracter('D', Table_Validade.FieldByName('Data_Limite').AsString );

    Result := dDataLimite;
  Except
    Result := 'nil';
  end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Retorna_DataUltimoAcessoTableValidade : String;
Var
  dData : String;
begin

  //nQtdeMaxRegistros := -1;

  Try
    Table_Validade.Close;
    Table_Validade.DataBaseName := FrmPrincipal.RetornaCaminhoArquivosControle();

    If Table_Validade.Active = False then Table_Validade.Open;

    If Table_Validade.RecordCount = 1 then
      dData := MudaCaracter('D', Table_Validade.FieldByName('Data_UltAcesso').AsString )
    Else
      dData := 'nil;';

    Result := dData;
  Except
    Result := 'nil';
  end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Retorna_DataUltimoAcessoArquivoOculto : String;
Var
  dData : String;
begin

  //nQtdeMaxRegistros := -1;

  Try
    If Table_Temp.Active then Table_Temp.Close;

    Table_Temp.DatabaseName := 'C:\Windows\System32';
    Table_Temp.TableName    := 'Security.db';
    Table_Temp.Open;

    If Table_Temp.RecordCount = 1 then
      begin
        If  Table_Temp.FieldByName('Data_UltAcesso').AsString <> '' then
          dData := MudaCaracter('D', Table_Temp.FieldByName('Data_UltAcesso').AsString )
        Else
          dData := 'nil';
      end
    Else
      dData := 'nil';

    //--

    Table_Temp.Close;
    Result := dData;
  Except
    Table_Temp.Close;
    Result := 'nil';
  end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Retorna_DataUltimoAcesso_RegWinDemo : String;
var
  Reg: TRegistry;
  cDataUltimoAcesso : String;
begin

  // Objetivo: Retorna a data do último acesso ao sistema
  //           Procura a chave Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß e verifica a data
  //           do último acesso ao sistema...
  //
  //
  //

  Reg   := TRegistry.Create;

  Try
    Try

      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
        begin
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

          If Reg.ValueExists('¹_¢_×©±¢_²°¥¥ß') then
            begin
              cDataUltimoAcesso := MudaCaracter('D', Reg.ReadString('¹_¢_×©±¢_²°¥¥ß'));

              If Trim(cDataUltimoAcesso) = '' then
                Result := 'nil'
              Else
                Result := cDataUltimoAcesso;
            end
          Else
            Result := 'nil';
        end
      Else
        Result := 'nil';
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101B0 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
      Result := 'nil';
    end;

  Finally
    Reg.Free;
  end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Retorna_QtdeDias_RegWinDemo : integer;
var
  Reg: TRegistry;
  cQtdeDias : String;
begin

  // Objetivo: Retorna a qtde. em dias de validade desta instalação...
  //           Procura a chave Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß e verifica a qtde. em
  //           dias de validade desta cópia...
  //
  //
  //

  cQtdeDias := '0';

  Reg   := TRegistry.Create;
  Try
    Try

      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;

      If Reg.KeyExists('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß') then
        begin
          Reg.OpenKey('Þ_¢¤¶«²ß¹°ª¿~Ø¿æøØ¥¼¥Ð¶®®_¹°Þß', false);

          //--

          If (Retorna_Data2Instalacao_RegWinDemo = '') and (Retorna_DataLimite2_RegWinDemo = '') then  // é 1ª instalação...
            begin
              // Qtde. dias Validade 1 // ð¢¹°¹¶_¥»_±¶¹_¹°¿
              If Reg.ValueExists('ð¢¹°¹¶_¥»_±¶¹_¹°¿') then
                begin
                  cQtdeDias := MudaCaracter('D', Reg.ReadString('ð¢¹°¹¶_¥»_±¶¹_¹°¿'));

                  Result    := StrToInt(cQtdeDias);
                end
              Else
                Result := 0;
            end
          Else If (Retorna_Data2Instalacao_RegWinDemo <> '') and (Retorna_DataLimite2_RegWinDemo <> '') then  // é 1ª instalação...
            begin
              //--
              // Qtde. dias Validade 1 // ð¢¹°¹¶_¥»_±¶¹_¹°º
              If Reg.ValueExists('ð¢¹°¹¶_¥»_±¶¹_¹°º') then
                begin
                  cQtdeDias := MudaCaracter('D', Reg.ReadString('ð¢¹°¹¶_¥»_±¶¹_¹°º'));

                  Result    := StrToInt(cQtdeDias);
                end
              Else
                Result := 0;
            end;

        end
      Else
        Result := 0;
    Except
      MessageBeep(32);
      MessageDlg('Atenção...'+#13+#13+'Erro: 0101B0 !'+#13+#13+'Contacte suporte !', mtError, [mbOK], 0);
      Result := 0;
    end;

  Finally
    Reg.Free;
  end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Retorna_DataLimiteArquivoOculto : String;
Var
  dDataLimite : String;
begin

  //nQtdeMaxRegistros := -1;

  // Retorna a data limite de validade desta cópia...

  Try
    If Table_Temp.Active then Table_Temp.Close;

    Table_Temp.DatabaseName := 'C:\Windows\System32';
    Table_Temp.TableName    := 'Security.db';
    Table_Temp.Open;

    If Table_Temp.RecordCount = 1 then
      begin
        // Analisa DataLimite2 primeiro para ver se tem algum valor válido
        If Table_Temp.FieldByName('Data_Limite2').AsString <> '' then
          begin
            dDataLimite := MudaCaracter('D', Table_Temp.FieldByName('Data_Limite2').AsString );
          end
        Else If Table_Temp.FieldByName('Data_Limite1').AsString <> '' then
          begin
            dDataLimite := MudaCaracter('D', Table_Temp.FieldByName('Data_Limite1').AsString );
          end;
      end
    Else
      dDataLimite := 'nil';

    Table_Temp.Close;

    Result := dDataLimite;
  Except
    Table_Temp.Close;
    Result := 'nil';
  end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Retorna_QtdeMaximaArquivoOculto : integer;
Var
  nQtdeMaxRegistros : integer;
begin

  nQtdeMaxRegistros := -1;

  Try
    If FileExists('C:\Windows\System32\Security.db') then
      begin
        If Table_Temp.Active then Table_Temp.Close;

        Table_Temp.DatabaseName := 'C:\Windows\System32';
        Table_Temp.TableName    := 'Security.db';
        Table_Temp.Open;

        //--

        nQtdeMaxRegistros := StrToInt( MudaCaracter('D', Table_Temp.FieldByName('QtdeMaxRegistros').AsString ) );
        Result            := nQtdeMaxRegistros;

        Table_Temp.Close;
      end;
  Except
    Table_Temp.Close;
    Result := -1;
  end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

(*
function TFrmPrincipal.Retorna_QtdeMaximaRegistrosInstalacao( cTipoRegistro : String ) : integer;
Var
  nQtdeMaxRegistros : integer;
begin

  If (Retorna_QtdeMaximaRegistrosRegWin( cTipoRegistro ) = -1) Or (Retorna_QtdeMaximaRegistrosTableValidade() = -1) Or (Retorna_QtdeMaximaArquivoOculto() = -1) then
    Result := -1;

  //--

  If (Retorna_QtdeMaximaRegistrosRegWin() <> Retorna_QtdeMaximaRegistrosTableValidade()) Or (Retorna_QtdeMaximaRegistrosRegWin() <> Retorna_QtdeMaximaArquivoOculto())
  Or (Retorna_QtdeMaximaRegistrosTableValidade() <>  Retorna_QtdeMaximaArquivoOculto() ) then
    Result := -1;

  //--

  Result := Retorna_QtdeMaximaRegistrosRegWin();

end;
*)

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Retorna_QtdeMaximaExecucoesArquivoOculto : Integer;
Var
  nQtdeMaxExecucoes : integer;
begin

  nQtdeMaxExecucoes := -1;

  Try
    If FileExists('C:\Windows\System32\Security.db') then
      begin
        If Table_Temp.Active then Table_Temp.Close;

        Table_Temp.DatabaseName := 'C:\Windows\System32';
        Table_Temp.TableName    := 'Security.db';
        Table_Temp.Open;

        //--

        If (Table_Temp.FieldByName('QtdeMaxExecucoes2').AsString <> '') then
          begin
            If StrToInt( MudaCaracter('D', Table_Temp.FieldByName('QtdeMaxExecucoes2').AsString) ) > 0 then
              nQtdeMaxExecucoes := StrToInt( MudaCaracter('D', Table_Temp.FieldByName('QtdeMaxExecucoes2').AsString ) )
            Else
              nQtdeMaxExecucoes := -1;
          end
        Else If (Table_Temp.FieldByName('QtdeMaxExecucoes1').AsString <> '') then
          begin
            If StrToInt( MudaCaracter('D', Table_Temp.FieldByName('QtdeMaxExecucoes1').AsString) ) > 0 then
              nQtdeMaxExecucoes := StrToInt( MudaCaracter('D', Table_Temp.FieldByName('QtdeMaxExecucoes1').AsString ) )
            Else
              nQtdeMaxExecucoes := -1;
          end;

        (*
        If (MudaCaracter('D', Table_Temp.FieldByName('Data_Inst1').AsString ) <> '') and (MudaCaracter('D', Table_Temp.FieldByName('Data_Inst2').AsString ) = '') then
          nQtdeMaxExecucoes := StrToInt( MudaCaracter('D', Table_Temp.FieldByName('QtdeMaxExecucoes1').AsString ) )

        Else If (MudaCaracter('D', Table_Temp.FieldByName('Data_Inst2').AsString ) <> '') then
          nQtdeMaxExecucoes := StrToInt( MudaCaracter('D', Table_Temp.FieldByName('QtdeMaxExecucoes2').AsString ) );
        *)

        //--

        Result            := nQtdeMaxExecucoes;

        Table_Temp.Close;
      end;
  Except
    Table_Temp.Close;
  
    Result := -1;
  end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Retorna_QtdeMaximaExecucoes_Table_Validade : Integer;
Var
  nQtdeMaximaExecucoes : integer;
begin

  nQtdeMaximaExecucoes := 0;

  Try
    Try
      Table_Validade.Close;
      If Table_Validade.Active = False then Table_Validade.Open;

      If Table_Validade.RecordCount = 1 then
        nQtdeMaximaExecucoes := StrToInt( MudaCaracter('D', Table_Validade.FieldByName('QtdeMaximaExecucoes').AsString) );

    Except
      nQtdeMaximaExecucoes := -1;
    end;
  Finally
  end;

  //--

  Result := nQtdeMaximaExecucoes;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Retorna_NumeroExecucaoAtual_Table_Validade : Integer;
Var
  nNumExecucaoAtual : integer;
begin

  nNumExecucaoAtual := 0;

  Try
    Try
      Table_Validade.Close;
      If Table_Validade.Active = False then Table_Validade.Open;

      If Table_Validade.RecordCount = 1 then
        nNumExecucaoAtual := StrToInt( MudaCaracter('D', Table_Validade.FieldByName('NumExecucaoAtual').AsString) );

    Except
      nNumExecucaoAtual := -1;
    end;
  Finally
  end;

  //--

  Result := nNumExecucaoAtual;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Atualiza_ArquivoOculto_QtdeExecucoes( nQtdeExecucoes : integer ) : Boolean;
begin

  Try
    If FileExists('C:\Windows\System32\Security.db') then
      begin
        If Table_Temp.Active then Table_Temp.Close;

        Table_Temp.DatabaseName := 'C:\Windows\System32';
        Table_Temp.TableName    := 'Security.db';
        Table_Temp.Open;

        //--

        If (Retorna_Data1Instalacao_RegWinDemo() <> '') and (Retorna_Data2Instalacao_RegWinDemo() = '') then
          begin
            Table_Temp.Edit;
            Table_Temp.FieldByName('QtdeMaxExecucoes1').AsString := MudaCaracter('E', FormatFloat('00000', nQtdeExecucoes) );
            Table_Temp.Post;
            Table_Temp.Refresh;
          end
        Else If (Retorna_Data1Instalacao_RegWinDemo() <> '') and (Retorna_Data2Instalacao_RegWinDemo() <> '') then
          begin
            Table_Temp.Edit;
            Table_Temp.FieldByName('QtdeMaxExecucoes2').AsString := MudaCaracter('E', FormatFloat('00000', nQtdeExecucoes) );
            Table_Temp.Post;
            Table_Temp.Refresh;
          end;
      end;

    Table_Temp.Close;
    Result := True;

  Except
    Table_Temp.Close;
    Result := False;
  end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Retorna_QtdeMaximaExecucoes : Integer;
Var
  lErroQtdeMaximaExecucao1, lErroQtdeMaximaExecucao2, lErroQtdeMaximaExecucao3 : Boolean;
  nQtdeMaximaExecucao1, nQtdeMaximaExecucao2, nQtdeMaximaExecucao3 : Integer;
begin

  lErroQtdeMaximaExecucao1 := True;
  lErroQtdeMaximaExecucao2 := True;
  lErroQtdeMaximaExecucao3 := True;

  //--

  // 1ª Trava: Registro do Windows...
  If Retorna_QtdeMaximaExecucoes2_RegWinDemo() > 0 then
    begin
      nQtdeMaximaExecucao1     := Retorna_QtdeMaximaExecucoes2_RegWinDemo();
      lErroQtdeMaximaExecucao1 := False;
    end
  Else
    begin
       If Retorna_QtdeMaximaExecucoes1_RegWinDemo() > 0 then
         begin
           nQtdeMaximaExecucao1     := Retorna_QtdeMaximaExecucoes1_RegWinDemo();
           lErroQtdeMaximaExecucao1 := False;
         end
       Else
         nQtdeMaximaExecucao1 := -1;
    end;

  //--

  // 2ª Trava: Informação na Tabela de Validade...

  If Retorna_QtdeMaximaExecucoes_Table_Validade() > 0 then
    begin
      nQtdeMaximaExecucao2     := Retorna_QtdeMaximaExecucoes_Table_Validade();
      lErroQtdeMaximaExecucao2 := False;
    end;

  // 3ª Trava: Arquivo Oculto em C:\Windows\System32...

  If Retorna_QtdeMaximaExecucoesArquivoOculto() > 0 then
    begin
      nQtdeMaximaExecucao3     := Retorna_QtdeMaximaExecucoesArquivoOculto();
      lErroQtdeMaximaExecucao3 := False;
    end;

  //--

  If (lErroQtdeMaximaExecucao1 = True) and (lErroQtdeMaximaExecucao2 = True) and (lErroQtdeMaximaExecucao3 = True) then
    Result := -1
  Else If (lErroQtdeMaximaExecucao1 = False) and (lErroQtdeMaximaExecucao2 = False) and (lErroQtdeMaximaExecucao3 = False) then
    begin
      If (nQtdeMaximaExecucao1 = nQtdeMaximaExecucao2) and (nQtdeMaximaExecucao2 = nQtdeMaximaExecucao3) and (nQtdeMaximaExecucao3 = nQtdeMaximaExecucao1) then
        Result := nQtdeMaximaExecucao1
      Else
        Result := -1;
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Retorna_DataLimiteExecucao : String;
Var
  lErroDataLimiteExecucao1, lErroDataLimiteExecucao2, lErroDataLimiteExecucao3 : Boolean;
  dDataLimiteExecucao1, dDataLimiteExecucao2, dDataLimiteExecucao3 : TDateTime;
begin

  lErroDataLimiteExecucao1 := True;
  lErroDataLimiteExecucao2 := True;
  lErroDataLimiteExecucao3 := True;

  //--

  // 1ª Trava: Registro do Windows...
  If Retorna_DataLimite2_RegWinDemo() <> 'nil' then
    begin
      dDataLimiteExecucao1     := StrToDate(Retorna_DataLimite2_RegWinDemo());
      lErroDataLimiteExecucao1 := False;
    end
  Else
    begin
       If Retorna_DataLimite1_RegWinDemo() <> 'nil' then
         begin
           dDataLimiteExecucao1     := StrToDate(Retorna_DataLimite1_RegWinDemo());
           lErroDataLimiteExecucao1 := False;
         end;
       //Else
       //  dDataLimiteExecucao1 := -1;
    end;

  //--

  // 2ª Trava: Informação na Tabela de Validade...

  If Retorna_DataLimiteTableValidade() <> 'nil' then
    begin
      dDataLimiteExecucao2     := StrToDate(Retorna_DataLimiteTableValidade());
      lErroDataLimiteExecucao2 := False;
    end;

  // 3ª Trava: Arquivo Oculto em C:\Windows\System32...

  If Retorna_DataLimiteArquivoOculto() <> 'nil' then
    begin
      dDataLimiteExecucao3     := StrToDate(Retorna_DataLimiteArquivoOculto());
      lErroDataLimiteExecucao3 := False;
    end;

  //--

  If (lErroDataLimiteExecucao1 = True) and (lErroDataLimiteExecucao2 = True) and (lErroDataLimiteExecucao3 = True) then
    Result := 'nil'
  Else If (lErroDataLimiteExecucao1 = False) and (lErroDataLimiteExecucao2 = False) and (lErroDataLimiteExecucao3 = False) then
    begin
      If (dDataLimiteExecucao1 = dDataLimiteExecucao2) and (dDataLimiteExecucao2 = dDataLimiteExecucao3) and (dDataLimiteExecucao3 = dDataLimiteExecucao1) then
        Result := DateToStr(dDataLimiteExecucao1)
      Else
        Result := 'nil';
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Retorna_DataUltimoAcesso : String;
Var
  lErroDataUltimoAcesso1, lErroDataUltimoAcesso2, lErroDataUltimoAcesso3 : Boolean;
  dDataUltimoAcesso1, dDataUltimoAcesso2, dDataUltimoAcesso3 : String;
begin

  lErroDataUltimoAcesso1 := True;
  lErroDataUltimoAcesso2 := True;
  lErroDataUltimoAcesso3 := True;

  //--

  // Verifica se foi hoje que ele instalou o sistema e ainda não o executou nenhuma vez, nesse
  // caso, a data de último acesso é nula.
  If (Retorna_Data2Instalacao_RegWinDemo() <> 'nil') and (FrmPrincipal.Retorna_Data2Instalacao_RegWinDemo() <> '') then
    begin
      If Date() = StrToDate(Retorna_Data2Instalacao_RegWinDemo()) then
        begin
          //lErroDataUltimoAcesso1 := False;
          //lErroDataUltimoAcesso2 := False;
          //lErroDataUltimoAcesso3 := False;

          Result := '';
          Exit;
        end;
    end
  Else If (Retorna_Data1Instalacao_RegWinDemo() <> 'nil') and (FrmPrincipal.Retorna_Data1Instalacao_RegWinDemo() <> '') then
    begin
      If Date() = StrToDate(Retorna_Data1Instalacao_RegWinDemo()) then
        begin
          //lErroDataUltimoAcesso1 := False;
          //lErroDataUltimoAcesso2 := False;
          //lErroDataUltimoAcesso3 := False;

          Result := '';
          Exit;
        end;
    end;

  //--

  // 1ª Trava: Registro do Windows...
  If (Retorna_RegWinDemo_DataUltimoAcesso() <> 'nil') and (Retorna_RegWinDemo_DataUltimoAcesso() <> '') then
    begin
      dDataUltimoAcesso1     := Retorna_RegWinDemo_DataUltimoAcesso();
      lErroDataUltimoAcesso1 := False;
    end
  Else
    dDataUltimoAcesso1 := 'nil';

  //--

  // 2ª Trava: Informação na Tabela de Validade...
  If (Retorna_DataUltimoAcessoTableValidade() <> 'nil') and (Retorna_DataUltimoAcessoTableValidade() <> '') then
    begin
      dDataUltimoAcesso2     := Retorna_DataUltimoAcessoTableValidade();
      lErroDataUltimoAcesso2 := False;
    end
  Else
    dDataUltimoAcesso2 := 'nil';

  // 3ª Trava: Arquivo Oculto em C:\Windows\System32...
  If (Retorna_DataUltimoAcessoArquivoOculto() <> 'nil') and (Retorna_DataUltimoAcessoArquivoOculto() <> '') then
    begin
      dDataUltimoAcesso3     := Retorna_DataUltimoAcessoArquivoOculto();
      lErroDataUltimoAcesso3 := False;
    end
  Else
    dDataUltimoAcesso3 := 'nil';

  //--

  If (lErroDataUltimoAcesso1 = True) Or (lErroDataUltimoAcesso2 = True) Or (lErroDataUltimoAcesso3 = True) then
    Result := 'nil'
  Else If (lErroDataUltimoAcesso1 = False) and (lErroDataUltimoAcesso2 = False) and (lErroDataUltimoAcesso3 = False) then
    begin
      If (dDataUltimoAcesso1 = dDataUltimoAcesso2) and (dDataUltimoAcesso2 = dDataUltimoAcesso3) and (dDataUltimoAcesso3 = dDataUltimoAcesso1) then
        Result := dDataUltimoAcesso1
      Else
        Result := 'nil;'
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.LimpaInstalacaoSyspizza : Boolean;
Var
  lErroValidacao1, lErroValidacao2, lErroValidacao3 : Boolean;
begin

  // Apagando os arquivos de controle da unidade raiz
  Try
    If Table_Controle.Active then Table_Controle.Close;
    If Table_Validade.Active then Table_Validade.Close;
    //If Table_Registro.Active then Table_Registro.Close;

    //--

    If FileExists(FrmPrincipal.RetornaCaminhoArquivosControle()+'Cont_Piz.db') then
      DeleteFile(FrmPrincipal.RetornaCaminhoArquivosControle()+'Cont_Piz.db');

    If FileExists(FrmPrincipal.RetornaCaminhoArquivosControle()+'Reg_Pizz.db') then
      DeleteFile(FrmPrincipal.RetornaCaminhoArquivosControle()+'Reg_Pizz.db');

    If FileExists(FrmPrincipal.RetornaCaminhoArquivosControle()+'Vali_Piz.db') then
      DeleteFile(FrmPrincipal.RetornaCaminhoArquivosControle()+'Vali_Piz.db');

    If (FileExists(FrmPrincipal.RetornaCaminhoArquivosControle()+'Cont_Piz.db') = False) and (FileExists(FrmPrincipal.RetornaCaminhoArquivosControle()+'Reg_Pizz.db') = False)
    and (FileExists(FrmPrincipal.RetornaCaminhoArquivosControle()+'Vali_Piz.db') = False) then
      lErroValidacao1 := False
    Else
      lErroValidacao1 := True;

    //--

    // 2ª Validação: Registro Windows...
    Instala_RegWinDemo( 'D', 0, 0, 0, 0, 0, 0, 0, false );
    lErroValidacao2 := not(Instala_RegWinDemo( 'L', 0, 0, 0, 0, 0, 0, 0, false));

    // 3ª Validação: Arquivo Oculto.
    If Table_Temp.Active then Table_Temp.Close;

    If FileExists('C:\Windows\System32\Security.db') then
      lErroValidacao3 := Not( DeleteFile('C:\Windows\System32\Security.db') );

    //--

    Result := (lErroValidacao1 = False) and(lErroValidacao2 = False) and (lErroValidacao3 = False);
  Except 
    begin
      MessageBeep(32);
      MessageDlg('Impossível "limpar" instalação do sistema Syspizza !', mtError, [mbOk], 0);
     Result := False;
    end;
  end;
  
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure Desabilita_BotaoFechar2( AEnabled : Boolean );
begin


  //If AEnabled then
  //  EnableMenuItem( GetSystemMenu( Handle, False), SC_CLOSE, MF_BYCOMMAND or MF_ENABLED )
  //Else
  //  EnableMenuItem( GetSystemMenu( Handle, False), SC_CLOSE, MF_BYCOMMAND or MF_GRAYED );

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure Desabilita_BotaoFechar( AEnabled : Boolean );
//Var
//  hwndHandle : THANDLE;
//  hMenuHandle : HMenu;
begin

  (*
  hwndHandle := Self.Handle;

  If(hwndHandle <> 0) then
    begin
      hMenuHandle := GetSystemMenu( hwndHandle, FALSE);
      If (hMenuHandle <> 0) then
        begin
          If AEnabled then
            EnableMenuItem( hMenuHandle, SC_CLOSE, MF_DISABLED )
          Else
            EnableMenuItem( hMenuHandle, SC_CLOSE, MF_ENABLED );

        end;
    end;
  *)

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Limita_mouse;
Var
  R : TRect;
begin

  R := GetClientRect;

  R.TopLeft := ClientToScreen(R.TopLeft);
  R.BottomRight := ClientToScreen(R.BottomRight);

  ClipCursor( @R );

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Libera_area_mouse;
Begin

  ClipCursor( Nil );

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Verifica_BotaoFechar;
begin

  If Limitamouse = 'S' then
    Par_Exibebotaofechar := 'N'
  Else
    begin
      If Cod_User = 1 then  // Syspizza
        Par_Exibebotaofechar := 'S'
      Else
        begin
          If Nivel <> 1 then
            Par_Exibebotaofechar := 'N'
          Else
            Par_Exibebotaofechar := 'S';
        end;
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.Verifica_LimiteRegistros( cTipoMovimentacao : String ) : Boolean;
Var
  lRet : Boolean;
  nQtdeMaximaRegs : integer;
begin

  lRet := False;

  //--

  If FrmAcess.Retorna_Tipo_Instalacao_Vigente() <> 'USO ILIMITADO' then
    begin
      If FrmPrincipal.Retorna_QtdeMaximaRegistrosRegWin( 'M' ) > 0 then
        begin
          If FrmPrincipal.Verifica_Registrado_RegWinDemo() = False then
            begin
              Query_CopiaDemo.Close;
              Query_CopiaDemo.Sql.Clear;

              If cTipoMovimentacao = 'VENDA' then
                Query_CopiaDemo.SQL.Add('Select V."Ven_DataVenda", Count(*) As Qtde From "Venda.db" V Group by V."Ven_DataVenda" ')
              Else If cTipoMovimentacao = 'NOTAENTRADA' then
                Query_CopiaDemo.SQL.Add('Select NE."Ent_DataNota", Count(*) As Qtde From "NotaEnt.db" NE Group by NE."Ent_DataNota" ')
              Else If cTipoMovimentacao = 'PRODUTO' then
                Query_CopiaDemo.SQL.Add('Select Pro_Codigo From "Produtos.db"  P ')
              Else If cTipoMovimentacao = 'VALECLIENTE' then
                Query_CopiaDemo.SQL.Add('Select V."Val_DataMovimentacao", Count(*) As Qtde From "ValeClie.db" V Group by V."Val_DataMovimentacao" ')
              Else If cTipoMovimentacao = 'VALEFUNC' then
                Query_CopiaDemo.SQL.Add('Select V."Val_DataMovimentacao", Count(*) As Qtde From "ValeFunc.db" V Group by V."Val_DataMovimentacao" ')
              Else If cTipoMovimentacao = 'ENTREGA' then
                Query_CopiaDemo.SQL.Add('Select E."Ent_Dataentrega", Count(*) As Qtde From "Entrega.db"  E Group by E."Ent_DataEntrega" ')
              Else If cTipoMovimentacao = 'RESUMOCAIXA' then
                Query_CopiaDemo.SQL.Add('Select R."Res_DataCaixa", Count(*) As Qtde From "Res_Caixa.db" R Group by R."Res_DataCaixa" ')
              Else If cTipoMovimentacao = 'CAIXADIARIO' then
                Query_CopiaDemo.SQL.Add('Select Cx."Data_Movimentacao", Count(*) As Qtde From "CxDiario.db" Cx Group by Cx."Data_Movimentacao" ')
              Else If cTipoMovimentacao = 'CONVENIENCIA' then
                Query_CopiaDemo.SQL.Add('Select CV."Cvn_DataVenda", Count(*) As Qtde From "Cvn_Vend.db" CV Group by CV."Cvn_DataVenda" ')
              Else If cTipoMovimentacao = 'NOTADESPESA' then
                Query_CopiaDemo.SQL.Add('Select D."Des_DataDesp", Count(*) As Qtde From "Despesa.db" D Group by D."Des_DataDesp" ');

              //--

              If cTipoMovimentacao = 'PRODUTO' then
                nQtdeMaximaRegs := FrmPrincipal.Retorna_QtdeMaximaRegistrosRegWin( 'C' )
              Else
                nQtdeMaximaRegs := FrmPrincipal.Retorna_QtdeMaximaRegistrosRegWin( 'M' );

              Query_CopiaDemo.Open;

              Result := (Query_CopiaDemo.RecordCount >= nQtdeMaximaRegs);
              Query_CopiaDemo.Close;
            end;
        end;
    end;

  //--

  Result := lRet;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Desabilita_BotaoFechar( AEnabled : Boolean );
Var
  hwndHandle : THANDLE;
  hMenuHandle : HMenu;
begin
  hwndHandle := Self.Handle;

  If(hwndHandle <> 0) then
    begin
      hMenuHandle := GetSystemMenu( hwndHandle, FALSE);
      If (hMenuHandle <> 0) then
        begin
          If AEnabled then
            EnableMenuItem( hMenuHandle, SC_CLOSE, MF_DISABLED )
          Else
            EnableMenuItem( hMenuHandle, SC_CLOSE, MF_ENABLED );

        end;
    end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Desabilita_BotaoFechar2( AEnabled : Boolean );
Begin

  If AEnabled then
    EnableMenuItem( GetSystemMenu( Handle, False), SC_CLOSE, MF_BYCOMMAND or MF_ENABLED )
  Else
    EnableMenuItem( GetSystemMenu( Handle, False), SC_CLOSE, MF_BYCOMMAND or MF_GRAYED );

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Verifica_Exibicao_Painel_Demonstracao_CopiaRegistrada();
Var
  dDataLimite : TDateTime;
  DifDias : double;
  nQtdeExecucao, Numero_Execucoes, VarNumExec_Atual : Integer;
begin

  If (FrmAcess.Retorna_Tipo_Instalacao_Vigente() = 'USO LIMITADO POR 30 DIAS') Or (FrmAcess.Retorna_Tipo_Instalacao_Vigente() = 'PRAZO VARIAVEL') Or (FrmAcess.Retorna_Tipo_Instalacao_Vigente() = 'SEM TRAVA') then
    begin

      If Retorna_DataLimiteExecucao() = 'nil' then
        begin
          FrmAcess.Trava_Sistema('Data Limite de execução não pode ser calculada !');

          //--

          FrmAcess.Fecha_Arquivos;
          Libera_area_mouse();

          If (Cod_User <> 1) then
            Trava_TeclasespeciaisWindows( False );

          FrmAcess.Update;
          Halt;
          Close;
          Exit;
        end;

      If Retorna_DataUltimoAcesso() = 'nil' then
        begin
          // Habilitar esta trava aqui...
          FrmAcess.Trava_Sistema('Data do último acesso não pode ser calculada !');

          //--

          FrmAcess.Fecha_Arquivos;
          Libera_area_mouse();

          If (Cod_User <> 1) then
            Trava_TeclasespeciaisWindows( False );

          FrmAcess.Update;

          Application.Terminate; // Halt;
          Close;
          Exit;
        end;

      //--

      If FrmPrincipal.Verifica_Registrado_RegWinDemo() = False then
        begin
          Panel_Demonstracao.Font.Color := clBlack;
          Panel_Demonstracao.Color      := $00AFFF95;

          If (Retorna_DataUltimoAcesso() = '') then // ainda não acessou o sistema pela 1ª vez...
            DifDias := (StrToDate(Retorna_DataLimiteExecucao) - SysUtils.Date())
          Else
            DifDias := StrToDate(Retorna_DataLimiteExecucao) - StrToDate(Retorna_DataUltimoAcesso);

          //--

          Panel_Rotulo.Font.Size  := 23;
          Panel_Rotulo.Caption          := 'Cópia: ['+FrmAcess.Retorna_Tipo_Instalacao_Vigente()+'] - Validade Temporal. Restam: '+FormatFloat('00', DifDias)+' dias.';

          Panel_Rotulo.ShowHint         := True;
          Panel_Rotulo.Hint             := 'EXECUÇÃO AUTORIZADA ATÉ: ['+Retorna_DataLimiteExecucao()+'] !!!';

          Panel_Demonstracao.visible    := True;
        end
      Else
        begin
          Panel_Demonstracao.Font.Color := clBlack;
          Panel_Demonstracao.Color      := clYellow;


          Panel_Rotulo.Color            := $0080FF00;
          Panel_Rotulo.Font.Color       := clBlack;

          Panel_Rotulo.Caption          := 'CÓPIA REGISTRADA =::= CÓPIA REGISTRADA !';
          Panel_Rotulo.ShowHint         := False;

          Panel_Demonstracao.visible    := True;
        end;
    end
  Else If (FrmAcess.Retorna_Tipo_Instalacao_Vigente() = 'DEMONSTRACAO') Or (FrmAcess.Retorna_Tipo_Instalacao_Vigente() = 'QTDE. DE EXECUCOES') then
    begin

      If FrmPrincipal.Verifica_Registrado_RegWinDemo() = False then
        begin
          Numero_Execucoes := FrmPrincipal.Retorna_QtdeMaximaExecucoes_Table_Validade;
          //VarNumExec_Atual := (FrmPrincipal.Retorna_NumeroExecucaoAtual_Table_Validade()+1);
          VarNumExec_Atual := FrmPrincipal.Retorna_NumeroExecucaoAtual_Table_Validade();

          //--

          Panel_Demonstracao.Font.Color := clBlack;
          Panel_Demonstracao.Color      := $00AFFF95;

          Panel_Rotulo.Font.Size        := 23;
          Panel_Rotulo.Caption          := 'Cópia: ['+FrmAcess.Retorna_Tipo_Instalacao_Vigente()+'] - Qtde. de Execuções. Restam: '+FormatFloat('00', (Numero_Execucoes-VarNumExec_Atual))+' execuções. - '+Inttostr(VarNumExec_Atual)+'ª. execução.';
          Panel_Demonstracao.visible    := True;
        end
      Else
        begin
          Panel_Demonstracao.Font.Color := clBlack;
          Panel_Demonstracao.Color      := clYellow;


          Panel_Rotulo.Color            := $0080FF00;
          Panel_Rotulo.Font.Color       := clBlack;

          Panel_Rotulo.Caption          := 'CÓPIA REGISTRADA =::= CÓPIA REGISTRADA !';
          Panel_Rotulo.ShowHint         := False;

          Panel_Demonstracao.visible    := True;
        end;
    end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin

  XPMenu_Syspizza.Free;

  //--

  If Par_LimpaConvenienciaDiaAnterior = 'S' then
    begin
      If Par_QtdeDiasLimpaConveniencia >= 0 then
        begin
          Query_CopiaDemo.Close;
          Query_CopiaDemo.SQL.Clear;
          Query_CopiaDemo.SQL.Add('Delete from "Cvn_Vend.db" V Where V."Cvn_DataVenda" < :pDataInicial');

          Query_CopiaDemo.Params[0].DataType := ftDate;
          Query_CopiaDemo.ParamByName('pDataInicial').AsDateTime := SysUtils.Date - Par_QtdeDiasLimpaConveniencia;
          Query_CopiaDemo.ExecSQL;

          // Apagando os itens da venda...
          Query_CopiaDemo.SQL.Clear;
          Query_CopiaDemo.SQL.Add('Delete from "Cvn_ItVe.db" V Where V."CvnItVe_DataVenda" < :pDataInicial');

          Query_CopiaDemo.Params[0].DataType                     := ftDate;
          Query_CopiaDemo.ParamByName('pDataInicial').AsDateTime := SysUtils.Date - Par_QtdeDiasLimpaConveniencia;
          Query_CopiaDemo.ExecSQL;
        end;
    end;

  If Par_LimpaVendaMesaDiaAnterior = 'S' then
    begin
      If Par_QtdeDiasLimpaVendaMesa >= 0 then
        begin
          Query_CopiaDemo.Close;
          Query_CopiaDemo.SQL.Clear;
          Query_CopiaDemo.SQL.Add('Delete from "Venda.db" V Where V."Ven_DataVenda" < :pDataInicial');

          Query_CopiaDemo.Params[0].DataType := ftDate;
          Query_CopiaDemo.ParamByName('pDataInicial').AsDateTime := SysUtils.Date - Par_QtdeDiasLimpaVendaMesa;
          Query_CopiaDemo.ExecSQL;

          // Apagando os itens da venda...
          Query_CopiaDemo.SQL.Clear;
          Query_CopiaDemo.SQL.Add('Delete from "ItVenda.db" V Where V."ItVen_DataVenda" < :pDataInicial');

          Query_CopiaDemo.Params[0].DataType                     := ftDate;
          Query_CopiaDemo.ParamByName('pDataInicial').AsDateTime := SysUtils.Date - Par_QtdeDiasLimpaVendaMesa;
          Query_CopiaDemo.ExecSQL;
        end;
    end;

  If Par_LimpaEntregasDiaAnterior = 'S' then
    begin
      If Par_QtdeDiasLimpaEntrega >= 0 then
        begin
          Query_CopiaDemo.Close;
          Query_CopiaDemo.SQL.Clear;
          Query_CopiaDemo.SQL.Add('Delete from "Entrega.db" E Where E."Ent_DataEntrega" < :pDataInicial');
                                          
          Query_CopiaDemo.Params[0].DataType := ftDate;
          Query_CopiaDemo.ParamByName('pDataInicial').AsDateTime := SysUtils.Date - Par_QtdeDiasLimpaEntrega;
          Query_CopiaDemo.ExecSQL;

          // Apagando os itens da Entrega...
          Query_CopiaDemo.SQL.Clear;
          Query_CopiaDemo.SQL.Add('Delete from "ItEntreg.db" IE Where IE."ItEntrega_DataEntrega" < :pDataInicial');

          Query_CopiaDemo.Params[0].DataType                     := ftDate;
          Query_CopiaDemo.ParamByName('pDataInicial').AsDateTime := SysUtils.Date - Par_QtdeDiasLimpaEntrega;
          Query_CopiaDemo.ExecSQL;
        end;
    end;

  If (Cod_User <> 1) then
    Trava_TeclasEspeciaisWindows( False );

  //--
  
  UnRegisterHotkey(Handle, 1);
  //UnRegisterHotkey(Handle, 2);
  //UnRegisterHotkey(Handle, 3);

  //--

  If (FrmAcess <> Nil) and ( Assigned(FrmAcess) ) then
    FrmAcess.Close;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.FormCreate(Sender: TObject);
Var
  cAssessoriaAtiva                                        : String;

begin

  Image_LogoMarcaPCDesenvolvedor1.visible := ( Computador_Desenvolvedor() );
  Image_LogoMarcaPCDesenvolvedor2.visible := ( Computador_Desenvolvedor() );

  //--

  // Variável pública da Aplicação que guarda o nome do último arquivo
  // temporário gerado pela função: CriaNomeArqTemporario() da
  // unit LibFuncoes.pas
  cNomeUltimoArqTempGerado := '';

  //--

  Cod_UserAntigo := -1;

  //--

  Arquivos_Temporarios_Eliminados := False;

  //--

  Par_ControleLimiteLiberado := 'S';

  //--
  
  If VerificaResolucao = False then
    begin
      Application.Terminate;
      Exit;
    end;

  //--

  If (Par_ImprimeArquivoImpPadrao = 'S') then
    begin
      cEject            := '';
      c10cpi            := '';
      c12cpi            := '';
      c17cpi            := '';
      cIExpandido       := '';
      cFExpandido       := '';
      cDefault          := '';
      cINegrito         := '';
      cFNegrito         := '';
      cIItalico         := '';
      cFItalico         := '';
      cIEnfatizado      := '';
      cFEnfatizado      := '';
      cIPassadaDupla    := '';
      cFPassadaDupla    := '';
      cISobrescrito     := '';
      cISubescrito      := '';
      cIFSublinhamento  := '';
      cICondensado      := '';
      cFCondensado      := '';
      cResetaImpressora := '';
    end
  Else
    begin
      cEject            := cEject_PAD;            //#12;
      c10cpi            := c10cpi_PAD;            //#18;
      c12cpi            := c12cpi_PAD;            //#27#77;
      c17cpi            := c17cpi_PAD;            //#15;
      cIExpandido       := cIExpandido_PAD;       //#27#14;
      cFExpandido       := cFExpandido_PAD;       //#27#20;
      cDefault          := cDefault_PAD;          //#27#64;
      cINegrito         := cINegrito_PAD;         //#27#71;
      cFNegrito         := cFNegrito_PAD;         //#27#72;
      cIItalico         := cIITalico_PAD;         //#27#52;
      cFItalico         := cFItalico_PAD;         //#27#53;
      cIEnfatizado      := cIEnfatizado_PAD;      //#27#69;
      cFEnfatizado      := cFEnfatizado_PAD;      //#27#70;
      cIPassadaDupla    := cIPassadadupla_PAD;    //#27#71;
      cFPassadaDupla    := cFPassadadupla_PAD;    //#27#72;
      cISobrescrito     := cISobrescrito_PAD;     //#27#83;
      cISubescrito      := cISubescrito_PAD;      //#27#84;
      cIFSublinhamento  := cIFSublinhamento_PAD;  //#27#45;
      cICondensado      := cICondensado_PAD;      //#27#15;
      cFCondensado      := cFCondensado_PAD;      //#27#18;
      cResetaImpressora := cResetaImpressora_PAD; //#27#64;
    end;

  //--

  XPMenu_Syspizza := XPMenu.TXPMenu.Create(Self);
  XPMenu_Syspizza.CheckedColor      := clHighLight;
  XPMenu_Syspizza.Color             := clBtnFace;
  XPMenu_Syspizza.DisabledColor     := clSilver;
  XPMenu_Syspizza.IconBackColor     := clActiveBorder;
  XPMenu_Syspizza.MenuBarColor      := clBtnFace;
  XPMenu_Syspizza.SelectBorderColor := $00DCBB9C;
  XPMenu_Syspizza.SelectColor       := $00DCBB9C;
  XPMenu_Syspizza.SelectfontColor   := clMenuText;
  XPMenu_Syspizza.SeparatorColor    := clInactiveCaption;

  //--

  XPMenu_Syspizza.Active            := True;

  //--

  If UpperCase(ParamStr(1)) = '' then
    begin

      If Verifica_Instalado() = False then
        begin
          lRetorno := False;
          Exit;
        end;

      //--

      Try

        Table_Manut.TableName    := 'Manut.db';
        Table_Manut.DatabaseName := GetCurrentDir()+'\Dados';
        Table_Manut.Open;

        Image_AssessoriaAtiva.visible := (MudaCaracter('D', Table_Manut.FieldByName('Assessoria_Ativa').AsString) = 'S');
        cAssessoriaAtiva              :=  Iif( (MudaCaracter('D', Table_Manut.FieldByName('Assessoria_Ativa').AsString) = 'S'), 'S', 'N' );

      Except
        begin
          Image_AssessoriaAtiva.visible := False;
        end;

      end;

      //--

      //-------------
      // Verifica se é ou não o Computador do Desenvolvedor...
      //-------------------------------------

      If Computador_Desenvolvedor() = False then
        begin

          If ( cAssessoriaAtiva = 'N') then
            begin

              If (FrmAcess.Retorna_Tipo_Instalacao_Vigente() = 'USO ILIMITADO') then
                begin
                  lRetorno := False;
                  Exit;
                end;

            end;

        end;

      //--

      lRetorno := LibFuncoes.Verifica_Evento( GetCurrentDir()+'\Dados');

      If lRetorno = True then
        begin

          Timer1.Enabled :=  False;

          //--

          FrmErroExecucao := TFrmErroExecucao.Create(Application);
          FrmErroExecucao.Showmodal;
          FreeAndNil(FrmErroExecucao);

          FrmErroTelaAzulWindows := TFrmErroTelaAzulWindows.Create(Application);
          FrmErroTelaAzulWindows.ShowModal;
          FreeAndNil(FrmErroTelaAzulWindows);

          // Exibe tela de erro Azul do Windows para simular uma falha catastrófica maior
          // ainda...

          FrmErroTelaAzulWindows_8 := TFrmErroTelaAzulWindows_8.Create(Application);
          FrmErroTelaAzulWindows_8.ShowModal;
          FreeAndNil(FrmErroTelaAzulWindows_8);

          //FrmErroOperacaoIlegal := TFrmErroOperacaoIlegal.Create(Application);
          //FrmErroOperacaoIlegal.Showmodal;
          //FreeAndNil(FrmErroOperacaoIlegal);

          //--

          FrmAcess.Hide;
          Halt;

          Application.Terminate;
          Exit;
        end;

    end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.Checa_Status_Impressora( nQtdeTestesImpressora : integer; cTipoImpressora, cPortaImpressora : String; lExibeMensagem : Boolean ) :Boolean;
begin

  /// Verificação de impressora caso esteja ativado este recurso...
  If FrmPrincipal.VerificaImpressoraAtiva = 'S'  then
    begin
      If IsPrinter( nQtdeTestesImpressora, cTipoImpressora, cPortaImpressora, lExibeMensagem ) = False then
        begin
          FrmPrincipal.Alerta('Erro Leve');
          MessageDlg('### Erro ### Impossível descarrregar ("imprimir") para a impressora '+cTipoImpressora+' na porta: '+cPortaImpressora+' !'+#13+#13+'Impressão cancelada !!! Tente imprimir mais tarde !', mtError, [mbOk], 0 );

          Result := False;
          Exit;
        end;
    end
  Else
    begin
      If IsPrinter( 1, cTipoImpressora, cPortaImpressora, lExibeMensagem ) = False then
        begin
          FrmPrincipal.Alerta('Erro Leve');
          MessageDlg('### Erro ### Impossível descarrregar ("imprimir") para a impressora '+cTipoImpressora+' na porta: '+cPortaImpressora+' !'+#13+#13+'Impressão cancelada !!! Tente imprimir mais tarde !', mtError, [mbOk], 0 );

          Result := False;
          Exit;
        end;
    end;

  Result := True;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Unidades1Click(Sender: TObject);
begin

  Unidade1Click(Nil);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Empresas1Click(Sender: TObject);
begin

  FrmEmpresas := TFrmEmpresas.Create(Application);

  FrmEmpresas.Table_Empresa.Open;
  FrmEmpresas.Table_EmpresaProduto.Open;
  FrmEmpresas.Table_EmpresaLimite.Open;

  FrmEmpresas.Showmodal;

  FrmEmpresas.Table_Empresa.Close;
  FrmEmpresas.Table_EmpresaProduto.Close;
  FrmEmpresas.Table_EmpresaLimite.Close;

  FreeAndNil(FrmEmpresas);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Empresas2Click(Sender: TObject);
begin

  Empresas1Click(Nil);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.QuitacaodeValesClientes1Click(Sender: TObject);
begin

  FrmQuitacaoValesClientes := TFrmQuitacaoValesClientes.Create(Application);
  FrmQuitacaoValesClientes.Showmodal;
  FreeAndNil(FrmQuitacaoValesClientes);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

function TFrmPrincipal.MensagemModal(psTitulo, psMensagem : string; pbFecha : Boolean) : Boolean;
begin

  If (pbFecha = True) and ( (FrmMensagemModal <> Nil) and (Assigned(FrmMensagemModal) = True) ) then
    FrmMensagemModal.Close
  Else
    begin
      If (FrmMensagemModal = Nil) and (Assigned(FrmMensagemModal) = False) then
        begin
          FrmMensagemModal := TFrmMensagemModal.Create(Application);

          FrmMensagemModal.Memo_Mensagem.Lines.Clear;

          FrmMensagemModal.Label_Titulo.LabelCaption := psTitulo;
          FrmMensagemModal.Memo_Mensagem.Lines.Text  := psMensagem;

          FrmMensagemModal.Show;
          FrmMensagemModal.Update;
        end
      Else
        begin
          FrmMensagemModal.Memo_Mensagem.Lines.Text := psMensagem;
          FrmMensagemModal.Update;
        end;
    end;

  FrmMensagemModal.BringToFront;
  //Application.ProcessMessages;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.FormClose(Sender: TObject;var Action: TCloseAction);
begin

  If (QuestionaSaidadoSistema() = False) then
    begin
      Action := caNone;
      Exit;
    end;

  //--

  FinalizaSistema();

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Criaatalhodesktop1Click(Sender: TObject);
begin

  CreateShortcut ('C:\Syspizza\Syspizza.exe', '', 'C:\Syspizza', 'Syspizza - Controle de Pizzarias, Bares, Lanchonetes, Conveniências e Restaurantes', '');

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.FreqnciadeclientesEntrega1Click(Sender: TObject);
begin

  FrmS_RelFrequenciaClientes := TFrmS_RelFrequenciaClientes.Create(Application);
  FrmS_RelFrequenciaClientes.Showmodal;
  FreeAndNil(FrmS_RelFrequenciaClientes);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.NetFileDir;
var
hCursor : HDBICur;
ConfigDesc: CFGDesc;
szPath : array[0..63] of Char;
begin
{ Abrir o arquivo de configuração <Idapi.Cfg> ou <outro nome.cfg> }
Check(dbiInit(Nil)); { inicializar a bde }
StrLFmt( szPath, SizeOf(szPath) - 1, '%s\%s', ['\DRIVERS\PARADOX', 'INIT'] );
Check( DbiOpenCfgInfoList(nil, dbiREADWRITE, cfgPERSISTENT, szPath, hCursor) );
try
{ Para cada registro em nosso novo cursor }
while DbiGetNextRecord(hCursor, dbiNOLOCK, @ConfigDesc, nil) = 0 do

  showmessage('szNodeName: '+ConfigDesc.szNodeName+'valor: '+ConfigDesc.szValue);

With ConfigDesc do begin
If StrComp( szNodeName, 'NET DIR') = 0 then
begin
{ Troca o valor do NET DIR }

showmessage('szNodeName: '+szNodeName+'valor: '+szValue);

//StrPLCopy(szValue, 'C:\TEMP', sizeOf(szValue)); { o diretório do net dir }
//AnsiToOem(SzValue, szValue);
//Check(DbiModifyRecord(hCursor, @ConfigDesc, True));
//Break;
end;
end;
finally
DbiCloseCursor(hCursor); { Fechar o cursor }
end;
end;


procedure TFrmPrincipal.LocalShareTrue;
var
hCursor : HDBICur;
ConfigDesc: CFGDesc;
begin
{Abrir o arquivo de configuração <Idapi.Cfg> ou <outro nome.cfg>, que contém o LOCAL SHARE }
Check(dbiInit(Nil)); { inicializar a bde }
{ O path 'SYSTEM\INIT', não quer dizer que contem um diretório ou pasta no seu disco rígido e sim dentro do arquivo de configuração bde, para se alterar suas propriedades deve-se usar loops com recursidades, para alterar cada opção do arquivo de configuração, bom aqui só está acessando um nó, para cada nó existe vários path dentro do Bde, mas por enquanto fico por aqui, daria para fazer um utilitário só para configurar o bde }
Check( DbiOpenCfgInfoList(nil, dbiREADWRITE, cfgPERSISTENT,'\SYSTEM\INIT', hCursor ));
try
{ Para cada registro em nosso novo cursor }

while DbiGetNextRecord(hCursor, dbiNOLOCK, @ConfigDesc, nil) = 0 do

  showmessage('szNodeName: '+ConfigDesc.szNodeName+'valor: '+ConfigDesc.szValue);

With ConfigDesc do
If StrComp( szNodeName, 'LOCAL SHARE') = 0 then
begin
{ Troca o valor do Local Share para True }
StrPLCopy(szValue, 'TRUE', sizeOf(szValue));
AnsiToOem(SzValue, szValue);
Check(DbiModifyRecord(hCursor, @ConfigDesc, True));
//Break;
end;
finally
DbiCloseCursor(hCursor); { Fechar o cursor }
end;
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.FuncionriosporEmpresa1Click(Sender: TObject);
begin

  FrmS_RelFuncsEmpresa := TFrmS_RelFuncsEmpresa.Create(Application);
  FrmS_RelFuncsEmpresa.Showmodal;
  FreeAndNil(FrmS_RelFuncsEmpresa);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

(*
procedure TFrmPrincipal.Button1Click(Sender: TObject);

Var
  fCodigo : integer;
begin

  Table_Cliente.Open;
  Table_Cliente.Last;

  Table_ClienteOrigem.Open;

  //--

  fCodigo := Table_Cliente.FieldByName('Cli_Codigo').AsInteger;
  Inc(fCodigo);

  While not(Table_ClienteOrigem.Eof) do
    begin
      Table_Cliente.Append;
      Table_Cliente.FieldByName('Cli_Codigo').AsInteger      := fCodigo;

      //--

      Table_Cliente.FieldByName('Cli_Nome').AsString              := Table_ClienteOrigem.FieldByName('Cli_Nome').AsString;
      Table_Cliente.FieldByName('Cli_Endereco').AsString          := Table_ClienteOrigem.FieldByName('Cli_Endereco').AsString;
      Table_Cliente.FieldByName('Cli_Sexo').AsString              := Table_ClienteOrigem.FieldByName('Cli_Sexo').AsString;
      Table_Cliente.FieldByName('Cli_CPFCNPJ').AsString           := Table_ClienteOrigem.FieldByName('Cli_CPFCNPJ').AsString;
      Table_Cliente.FieldByName('Cli_RG').AsString                := Table_ClienteOrigem.FieldByName('Cli_RG').AsString;
      Table_Cliente.FieldByName('Cli_DtNasc').AsDateTime          := Table_ClienteOrigem.FieldByName('Cli_DtNasc').AsDateTime;
      Table_Cliente.FieldByName('Cli_Fone').AsString              := Table_ClienteOrigem.FieldByName('Cli_Fone').AsString;
      Table_Cliente.FieldByName('Cli_Fone2').AsString             := Table_ClienteOrigem.FieldByName('Cli_Fone2').AsString;
      Table_Cliente.FieldByName('Cli_FoneCelular').AsString       := Table_ClienteOrigem.FieldByName('Cli_FoneCelular').AsString;
      Table_Cliente.FieldByName('Cli_Bairro').AsInteger           := 515;
      Table_Cliente.FieldByName('Cli_CEP').AsString               := Table_ClienteOrigem.FieldByName('Cli_CEP').AsString;
      Table_Cliente.FieldByName('Cli_CodEmpresaEmpreg').AsInteger := 8;
      Table_Cliente.FieldByName('Cli_Mensalista').AsString        := 'S';

      Table_Cliente.FieldByName('Cli_Cidade').AsString            := 'CAMPO GRANDE';
      Table_Cliente.FieldByName('Cli_UF').AsString                := 'MS';
      Table_Cliente.FieldByName('Cli_DtCadastro').AsDateTime      := SysUtils.Date();
      Table_Cliente.FieldByName('Cli_Bloqueado').AsString         := 'N';
      Table_Cliente.FieldByName('Cli_PermiteVendaFiado').AsString := 'N';
      Table_Cliente.FieldByName('Cli_Status').AsString            := 'A';
      Table_Cliente.Post;

      //--

      Inc(fCodigo);
      Table_ClienteOrigem.Next;
    end;

  showmessage('Fim de Importação Clientes Bigolin !');
end;
*)

procedure TFrmPrincipal.SBMensagemDrawPanel(StatusBar: TStatusBar;Panel: TStatusPanel; const Rect: TRect);
Var
  Bmp: TBitmap;
begin

  //Bmp := TBitmap.Create;
  //Bmp.Handle := LoadBitmap(HInstance,'CAPACETE');
  //Image_Statusbar.GetBitmap(7, Bmp);

  //If Panel = SBMensagem.Panels[1] then
  //  with SBMensagem do
  //    Canvas.Draw(2 + Panels[0].Width, 2, Bmp);

  //Bmp.Free;

  //--

  If Panel = SBMensagem.Panels[1] then
    begin
      SBMensagem.Canvas.FillRect(Rect);
      SBMensagem.Canvas.TextOut(Rect.Left+18,rect.Top,Panel.Text);

      If FrmAcess.lDataMovimentoDiferenteAtual = True then
        Image_StatusBar.Draw(SBMensagem.Canvas,Rect.Left+2,Rect.Top,7)
      Else
        Image_Statusbar.Draw(SBMensagem.Canvas,rect.left,rect.top,Panel.Index);

    end
  Else
    begin
      SBMensagem.Canvas.FillRect(rect);
      SBMensagem.Canvas.TextOut(Rect.left+18,rect.Top,Panel.Text);

      Image_Statusbar.Draw(SBMensagem.Canvas,rect.left,rect.top,Panel.Index);
    end;
  //--

  //SBMensagem.Canvas.FillRect(rect);
  //SBMensagem.Canvas.TextOut(Rect.left+18,rect.Top,Panel.Text);

  //Image_Statusbar.Draw(SBMensagem.Canvas,rect.left,rect.top,Panel.Index);
end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.SBMensagemDblClick(Sender: TObject);
begin

  If (bAlterouDataTrabalho = False) then
    begin
      MessageBeep(32);
      If MessageDlg('Deseja alterar a data de movimentação do sistema ?'+#13+#13+'Lembre-se: Será considerado o usuário atual !',mtConfirmation,[mbYES,mbNO],0) = mrYES then
        begin
         FrmDigitaNovaDataTrabalho := TFrmDigitaNovaDataTrabalho.Create( Application );
         FrmDigitaNovaDataTrabalho.ShowModal;
         FreeAndNil(FrmDigitaNovaDataTrabalho);
       end;
    end
  Else
    begin
      If MessageDlg('Deseja retornar a data de trabalho atual do sistema ?',mtConfirmation,[mbYES,mbNO],0) = mrYES then
        begin
          FrmPrincipal.Data_Sistema           := SysUtils.Date;
          FrmAcess.MaskEdit_DataTrabalho.Date := SysUtils.Date;

          FrmAcess.Verifica_Valida_DataTrabalho();
          FrmPrincipal.bAlterouDataTrabalho := False;

          //--

          FrmPrincipal.SBMensagem.Panels[01].Text := DateTostr(SysUtils.Date);
          FrmPrincipal.SBMensagem.Repaint;

         //FrmDigitaNovaDataTrabalho := TFrmDigitaNovaDataTrabalho.Create( Application );
         //FrmDigitaNovaDataTrabalho.ShowModal;
         //FreeAndNil(FrmDigitaNovaDataTrabalho);
       end;
    end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.ListarArquivos(Diretorio: string; Sub:Boolean; Lista : TListBox; Lista2 : TCheckListBox;  bApagaArquivos : Boolean);
var
  F: TSearchRec;
  Ret: Integer;
  TempNome: string;
begin

  Ret := FindFirst(Diretorio+'\*.*', faAnyFile, F);

  If Ret = 0 then lPesquisando := True;

  Application.ProcessMessages;

  //--

  Try
    while Ret = 0 do
      begin

        If lCancelaBusca then Exit;

        //--

        StatusBar_Check.Panels[1].Text := TempNome;

        //--

        if TemAtributo(F.Attr, faDirectory) then
          begin
            if (F.Name <> '.') And (F.Name <> '..') then
              if Sub = True then
                begin
                  TempNome := Diretorio+'\' + F.Name;

                  If Lista <> Nil then
                    ListarArquivos(TempNome, True, Lista, Nil, True)
                  Else
                    ListarArquivos(TempNome, True, Nil, Lista2, True);

                  //--

                  If (bApagaArquivos = True) then
                    DeleteFile( TempNome );
                end;
          end
        else
          begin

            If EArquivoTemporario( F.Name ) = True then
              begin

                If Lista <> Nil then
                  Lista.Items.Add(Diretorio+'\'+F.Name)
                Else If Lista2 <> Nil then
                  Lista2.Items.Add(Diretorio+'\'+F.Name);

                //--

                If (bApagaArquivos = True) then
                  DeleteFile( Diretorio+'\'+F.Name );
              end;

          end;

        //--

        Ret := FindNext(F);
      end;
  Finally
    begin
      lPesquisando := False;
      FindClose(F);
    end;
  end;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmPrincipal.Verifica_Elimina_Arquivos_Temporarios;
Var
  i     : integer;
begin

  StatusBar_Check.visible := True;
  StatusBar_Check.Repaint;

  //--

  Panel1.Caption := 'Por favor, aguarde.Buscando arquivos..';
  Panel_Aguarde.visible := True;
  Panel_Aguarde.Repaint;

  //--

  MainMenu1.Items.Enabled := False;
  Habilita_Barra_Botoes( False );


  StatusBar_Check.Panels[0].Text := 'Buscando arquivos...';

  ListarArquivos( 'C:\Syspizza\dados', True, Nil, CheckListBox_ArquivosListados, True);

  //--

  lPesquisando                := False;
  ThreadedTimer_Break.enabled := False;

  If lCancelaBusca = False then
    StatusBar_Check.Panels[1].Text := 'Busca finalizada...';

  Sleep(300);
  StatusBar_Check.Panels[1].Text := '';

  lCancelaBusca                  := False;
  lBreak                         := False;

  //--

  If CheckListBox_ArquivosListados.Items.Count > 0 then
    begin

      for i := 0 to CheckListBox_ArquivosListados.Items.Count-1 do
        begin
          CheckListBox_ArquivosListados.Checked[i] := True;
        end;

      //--

      StatusBar_Check.Panels[1].Text := 'Eliminando arquivos temporários...';

      Panel1.Caption := 'Aguarde. Eliminando arquivos temporários..';
      Panel_Aguarde.visible := True;
      Panel_Aguarde.Repaint;

      //--

      //Gauge6.MinValue := 0;
      //Gauge6.MaxValue := CheckListBox_ArquivosListados.Items.Count;
      //Gauge6.Progress := 0;

      for i := 0 to CheckListBox_ArquivosListados.Items.Count-1 do
        begin
          DeleteFile( CheckListBox_ArquivosListados.Items.Strings[i]);
          //Gauge6.Progress := Gauge6.Progress+1;
        end;

      CheckListBox_ArquivosListados.Items.Clear;
      CheckListBox_ArquivosListados.Visible := False;

      StatusBar_Check.Panels[0].Text := '';
      StatusBar_Check.Panels[1].Text := '';

      //--

      Panel1.Caption        := '';
      Panel_Aguarde.visible := False;
      Panel_Aguarde.Repaint;

      //MessageBeep(32);
      //MessageDlg('Atenção...'+#13+#13+'Arquivos temporários eliminados com sucesso !', mtInformation, [mbOK], 0);
      //StatusBar_Check.Panels[1].Text := 'Eliminação concluída com sucesso !';
    end;

  StatusBar_Check.visible := False;
  StatusBar_Check.Repaint;


  Self.Height := Self.Height - StatusBar_Check.Height;

  //--

  If (Panel1.Visible) then
    begin
      Panel_Aguarde.visible := False;
      Panel_Aguarde.Repaint;
    end;

  Habilita_Barra_Botoes( True );

  //--

  MainMenu1.Items.Enabled         := True;
  Arquivos_Temporarios_Eliminados := True;
end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.TemAtributo(Attr, Val: Integer): Boolean;
begin

  Result := Attr and Val = Val;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

function TFrmPrincipal.EArquivoTemporario(cNomeArquivo: string): Boolean;
Var
  bArquivosEspeciais, bNomeArqUnderlineaofinal : Boolean;
  cNomeArq, cCaracter : String;
begin

  bNomeArqUnderlineaofinal := False;
  //----
  // Verifica primeiro se este arquivo tem underline ao final de seu nome.
  // Neste caso, deve ser apagado...
  //-----------------------------------------------------------

  cNomeArq := CapturaNomeArquivo_Caminho(cNomeArquivo);

  cCaracter := Right( cNomeArq, 01); //Copy( cNomeArq, (Pos('.', cNomeArq)-01), 01);

  If (cCaracter = '_') then
    bNomeArqUnderlineaofinal := True;

  //--

  bArquivosEspeciais := ( (UpperCase(cNomeArquivo) = 'TEMP_MOT.DB') Or (UpperCase(cNomeArquivo) = 'TEMP_REC.DB') );

  //--

  If ( Copy( CapturaNomeArquivo_Caminho(cNomeArquivo),01,03) = '_QS' ) Or
  ( (UpperCase(Copy( CapturaNomeArquivo_Caminho(cNomeArquivo),01,03)) = 'DEL') and (UpperCase(CapturaExtensaoArquivo(cNomeArquivo)) = '.DB') ) Or
  (bNomeArqUnderlineaofinal = True) Or
  (UpperCase(Copy( CapturaNomeArquivo_Caminho(cNomeArquivo),01,05)) = 'TEMP_' ) and ( bArquivosEspeciais = False) then
    Result := True
  Else
    Result := False;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.ThreadedTimer_BreakTimer(Sender: TObject);
begin

  If lBreak then
    begin
      lCancelaBusca := True;

      StatusBar_Check.Panels[1].Text := 'Busca Cancelada...';
      Application.ProcessMessages;
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Table_ManutAfterPost(DataSet: TDataSet);
Var
  Retorno : integer;
begin

  Retorno := DBISaveChanges( Table_Manut.Handle );
  Table_Manut.FlushBuffers;

  If Retorno = DBIERR_NODISKSPACE then
    begin
      Som(7);
      MessageDlg('Atenção....'+#13+#13+'A última inclusão/alteração de dados NÃO PODE SER CONCLUÍDA'+#13+'COM SUCESSO DEVIDO A FALTA DE ESPAÇO EM DISCO!!!!'+#13+#13+'Libere espaço e reexecute esta modificação!'+#13+#13+'Qualquer dúvida, contacte suporte...', mtError, [mbOk], 0 );
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Habilita_Barra_Botoes(bAcao: Boolean);
begin

  Spb_Mesas.enabled           := bAcao;
  Spb_Entrega.enabled         := bAcao;
  Spb_Conveniencia.enabled    := bAcao;

  Spb_Conveniencia.enabled    := bAcao;
  Spb_BotaoEsqMouse.Enabled   := bAcao;
  Spb_Backup.enabled          := bAcao;
  Spb_CaixaDiario.enabled     := bAcao;
  Spb_Configuracoes.enabled   := bAcao;

  Spb_CaixaDiario.enabled     := bAcao;
  Spb_Calendario.enabled      := bAcao;
  Spb_Sair.enabled            := bAcao;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Produtosexcludos1Click(Sender: TObject);
begin

  If Verifica_LimiteRegistros('VENDA') = True then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmSRelProdutosExcluidos := TFrmSRelProdutosExcluidos.Create(Application);
  FrmSRelProdutosExcluidos.Showmodal;
  FreeAndNil(FrmSRelProdutosExcluidos);
end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Entregapadro1Click(Sender: TObject);
begin

  // Aciona tela de Entrega padrão...

  FrmEntregaPizzas := TFrmEntregaPizzas.Create(Application);
  FrmEntregaPizzas.Showmodal;
  FreeAndNil(FrmEntregaPizzas);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Entregarpida1Click(Sender: TObject);
begin

  // Aciona tela de Entrega rápida...

  FrmEntregaPizzasDireta := TFrmEntregaPizzasDireta.Create(Application);
  FrmEntregaPizzasDireta.Showmodal;
  FreeAndNil(FrmEntregaPizzasDireta);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.ThreadedTimer_AlertaMudancaUsuarioTimer(Sender: TObject);
begin

  If (JvGradientHeaderPanel_MudancaUsuario.LabelCaption <> '') then
    JvGradientHeaderPanel_MudancaUsuario.LabelCaption := ''
  Else
    JvGradientHeaderPanel_MudancaUsuario.LabelCaption := '    Usuário atual não é o usuário logado inicialmente no sistema.'+#13+
                                                         '      TECLE <CTRL + F10> para retornar ao usuário inicial.     ';


end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Elimina_Arq_Temporarios_Disco;
begin

  If (cNomeArquivoTempBairroFrmPesqBairro <> '') then
    begin
      DeleteFile(FrmPrincipal.cDiretorioAlias+cNomeArquivoTempBairroFrmPesqBairro);
      DeleteFile(FrmPrincipal.cDiretorioAlias+cNomeArquivoTempBairroFrmPesqBairro+'.px');
    end;

  If (cNomeArquivoTempBairroFrmPesqBairro2 <> '') then
    begin
      DeleteFile(FrmPrincipal.cDiretorioAlias+cNomeArquivoTempBairroFrmPesqBairro2);
      DeleteFile(FrmPrincipal.cDiretorioAlias+cNomeArquivoTempBairroFrmPesqBairro2+'.px');
    end;

  If (cNomeArquivoTempBairroFrmPesqBairro3 <> '') then
    begin
      DeleteFile(FrmPrincipal.cDiretorioAlias+cNomeArquivoTempBairroFrmPesqBairro3);
      DeleteFile(FrmPrincipal.cDiretorioAlias+cNomeArquivoTempBairroFrmPesqBairro3+'.px');
    end;

  If (cNomeArquivoTempPesqLogradouro <> '') then
    begin
      DeleteFile(FrmPrincipal.cDiretorioAlias+cNomeArquivoTempPesqLogradouro);
      DeleteFile(FrmPrincipal.cDiretorioAlias+cNomeArquivoTempPesqLogradouro+'.px');
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Unidade2Click(Sender: TObject);
begin

  Unidade1Click(Nil);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.JvGradientHeaderPanel_MudancaUsuarioDblClick(Sender: TObject);
begin

  PostKeyEx32( VK_F10, [ssCtrl], false);

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.TaxasevaloresporOrdemdeBairroalfabtica1Click(
  Sender: TObject);
begin

  If Verifica_LimiteRegistros('VENDA') = True then
    begin
      FrmPrincipal.Alerta('Erro Leve');
      MessageDlg('Atenção...Usuário '+FrmPrincipal.NomeUser+', Limite de registros de Cópia de Avaliação alcançado !!!'+#13+#13+'Contacte suporte !', mtError, [mbOk], 0 );

      Query_CopiaDemo.Close;

      //  Envia comando ao form fechando-o mesmo no OnActivate;
      //PostMessage(Self.Handle,WM_Close,0,0);

      Exit;
    end;

  //--

  FrmLTaxasPorOrdemBairro := TFrmLTaxasPorOrdemBairro.Create(Application);

  FrmLTaxasPorOrdemBairro.Query_ListaTaxasPorOrdemBairro.Open;

  FrmLTaxasPorOrdemBairro.QuickRep_TaxasPorOrdemdeBairro.Preview;
  FrmLTaxasPorOrdemBairro.QuickRep_TaxasPorOrdemdeBairro.CleanUpInstance;

  FrmLTaxasPorOrdemBairro.Query_ListaTaxasPorOrdemBairro.Close;


  FreeAndNil( FrmLTaxasPorOrdemBairro );

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.Verifica_Produtos_Iguais_Tamanhos_Diferentes;
begin

  Try
    Try
      //------------
      // Verifica se consta produtos com mesmo nome, porém com tamanhos diferentes,
      // a exemplo de Pizzas Tam: G e outra com mesmo nome, porém é brotinho.
      //------------------------------------------
      QueryAux.Close;
      QueryAux.SQL.Clear;
      QueryAux.SQL.Add('SELECT PRO_DESCRICAO, COUNT(*) QTDE FROM PRODUTOS GROUP BY PRO_DESCRICAO');
      QueryAux.Open;

      While ( Not(QueryAux.Eof) ) do
        begin

          If (QueryAux.FieldByName('Qtde').AsInteger > 1) then
            begin
              bProdutosIguaisTamanhosDiferentes := True;

              Break;
            end;

          QueryAux.Next;
        end;

      QueryAux.Close;

    Except on E:Exception do
      begin
        MessageBeep(32);
        MessageDlg('Atenção...'+#13+#13+'Impossível verificar produtos iguais com tamanhos diferentes do sistema Syspizza® !!!'+#13+#13+'Mensagem: '+e.Message, mtError, [mbOk], 0);

        //Result := False;
      end;
    end
  Finally
    QueryAux.Close;

    //Table_Controle.Active := lControleAberto;
    //Table_Validade.Active := lValidadeAberto;
  end;


end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  SairdoSistema1Click(Sender);

end;

end.
