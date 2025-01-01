object DM: TDM
  OldCreateOrder = False
  Left = 192
  Top = 125
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
    Active = True
    SQL.Strings = (
      'SELECT  * FROM siswa')
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
    SQL.Strings = (
      'SELECT * FROM guru')
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
    Active = True
    SQL.Strings = (
      'SELECT '
      '            m.IDMataPelajaran,'
      '            m.Nama AS NamaKelas,'
      '            g.Nama AS NamaGuru,'
      '            r.IDRuangan AS NomorRuangan,'
      '            r.Nama AS NamaRuangan,'
      '            h.Hari AS NamaHari,'
      '            j.Waktu'
      '        FROM '
      '            siswamatapelajaran smp'
      '        JOIN '
      
        '            matapelajaran m ON smp.IDMataPelajaran = m.IDMataPel' +
        'ajaran'
      '        JOIN '
      '            guru g ON m.NIP = g.NIP'
      '        JOIN '
      '            jadwal j ON m.IDMataPelajaran = j.IDMatapelajaran'
      '        JOIN '
      '            hari h ON j.IDHari = h.IDHari'
      '        JOIN '
      '            ruangan r ON j.IDRuangan = r.IDRuangan')
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
    Active = True
    SQL.Strings = (
      'SELECT '
      '        m.IDMataPelajaran,'
      '        m.Nama AS NamaKelas,'
      '        g.Nama AS NamaGuru,'
      '        r.IDRuangan AS NomorRuangan,'
      '        r.Nama AS NamaRuangan,'
      '        h.Hari AS NamaHari,'
      '        j.Waktu'
      '    FROM '
      '        matapelajaran m'
      '    JOIN '
      '        guru g ON m.NIP = g.NIP'
      '    JOIN '
      '        jadwal j ON m.IDMataPelajaran = j.IDMatapelajaran'
      '    JOIN '
      '        hari h ON j.IDHari = h.IDHari'
      '    JOIN '
      '        ruangan r ON j.IDRuangan = r.IDRuangan')
    Params = <>
    Left = 272
    Top = 8
  end
  object dsJadwalGr: TDataSource
    DataSet = zqJadwalGr
    Left = 272
    Top = 56
  end
end