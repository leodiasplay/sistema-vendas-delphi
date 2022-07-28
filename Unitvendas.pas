unit Unitvendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm_vendas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    FDQ_tb_venda: TFDQuery;
    FDQ_tb_vendaid_venda: TFDAutoIncField;
    FDQ_tb_vendaid_forma_pgto: TIntegerField;
    FDQ_tb_vendadata_cadastro: TSQLTimeStampField;
    DataSource_tb_venda: TDataSource;
    Label1: TLabel;
    db_id_venda: TDBEdit;
    Label2: TLabel;
    db_id_forma_pgto: TDBEdit;
    Label4: TLabel;
    db_cadastro: TDBEdit;
    Q_forma_pgto: TFDQuery;
    DataSource_forma_pgto: TDataSource;
    bt_iniciar_venda: TSpeedButton;
    Q_forma_pgtoid_pagamento: TFDAutoIncField;
    Q_forma_pgtomeio: TStringField;
    FDQ_tb_vendapagamento: TStringField;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    FDQ_tb_vendaparcela: TIntegerField;
    FDQ_tb_vendadinheiro: TBCDField;
    FDQ_tb_vendatroco: TLargeintField;
    Label6: TLabel;
    db_parcela: TDBEdit;
    FDQ_iten_venda: TFDQuery;
    Label12: TLabel;
    db_desconto: TDBEdit;
    DataSource_iten_venda: TDataSource;
    bt_incluir_produto: TSpeedButton;
    Label7: TLabel;
    db_id_iten: TDBEdit;
    SpeedButton2: TSpeedButton;
    FDQ_iten_vendaid_sequencia: TFDAutoIncField;
    FDQ_iten_vendaid_venda: TIntegerField;
    FDQ_iten_vendaid_iten: TIntegerField;
    Label8: TLabel;
    FDQ_iten_vendaquantidade: TIntegerField;
    Label9: TLabel;
    db_quantidade: TDBEdit;
    panel_Valor: TPanel;
    Label3: TLabel;
    FDQuery_estoqueVenda: TFDQuery;
    FDQuery_estoqueVendacodigo: TFDAutoIncField;
    FDQuery_estoqueVendanome: TStringField;
    FDQuery_estoqueVendafornecedor: TStringField;
    FDQuery_estoqueVendaquantidade: TIntegerField;
    FDQ_iten_vendaDescricao: TStringField;
    FDSchemaAdapter1: TFDSchemaAdapter;
    FDQ_iten_vendaTotal: TAggregateField;
    Edit1: TEdit;
    bt_busca: TSpeedButton;
    db_valor: TDBEdit;
    FDQuery_estoqueVendapreco: TBCDField;
    FDQ_tb_vendavalor: TBCDField;
    FDQ_iten_vendavalor_unidade: TFloatField;
    FDQ_iten_vendadesconto: TBCDField;
    FDQ_iten_vendatotal_iten: TBCDField;
    DataSource1: TDataSource;
    bt_adiconar: TSpeedButton;
    procedure bt_iniciar_vendaClick(Sender: TObject);
    procedure db_id_forma_pgtoExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bt_incluir_produtoClick(Sender: TObject);
    procedure db_id_itenExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure db_id_itenEnter(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure db_total_itenClick(Sender: TObject);
    procedure db_descontoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt_buscaClick(Sender: TObject);
    procedure bt_adiconarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_vendas: TForm_vendas;

implementation

{$R *.dfm}

uses Unitconect, Unit_cadastro_iten, Unit_entrada_estoque, Unit_pesquisa,
  Unitpesquisa_venda;

procedure TForm_vendas.db_descontoExit(Sender: TObject);

  var recebe_soma_total: char;

begin
  FDQ_iten_vendatotal_iten.Value :=  FDQ_iten_vendaquantidade.Value * FDQ_iten_vendavalor_unidade.Value - FDQ_iten_vendadesconto.Value;
  Edit1.Text :=  FDQ_iten_vendaTotal.Text;

  bt_incluir_produto.Click;


end;

procedure TForm_vendas.db_id_forma_pgtoExit(Sender: TObject);
begin
 // validar se exite tipo de pagamento//

 if not Q_forma_pgto.Locate('id_pagamento',FDQ_tb_venda.fieldbyname ('id_forma_pgto'). asInteger,[]) then
  begin
     Messagedlg('Forma de pagamento  nao encontrada!'#13#13'Digite 1 para: pagamento a vista',mtInformation, [mbOK], 0);
     db_id_forma_pgto.SetFocus;
     abort;
  end;

end;

procedure TForm_vendas.db_id_itenEnter(Sender: TObject);
begin
  FDQ_tb_venda.POST;
  FDQ_iten_vendaid_venda.AsString := FDQ_tb_vendaid_venda.AsString;
end;

procedure TForm_vendas.db_id_itenExit(Sender: TObject);
begin
   if FDQ_iten_vendaid_iten.AsInteger > 0 then

       begin
         FDQ_iten_vendaquantidade.asFloat:=1;
         FDQ_iten_vendadesconto.AsInteger:=0;

              // pegar o valor do iten
         FDQ_iten_vendatotal_iten.AsFloat:=
         FDQ_iten_venda.FieldByName('vl_venda').AsFloat;

         // somar a quantidade dos itens

          FDQ_iten_vendatotal_iten.AsFloat:=
          (FDQ_iten_vendaquantidade.AsFloat * FDQ_iten_vendatotal_iten.AsFloat) -
          (FDQ_iten_vendadesconto.AsFloat);
          FDQ_iten_venda.Post;
       end
       else
        messagedlg ('Produto nao encontrado ', mtInformation, [mbok], 0);
        FDQ_iten_venda.Cancel;



end;

procedure TForm_vendas.FormCreate(Sender: TObject);
begin
  KeyPreview:=true;
  FDQuery_estoqueVenda.Open;
end;

procedure TForm_vendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      SelectNext(ActiveControl as TWinControl,True,True);
      key:=#0;
    end;
end;

procedure TForm_vendas.FormShow(Sender: TObject);
begin
  bt_iniciar_venda.click;
end;

procedure TForm_vendas.SpeedButton1Click(Sender: TObject);
begin

  //FDQ_tb_venda.Edit;
  //FDQ_tb_vendavalor.Text := edit1.Text;
  //FDSchemaAdapter1.ApplyUpdates(0);
  //FDQ_tb_venda.Close;
  //FDQ_iten_venda.Close;
  //panel_Valor.Caption := '0,00';


    with FDQuery_estoqueVenda do
    begin
      close;
      sql.Clear;
      sql.add('update tb_estoque set quantidade = quantidade - :pquantidade where codigo = :pcodigo');
      ParamByname('pquantidade').Value :=  strtoint(DBGrid1.Fields[5].Value);
      paramByname('pcodigo').Asinteger := strtoint(DBGrid1.Fields[2].Value);
      ExecSQL;

      //Form_vendas.FDQuery_estoqueVenda.Edit;
      //Form_vendas.FDQuery_estoqueVenda.Post;
      //Form_vendas.FDQuery_estoqueVenda.Close;

    end;
  FDQ_tb_venda.Edit;
  FDSchemaAdapter1.ApplyUpdates(0);
  FDQ_tb_venda.Close;
  FDQ_iten_venda.Close;
  panel_Valor.Caption:= 'R$: 0,00';
  ShowMessage('venda realizada com sucesso');
end;

procedure TForm_vendas.bt_adiconarClick(Sender: TObject);
begin

FDQ_iten_venda.insert;
db_id_iten.SetFocus;
FDQ_iten_venda.insert;

end;

procedure TForm_vendas.bt_buscaClick(Sender: TObject);
begin
  Form_pesquisa_venda.ShowModal;
end;

procedure TForm_vendas.bt_incluir_produtoClick(Sender: TObject);
  var proximo: integer;
begin
 // INSERE OS ITENS NA TABELA DE ITENS VENDAS //
 {FDQ_iten_venda.Last;   //pula pro ultimo registro
 proximo:=FDQ_iten_vendaid_sequencia.AsInteger + 1;  //recebe co valor do id sequencia + 1
 FDQ_iten_venda.Append;    // abre nova linha para inserir registro
 FDQ_iten_vendaid_sequencia.AsInteger:=proximo; // o campo id_sequencia recebe variavel
 db_id_iten.SetFocus;   // foco no campo id_iten
              }
 FDQ_iten_venda.Post;
 db_valor.Text := FDQ_iten_vendaTotal.Value;
 panel_Valor.Caption := formatFloat('TOTAL: R$ ,0.00', FDQ_iten_vendaTotal.value);
 //FDQ_iten_venda.Insert;
 //db_id_iten.SetFocus;

end;

procedure TForm_vendas.bt_iniciar_vendaClick(Sender: TObject);
begin
  FDQ_tb_venda.Open();
  FDQ_tb_venda.Append;
  FDQ_tb_venda.Insert;
  FDQ_iten_venda.Open;
  FDQ_iten_venda.Insert;
  db_cadastro.text:=dateTostr(now);
  db_valor.text:=intTostr(0);
  db_parcela.text:=intTostr(0);
  db_id_forma_pgto.SetFocus;
end;

procedure TForm_vendas.db_total_itenClick(Sender: TObject);
begin
  //FDQ_iten_vendatotal_iten.Value :=  FDQ_iten_vendaquantidade.Value * FDQ_iten_vendaValorunidade.Value;
end;

procedure TForm_vendas.DBGrid1CellClick(Column: TColumn);
begin

 // FDQ_iten_vendatotal_iten.Value :=  FDQ_iten_vendaquantidade.Value * FDQ_iten_vendaValorunidade.Value;
end;

end.
