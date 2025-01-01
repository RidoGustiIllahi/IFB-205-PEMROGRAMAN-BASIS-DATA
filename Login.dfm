object FLogin: TFLogin
  Left = 310
  Top = 179
  Width = 377
  Height = 354
  Caption = 'Login'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 326
    Height = 32
    Alignment = taCenter
    Caption = 'School Schedulling System'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 144
    Top = 56
    Width = 61
    Height = 25
    Caption = 'LOGIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 80
    Top = 88
    Width = 201
    Height = 177
    TabOrder = 0
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 63
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
      Left = 16
      Top = 64
      Width = 60
      Height = 16
      Caption = 'Password'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edUsername: TEdit
      Left = 16
      Top = 32
      Width = 169
      Height = 21
      TabOrder = 0
    end
    object edPassword: TEdit
      Left = 16
      Top = 80
      Width = 169
      Height = 21
      TabOrder = 1
    end
    object btnLogin: TBitBtn
      Left = 16
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Masuk'
      TabOrder = 2
      OnClick = btnLoginClick
    end
    object cbLiatpw: TCheckBox
      Left = 16
      Top = 104
      Width = 97
      Height = 17
      Caption = 'Lihat Password'
      TabOrder = 3
    end
    object btnKeluar: TBitBtn
      Left = 112
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 4
      OnClick = btnKeluarClick
    end
  end
end
