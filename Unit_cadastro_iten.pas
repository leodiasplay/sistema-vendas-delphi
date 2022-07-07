unit Unit_cadastro_iten;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  Tform_cadastro_iten = class(TForm)
    TFD_tb_estoque: TFDTable;
    DataSourceCadIten: TDataSource;
    TFD_tb_estoquecodigo: TIntegerField;
    TFD_tb_estoquenome: TStringField;
    TFD_tb_estoquefornecedor: TStringField;
    TFD_tb_estoquepreco: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Panel1: TPanel;
    btInserir: TSpeedButton;
    btDeletar: TSpeedButton;
    btAlterar: TSpeedButton;
    btCancelar: TSpeedButton;
    TFD_tb_estoquequantidade: TIntegerField;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    procedure btInserirClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_cadastro_iten: Tform_cadastro_iten;

implementation

{$R *.dfm}

uses Unit_cadastros, Unitconect;

procedure Tform_cadastro_iten.btCancelarClick(Sender: TObject);
begin
  btInserir.Enabled :=true;
  btDeletar.Enabled :=true;

  btAlterar.Enabled :=false;
  btCancelar.Enabled :=false;

  TFD_tb_estoque.Cancel;
end;

procedure Tform_cadastro_iten.btDeletarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir esse iten ?','ATENÇÃO', MB_ICONQUESTION+MB_YESNO)= mrYes then
    begin
      TFD_tb_estoque.Delete;
    end;

end;

procedure Tform_cadastro_iten.btInserirClick(Sender: TObject);
begin
 btInserir.Enabled :=false;
  btDeletar.Enabled :=false;

  btAlterar.Enabled :=true;
  btCancelar.Enabled :=true;

  TFD_tb_estoque.Append;
end;

procedure Tform_cadastro_iten.btAlterarClick(Sender: TObject);
begin
  btInserir.Enabled :=true;
  btDeletar.Enabled :=true;


  btCancelar.Enabled :=false;

  TFD_tb_estoque.Post;

  ShowMessage('Registro alterado!');

end;

end.
