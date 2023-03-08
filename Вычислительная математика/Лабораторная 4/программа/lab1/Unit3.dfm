object Form3: TForm3
  Left = 308
  Top = 138
  Width = 622
  Height = 559
  Caption = #1048#1090#1077#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1084#1077#1090#1086#1076
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object strngrd1: TStringGrid
    Left = 0
    Top = 8
    Width = 601
    Height = 457
    DefaultColWidth = 140
    RowCount = 10
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object btn1: TButton
    Left = 8
    Top = 480
    Width = 593
    Height = 33
    Caption = 'OK'
    TabOrder = 1
    OnClick = btn1Click
  end
end
