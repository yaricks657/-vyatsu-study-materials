object Form5: TForm5
  Left = 602
  Top = 189
  Width = 684
  Height = 525
  Caption = #1052#1077#1090#1086#1076' '#1080#1090#1077#1088#1072#1094#1080#1081
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl5: TLabel
    Left = 312
    Top = 8
    Width = 178
    Height = 16
    Caption = #1048#1085#1090#1077#1088#1074#1072#1083' '#1080#1079#1086#1083#1103#1094#1080#1080' '#1082#1086#1088#1085#1103': '
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object lbl6: TLabel
    Left = 368
    Top = 32
    Width = 55
    Height = 20
    Caption = '<= x  <='
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object grp1: TGroupBox
    Left = 8
    Top = 1
    Width = 297
    Height = 441
    Caption = #1052#1077#1090#1086#1076' '#1080#1090#1077#1088#1072#1094#1080#1081' '
    TabOrder = 0
    object lbl1: TLabel
      Left = 11
      Top = 56
      Width = 3
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 12
      Top = 80
      Width = 165
      Height = 16
      Caption = #1053#1072#1095#1072#1083#1100#1085#1086#1077' '#1087#1088#1080#1073#1083#1080#1078#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lbl3: TLabel
      Left = 14
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
      Left = 8
      Top = 112
      Width = 3
      Height = 13
    end
    object btn1: TButton
      Left = 8
      Top = 24
      Width = 169
      Height = 25
      Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1089#1093#1086#1076#1080#1084#1086#1089#1090#1100
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 8
      Top = 128
      Width = 145
      Height = 25
      Caption = #1052#1077#1090#1086#1076' '#1080#1090#1077#1088#1072#1094#1080#1081
      Enabled = False
      TabOrder = 1
      OnClick = btn2Click
    end
    object StringGrid1: TStringGrid
      Left = 8
      Top = 160
      Width = 161
      Height = 217
      ColCount = 2
      RowCount = 8
      TabOrder = 2
      ColWidths = (
        64
        89)
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
    object edt2: TEdit
      Left = 184
      Top = 80
      Width = 73
      Height = 21
      TabOrder = 4
      Visible = False
    end
  end
  object edt3: TEdit
    Left = 312
    Top = 32
    Width = 49
    Height = 21
    Color = clBtnHighlight
    TabOrder = 1
    Text = '1,2'
    Visible = False
  end
  object edt4: TEdit
    Left = 424
    Top = 32
    Width = 49
    Height = 21
    Color = clBtnHighlight
    TabOrder = 2
    Text = '2,1'
    Visible = False
  end
  object Memo1: TMemo
    Left = 316
    Top = 92
    Width = 277
    Height = 325
    TabOrder = 3
  end
end
