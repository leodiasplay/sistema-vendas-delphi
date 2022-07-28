object Form_pesquisa_venda: TForm_pesquisa_venda
  Left = 0
  Top = 0
  Caption = 'Pesquisa '
  ClientHeight = 304
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 23
    Width = 178
    Height = 16
    Caption = 'Digite as iniciais do produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ed_busca: TEdit
    Left = 8
    Top = 45
    Width = 281
    Height = 21
    TabOrder = 0
    OnChange = ed_buscaChange
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 74
    Width = 743
    Height = 230
    Align = alBottom
    DataSource = Form_entrada_estoque.DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 196
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fornecedor'
        Width = 208
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'preco'
        Width = 91
        Visible = True
      end>
  end
  object FDQuerypesquisa_na_tb_estoque: TFDQuery
    Active = True
    Connection = conexao.conexaobanco
    SQL.Strings = (
      'select * from tb_estoque')
    Left = 448
    Top = 24
    object FDQuerypesquisa_na_tb_estoquecodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuerypesquisa_na_tb_estoquenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 45
    end
    object FDQuerypesquisa_na_tb_estoquefornecedor: TStringField
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
      Required = True
      Size = 45
    end
    object FDQuerypesquisa_na_tb_estoquequantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
    end
    object FDQuerypesquisa_na_tb_estoquepreco: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'preco'
      Origin = 'preco'
      Precision = 8
      Size = 2
    end
  end
  object DataSource_pesquisa_na_tb_estoque: TDataSource
    Left = 608
    Top = 24
  end
end
