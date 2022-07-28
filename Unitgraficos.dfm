object Form_graficos: TForm_graficos
  Left = 0
  Top = 0
  Caption = 'Graficos'
  ClientHeight = 489
  ClientWidth = 1025
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LABEL1: TLabel
    Left = 305
    Top = 128
    Width = 368
    Height = 35
    Caption = 'TOTAL VENDA DE HOJE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 535
    Top = 385
    Width = 130
    Height = 40
    Caption = 'Buscar'
    OnClick = SpeedButton1Click
  end
  object Panelrecebe: TPanel
    Left = 297
    Top = 313
    Width = 368
    Height = 66
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DBGridsomavendadia: TDBGrid
    Left = 297
    Top = 169
    Width = 368
    Height = 138
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SUM(valor)'
        Width = 342
        Visible = True
      end>
  end
  object FDQuery1: TFDQuery
    Active = True
    MasterSource = conexao.DataSource1
    Connection = conexao.conexaobanco
    SQL.Strings = (
      'select SUM(valor) from tb_venda  where data_cadastro=CURDATE()')
    Left = 720
    Top = 16
    object FDQuery1SUMvalor: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM(valor)'
      Origin = '`SUM(valor)`'
      ProviderFlags = []
      ReadOnly = True
      Precision = 30
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 552
    Top = 16
  end
end
