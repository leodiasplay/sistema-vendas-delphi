unit Unitgraficos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, VCLTee.TeeData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TForm_graficos = class(TForm)
    FDQuery1: TFDQuery;
    LABEL1: TLabel;
    DataSource1: TDataSource;
    Panelrecebe: TPanel;
    DBGridsomavendadia: TDBGrid;
    FDQuery1SUMvalor: TFMTBCDField;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_graficos: TForm_graficos;

implementation

{$R *.dfm}

uses Unitconect;

procedure TForm_graficos.SpeedButton1Click(Sender: TObject);
begin
  Panelrecebe.Caption := formatFloat('TOTAL: R$ ,0.00', DBGridsomavendadia.Fields[0].Value);
end;

end.
