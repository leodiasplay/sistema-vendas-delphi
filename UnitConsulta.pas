unit UnitConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm_consulta = class(TForm)
    ed_busca: TEdit;
    DBGrid_consulta: TDBGrid;
    FDQueryConsulta: TFDQuery;
    DataSourceConsulta: TDataSource;
    procedure ed_buscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_consulta: TForm_consulta;

implementation

{$R *.dfm}

uses Unit_entrada_estoque, Unitconect;

procedure TForm_consulta.ed_buscaChange(Sender: TObject);
begin
   with FDQueryConsulta do
   begin
    Close;
    sql.clear;
    sql.add('select * from tb_estoque where nome like :pnome');
    parambyname('pnome').asstring  := '%'+ed_busca.text+'%';
    open;
    end;
end;

end.
