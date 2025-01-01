object Form1: TForm1
  Left = 130
  Top = 138
  Width = 1044
  Height = 540
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 288
    Top = 84
    Width = 233
    Height = 217
    Caption = 'Panel1'
    TabOrder = 0
    Visible = False
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
    object Label7: TLabel
      Left = 47
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
    object edIdKelas: TEdit
      Left = 72
      Top = 72
      Width = 145
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
    end
    object edKelas: TEdit
      Left = 72
      Top = 96
      Width = 145
      Height = 21
      TabOrder = 2
      Text = 'Edit1'
    end
    object edTanggal: TEdit
      Left = 72
      Top = 120
      Width = 145
      Height = 21
      TabOrder = 3
      Text = 'Edit1'
    end
    object edWaktu: TEdit
      Left = 72
      Top = 144
      Width = 145
      Height = 21
      TabOrder = 4
      Text = 'Edit1'
    end
    object btnBatalHadir: TBitBtn
      Left = 46
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Batal'
      Enabled = False
      TabOrder = 5
    end
    object btnHadir: TBitBtn
      Left = 142
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Presensi'
      Enabled = False
      TabOrder = 6
    end
    object edNis: TEdit
      Left = 72
      Top = 48
      Width = 145
      Height = 21
      TabOrder = 7
      Text = 'Edit1'
    end
  end
end
