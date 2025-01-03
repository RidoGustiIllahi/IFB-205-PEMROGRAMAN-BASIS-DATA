object FProfileGuru: TFProfileGuru
  Left = 463
  Top = 70
  Width = 770
  Height = 747
  Caption = 'Profile Guru'
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
  object panelHeader: TPanel
    Left = 9
    Top = 8
    Width = 736
    Height = 64
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 256
      Height = 32
      Caption = 'Selamat Datang Guru'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnLogout: TBitBtn
      Left = 584
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
      DataSource = DM.dsGuru
      PopupMenu = DM.popUpGr
      TabOrder = 1
      ZoomToFit = False
    end
  end
  object panelProfile: TPanel
    Left = 8
    Top = 80
    Width = 737
    Height = 129
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 16
      Width = 102
      Height = 25
      Caption = 'Profile Guru'
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
      DataSource = DM.dsGuru
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
          FieldName = 'NIP'
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
    object btnEditProfile: TBitBtn
      Left = 640
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Edit Profile'
      TabOrder = 2
      OnClick = btnEditProfileClick
    end
    object btnBatalProfile: TBitBtn
      Left = 480
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Batal'
      Enabled = False
      TabOrder = 3
      Visible = False
      OnClick = btnBatalProfileClick
    end
    object btnSimpanProfile: TBitBtn
      Left = 560
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Simpan'
      Enabled = False
      TabOrder = 4
      Visible = False
      OnClick = btnSimpanProfileClick
    end
  end
  object panelJadwal: TPanel
    Left = 8
    Top = 216
    Width = 737
    Height = 233
    TabOrder = 2
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
      DataSource = DM.dsJadwalGr
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
      Left = 19
      Top = 200
      Width = 75
      Height = 25
      Caption = 'Print Jadwal'
      TabOrder = 1
      OnClick = btnJadwalClick
    end
  end
  object PanelHadir: TPanel
    Left = 8
    Top = 456
    Width = 737
    Height = 241
    TabOrder = 3
    object Label4: TLabel
      Left = 24
      Top = 16
      Width = 151
      Height = 25
      Caption = 'Rekap Kehadiran'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 383
      Top = 17
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
    object btnPrintHadir: TBitBtn
      Left = 24
      Top = 192
      Width = 81
      Height = 25
      Caption = 'Print Kehadiran'
      TabOrder = 0
      OnClick = btnPrintHadirClick
    end
    object btnTmbhHadir: TBitBtn
      Left = 616
      Top = 192
      Width = 97
      Height = 25
      Caption = 'Tambah Kehadiran'
      TabOrder = 1
      OnClick = btnTmbhHadirClick
    end
    object dbGridHadir: TSMDBGrid
      Left = 8
      Top = 40
      Width = 721
      Height = 145
      DataSource = DM.dsHadirGr
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
          FieldName = 'NIS'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NamaSiswa'
          Title.Alignment = taCenter
          Title.Caption = 'Siswa'
          Width = 180
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Tanggal'
          Title.Alignment = taCenter
          Width = 75
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
      Left = 471
      Top = 17
      Width = 233
      Height = 21
      TabOrder = 3
      OnCloseUp = dbLookUpHadirCloseUp
    end
    object btnHapus: TBitBtn
      Left = 536
      Top = 192
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 4
      OnClick = btnHapusClick
    end
  end
end
