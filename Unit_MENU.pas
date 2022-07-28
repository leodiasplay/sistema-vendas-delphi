unit Unit_MENU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFRM_MENU = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure FormClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_MENU: TFRM_MENU;

implementation

{$R *.dfm}

uses Unit_cadastros, Unitvendas, Unit_entrada_estoque, Unit_cadastro_iten,
  Unit_pesquisa, Unitconect, Unitpadrao, UnitConsulta, Unitgraficos;

procedure TFRM_MENU.FormClick(Sender: TObject);
begin
form_cadastros.ShowModal;
end;

procedure TFRM_MENU.SpeedButton1Click(Sender: TObject);
begin
  form_vendas.ShowModal;
end;

procedure TFRM_MENU.SpeedButton2Click(Sender: TObject);
begin

  Form_entrada_estoque.ShowModal;
  form_entrada_estoque.FDQueryentrada_estoque.Open;





end;

procedure TFRM_MENU.SpeedButton3Click(Sender: TObject);
begin
Form_graficos.ShowModal;
end;

procedure TFRM_MENU.SpeedButton4Click(Sender: TObject);
begin
  Form_consulta.ShowModal;
end;

procedure TFRM_MENU.SpeedButton5Click(Sender: TObject);
begin
  form_cadastros.ShowModal;
end;

procedure TFRM_MENU.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := ' ' + FormatDateTime ('hh:nn:ss',now);
  StatusBar1.Panels[1].Text := ' ' + FormatDateTime ('dddd", "dd" de "mmmm" de "yyyy', now);
end;

end.
