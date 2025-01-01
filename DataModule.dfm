object DM: TDM
  OldCreateOrder = False
  Left = 897
  Top = 130
  Height = 566
  Width = 513
  object ZConn: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = True
    Properties.Strings = (
      'AutoEncodeStrings=ON'
      'controls_cp=GET_ACP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'sistempenjadwalankelas'
    User = 'root'
    Protocol = 'mysql'
    Left = 8
    Top = 8
  end
  object zqAccount: TZQuery
    Connection = ZConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM auth_login')
    Params = <>
    Left = 56
    Top = 8
  end
  object dsAccount: TDataSource
    DataSet = zqAccount
    Left = 56
    Top = 56
  end
  object zqSiswa: TZQuery
    Connection = ZConn
    Params = <>
    Left = 104
    Top = 8
  end
  object dsSiswa: TDataSource
    DataSet = zqSiswa
    Left = 104
    Top = 56
  end
  object zqGuru: TZQuery
    Connection = ZConn
    Params = <>
    Left = 152
    Top = 8
  end
  object dsGuru: TDataSource
    DataSet = zqGuru
    Left = 152
    Top = 56
  end
  object zqJadwalSw: TZQuery
    Connection = ZConn
    Params = <>
    Left = 208
    Top = 8
  end
  object dsJadwalSw: TDataSource
    DataSet = zqJadwalSw
    Left = 208
    Top = 56
  end
  object zqJadwalGr: TZQuery
    Connection = ZConn
    Params = <>
    Left = 272
    Top = 8
  end
  object dsJadwalGr: TDataSource
    DataSet = zqJadwalGr
    Left = 272
    Top = 56
  end
  object zqHadirSw: TZQuery
    Connection = ZConn
    Params = <>
    Left = 336
    Top = 8
  end
  object dsHadirSw: TDataSource
    DataSet = zqHadirSw
    Left = 336
    Top = 56
  end
  object zqHadirGr: TZQuery
    Connection = ZConn
    Params = <>
    Left = 392
    Top = 8
  end
  object dsHadirGr: TDataSource
    DataSet = zqHadirGr
    Left = 392
    Top = 56
  end
end
