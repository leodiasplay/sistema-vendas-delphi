object Form_pesquisa: TForm_pesquisa
  Left = 0
  Top = 0
  Caption = 'Pesquisa '
  ClientHeight = 287
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 13
    Top = 34
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
  object SpeedButton1: TSpeedButton
    Left = 256
    Top = 160
    Width = 23
    Height = 22
  end
  object ed_busca: TEdit
    Left = 8
    Top = 56
    Width = 297
    Height = 21
    TabOrder = 0
    OnChange = ed_buscaChange
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 80
    Width = 743
    Height = 207
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 224
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fornecedor'
        Width = 185
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'preco'
        Width = 72
        Visible = True
      end>
  end
  object FDQuery_Busca: TFDQuery
    Connection = conexao.conexaobanco
    SQL.Strings = (
      'select * from tb_estoque')
    Left = 408
    Top = 8
    object FDQuery_Buscacodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery_Buscanome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 45
    end
    object FDQuery_Buscafornecedor: TStringField
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
      Required = True
      Size = 45
    end
    object FDQuery_Buscaquantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
    end
    object FDQuery_Buscapreco: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'preco'
      Origin = 'preco'
      Precision = 8
      Size = 2
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = FDQuery_Busca
    Left = 528
    Top = 8
  end
end
