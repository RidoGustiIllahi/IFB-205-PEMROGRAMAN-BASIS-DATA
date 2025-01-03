object DM: TDM
  OldCreateOrder = False
  Left = 890
  Top = 115
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
  object popUpSw: TPopupMenu
    Left = 56
    Top = 104
    object LoadFotoSw: TMenuItem
      Caption = 'Load Foto'
      OnClick = LoadFotoSwClick
    end
    object SavetoSw: TMenuItem
      Caption = 'Save to'
    end
    object ClearFotoSw: TMenuItem
      Caption = 'Clear Foto'
    end
  end
  object popUpGr: TPopupMenu
    Left = 104
    Top = 104
    object LoadFotoGr: TMenuItem
      Caption = 'Load Foto'
      OnClick = LoadFotoGrClick
    end
    object SavetoGr: TMenuItem
      Caption = 'Save to'
      OnClick = SavetoGrClick
    end
    object ClearFotoGr: TMenuItem
      Caption = 'Clear Foto'
      OnClick = ClearFotoGrClick
    end
  end
  object zqEdAccount: TZQuery
    Connection = ZConn
    Params = <>
    Left = 56
    Top = 152
  end
  object dsEdAccount: TDataSource
    DataSet = zqEdAccount
    Left = 56
    Top = 200
  end
  object zqKelas: TZQuery
    Connection = ZConn
    Params = <>
    Left = 152
    Top = 152
  end
  object dsKelas: TDataSource
    DataSet = zqKelas
    Left = 152
    Top = 200
  end
  object zqCekSw: TZQuery
    Connection = ZConn
    Params = <>
    Left = 200
    Top = 152
  end
  object dsCekSw: TDataSource
    DataSet = zqCekSw
    Left = 200
    Top = 200
  end
  object rptJadwalSw: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45660.395064050900000000
    ReportOptions.LastChange = 45660.396451412040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 56
    Top = 264
    Datasets = <
      item
        DataSet = frxJadwalSw
        DataSetName = 'frxJadwalSw'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jadwal Kelas')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Width = 740.787401574803000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 107.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'IDMataPelajaran')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 107.000000000000000000
          Width = 132.419924608661000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NamaKelas')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 239.419924608661000000
          Width = 129.182356022291000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NamaGuru')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 368.602280630952000000
          Width = 104.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NomorRuangan')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 472.602280630952000000
          Width = 149.417159687100000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NamaRuangan')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 622.019440318052000000
          Width = 68.287294240891600000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NamaHari')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          Left = 690.306734558943000000
          Width = 50.480667015859700000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Waktu')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 740.409927000000000000
        DataSet = frxJadwalSw
        DataSetName = 'frxJadwalSw'
        RowCount = 0
        object Memo10: TfrxMemoView
          Width = 107.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IDMataPelajaran'
          DataSet = frxJadwalSw
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."IDMataPelajaran"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          Left = 107.000000000000000000
          Width = 132.419924608661000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NamaKelas'
          DataSet = frxJadwalSw
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."NamaKelas"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          Left = 239.419924608661000000
          Width = 129.182356022291000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NamaGuru'
          DataSet = frxJadwalSw
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."NamaGuru"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          Left = 368.602280630952000000
          Width = 104.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NomorRuangan'
          DataSet = frxJadwalSw
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."NomorRuangan"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          Left = 472.602280630952000000
          Width = 149.417159687100000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NamaRuangan'
          DataSet = frxJadwalSw
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."NamaRuangan"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          Left = 622.019440318052000000
          Width = 68.287294240891600000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NamaHari'
          DataSet = frxJadwalSw
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."NamaHari"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          Left = 690.306734558943000000
          Width = 50.480667015859700000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Waktu'
          DataSet = frxJadwalSw
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."Waktu"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 230.551330000000000000
        Width = 740.409927000000000000
        object Memo17: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo18: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8 = (
            '[Date] [Time]')
        end
        object Memo19: TfrxMemoView
          Align = baRight
          Left = 664.819327000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxJadwalSw: TfrxDBDataset
    UserName = 'frxJadwalSw'
    CloseDataSource = False
    DataSource = dsJadwalSw
    Left = 56
    Top = 312
  end
  object rptHadirSw: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45660.402261990700000000
    ReportOptions.LastChange = 45660.402609861110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 128
    Top = 264
    Datasets = <
      item
        DataSet = frxHadirSw
        DataSetName = 'frxJadwalSw'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 16053492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Rekap Kehadiran')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Width = 740.787401574803000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'IDKelas')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 78.000000000000000000
          Width = 372.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NamaKelas')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 450.000000000000000000
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 528.000000000000000000
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Waktu')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 740.409927000000000000
        DataSet = frxHadirSw
        DataSetName = 'frxJadwalSw'
        RowCount = 0
        object Memo7: TfrxMemoView
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IDKelas'
          DataSet = frxHadirSw
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."IDKelas"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          Left = 78.000000000000000000
          Width = 372.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NamaKelas'
          DataSet = frxHadirSw
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."NamaKelas"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          Left = 450.000000000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Tanggal'
          DataSet = frxHadirSw
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."Tanggal"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          Left = 528.000000000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Waktu'
          DataSet = frxHadirSw
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."Waktu"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 230.551330000000000000
        Width = 740.409927000000000000
        object Memo11: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo12: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8 = (
            '[Date] [Time]')
        end
        object Memo13: TfrxMemoView
          Align = baRight
          Left = 664.819327000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxHadirSw: TfrxDBDataset
    UserName = 'frxJadwalSw'
    CloseDataSource = False
    DataSource = dsHadirSw
    Left = 128
    Top = 312
  end
  object rptJadwalGr: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45660.406315266210000000
    ReportOptions.LastChange = 45660.406560798610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 192
    Top = 264
    Datasets = <
      item
        DataSet = frxJadwalGr
        DataSetName = 'frxJadwalSw'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 16053492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 216.000000000000000000
      PaperHeight = 279.000000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 740.787880000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jadwal Mengajar')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 740.787880000000000000
        object Memo2: TfrxMemoView
          Width = 740.787401574803200000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 107.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'IDMataPelajaran')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 107.000000000000000000
          Width = 132.419924608660600000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NamaKelas')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 239.419924608660600000
          Width = 129.182356022291100000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NamaGuru')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 368.602280630951700000
          Width = 104.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NomorRuangan')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 472.602280630951700000
          Width = 149.417159687100200000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NamaRuangan')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 622.019440318051800000
          Width = 68.287294240891640000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NamaHari')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          Left = 690.306734558943500000
          Width = 50.480667015859660000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Waktu')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 740.787880000000000000
        DataSet = frxJadwalGr
        DataSetName = 'frxJadwalSw'
        RowCount = 0
        object Memo10: TfrxMemoView
          Width = 107.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IDMataPelajaran'
          DataSet = frxJadwalGr
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."IDMataPelajaran"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          Left = 107.000000000000000000
          Width = 132.419924608660600000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NamaKelas'
          DataSet = frxJadwalGr
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."NamaKelas"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          Left = 239.419924608660600000
          Width = 129.182356022291100000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NamaGuru'
          DataSet = frxJadwalGr
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."NamaGuru"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          Left = 368.602280630951700000
          Width = 104.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NomorRuangan'
          DataSet = frxJadwalGr
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."NomorRuangan"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          Left = 472.602280630951700000
          Width = 149.417159687100200000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NamaRuangan'
          DataSet = frxJadwalGr
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."NamaRuangan"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          Left = 622.019440318051800000
          Width = 68.287294240891640000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NamaHari'
          DataSet = frxJadwalGr
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."NamaHari"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          Left = 690.306734558943500000
          Width = 50.480667015859660000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Waktu'
          DataSet = frxJadwalGr
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."Waktu"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 230.551330000000000000
        Width = 740.787880000000000000
        object Memo17: TfrxMemoView
          Align = baWidth
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo18: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8 = (
            '[Date] [Time]')
        end
        object Memo19: TfrxMemoView
          Align = baRight
          Left = 665.197280000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxJadwalGr: TfrxDBDataset
    UserName = 'frxJadwalSw'
    CloseDataSource = False
    DataSource = dsJadwalGr
    Left = 192
    Top = 312
  end
  object rptHadirGr: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45660.409595972230000000
    ReportOptions.LastChange = 45660.410021064820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 272
    Top = 264
    Datasets = <
      item
        DataSet = frxHadirGr
        DataSetName = 'frxJadwalSw'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 16053492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 216.000000000000000000
      PaperHeight = 279.000000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 740.787880000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 740.787880000000000000
        object Memo2: TfrxMemoView
          Width = 740.787401574803200000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 67.115587070953150000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'IDKelas')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 67.115587070953150000
          Width = 243.128550920085300000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NamaKelas')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 310.244137991038400000
          Width = 55.360421107582550000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NIS')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 365.604559098621000000
          Width = 243.999303954409000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NamaSiswa')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 609.603863053030000000
          Width = 67.986340105276900000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 677.590203158306900000
          Width = 63.197198416496280000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Waktu')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 740.787880000000000000
        DataSet = frxHadirGr
        DataSetName = 'frxJadwalSw'
        RowCount = 0
        object Memo9: TfrxMemoView
          Width = 67.115587070953150000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IDKelas'
          DataSet = frxHadirGr
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."IDKelas"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          Left = 67.115587070953150000
          Width = 243.128550920085300000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NamaKelas'
          DataSet = frxHadirGr
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."NamaKelas"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          Left = 310.244137991038400000
          Width = 55.360421107582550000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NIS'
          DataSet = frxHadirGr
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."NIS"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          Left = 365.604559098621000000
          Width = 243.999303954409000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NamaSiswa'
          DataSet = frxHadirGr
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."NamaSiswa"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          Left = 609.603863053030000000
          Width = 67.986340105276900000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Tanggal'
          DataSet = frxHadirGr
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."Tanggal"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          Left = 677.590203158306900000
          Width = 63.197198416496280000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Waktu'
          DataSet = frxHadirGr
          DataSetName = 'frxJadwalSw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxJadwalSw."Waktu"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 230.551330000000000000
        Width = 740.787880000000000000
        object Memo15: TfrxMemoView
          Align = baWidth
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo16: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8 = (
            '[Date] [Time]')
        end
        object Memo17: TfrxMemoView
          Align = baRight
          Left = 665.197280000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxHadirGr: TfrxDBDataset
    UserName = 'frxJadwalSw'
    CloseDataSource = False
    DataSource = dsHadirGr
    Left = 272
    Top = 312
  end
end
