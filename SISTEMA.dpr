program SISTEMA;

uses
  Vcl.Forms,
  Unit_MENU in 'Unit_MENU.pas' {FRM_MENU},
  Unit_cadastros in 'Unit_cadastros.pas' {form_cadastros},
  Unitconect in 'Unitconect.pas' {conexao: TDataModule},
  Unit_cadastro_iten in 'Unit_cadastro_iten.pas' {form_cadastro_iten},
  Unitpadrao in 'Unitpadrao.pas' {Formpadrao},
  Unitvendas in 'Unitvendas.pas' {Form_vendas},
  Vcl.Themes,
  Vcl.Styles,
  Unit_entrada_estoque in 'Unit_entrada_estoque.pas' {Form_entrada_estoque},
  Unit_pesquisa in 'Unit_pesquisa.pas' {Form_pesquisa},
  Unitpesquisa_venda in 'Unitpesquisa_venda.pas' {Form_pesquisa_venda},
  UnitConsulta in 'UnitConsulta.pas' {Form_consulta},
  Unitgraficos in 'Unitgraficos.pas' {Form_graficos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Carbon');
  Application.CreateForm(TFRM_MENU, FRM_MENU);
  Application.CreateForm(Tform_cadastros, form_cadastros);
  Application.CreateForm(Tconexao, conexao);
  Application.CreateForm(Tform_cadastro_iten, form_cadastro_iten);
  Application.CreateForm(TFormpadrao, Formpadrao);
  Application.CreateForm(TForm_vendas, Form_vendas);
  Application.CreateForm(TForm_entrada_estoque, Form_entrada_estoque);
  Application.CreateForm(TForm_pesquisa, Form_pesquisa);
  Application.CreateForm(TForm_pesquisa_venda, Form_pesquisa_venda);
  Application.CreateForm(TForm_consulta, Form_consulta);
  Application.CreateForm(TForm_graficos, Form_graficos);
  Application.Run;
end.
