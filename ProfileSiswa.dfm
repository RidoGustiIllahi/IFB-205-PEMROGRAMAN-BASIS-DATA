object FProfileSiswa: TFProfileSiswa
  Left = 389
  Top = 50
  Width = 770
  Height = 750
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
  object panelJadwal: TPanel
    Left = 8
    Top = 216
    Width = 737
    Height = 233
    TabOrder = 0
    object Label3: TLabel
      Left = 24
      Top = 16
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
    object dgGridJadwal: TSMDBGrid
      Left = 8
      Top = 40
      Width = 721
      Height = 153
      DataSource = DM.dsJadwalSw
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
    object btnJadwal: TBitBtn
      Left = 331
      Top = 200
      Width = 75
      Height = 25
      Caption = 'Print Jadwal'
      TabOrder = 1
    end
  end
  object panelHeader: TPanel
    Left = 8
    Top = 8
    Width = 737
    Height = 65
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
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
    object btnLogout: TBitBtn
      Left = 583
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Logout'
      TabOrder = 0
      OnClick = btnLogoutClick
    end
    object EDBImage1: TEDBImage
      Left = 672
      Top = 8
      Width = 50
      Height = 50
      DataField = 'Foto'
      DataSource = DM.dsSiswa
      PopupMenu = DM.popUpSw
      TabOrder = 1
      ZoomToFit = False
    end
  end
  object panelProfile: TPanel
    Left = 8
    Top = 80
    Width = 737
    Height = 129
    TabOrder = 2
    object Label2: TLabel
      Left = 24
      Top = 16
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
    object dbGridProfile: TSMDBGrid
      Left = 8
      Top = 40
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
      Left = 24
      Top = 96
      Width = 89
      Height = 25
      Caption = 'Edit Account'
      TabOrder = 1
      OnClick = btnAccountClick
    end
    object btnBatalProfile: TBitBtn
      Left = 472
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Batal'
      Enabled = False
      TabOrder = 2
      Visible = False
      OnClick = btnBatalProfileClick
    end
    object btnSimpanProfile: TBitBtn
      Left = 552
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Simpan'
      Enabled = False
      TabOrder = 3
      Visible = False
      OnClick = btnSimpanProfileClick
    end
    object btnEditProfile: TBitBtn
      Left = 632
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Edit Profile'
      TabOrder = 4
      OnClick = btnEditProfileClick
    end
  end
  object panelHadir: TPanel
    Left = 137
    Top = 459
    Width = 481
    Height = 241
    TabOrder = 3
    object Label4: TLabel
      Left = 24
      Top = 16
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
      Left = 43
      Top = 180
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
    object dbLookUpHadir: TDBLookupComboBox
      Left = 129
      Top = 180
      Width = 233
      Height = 21
      TabOrder = 0
    end
    object btnPrintHadir: TBitBtn
      Left = 41
      Top = 208
      Width = 81
      Height = 25
      Caption = 'Print Kehadiran'
      TabOrder = 2
    end
    object btnTmbhHadir: TBitBtn
      Left = 129
      Top = 208
      Width = 75
      Height = 25
      Caption = 'Presensi'
      TabOrder = 3
    end
    object dbGridHadir: TSMDBGrid
      Left = 8
      Top = 40
      Width = 465
      Height = 137
      DataSource = DM.dsHadirSw
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 4
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
    object btnFilter: TBitBtn
      Left = 367
      Top = 178
      Width = 72
      Height = 24
      Caption = 'Filter'
      TabOrder = 1
    end
  end
end
