object Form3: TForm3
  Left = 786
  Top = 166
  Width = 843
  Height = 593
  Caption = #1060#1086#1088#1084#1091#1083#1072' '#1057#1080#1084#1087#1089#1086#1085#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 607
    Height = 95
    Caption = 
      #1047#1072#1076#1072#1085#1080#1077':'#13#10#1042#1099#1095#1080#1089#1083#1080#1090#1100' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1085#1099#1081' '#1080#1085#1090#1077#1075#1088#1072#1083' '#1086#1090' '#1092#1091#1085#1082#1094#1080#1080':   1/sqrt(3' +
      '+sqr(x))     .                 '#13#10#1055#1088#1077#1076#1077#1083#1099' '#1080#1085#1090#1077#1075#1088#1080#1088#1086#1074#1072#1085#1080#1103':  [0,4;1' +
      ',2].    '#13#10#1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1092#1086#1088#1084#1091#1083#1091' '#1057#1080#1084#1087#1089#1086#1085#1072'.'#13#10#1057' '#1079#1072#1076#1072#1085#1085#1086#1081' '#1090#1086#1095#1085#1086#1089#1090#1100#1102' '#1077 +
      ' = 0.0001.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 112
    Width = 37
    Height = 19
    Caption = 'None'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn2: TButton
    Left = 728
    Top = 520
    Width = 90
    Height = 30
    Caption = 'OK'
    TabOrder = 0
    OnClick = btn2Click
  end
  object cht1: TChart
    Left = 288
    Top = 152
    Width = 529
    Height = 353
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      #1043#1088#1072#1092#1080#1082' '#1087#1086#1076#1099#1085#1090#1077#1075#1088#1072#1083#1100#1085#1086#1081' '#1092#1091#1085#1082#1094#1080#1080)
    Legend.LegendStyle = lsSeries
    View3D = False
    TabOrder = 1
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 4227072
      Title = 'sin(2*x)/x^2'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object strngrd1: TStringGrid
    Left = 8
    Top = 152
    Width = 246
    Height = 104
    ColCount = 3
    DefaultColWidth = 80
    RowCount = 4
    TabOrder = 2
    RowHeights = (
      24
      24
      24
      24)
  end
end
