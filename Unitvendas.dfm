object Form_vendas: TForm_vendas
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 439
  ClientWidth = 1006
  Color = clInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 96
    Width = 52
    Height = 13
    Caption = 'id_venda'
    Color = clInactiveCaptionText
    FocusControl = db_id_venda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 142
    Width = 84
    Height = 13
    Caption = 'id_forma_pgto'
    FocusControl = db_id_forma_pgto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 152
    Top = 96
    Width = 83
    Height = 13
    Caption = 'data_cadastro'
    Color = clInactiveCaptionText
    FocusControl = db_cadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 151
    Top = 142
    Width = 65
    Height = 13
    Caption = 'pagamento'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 323
    Top = 142
    Width = 42
    Height = 13
    Caption = 'parcela'
    FocusControl = db_parcela
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 763
    Top = 301
    Width = 52
    Height = 13
    Caption = 'desconto'
    FocusControl = db_desconto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object bt_incluir_produto: TSpeedButton
    Left = 566
    Top = 21
    Width = 106
    Height = 29
    HelpType = htKeyword
    Caption = 'Incluir produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    OnClick = bt_incluir_produtoClick
  end
  object Label7: TLabel
    Left = 759
    Top = 231
    Width = 39
    Height = 13
    Caption = 'id_iten'
    FocusControl = db_id_iten
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton2: TSpeedButton
    Left = 871
    Top = 337
    Width = 113
    Height = 28
    Caption = 'Remover produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 695
    Top = 266
    Width = 54
    Height = 13
    Caption = 'quantidade'
  end
  object Label9: TLabel
    Left = 759
    Top = 266
    Width = 65
    Height = 13
    Caption = 'Quantidade'
    FocusControl = db_quantidade
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 323
    Top = 96
    Width = 29
    Height = 13
    Caption = 'valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object bt_busca: TSpeedButton
    Left = 927
    Top = 224
    Width = 71
    Height = 25
    Caption = 'Pesquisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = bt_buscaClick
  end
  object bt_adiconar: TSpeedButton
    Left = 763
    Top = 337
    Width = 102
    Height = 28
    Caption = 'Adicionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = bt_adiconarClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1006
    Height = 81
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 371
    Width = 1006
    Height = 68
    Align = alBottom
    Color = clHighlight
    ParentBackground = False
    TabOrder = 9
    object bt_iniciar_venda: TSpeedButton
      Left = 533
      Top = 16
      Width = 105
      Height = 33
      Caption = 'Iniciar venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = bt_iniciar_vendaClick
    end
    object SpeedButton1: TSpeedButton
      Left = 644
      Top = 16
      Width = 105
      Height = 33
      Caption = 'Finalizar venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object panel_Valor: TPanel
      Left = 0
      Top = 0
      Width = 527
      Height = 65
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object db_id_venda: TDBEdit
    Left = 16
    Top = 115
    Width = 124
    Height = 21
    DataField = 'id_venda'
    DataSource = DataSource_tb_venda
    TabOrder = 1
  end
  object db_id_forma_pgto: TDBEdit
    Left = 16
    Top = 161
    Width = 124
    Height = 21
    DataField = 'id_forma_pgto'
    DataSource = DataSource_tb_venda
    TabOrder = 3
    OnExit = db_id_forma_pgtoExit
  end
  object db_cadastro: TDBEdit
    Left = 151
    Top = 115
    Width = 162
    Height = 21
    DataField = 'data_cadastro'
    DataSource = DataSource_tb_venda
    Enabled = False
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 151
    Top = 161
    Width = 162
    Height = 21
    DataField = 'pagamento'
    DataSource = DataSource_tb_venda
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 193
    Width = 749
    Height = 172
    DataSource = DataSource_iten_venda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_sequencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_venda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_iten'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 184
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'desconto'
        Visible = True
      end>
  end
  object db_parcela: TDBEdit
    Left = 323
    Top = 161
    Width = 190
    Height = 21
    DataField = 'parcela'
    DataSource = DataSource_tb_venda
    TabOrder = 5
  end
  object db_desconto: TDBEdit
    Left = 830
    Top = 298
    Width = 168
    Height = 21
    DataField = 'desconto'
    DataSource = DataSource_iten_venda
    TabOrder = 8
    OnExit = db_descontoExit
  end
  object db_id_iten: TDBEdit
    Left = 830
    Top = 228
    Width = 91
    Height = 21
    DataField = 'id_iten'
    DataSource = DataSource_iten_venda
    TabOrder = 6
  end
  object db_quantidade: TDBEdit
    Left = 830
    Top = 263
    Width = 168
    Height = 21
    DataField = 'quantidade'
    DataSource = DataSource_iten_venda
    TabOrder = 7
  end
  object Edit1: TEdit
    Left = 895
    Top = 395
    Width = 86
    Height = 21
    TabOrder = 11
    Text = 'Edit1'
  end
  object db_valor: TDBEdit
    Left = 319
    Top = 115
    Width = 194
    Height = 21
    DataField = 'valor'
    DataSource = DataSource_tb_venda
    TabOrder = 12
  end
  object FDQ_tb_venda: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = conexao.conexaobanco
    SchemaAdapter = FDSchemaAdapter1
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'gen_in_venda'
    UpdateOptions.AutoIncFields = 'id_venda'
    SQL.Strings = (
      'select * from tb_venda'
      ' WHERE ID_VENDA = 1'
      'order by id_venda')
    Left = 632
    Top = 81
    object FDQ_tb_vendaid_venda: TFDAutoIncField
      FieldName = 'id_venda'
      Origin = 'id_venda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      ServerAutoIncrement = False
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
      IdentityInsert = True
    end
    object FDQ_tb_vendaid_forma_pgto: TIntegerField
      FieldName = 'id_forma_pgto'
      Origin = 'id_forma_pgto'
      Required = True
    end
    object FDQ_tb_vendadata_cadastro: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
    end
    object FDQ_tb_vendapagamento: TStringField
      FieldKind = fkLookup
      FieldName = 'pagamento'
      LookupDataSet = Q_forma_pgto
      LookupKeyFields = 'id_pagamento'
      LookupResultField = 'meio'
      KeyFields = 'id_forma_pgto'
      Size = 100
      Lookup = True
    end
    object FDQ_tb_vendaparcela: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'parcela'
      Origin = 'parcela'
    end
    object FDQ_tb_vendadinheiro: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'dinheiro'
      Origin = 'dinheiro'
      Precision = 11
      Size = 2
    end
    object FDQ_tb_vendatroco: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'troco'
      Origin = 'troco'
    end
    object FDQ_tb_vendavalor: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 8
      Size = 2
    end
  end
  object DataSource_tb_venda: TDataSource
    DataSet = FDQ_tb_venda
    Left = 584
    Top = 136
  end
  object Q_forma_pgto: TFDQuery
    Active = True
    Connection = conexao.conexaobanco
    SQL.Strings = (
      'select id_pagamento, meio from tb_fr_pagamento')
    Left = 856
    Top = 80
    object Q_forma_pgtoid_pagamento: TFDAutoIncField
      FieldName = 'id_pagamento'
      Origin = 'id_pagamento'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_forma_pgtomeio: TStringField
      FieldName = 'meio'
      Origin = 'meio'
      Required = True
      Size = 30
    end
  end
  object DataSource_forma_pgto: TDataSource
    DataSet = Q_forma_pgto
    Left = 856
    Top = 136
  end
  object FDQ_iten_venda: TFDQuery
    Active = True
    CachedUpdates = True
    IndexesActive = False
    IndexFieldNames = 'id_venda'
    AggregatesActive = True
    MasterSource = DataSource_tb_venda
    MasterFields = 'id_venda'
    DetailFields = 'id_venda'
    Connection = conexao.conexaobanco
    SchemaAdapter = FDSchemaAdapter1
    FetchOptions.AssignedValues = [evCache, evDetailCascade]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    FetchOptions.DetailCascade = True
    UpdateOptions.AssignedValues = [uvCheckUpdatable]
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'select * from iten_venda'
      'WHERE ID_VENDA = :ID_VENDA'
      ''
      ''
      '      '
      '      '
      ''
      '')
    Left = 720
    Top = 80
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 1
      end>
    object FDQ_iten_vendaid_sequencia: TFDAutoIncField
      FieldName = 'id_sequencia'
      Origin = 'id_sequencia'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_iten_vendaid_venda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_venda'
      Origin = 'id_venda'
    end
    object FDQ_iten_vendaid_iten: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_iten'
      Origin = 'id_iten'
    end
    object FDQ_iten_vendaquantidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object FDQ_iten_vendaDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = FDQuery_estoqueVenda
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'id_iten'
      Size = 100
      Lookup = True
    end
    object FDQ_iten_vendavalor_unidade: TFloatField
      FieldKind = fkLookup
      FieldName = 'valor_unidade'
      LookupDataSet = FDQuery_estoqueVenda
      LookupKeyFields = 'codigo'
      LookupResultField = 'preco'
      KeyFields = 'id_iten'
      Lookup = True
    end
    object FDQ_iten_vendadesconto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'desconto'
      Origin = 'desconto'
      Precision = 8
      Size = 2
    end
    object FDQ_iten_vendatotal_iten: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'total_iten'
      Origin = 'total_iten'
      Precision = 8
      Size = 2
    end
    object FDQ_iten_vendaTotal: TAggregateField
      FieldName = 'Total'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(total_iten)'
    end
  end
  object DataSource_iten_venda: TDataSource
    DataSet = FDQ_iten_venda
    Left = 720
    Top = 144
  end
  object FDQuery_estoqueVenda: TFDQuery
    Active = True
    Connection = conexao.conexaobanco
    SQL.Strings = (
      'select * from tb_estoque ')
    Left = 928
    Top = 104
    object FDQuery_estoqueVendacodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery_estoqueVendanome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 45
    end
    object FDQuery_estoqueVendafornecedor: TStringField
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
      Required = True
      Size = 45
    end
    object FDQuery_estoqueVendaquantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
    end
    object FDQuery_estoqueVendapreco: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'preco'
      Origin = 'preco'
      Precision = 8
      Size = 2
    end
  end
  object FDSchemaAdapter1: TFDSchemaAdapter
    Left = 560
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = FDQuery_estoqueVenda
    Left = 784
    Top = 136
  end
end
