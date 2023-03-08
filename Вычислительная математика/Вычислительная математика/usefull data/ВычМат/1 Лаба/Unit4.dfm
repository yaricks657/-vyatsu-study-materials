object Form4: TForm4
  Left = 556
  Top = 137
  Width = 624
  Height = 505
  Caption = #1050#1086#1084#1073#1080#1085#1080#1088#1086#1074#1072#1085#1085#1099#1081' '#1084#1077#1090#1086#1076
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 288
    Top = 216
    Width = 3
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 312
    Top = 8
    Width = 178
    Height = 16
    Caption = #1048#1085#1090#1077#1088#1074#1072#1083' '#1080#1079#1086#1083#1103#1094#1080#1080' '#1082#1086#1088#1085#1103': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lbl7: TLabel
    Left = 368
    Top = 32
    Width = 55
    Height = 20
    Caption = '<= x  <='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object grp1: TGroupBox
    Left = 8
    Top = 1
    Width = 289
    Height = 441
    Caption = #1050#1086#1084#1073#1080#1085#1080#1088#1086#1074#1072#1085#1085#1099#1081' '#1084#1077#1090#1086#1076' '
    TabOrder = 0
    object lbl2: TLabel
      Left = 9
      Top = 104
      Width = 3
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 8
      Top = 393
      Width = 43
      Height = 16
      Caption = #1054#1090#1074#1077#1090':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 11
      Top = 64
      Width = 3
      Height = 13
    end
    object lbl5: TLabel
      Left = 11
      Top = 88
      Width = 3
      Height = 13
    end
    object btn1: TButton
      Left = 8
      Top = 24
      Width = 185
      Height = 25
      Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1091#1089#1083#1086#1074#1080#1077' M<=2m'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 8
      Top = 128
      Width = 145
      Height = 25
      Caption = #1050#1086#1084#1073#1080#1085#1080#1088#1086#1074#1072#1085#1085#1099#1081' '#1084#1077#1090#1086#1076
      Enabled = False
      TabOrder = 1
      OnClick = btn2Click
    end
    object StringGrid1: TStringGrid
      Left = 8
      Top = 160
      Width = 233
      Height = 217
      ColCount = 3
      RowCount = 8
      TabOrder = 2
      ColWidths = (
        64
        89
        73)
      RowHeights = (
        24
        24
        24
        24
        24
        24
        24
        24)
    end
    object edt1: TEdit
      Left = 72
      Top = 388
      Width = 121
      Height = 21
      TabOrder = 3
    end
  end
  object edt2: TEdit
    Left = 312
    Top = 32
    Width = 49
    Height = 21
    TabOrder = 1
    Text = '0,1'
    Visible = False
  end
  object edt3: TEdit
    Left = 424
    Top = 32
    Width = 49
    Height = 21
    TabOrder = 2
    Text = '1,0'
    Visible = False
  end
  object Memo1: TMemo
    Left = 304
    Top = 92
    Width = 257
    Height = 309
    TabOrder = 3
  end
end
