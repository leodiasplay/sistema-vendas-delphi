unit Unit_MENU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFRM_MENU = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure FormClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_MENU: TFRM_MENU;

implementation

{$R *.dfm}

uses Unit_cadastros, Unitvendas;

procedure TFRM_MENU.FormClick(Sender: TObject);
begin
form_cadastros.ShowModal;
end;

procedure TFRM_MENU.SpeedButton1Click(Sender: TObject);
begin
  form_vendas.ShowModal;
end;

procedure TFRM_MENU.SpeedButton5Click(Sender: TObject);
begin
  form_cadastros.ShowModal;
end;

end.
