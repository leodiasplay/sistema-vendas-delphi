unit Unitconect;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tconexao = class(TDataModule)
    conexaobanco: TFDConnection;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    DataSource2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  conexao: Tconexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit_cadastro_iten, Unit_cadastros, Unit_entrada_estoque, Unit_MENU,
  Unit_pesquisa, Unitpadrao, Unitvendas;

{$R *.dfm}

end.
