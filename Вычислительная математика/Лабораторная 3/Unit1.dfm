object Form1: TForm1
  Left = 225
  Top = 77
  Width = 1466
  Height = 563
  Caption = #1051#1072#1073#1086#1088#1072#1090#1086#1088#1085#1072#1103' '#1088#1072#1073#1086#1090#1072' '#8470'3'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1450
    Height = 524
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = #1048#1085#1090#1077#1088#1087#1086#1083#1103#1094#1080#1103' '#1051#1072#1075#1088#1072#1085#1078#1072
      ImageIndex = 1
      object Label1: TLabel
        Left = 200
        Top = 19
        Width = 19
        Height = 13
        Caption = 'X = '
      end
      object Label2: TLabel
        Left = 496
        Top = 384
        Width = 55
        Height = 13
        Caption = #1054#1090#1074#1077#1090': Y = '
        Color = clWindow
        ParentColor = False
      end
      object Label3: TLabel
        Left = 240
        Top = 352
        Width = 95
        Height = 13
        Caption = 'Sum(y(i)/D(i))*10^6='
      end
      object Label4: TLabel
        Left = 376
        Top = 352
        Width = 45
        Height = 13
        Caption = #1055'*10^-6='
      end
      object StringGrid1: TStringGrid
        Left = 16
        Top = 72
        Width = 137
        Height = 185
        ColCount = 2
        FixedCols = 0
        RowCount = 7
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 0
        ColWidths = (
          62
          64)
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 169
        Height = 57
        Caption = #1050#1086#1083'-'#1074#1086' '#1079#1085#1072#1095#1077#1085#1080#1081' x '#1080#1083#1080' y:'
        TabOrder = 1
        object Edit1: TEdit
          Left = 8
          Top = 16
          Width = 57
          Height = 21
          TabOrder = 0
          Text = '6'
        end
        object Button1: TButton
          Left = 80
          Top = 16
          Width = 75
          Height = 25
          Caption = #1054#1050
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object Button3: TButton
        Left = 352
        Top = 16
        Width = 75
        Height = 25
        Caption = #1056#1077#1096#1080#1090#1100
        TabOrder = 2
        OnClick = Button3Click
      end
      object StringGrid2: TStringGrid
        Left = 184
        Top = 64
        Width = 1057
        Height = 281
        DefaultColWidth = 80
        TabOrder = 3
        Visible = False
      end
      object Edit2: TEdit
        Left = 224
        Top = 16
        Width = 121
        Height = 21
        TabOrder = 4
        Text = '0,512'
      end
      object Edit3: TEdit
        Left = 232
        Top = 376
        Width = 105
        Height = 21
        TabOrder = 5
      end
      object Edit4: TEdit
        Left = 360
        Top = 376
        Width = 81
        Height = 21
        TabOrder = 6
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1048#1085#1090#1077#1088#1087#1086#1083#1103#1094#1080#1103' '#1053#1100#1102#1090#1086#1085#1072
      ImageIndex = 2
      object Label5: TLabel
        Left = 200
        Top = 19
        Width = 19
        Height = 13
        Caption = 'X = '
      end
      object Label6: TLabel
        Left = 496
        Top = 24
        Width = 25
        Height = 13
        Caption = 'P1 = '
        Color = clWindow
        ParentColor = False
      end
      object Label7: TLabel
        Left = 632
        Top = 24
        Width = 25
        Height = 13
        Caption = 'P2 = '
        Color = clWindow
        ParentColor = False
      end
      object lbl1: TLabel
        Left = 440
        Top = 8
        Width = 83
        Height = 13
        Caption = #1055#1086' 1-'#1081' '#1092#1086#1088#1084#1091#1083#1077':'
      end
      object lbl2: TLabel
        Left = 576
        Top = 8
        Width = 83
        Height = 13
        Caption = #1055#1086' 2-'#1081' '#1092#1086#1088#1084#1091#1083#1077':'
      end
      object lbl3: TLabel
        Left = 1112
        Top = 48
        Width = 52
        Height = 13
        Caption = #1056#1072#1089#1089#1095#1077#1090#1099':'
      end
      object lbl4: TLabel
        Left = 24
        Top = 384
        Width = 58
        Height = 13
        Caption = 'X1 = 1,4179'
      end
      object lbl5: TLabel
        Left = 24
        Top = 400
        Width = 58
        Height = 13
        Caption = 'X2 = 1,4633'
      end
      object lbl6: TLabel
        Left = 24
        Top = 416
        Width = 58
        Height = 13
        Caption = 'X3 = 1,4124'
      end
      object lbl7: TLabel
        Left = 24
        Top = 432
        Width = 58
        Height = 13
        Caption = 'X4 = 1,4655'
      end
      object GroupBox2: TGroupBox
        Left = 16
        Top = 8
        Width = 169
        Height = 57
        Caption = #1050#1086#1083'-'#1074#1086' '#1079#1085#1072#1095#1077#1085#1080#1081
        TabOrder = 0
        object Edit5: TEdit
          Left = 8
          Top = 16
          Width = 57
          Height = 21
          TabOrder = 0
          Text = '11'
        end
        object Button4: TButton
          Left = 80
          Top = 16
          Width = 75
          Height = 25
          Caption = #1054#1050
          TabOrder = 1
          OnClick = Button4Click
        end
      end
      object StringGrid3: TStringGrid
        Left = 16
        Top = 72
        Width = 137
        Height = 305
        ColCount = 2
        FixedCols = 0
        RowCount = 12
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 1
        ColWidths = (
          62
          64)
      end
      object Edit6: TEdit
        Left = 224
        Top = 16
        Width = 121
        Height = 21
        TabOrder = 2
        Text = '1,4179'
      end
      object Button6: TButton
        Left = 352
        Top = 16
        Width = 75
        Height = 25
        Caption = #1056#1077#1096#1080#1090#1100
        TabOrder = 3
        OnClick = Button6Click
      end
      object StringGrid4: TStringGrid
        Left = 176
        Top = 64
        Width = 929
        Height = 425
        DefaultColWidth = 62
        TabOrder = 4
        Visible = False
      end
      object Memo1: TMemo
        Left = 1112
        Top = 64
        Width = 321
        Height = 425
        ScrollBars = ssBoth
        TabOrder = 5
        WordWrap = False
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1057#1088#1077#1076#1085#1077#1082#1074#1072#1076#1088#1072#1090#1080#1095#1085#1086#1077' '#1087#1088#1080#1073#1083#1080#1078#1077#1085#1080#1077
      ImageIndex = 3
      object Label8: TLabel
        Left = 200
        Top = 368
        Width = 3
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 387
        Top = 232
        Width = 3
        Height = 13
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label9: TLabel
        Left = 8
        Top = 8
        Width = 156
        Height = 13
        Caption = #1069#1082#1089#1087#1077#1088#1080#1084#1077#1085#1090#1072#1083#1100#1085#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 8
        Top = 248
        Width = 165
        Height = 13
        Caption = #1054#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1074#1080#1076#1072' '#1079#1072#1074#1080#1089#1080#1084#1086#1089#1090#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 192
        Top = 8
        Width = 45
        Height = 13
        Caption = #1056#1077#1096#1077#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 192
        Top = 248
        Width = 45
        Height = 13
        Caption = #1056#1077#1096#1077#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 496
        Top = 24
        Width = 20
        Height = 20
        Caption = 'Y1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 496
        Top = 64
        Width = 20
        Height = 20
        Caption = 'Y2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 496
        Top = 104
        Width = 20
        Height = 20
        Caption = 'Y3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 8
        Top = 456
        Width = 3
        Height = 13
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label22: TLabel
        Left = 144
        Top = 452
        Width = 3
        Height = 13
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object StringGrid6: TStringGrid
        Left = 8
        Top = 24
        Width = 137
        Height = 209
        ColCount = 2
        FixedCols = 0
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ColWidths = (
          64
          64)
      end
      object StringGrid7: TStringGrid
        Left = 192
        Top = 264
        Width = 137
        Height = 169
        ColCount = 2
        RowCount = 6
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        RowHeights = (
          24
          24
          24
          27
          26
          24)
      end
      object StringGrid8: TStringGrid
        Left = 192
        Top = 24
        Width = 265
        Height = 185
        ColCount = 3
        FixedCols = 0
        RowCount = 7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        ColWidths = (
          64
          97
          94)
        RowHeights = (
          24
          24
          24
          23
          24
          24
          24)
      end
      object StringGrid9: TStringGrid
        Left = 8
        Top = 264
        Width = 137
        Height = 185
        ColCount = 2
        RowCount = 7
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        RowHeights = (
          24
          24
          24
          26
          24
          24
          24)
      end
      object Button7: TButton
        Left = 400
        Top = 424
        Width = 113
        Height = 41
        Caption = #1056#1077#1096#1080#1090#1100
        TabOrder = 4
        OnClick = Button7Click
      end
      object Edit7: TEdit
        Left = 528
        Top = 24
        Width = 81
        Height = 21
        TabOrder = 5
        Text = '3,0'
      end
      object Edit8: TEdit
        Left = 528
        Top = 64
        Width = 81
        Height = 21
        TabOrder = 6
        Text = '3,1'
      end
      object Edit9: TEdit
        Left = 528
        Top = 104
        Width = 81
        Height = 21
        TabOrder = 7
        Text = '3,2'
      end
      object GroupBox3: TGroupBox
        Left = 352
        Top = 280
        Width = 217
        Height = 129
        Caption = #1056#1077#1096#1077#1085#1080#1077' '#1057#1080#1089#1090#1077#1084#1099
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 8
        object Label17: TLabel
          Left = 24
          Top = 24
          Width = 3
          Height = 13
        end
        object Label18: TLabel
          Left = 24
          Top = 48
          Width = 3
          Height = 13
        end
        object Label19: TLabel
          Left = 24
          Top = 72
          Width = 3
          Height = 13
        end
        object Label20: TLabel
          Left = 24
          Top = 104
          Width = 3
          Height = 13
        end
        object Label23: TLabel
          Left = 32
          Top = 80
          Width = 3
          Height = 13
        end
        object Label24: TLabel
          Left = 32
          Top = 56
          Width = 3
          Height = 13
        end
        object Label25: TLabel
          Left = 32
          Top = 32
          Width = 3
          Height = 13
        end
        object Label26: TLabel
          Left = 32
          Top = 112
          Width = 3
          Height = 13
        end
      end
      object Graphic: TChart
        Left = 648
        Top = 8
        Width = 569
        Height = 457
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.AdjustFrame = False
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        Legend.Visible = False
        View3D = False
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 9
        object Series1: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = True
          SeriesColor = clRed
          ShowInLegend = False
          Title = 'LaGrange_Line'
          LinePen.Width = 2
          Pointer.Brush.Color = clRed
          Pointer.HorizSize = 3
          Pointer.InflateMargins = False
          Pointer.Style = psCircle
          Pointer.VertSize = 3
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
        object Series2: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = True
          SeriesColor = clGreen
          ShowInLegend = False
          Title = 'Newton_Line'
          LinePen.Width = 2
          Pointer.HorizSize = 3
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          Pointer.VertSize = 3
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
        object Series3: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = True
          SeriesColor = clYellow
          ShowInLegend = False
          Title = 'Square_Line'
          LinePen.Width = 2
          Pointer.HorizSize = 3
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          Pointer.VertSize = 3
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
      object Button8: TButton
        Left = 520
        Top = 144
        Width = 81
        Height = 33
        Caption = #1043#1088#1072#1092#1080#1082
        TabOrder = 10
        OnClick = Button8Click
      end
    end
  end
end
