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
    Left = 208
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 360
    Top = 48
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Windows\SysWOW64\libmysql.dll'
    Left = 64
    Top = 200
  end
  object DataSource2: TDataSource
    Left = 368
    Top = 112
  end
end
