object Form_consulta: TForm_consulta
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 354
  ClientWidth = 816
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ed_busca: TEdit
    Left = 8
    Top = 32
    Width = 345
    Height = 21
    TabOrder = 0
    OnChange = ed_buscaChange
  end
  object DBGrid_consulta: TDBGrid
    Left = 0
    Top = 72
    Width = 816
    Height = 282
    Align = alBottom
    DataSource = conexao.DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDQueryConsulta: TFDQuery
    Active = True
    Connection = conexao.conexaobanco
    SQL.Strings = (
      'select * from tb_estoque')
    Left = 456
    Top = 16
  end
  object DataSourceConsulta: TDataSource
    DataSet = FDQueryConsulta
    Left = 552
    Top = 8
  end
end
