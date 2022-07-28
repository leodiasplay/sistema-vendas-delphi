unit Unitpesquisa_venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm_pesquisa_venda = class(TForm)
    ed_busca: TEdit;
    Label1: TLabel;
    FDQuerypesquisa_na_tb_estoque: TFDQuery;
    FDQuerypesquisa_na_tb_estoquecodigo: TFDAutoIncField;
    FDQuerypesquisa_na_tb_estoquenome: TStringField;
    FDQuerypesquisa_na_tb_estoquefornecedor: TStringField;
    FDQuerypesquisa_na_tb_estoquequantidade: TIntegerField;
    DataSource_pesquisa_na_tb_estoque: TDataSource;
    DBGrid1: TDBGrid;
    FDQuerypesquisa_na_tb_estoquepreco: TBCDField;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure ed_buscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_pesquisa_venda: TForm_pesquisa_venda;

implementation

{$R *.dfm}

uses Unit_cadastro_iten, Unit_pesquisa, Unitvendas, Unit_entrada_estoque,
  Unit_cadastros, Unit_MENU, Unitconect, Unitpadrao;

procedure TForm_pesquisa_venda.DBGrid1CellClick(Column: TColumn);
begin
 form_pesquisa_venda.Close;
 form_vendas.db_id_iten.text := DBGrid1.fields[0].Value;
 form_vendas.db_quantidade.SetFocus;
end;

procedure TForm_pesquisa_venda.ed_buscaChange(Sender: TObject);
begin
    with Form_entrada_estoque.FDQueryentrada_estoque do
   begin
    Close;
    sql.clear;
    sql.add('select * from tb_estoque where nome like :pnome');
    parambyname('pnome').asstring  := '%'+ed_busca.text+'%';
    open;
    end;

end;
end.
