object Form4: TForm4
  Left = 404
  Top = 549
  Width = 1072
  Height = 476
  Caption = #1060#1086#1088#1084#1091#1083#1072' '#1043#1072#1091#1089#1089#1072
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
    Width = 502
    Height = 57
    Caption = 
      #1047#1072#1076#1072#1085#1080#1077':'#13#10#1054#1087#1088#1077#1076#1077#1083#1105#1085#1085#1099#1081' '#1080#1085#1090#1077#1075#1088#1072#1083' '#1086#1090' '#1092#1091#1085#1082#1094#1080#1080':   (0,5*x+2)/sqrt(x^2' +
      '+1)        '#13#10#1055#1088#1077#1076#1077#1083#1099' '#1080#1085#1090#1077#1075#1088#1080#1088#1086#1074#1072#1085#1080#1103':  [0,8;1,6]     '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 80
    Width = 311
    Height = 76
    Caption = 
      #1050#1074#1072#1076#1088#1072#1090#1091#1088#1085#1072#1103' '#1092#1086#1088#1084#1091#1083#1072' '#1043#1072#1091#1089#1089#1072' '#1089' 5 '#1091#1079#1083#1072#1084#1080':'#13#10'x1=-x5=-0,90618        ' +
      'A1=A5=0,23698'#13#10'x2=-x4=-0,538469       A2=A4=0,47863'#13#10'x3=0       ' +
      '                          A3=0,56889'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 8
    Top = 160
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
  object lbl4: TLabel
    Left = 8
    Top = 192
    Width = 331
    Height = 95
    Caption = 
      #1050#1074#1072#1076#1088#1072#1090#1091#1088#1085#1072#1103' '#1092#1086#1088#1084#1091#1083#1072' '#1043#1072#1091#1089#1089#1072' '#1089' 8 '#1091#1079#1083#1072#1084#1080':'#13#10'x1=-x8=-0,96028986     ' +
      'A1=A8=0,10122854'#13#10'x2=-x7=-0,79666648     A2=A7=0,22238103'#13#10'x3=-x' +
      '6=-0,52553242     A3=A6=0,31370664'#13#10'x4=-x5=-0,18343464     A4=A5' +
      '=0,36268378'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 8
    Top = 296
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
    Left = 952
    Top = 384
    Width = 90
    Height = 30
    Caption = 'OK'
    TabOrder = 0
    OnClick = btn1Click
  end
  object cht1: TChart
    Left = 544
    Top = 8
    Width = 497
    Height = 369
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
      Title = '(x+1)/sqrt(x^2+2)'
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
end
