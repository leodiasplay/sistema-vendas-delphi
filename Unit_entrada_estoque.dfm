object Form_entrada_estoque: TForm_entrada_estoque
  Left = 0
  Top = 0
  Caption = 'Entrada Estoque'
  ClientHeight = 412
  ClientWidth = 828
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
  object Label3: TLabel
    Left = 85
    Top = 112
    Width = 34
    Height = 14
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 80
    Top = 172
    Width = 68
    Height = 14
    Caption = 'Fornecedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 80
    Top = 234
    Width = 34
    Height = 14
    Caption = 'Pre'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 82
    Top = 291
    Width = 71
    Height = 14
    Caption = 'Quantidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 828
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 16
      Width = 124
      Height = 14
      Caption = 'Pesquise o produto '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btpesquisa: TSpeedButton
      Left = 32
      Top = 36
      Width = 124
      Height = 29
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btpesquisaClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 350
    Width = 828
    Height = 62
    Align = alBottom
    TabOrder = 1
    object bt_alterar: TSpeedButton
      Left = 70
      Top = 16
      Width = 99
      Height = 30
      Caption = 'ALTERAR'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = bt_alterarClick
    end
    object btCancelar: TSpeedButton
      Left = 175
      Top = 16
      Width = 92
      Height = 30
      Caption = 'CANCELAR'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btCancelarClick
    end
  end
  object DBnome: TDBEdit
    Left = 80
    Top = 132
    Width = 393
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 2
  end
  object DBfornecedor: TDBEdit
    Left = 80
    Top = 200
    Width = 393
    Height = 21
    DataField = 'fornecedor'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 3
  end
  object DBpreco: TDBEdit
    Left = 80
    Top = 254
    Width = 169
    Height = 21
    DataField = 'preco'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 4
  end
  object DBquantidade: TDBEdit
    Left = 82
    Top = 311
    Width = 169
    Height = 21
    DataField = 'quantidade'
    DataSource = DataSource1
    Enabled = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
  end
  object FDQueryentrada_estoque: TFDQuery
    Active = True
    ObjectView = False
    IndexesActive = False
    ConstraintsEnabled = True
    Connection = conexao.conexaobanco
    UpdateOptions.AssignedValues = [uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'select * from tb_estoque'
      'where codigo = 1 order by codigo')
    Left = 328
    Top = 272
    object FDQueryentrada_estoquecodigo: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQueryentrada_estoquenome: TStringField
      DisplayWidth = 29
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 45
    end
    object FDQueryentrada_estoquefornecedor: TStringField
      DisplayWidth = 34
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
      Required = True
      Size = 45
    end
    object FDQueryentrada_estoquequantidade: TIntegerField
      DisplayWidth = 10
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
    end
    object FDQueryentrada_estoquepreco: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 9
      FieldName = 'preco'
      Origin = 'preco'
      Precision = 8
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQueryentrada_estoque
    Left = 464
    Top = 272
  end
end
