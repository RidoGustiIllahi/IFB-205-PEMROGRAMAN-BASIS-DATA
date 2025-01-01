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
    Left = 16
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
    Left = 16
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
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
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
    Enabled = False
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
    Left = 8
    Top = 416
    Width = 425
    Height = 137
    Enabled = False
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        Title.Alignment = taCenter
        Title.Caption = 'ID Kelas'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Kelas'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal'
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Waktu'
        Width = 80
        Visible = True
      end>
  end
  object dbLookUpHadir: TDBLookupComboBox
    Left = 104
    Top = 560
    Width = 233
    Height = 21
    TabOrder = 4
  end
  object btnFilter: TBitBtn
    Left = 352
    Top = 560
    Width = 75
    Height = 25
    Caption = 'Filter'
    TabOrder = 5
  end
  object btnNilai: TBitBtn
    Left = 16
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Lihat Nilai'
    TabOrder = 6
  end
  object btnPrintHadir: TBitBtn
    Left = 16
    Top = 584
    Width = 81
    Height = 25
    Caption = 'Print Kehadiran'
    TabOrder = 7
  end
  object btnLogout: TBitBtn
    Left = 592
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Logout'
    TabOrder = 8
  end
  object btnEditProfile: TBitBtn
    Left = 640
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Edit Profile'
    TabOrder = 9
  end
  object EDBImage1: TEDBImage
    Left = 672
    Top = 8
    Width = 49
    Height = 49
    TabOrder = 10
    ZoomToFit = False
  end
  object btnBatalProfile: TBitBtn
    Left = 480
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Batal'
    Enabled = False
    TabOrder = 11
    Visible = False
  end
  object btnJadwal: TBitBtn
    Left = 640
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Print Jadwal'
    TabOrder = 12
  end
  object btnTmbhHadir: TBitBtn
    Left = 104
    Top = 584
    Width = 75
    Height = 25
    Caption = 'Presensi'
    TabOrder = 13
  end
  object Panel1: TPanel
    Left = 448
    Top = 384
    Width = 273
    Height = 217
    Caption = 'Panel1'
    TabOrder = 14
    Visible = False
    object Label6: TLabel
      Left = 13
      Top = 17
      Width = 68
      Height = 16
      Caption = 'Pilih Kelas :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 15
      Top = 72
      Width = 50
      Height = 16
      Caption = 'ID Kelas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 31
      Top = 96
      Width = 34
      Height = 16
      Caption = 'Kelas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 14
      Top = 120
      Width = 51
      Height = 16
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 27
      Top = 144
      Width = 38
      Height = 16
      Caption = 'Waktu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbLookUpPresensi: TDBLookupComboBox
      Left = 16
      Top = 40
      Width = 241
      Height = 21
      TabOrder = 0
    end
    object edIdKelas: TEdit
      Left = 72
      Top = 72
      Width = 185
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
    end
    object edKelas: TEdit
      Left = 72
      Top = 96
      Width = 185
      Height = 21
      TabOrder = 2
      Text = 'Edit1'
    end
    object edTanggal: TEdit
      Left = 72
      Top = 120
      Width = 185
      Height = 21
      TabOrder = 3
      Text = 'Edit1'
    end
    object edWaktu: TEdit
      Left = 72
      Top = 144
      Width = 185
      Height = 21
      TabOrder = 4
      Text = 'Edit1'
    end
    object btnBatalHadir: TBitBtn
      Left = 86
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Batal'
      Enabled = False
      TabOrder = 5
    end
    object btnHadir: TBitBtn
      Left = 182
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Presensi'
      Enabled = False
      TabOrder = 6
    end
  end
  object btnSimpanProfile: TBitBtn
    Left = 560
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Simpan'
    Enabled = False
    TabOrder = 15
    Visible = False
  end
end
