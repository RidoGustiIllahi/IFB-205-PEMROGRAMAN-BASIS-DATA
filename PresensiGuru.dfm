object FPresensiGuru: TFPresensiGuru
  Left = 685
  Top = 357
  Width = 261
  Height = 170
  Caption = 'Presensi Guru'
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
    Left = 8
    Top = 8
    Width = 224
    Height = 112
    TabOrder = 0
    object Label6: TLabel
      Left = 13
      Top = 9
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
    object Label7: TLabel
      Left = 15
      Top = 48
      Width = 22
      Height = 16
      Caption = 'NIS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbLookUpPresensi: TDBLookupComboBox
      Left = 16
      Top = 24
      Width = 200
      Height = 21
      TabOrder = 0
    end
    object btnBatalHadir: TBitBtn
      Left = 14
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 1
      OnClick = btnBatalHadirClick
    end
    object btnHadir: TBitBtn
      Left = 142
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Presensi'
      TabOrder = 2
      OnClick = btnHadirClick
    end
    object edNis: TEdit
      Left = 40
      Top = 48
      Width = 177
      Height = 21
      TabOrder = 3
    end
  end
end
