unit Unit_pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Buttons;

type
  TForm_pesquisa = class(TForm)
    FDQuery_Busca: TFDQuery;
    Label1: TLabel;
    ed_busca: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDQuery_Buscacodigo: TFDAutoIncField;
    FDQuery_Buscanome: TStringField;
    FDQuery_Buscafornecedor: TStringField;
    FDQuery_Buscaquantidade: TIntegerField;
    FDQuery_Buscapreco: TBCDField;
    SpeedButton1: TSpeedButton;
    procedure ed_buscaChange(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_pesquisa: TForm_pesquisa;

implementation

{$R *.dfm}

uses Unit_MENU, Unit_entrada_estoque, Unit_cadastro_iten, Unit_cadastros,
  Unitconect, Unitpadrao, Unitvendas, Unitpesquisa_venda;

procedure TForm_pesquisa.DBGrid1CellClick(Column: TColumn);
begin

  Form_pesquisa.Close;

  Form_entrada_estoque.FDQueryentrada_estoque.Open;
  Form_entrada_estoque.FDQueryentrada_estoque.Edit;

  //Form_entrada_estoque.DBcodigo.text := DBGrid1.fields[0].Value;
  Form_entrada_estoque.DBnome.text := DBGrid1.fields[1].Value;
  Form_entrada_estoque.DBfornecedor.text := DBGrid1.fields[2].Value;
  Form_entrada_estoque.DBquantidade.text := DBGrid1.fields[3].Value;
  Form_entrada_estoque.DBpreco.text := DBGrid1.fields[4].Value;


  Form_entrada_estoque.DBquantidade.SetFocus










end;

procedure TForm_pesquisa.ed_buscaChange(Sender: TObject);
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
