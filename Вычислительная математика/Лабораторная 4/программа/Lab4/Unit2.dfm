object Form2: TForm2
  Left = 804
  Top = 663
  Width = 894
  Height = 532
  Caption = #1060#1086#1088#1084#1091#1083#1072' '#1090#1088#1072#1087#1077#1094#1080#1080
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
    Width = 577
    Height = 76
    Caption = 
      #1047#1072#1076#1072#1085#1080#1077':'#13#10#1042#1099#1095#1080#1089#1083#1080#1090#1100' '#1086#1087#1088#1077#1076#1077#1083#1105#1085#1085#1099#1081' '#1080#1085#1090#1077#1075#1088#1072#1083' '#1086#1090' '#1092#1091#1085#1082#1094#1080#1080':    (2*x+0,' +
      '5)*sin(x)  .            '#13#10#1055#1088#1077#1076#1077#1083#1099' '#1080#1085#1090#1077#1075#1088#1080#1088#1086#1074#1072#1085#1080#1103':  [0,4;1,2].'#13#10#1058 +
      #1086#1095#1085#1086#1089#1090#1100' e = 0.0001.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 96
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
  object btn1: TButton
    Left = 768
    Top = 456
    Width = 90
    Height = 30
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btn1Click
  end
  object cht1: TChart
    Left = 384
    Top = 96
    Width = 473
    Height = 353
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      #1043#1088#1072#1092#1080#1082' '#1080#1085#1090#1077#1075#1088#1072#1083#1100#1085#1086#1081' '#1092#1091#1085#1082#1094#1080#1080)
    Legend.LegendStyle = lsSeries
    View3D = False
    TabOrder = 1
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = '1/sqrt(2+0.5*x^2)'
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
    Top = 128
    Width = 344
    Height = 321
    ColCount = 4
    DefaultColWidth = 80
    FixedCols = 0
    RowCount = 30
    TabOrder = 2
  end
end
