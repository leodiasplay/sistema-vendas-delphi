unit Unit_cadastros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons;

type
  Tform_cadastros = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_cadastros: Tform_cadastros;

implementation

{$R *.dfm}

uses Unit_MENU, Unit_cadastro_iten;

procedure Tform_cadastros.SpeedButton1Click(Sender: TObject);
begin
  form_cadastro_iten.ShowModal;
end;

end.
