object Form8: TForm8
  Left = 865
  Top = 83
  Width = 540
  Height = 605
  Caption = #1043#1088#1072#1092#1080#1082' '#1076#1083#1103' '#1089#1090#1077#1087#1077#1085#1085#1086#1081' '#1079#1072#1074#1080#1089#1080#1084#1086#1089#1090#1080
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
  object btn1: TButton
    Left = 432
    Top = 536
    Width = 75
    Height = 25
    Caption = #1054#1050
    TabOrder = 0
    OnClick = btn1Click
  end
  object cht1: TChart
    Left = 8
    Top = 8
    Width = 497
    Height = 513
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    MarginLeft = 0
    MarginRight = 0
    Title.Text.Strings = (
      'TChart')
    View3D = False
    TabOrder = 1
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'Y = -2.946*(X^5.578)'
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
    object Series2: TPointSeries
      Marks.ArrowLength = 0
      Marks.Visible = False
      SeriesColor = clGreen
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.Visible = True
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
