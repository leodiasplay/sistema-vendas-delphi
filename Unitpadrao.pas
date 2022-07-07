unit Unitpadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFormpadrao = class(TForm)
    Panel1: TPanel;
    btDeletar: TSpeedButton;
    btSalvar: TSpeedButton;
    btInserir: TSpeedButton;
    btCancelar: TSpeedButton;
    procedure btInserirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formpadrao: TFormpadrao;

implementation

{$R *.dfm}

procedure TFormpadrao.btCancelarClick(Sender: TObject);
begin
btInserir.Enabled :=true;
  btDeletar.Enabled :=true;

  btSalvar.Enabled :=false;
  btCancelar.Enabled :=false;


end;

procedure TFormpadrao.btDeletarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja realmente excluir esse iten ?','ATENÇÃO', MB_ICONQUESTION+MB_YESNO)= mrYes then
    begin

    end;
end;

procedure TFormpadrao.btInserirClick(Sender: TObject);
begin
  btInserir.Enabled :=false;
  btDeletar.Enabled :=false;

  btSalvar.Enabled :=true;
  btCancelar.Enabled :=true;


end;

procedure TFormpadrao.btSalvarClick(Sender: TObject);
begin
btInserir.Enabled :=true;
  btDeletar.Enabled :=true;

  btSalvar.Enabled :=false;
  btCancelar.Enabled :=false;


end;

end.
