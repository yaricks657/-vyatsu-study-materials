object Form1: TForm1
  Left = 418
  Top = 127
  Width = 800
  Height = 601
  Caption = #1051#1072#1073#1086#1088#1072#1090#1086#1088#1085#1072#1103' '#1088#1072#1073#1086#1090#1072' '#8470'9'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 632
    Top = 8
    Width = 121
    Height = 137
    BorderStyle = bsSingle
    TabOrder = 0
    object rb1: TRadioButton
      Left = 8
      Top = 24
      Width = 113
      Height = 17
      Caption = #1063#1105#1088#1085#1099#1081
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rb1Click
    end
    object rb2: TRadioButton
      Left = 8
      Top = 48
      Width = 113
      Height = 17
      Caption = #1057#1080#1085#1080#1081
      TabOrder = 1
      OnClick = rb2Click
    end
    object rb3: TRadioButton
      Left = 8
      Top = 72
      Width = 113
      Height = 17
      Caption = #1050#1088#1072#1089#1085#1099#1081
      TabOrder = 2
      OnClick = rb3Click
    end
    object rb4: TRadioButton
      Left = 8
      Top = 96
      Width = 113
      Height = 17
      Caption = #1047#1077#1083#1105#1085#1099#1081
      TabOrder = 3
      OnClick = rb4Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 8
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 40
    Top = 8
    object Rotatespeed1: TMenuItem
      Caption = 'Rotate speed'
      OnClick = Rotatespeed1Click
    end
    object y1: TMenuItem
      Caption = #1055#1086' x-1'
      OnClick = y1Click
    end
    object x1: TMenuItem
      Caption = #1055#1086' '#1093'+1'
      OnClick = x1Click
    end
    object z1: TMenuItem
      Caption = #1055#1086' '#1091'-1'
      OnClick = z1Click
    end
    object X2: TMenuItem
      Caption = #1055#1086' '#1091'+1'
      OnClick = X2Click
    end
    object Y2: TMenuItem
      Caption = #1055#1086' z-1'
      OnClick = Y2Click
    end
    object Z2: TMenuItem
      Caption = #1055#1086' z+1'
      OnClick = Z2Click
    end
  end
end
