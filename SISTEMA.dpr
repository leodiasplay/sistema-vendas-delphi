program SISTEMA;

uses
  Vcl.Forms,
  Unit_MENU in 'Unit_MENU.pas' {FRM_MENU},
  Unit_cadastros in 'Unit_cadastros.pas' {form_cadastros},
  Unitconect in 'Unitconect.pas' {conexao: TDataModule},
  Unit_cadastro_iten in 'Unit_cadastro_iten.pas' {form_cadastro_iten},
  Unitpadrao in 'Unitpadrao.pas' {Formpadrao},
  Unitvendas in 'Unitvendas.pas' {Form_vendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_MENU, FRM_MENU);
  Application.CreateForm(Tform_cadastros, form_cadastros);
  Application.CreateForm(Tconexao, conexao);
  Application.CreateForm(Tform_cadastro_iten, form_cadastro_iten);
  Application.CreateForm(TFormpadrao, Formpadrao);
  Application.CreateForm(TForm_vendas, Form_vendas);
  Application.Run;
end.
