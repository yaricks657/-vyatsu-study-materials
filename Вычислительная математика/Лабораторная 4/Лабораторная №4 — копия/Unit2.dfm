object Form2: TForm2
  Left = 385
  Top = 102
  Width = 578
  Height = 562
  Caption = #1056#1077#1096#1077#1085#1080#1077' '#1076#1080#1092#1092#1077#1088#1077#1085#1094#1080#1072#1083#1100#1085#1099#1093' '#1091#1088#1072#1074#1085#1077#1085#1080#1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 0
    Top = 256
    Width = 369
    Height = 250
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      #1043#1088#1072#1092#1080#1082' '#1092#1091#1085#1082#1094#1080#1080)
    Legend.Alignment = laTop
    Legend.LegendStyle = lsSeries
    Legend.TopPos = 0
    Legend.Visible = False
    View3D = False
    TabOrder = 0
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'Y'#39'= X*Y/2'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 369
    Height = 249
    TabOrder = 1
    object Label1: TLabel
      Left = 69
      Top = 56
      Width = 73
      Height = 20
      Caption = ' <= X <= '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 1
      Top = 8
      Width = 360
      Height = 20
      Caption = #1048#1089#1093#1086#1076#1085#1086#1077' '#1076#1080#1092#1092#1077#1088#1077#1085#1094#1080#1072#1083#1100#1085#1086#1077' '#1091#1088#1072#1074#1085#1077#1085#1080#1077':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 153
      Top = 32
      Width = 87
      Height = 20
      Caption = 'Y'#39'= X*Y/2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 8
      Top = 56
      Width = 60
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Edit2: TEdit
      Left = 144
      Top = 56
      Width = 60
      Height = 21
      TabOrder = 1
      Text = '1'
    end
    object LabeledEdit1: TLabeledEdit
      Left = 48
      Top = 88
      Width = 57
      Height = 21
      EditLabel.Width = 35
      EditLabel.Height = 16
      EditLabel.Caption = 'Y0 = '
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clNavy
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 2
      Text = '0,6'
    end
    object LabeledEdit2: TLabeledEdit
      Left = 48
      Top = 120
      Width = 57
      Height = 21
      EditLabel.Width = 37
      EditLabel.Height = 16
      EditLabel.Caption = #1064#1072#1075'  '
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clNavy
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 3
      Text = '0,1'
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 152
      Width = 129
      Height = 25
      Caption = #1057#1095#1080#1090#1072#1090#1100
      TabOrder = 4
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 144
      Top = 152
      Width = 129
      Height = 25
      Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1075#1088#1072#1092#1080#1082
      TabOrder = 5
      OnClick = BitBtn2Click
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 216
      Width = 129
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 6
      OnClick = BitBtn3Click
      NumGlyphs = 2
    end
    object BitBtn4: TBitBtn
      Left = 8
      Top = 184
      Width = 265
      Height = 25
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1088#1072#1089#1095#1077#1090#1085#1091#1102' '#1090#1072#1073#1083#1080#1094#1091
      TabOrder = 7
      OnClick = BitBtn4Click
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 376
    Top = 0
    Width = 185
    Height = 505
    TabOrder = 2
    object StringGrid1: TStringGrid
      Left = 0
      Top = 0
      Width = 185
      Height = 505
      ColCount = 2
      FixedCols = 0
      RowCount = 2
      TabOrder = 0
    end
  end
end
