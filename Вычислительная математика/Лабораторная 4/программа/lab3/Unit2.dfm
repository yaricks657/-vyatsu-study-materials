object Form2: TForm2
  Left = 578
  Top = 18
  Width = 854
  Height = 396
  Caption = #1060#1086#1088#1084#1091#1083#1072' '#1051#1072#1075#1088#1072#1085#1078#1072
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
    Left = 208
    Top = 40
    Width = 102
    Height = 19
    Caption = #1054#1090#1074#1077#1090':  Y  =  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 0
    Top = 0
    Width = 838
    Height = 23
    Align = alTop
    Alignment = taCenter
    Caption = #1048#1085#1090#1077#1088#1087#1086#1083#1103#1094#1080#1103' '#1089' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077#1084' '#1092#1086#1088#1084#1091#1083#1099' '#1051#1072#1075#1088#1072#1085#1078#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 16
    Top = 40
    Width = 124
    Height = 19
    Caption = #1048#1089#1082#1086#1084#1086#1077':  X  =   '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 16
    Top = 72
    Width = 150
    Height = 19
    Caption = #1048#1089#1093#1086#1076#1085#1072#1103' '#1090#1072#1073#1083#1080#1094#1072':  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 176
    Top = 72
    Width = 162
    Height = 19
    Caption = #1056#1072#1089#1089#1095#1077#1090#1085#1072#1103' '#1090#1072#1073#1083#1080#1094#1072':  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 176
    Top = 312
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
  object strngrd1: TStringGrid
    Left = 16
    Top = 104
    Width = 123
    Height = 201
    ColCount = 2
    Ctl3D = False
    DefaultColWidth = 60
    DragCursor = crHelp
    FixedCols = 0
    RowCount = 8
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    ParentCtl3D = False
    TabOrder = 0
  end
  object strngrd2: TStringGrid
    Left = 176
    Top = 104
    Width = 649
    Height = 209
    ColCount = 9
    DefaultColWidth = 70
    FixedCols = 0
    RowCount = 8
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    TabOrder = 1
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
  object btn1: TButton
    Left = 656
    Top = 319
    Width = 91
    Height = 28
    Caption = #1054#1050
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btn1Click
  end
end
