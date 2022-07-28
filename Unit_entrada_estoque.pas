unit Unit_entrada_estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TForm_entrada_estoque = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    FDQueryentrada_estoque: TFDQuery;
    FDQueryentrada_estoquecodigo: TFDAutoIncField;
    Label1: TLabel;
    DataSource1: TDataSource;
    btpesquisa: TSpeedButton;
    FDQueryentrada_estoquenome: TStringField;
    FDQueryentrada_estoquefornecedor: TStringField;
    FDQueryentrada_estoquequantidade: TIntegerField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    bt_alterar: TSpeedButton;
    btCancelar: TSpeedButton;
    DBnome: TDBEdit;
    DBfornecedor: TDBEdit;
    DBpreco: TDBEdit;
    DBquantidade: TDBEdit;
    FDQueryentrada_estoquepreco: TBCDField;
    procedure btpesquisaClick(Sender: TObject);
    procedure bt_alterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_entrada_estoque: TForm_entrada_estoque;

implementation

{$R *.dfm}

uses Unit_cadastro_iten, Unit_cadastros, Unit_MENU, Unitconect, Unitpadrao,
  Unitvendas, Unit_pesquisa;

procedure TForm_entrada_estoque.btpesquisaClick(Sender: TObject);
begin
DBnome.Enabled := true;
 DBfornecedor.Enabled := true;
 DBpreco.Enabled := True;
 DBquantidade.Enabled := True;

 Form_pesquisa.ShowModal;

 bt_alterar.Enabled := True;
 btCancelar.Enabled := True;


end;

procedure TForm_entrada_estoque.bt_alterarClick(Sender: TObject);
begin
  FDQueryentrada_estoque.Edit;
  FDQueryentrada_estoque.Post;
  //FDQueryentrada_estoque.Close;

  ShowMessage('geristro alterado com sucesso')



end;

procedure TForm_entrada_estoque.btCancelarClick(Sender: TObject);
begin

 // cancela limpando os campos
 FDQueryentrada_estoque.Close;

 // desabilita os botoes se cancelar
  bt_alterar.Enabled := false;
  btCancelar.Enabled := false;





end;

end.
