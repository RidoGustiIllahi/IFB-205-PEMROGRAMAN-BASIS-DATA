object FProfileSiswa: TFProfileSiswa
  Left = 424
  Top = 116
  Width = 755
  Height = 665
  Caption = 'Profile Siswa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 272
    Height = 32
    Caption = 'Selamat Datang Siswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 112
    Height = 25
    Caption = 'Profile Siswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 160
    Width = 117
    Height = 25
    Caption = 'Jadwal Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 160
    Top = 392
    Width = 145
    Height = 25
    Caption = 'Kehadiran Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 160
    Top = 560
    Width = 79
    Height = 20
    Caption = 'Pilih Kelas :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object dbGridProfile: TSMDBGrid
    Left = 8
    Top = 72
    Width = 721
    Height = 41
    DataSource = DM.dsSiswa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsNormal
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NIS'
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Nama'
        Title.Alignment = taCenter
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TanggalLahir'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal Lahir'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Alamat'
        Title.Alignment = taCenter
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Email'
        Title.Alignment = taCenter
        Width = 150
        Visible = True
      end>
  end
  object btnAccount: TBitBtn
    Left = 16
    Top = 120
    Width = 89
    Height = 25
    Caption = 'Edit Account'
    TabOrder = 1
  end
  object dgGridJadwal: TSMDBGrid
    Left = 8
    Top = 184
    Width = 721
    Height = 153
    DataSource = DM.dsJadwalSw
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsNormal
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IDMataPelajaran'
        Title.Alignment = taCenter
        Title.Caption = 'ID Kelas'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NamaKelas'
        Title.Alignment = taCenter
        Title.Caption = 'Kelas'
        Width = 220
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NamaGuru'
        Title.Alignment = taCenter
        Title.Caption = 'Guru'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NomorRuangan'
        Title.Alignment = taCenter
        Title.Caption = 'Nomor Ruangan'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NamaRuangan'
        Title.Alignment = taCenter
        Title.Caption = 'Ruangan'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NamaHari'
        Title.Alignment = taCenter
        Title.Caption = 'Hari'
        Width = 74
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Waktu'
        Title.Alignment = taCenter
        Width = 75
        Visible = True
      end>
  end
  object dbGridHadir: TSMDBGrid
    Left = 152
    Top = 416
    Width = 465
    Height = 137
    DataSource = DM.dsHadirSw
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsNormal
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IDKelas'
        Title.Alignment = taCenter
        Title.Caption = 'ID Kelas'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NamaKelas'
        Title.Alignment = taCenter
        Title.Caption = 'Kelas'
        Width = 220
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tanggal'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Waktu'
        Title.Alignment = taCenter
        Width = 75
        Visible = True
      end>
  end
  object dbLookUpHadir: TDBLookupComboBox
    Left = 248
    Top = 560
    Width = 233
    Height = 21
    TabOrder = 4
  end
  object btnFilter: TBitBtn
    Left = 496
    Top = 560
    Width = 75
    Height = 25
    Caption = 'Filter'
    TabOrder = 5
  end
  object btnPrintHadir: TBitBtn
    Left = 160
    Top = 584
    Width = 81
    Height = 25
    Caption = 'Print Kehadiran'
    TabOrder = 6
  end
  object btnLogout: TBitBtn
    Left = 592
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Logout'
    TabOrder = 7
  end
  object btnEditProfile: TBitBtn
    Left = 640
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Edit Profile'
    TabOrder = 8
  end
  object EDBImage1: TEDBImage
    Left = 672
    Top = 8
    Width = 49
    Height = 49
    TabOrder = 9
    ZoomToFit = False
  end
  object btnBatalProfile: TBitBtn
    Left = 480
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Batal'
    Enabled = False
    TabOrder = 10
    Visible = False
  end
  object btnJadwal: TBitBtn
    Left = 336
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Print Jadwal'
    TabOrder = 11
  end
  object btnTmbhHadir: TBitBtn
    Left = 248
    Top = 584
    Width = 75
    Height = 25
    Caption = 'Presensi'
    TabOrder = 12
  end
  object btnSimpanProfile: TBitBtn
    Left = 560
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Simpan'
    Enabled = False
    TabOrder = 13
    Visible = False
  end
end
