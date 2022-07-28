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
    Left = 24
    Top = 24
    Width = 31
    Height = 13
    Caption = 'codigo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 64
    Top = 96
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = db_nome
  end
  object Label3: TLabel
    Left = 64
    Top = 152
    Width = 53
    Height = 13
    Caption = 'fornecedor'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 64
    Top = 195
    Width = 27
    Height = 13
    Caption = 'preco'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 232
    Top = 195
    Width = 54
    Height = 13
    Caption = 'quantidade'
    FocusControl = DBEdit5
  end
  object Panel1: TPanel
    Left = 0
    Top = 262
    Width = 640
    Height = 52
    Align = alBottom
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
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
      Caption = 'Cadastrar'
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
  object DBEdit1: TDBEdit
    Left = 24
    Top = 40
    Width = 134
    Height = 21
    DataField = 'codigo'
    DataSource = DataSource1
    TabOrder = 1
  end
  object db_nome: TDBEdit
    Left = 64
    Top = 115
    Width = 324
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 64
    Top = 168
    Width = 329
    Height = 21
    DataField = 'fornecedor'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 64
    Top = 214
    Width = 153
    Height = 21
    DataField = 'preco'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 232
    Top = 211
    Width = 161
    Height = 21
    DataField = 'quantidade'
    DataSource = DataSource1
    TabOrder = 5
  end
  object TFD_tb_estoque: TFDQuery
    Active = True
    Connection = conexao.conexaobanco
    SQL.Strings = (
      'select * from tb_estoque'
      'where codigo = 1 order by codigo'
      ''
      '')
    Left = 344
    Top = 24
    object TFD_tb_estoquecodigo: TFDAutoIncField
      FieldName = 'codigo'
      ReadOnly = True
    end
    object TFD_tb_estoquenome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 45
    end
    object TFD_tb_estoquefornecedor: TStringField
      FieldName = 'fornecedor'
      Required = True
      Size = 45
    end
    object TFD_tb_estoquequantidade: TIntegerField
      FieldName = 'quantidade'
      Required = True
    end
    object TFD_tb_estoquepreco: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'preco'
      Origin = 'preco'
      Precision = 8
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = TFD_tb_estoque
    Left = 456
    Top = 24
  end
end
