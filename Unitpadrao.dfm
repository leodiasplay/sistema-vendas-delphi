object Formpadrao: TFormpadrao
  Left = 0
  Top = 0
  Caption = 'Formpadrao'
  ClientHeight = 249
  ClientWidth = 582
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 194
    Width = 582
    Height = 55
    Align = alBottom
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object btDeletar: TSpeedButton
      Left = 328
      Top = 16
      Width = 73
      Height = 25
      Caption = 'Deletar'
      OnClick = btDeletarClick
    end
    object btSalvar: TSpeedButton
      Left = 407
      Top = 16
      Width = 73
      Height = 25
      Caption = 'Salvar'
      OnClick = btSalvarClick
    end
    object btInserir: TSpeedButton
      Left = 249
      Top = 16
      Width = 73
      Height = 25
      Caption = 'Inserir'
      OnClick = btInserirClick
    end
    object btCancelar: TSpeedButton
      Left = 486
      Top = 16
      Width = 73
      Height = 25
      Caption = 'Cancelar'
      OnClick = btCancelarClick
    end
  end
end
