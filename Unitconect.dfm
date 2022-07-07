object conexao: Tconexao
  OldCreateOrder = False
  Height = 283
  Width = 480
  object conexaobanco: TFDConnection
    Params.Strings = (
      'Database=dados'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 32
  end
  object FDTable1: TFDTable
    Connection = conexaobanco
    Left = 160
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 240
    Top = 144
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Windows\SysWOW64\libmysql.dll'
    Left = 16
    Top = 232
  end
end
