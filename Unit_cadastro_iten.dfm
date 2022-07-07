object form_cadastro_iten: Tform_cadastro_iten
  Left = 0
  Top = 0
  Caption = 'Cadastro de iten'
  ClientHeight = 314
  ClientWidth = 640
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
    Left = 37
    Top = 21
    Width = 31
    Height = 13
    Caption = 'codigo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 42
    Top = 96
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 38
    Top = 158
    Width = 53
    Height = 13
    Caption = 'fornecedor'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 37
    Top = 216
    Width = 27
    Height = 13
    Caption = 'preco'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 192
    Top = 216
    Width = 54
    Height = 13
    Caption = 'quantidade'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 38
    Top = 40
    Width = 134
    Height = 21
    DataField = 'codigo'
    DataSource = DataSourceCadIten
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 37
    Top = 115
    Width = 325
    Height = 21
    DataField = 'nome'
    DataSource = DataSourceCadIten
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 38
    Top = 177
    Width = 325
    Height = 21
    DataField = 'fornecedor'
    DataSource = DataSourceCadIten
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 37
    Top = 235
    Width = 135
    Height = 21
    DataField = 'preco'
    DataSource = DataSourceCadIten
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 262
    Width = 640
    Height = 52
    Align = alBottom
    Color = clHighlight
    ParentBackground = False
    TabOrder = 4
    object btInserir: TSpeedButton
      Left = 256
      Top = 16
      Width = 73
      Height = 25
      Caption = 'Inserir'
      OnClick = btInserirClick
    end
    object btDeletar: TSpeedButton
      Left = 335
      Top = 16
      Width = 73
      Height = 25
      Caption = 'Deletar'
      OnClick = btDeletarClick
    end
    object btAlterar: TSpeedButton
      Left = 414
      Top = 16
      Width = 73
      Height = 25
      Caption = 'Alterar'
      OnClick = btAlterarClick
    end
    object btCancelar: TSpeedButton
      Left = 493
      Top = 16
      Width = 73
      Height = 25
      Caption = 'Cancelar'
      OnClick = btCancelarClick
    end
  end
  object DBEdit5: TDBEdit
    Left = 192
    Top = 235
    Width = 170
    Height = 21
    DataField = 'quantidade'
    DataSource = DataSourceCadIten
    TabOrder = 5
  end
  object TFD_tb_estoque: TFDTable
    Active = True
    IndexFieldNames = 'codigo'
    Connection = conexao.conexaobanco
    Exclusive = True
    TableName = 'dados.tb_estoque'
    Left = 360
    Top = 24
    object TFD_tb_estoquecodigo: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere]
      Required = True
    end
    object TFD_tb_estoquenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 45
    end
    object TFD_tb_estoquefornecedor: TStringField
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
      Required = True
      Size = 45
    end
    object TFD_tb_estoquepreco: TStringField
      FieldName = 'preco'
      Origin = 'preco'
      Required = True
      Size = 45
    end
    object TFD_tb_estoquequantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
    end
  end
  object DataSourceCadIten: TDataSource
    DataSet = TFD_tb_estoque
    Left = 440
    Top = 16
  end
end
