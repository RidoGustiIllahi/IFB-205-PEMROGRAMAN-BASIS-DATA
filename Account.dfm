object FEdAccount: TFEdAccount
  Left = 620
  Top = 269
  Width = 235
  Height = 290
  Caption = 'Edit Account'
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
  object panelUtama: TPanel
    Left = 9
    Top = 9
    Width = 201
    Height = 232
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 12
      Width = 168
      Height = 32
      Alignment = taCenter
      Caption = 'Edit Account'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblNama: TLabel
      Left = 32
      Top = 50
      Width = 136
      Height = 24
      Alignment = taCenter
      Caption = 'NIS/NIP - Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 88
      Width = 64
      Height = 16
      Caption = 'Username'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 136
      Width = 64
      Height = 16
      Caption = 'Password'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edUsername: TDBEdit
      Left = 16
      Top = 105
      Width = 168
      Height = 24
      DataField = 'username'
      DataSource = DM.dsEdAccount
      TabOrder = 0
    end
    object edPassword: TDBEdit
      Left = 16
      Top = 152
      Width = 168
      Height = 24
      DataField = 'password'
      DataSource = DM.dsEdAccount
      TabOrder = 1
    end
    object btnSimpan: TBitBtn
      Left = 24
      Top = 192
      Width = 72
      Height = 24
      Caption = 'Simpan'
      TabOrder = 2
      OnClick = btnSimpanClick
    end
    object btnBatal: TBitBtn
      Left = 104
      Top = 192
      Width = 72
      Height = 24
      Caption = 'Batal'
      TabOrder = 3
      OnClick = btnBatalClick
    end
  end
end
