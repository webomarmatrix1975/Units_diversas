unit U_SenhaDia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fglib, StdCtrls, Mylabel, ExtCtrls, JvExControls,
  JvAnimatedImage, JvGIFCtrl, RXCtrls, ComCtrls, Sombra, ClipBrd, RXShell,
  Menus, TrayIcon, ImgList;

type
  TFrmSenhaDia = class(TForm)
    Sombra_Botoes: TSombra;
    Animate_LogoSys: TAnimate;
    Panel_DadosAnalista: TPanel;
    Label7: TLabel;
    Label_VersaoAplicativo: TLabel;
    SecretPanel_Logo: TSecretPanel;
    JvGIFAnimator_Matrix: TJvGIFAnimator;
    Image_Logo: TImage;
    myLabel3d1: TmyLabel3d;
    myLabel3d2: TmyLabel3d;
    myLabel3d3: TmyLabel3d;
    Edit_SenhaDia: TEdit;
    MyLabel3d_SenhaDelphi: TmyLabel3d;
    MyLabel3d_Dia: TmyLabel3d;
    TrayIcon_SenhaDia: TTrayIcon;
    PopupMenu_Acoes: TPopupMenu;
    ExibeSenhaDia: TMenuItem;
    Sair1: TMenuItem;
    ImageList_MenuContexto: TImageList;

    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TrayIcon_SenhaDiaDblClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure ExibeSenhaDiaClick(Sender: TObject);

    procedure Esconde_Aplicacao_BarraTarefa( Visible: Boolean );
    procedure TrayIcon_SenhaDiaRightClick(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
    procedure WMSysCommand(var Msg: TWMSysCommand); message WM_SYSCOMMAND;
    procedure MakeRounded(Control: TWinControl);

  public
    { Public declarations }
  end;

var
  FrmSenhaDia: TFrmSenhaDia;

  Tabela_Letras_Gregas : Array[0..11] of String = ('Alpha','Beta','Gamma','Delta','Epsilon','Zeta','Eta','Theta','Iota','Kappa','Lambda','Mu');

implementation

{$R *.DFM}

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmSenhaDia.FormActivate(Sender: TObject);
Var
  //nMesAtual : integer;
  Ano, mes, dia : word;
begin

  MyLabel3d_Dia.Caption := FormatDateTime('dd/mm/yyyy', SysUtils.Date);

  //--

  DecodeDate( SysUtils.Date, ano, mes, dia );
  MyLabel3d_SenhaDelphi.Caption := Tabela_Letras_Gregas[(mes-1)];

  //--

  Edit_SenhaDia.Text := IntToStr( (ano+mes+dia) )+FormatFloat('0000', Ano );
  Clipboard.AsText := Edit_SenhaDia.Text;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmSenhaDia.FormCreate(Sender: TObject);
begin

  // TPanel:
  MakeRounded(Panel_DadosAnalista);

  //--

  Animate_LogoSys.FileName := GetCurrentDir()+'\Cool.avi';
  Animate_LogoSys.Active   := True;
  Animate_LogoSys.Refresh;

  SecretPanel_Logo.Active  := True;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmSenhaDia.FormDestroy(Sender: TObject);
begin

  Animate_LogoSys.Active   := False;
  SecretPanel_Logo.Active  := False;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmSenhaDia.MakeRounded(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do
  begin
    R := ClientRect;
    rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20);
    Perform(EM_GETRECT, 0, lParam(@r));
    InflateRect(r, - 5, - 5);
    Perform(EM_SETRECTNP, 0, lParam(@r));
    SetWindowRgn(Handle, rgn, True);
    Invalidate;
  end;
end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmSenhaDia.FormKeyPress(Sender: TObject; var Key: Char);
begin

  If Key = #27 then Close;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmSenhaDia.WMSysCommand(var Msg: TWMSysCommand);
begin

  If (Msg.CmdType = SC_MINIMIZE) then
    begin
      Self.Hide;

      TrayIcon_SenhaDia.ToolTip := 'Matrix Systems Ltda.®'+#13+#13+'Senha do dia: '+Edit_SenhaDia.Text;

      //TrayIcon_SenhaDia.ToolTip := 'Senha do dia: '+Edit_SenhaDia.Text;

      TrayIcon_SenhaDia.Active  := True;

      Application.ShowMainForm := False ; {esse comando é q faz seu form sumir ..}
      Esconde_Aplicacao_BarraTarefa( True );

    end
  Else If (Msg.CmdType = SC_CLOSE) then
    Close;


end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmSenhaDia.TrayIcon_SenhaDiaDblClick(Sender: TObject);
begin

  //PopupMenu_Acoes.Popup( 1100, 950 );  // 250,50

  ExibeSenhaDiaClick(Sender);
end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmSenhaDia.Sair1Click(Sender: TObject);
begin

  Close;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmSenhaDia.ExibeSenhaDiaClick(Sender: TObject);
begin

  Esconde_Aplicacao_BarraTarefa( False );

  Application.ShowMainForm := True ; {esse comando é q faz seu form sumir ..}

  Self.WindowState := wsNormal;
  Self.Visible := True;
  Self.Refresh;

  TrayIcon_SenhaDia.Active := False;

end;

//***---***---***---***---***---***---***---***---***---***---***---***---***-//

procedure TFrmSenhaDia.Esconde_Aplicacao_BarraTarefa( Visible: Boolean );
var
  H : HWnd;
begin

  H := FindWindow(Nil,'SenhaDia - Gerador de Senha Diária');

  If H <> 0 then
    begin
      If Visible then
        ShowWindow(H,SW_HIDE)
      Else
      ShowWindow(H,SW_RESTORE);
    end;

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

procedure TFrmSenhaDia.TrayIcon_SenhaDiaRightClick(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  PopupMenu_Acoes.Popup( (X-5), y );

end;

//***---****---***---****---***---****---***---****---***---****---***---****-//

end.
