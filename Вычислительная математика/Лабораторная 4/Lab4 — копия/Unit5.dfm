object Form5: TForm5
  Left = 531
  Top = 317
  Width = 1234
  Height = 631
  Caption = #1084#1077#1090#1086#1076#1086#1084' '#1056#1091#1085#1075#1077'-'#1050#1091#1090#1090#1072
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
    Width = 722
    Height = 95
    Caption = 
      #1047#1072#1076#1072#1085#1080#1077':'#13#10#1055#1086' '#1092#1086#1088#1084#1091#1083#1077' 4-'#1075#1086' '#1087#1086#1088#1103#1076#1082#1072' '#1090#1086#1095#1085#1086#1089#1090#1080' '#1088#1077#1096#1080#1090#1100' '#1076#1080#1092#1092#1077#1088#1077#1085#1094#1080#1072#1083#1100#1085 +
      #1086#1077' '#1091#1088#1072#1074#1085#1077#1085#1080#1077' '#1084#1077#1090#1086#1076#1086#1084' '#1056#1091#1085#1075#1077'-'#1050#1091#1090#1090#1072':'#13#10' y'#39'=y/x-y^2                  ' +
      ' '#13#10' y(0)=1; h=0,2; 1<=x<=2'#13#10
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
    Width = 229
    Height = 19
    Caption = #1056#1072#1089#1095#1077#1090#1085#1072#1103' '#1090#1072#1073#1083#1080#1094#1072' '#1076#1083#1103' h = 0.2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 8
    Top = 352
    Width = 229
    Height = 19
    Caption = #1056#1072#1089#1095#1077#1090#1085#1072#1103' '#1090#1072#1073#1083#1080#1094#1072' '#1076#1083#1103' h = 0.1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object strngrd1: TStringGrid
    Left = 9
    Top = 136
    Width = 699
    Height = 201
    ColCount = 10
    DefaultColWidth = 84
    FixedCols = 0
    RowCount = 8
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    TabOrder = 0
  end
  object strngrd2: TStringGrid
    Left = 8
    Top = 376
    Width = 700
    Height = 201
    ColCount = 10
    DefaultColWidth = 84
    FixedCols = 0
    RowCount = 12
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    TabOrder = 1
  end
  object cht1: TChart
    Left = 744
    Top = 120
    Width = 441
    Height = 409
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      #1043#1088#1072#1092#1080#1082' '#1076#1080#1092#1092#1077#1088#1077#1085#1094#1080#1072#1083#1100#1085#1086#1075#1086' '#1091#1088#1072#1074#1085#1077#1085#1080#1103)
    Legend.LegendStyle = lsSeries
    View3D = False
    TabOrder = 2
    object lnsrsSeries1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'y'#39' = y+ x h = 0.1'
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
    object lnsrsSeries2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Title = 'y'#39' = x+y  h = 0.05'
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
  object btn1: TBitBtn
    Left = 1096
    Top = 552
    Width = 91
    Height = 33
    Caption = #1054#1050
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btn1Click
  end
end
