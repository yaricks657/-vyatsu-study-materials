object Form1: TForm1
  Left = 194
  Top = 124
  Width = 663
  Height = 565
  Caption = #1051#1072#1073#1086#1088#1072#1090#1086#1088#1085#1072#1103' '#1088#1072#1073#1086#1090#1072' '#8470'9'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnPaint = FormPaint
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 488
    Top = 16
    Width = 145
    Height = 209
    TabOrder = 0
    object rb1: TRadioButton
      Left = 8
      Top = 16
      Width = 113
      Height = 17
      Caption = #1063#1105#1088#1085#1099#1081
      TabOrder = 0
      OnClick = rb1Click
    end
    object rb2: TRadioButton
      Left = 8
      Top = 40
      Width = 113
      Height = 17
      Caption = #1050#1088#1072#1089#1085#1099#1081
      TabOrder = 1
      OnClick = rb2Click
    end
    object rb3: TRadioButton
      Left = 8
      Top = 64
      Width = 113
      Height = 17
      Caption = #1047#1077#1083#1105#1085#1099#1081
      TabOrder = 2
      OnClick = rb3Click
    end
    object rb4: TRadioButton
      Left = 8
      Top = 88
      Width = 113
      Height = 17
      Caption = #1057#1080#1085#1080#1081
      TabOrder = 3
      OnClick = rb4Click
    end
    object btn1: TButton
      Left = 8
      Top = 112
      Width = 121
      Height = 25
      Caption = #1042#1088#1072#1097#1077#1085#1080#1077' 1'
      TabOrder = 4
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 8
      Top = 144
      Width = 121
      Height = 25
      Caption = #1042#1088#1072#1097#1077#1085#1080#1077' 2'
      TabOrder = 5
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 8
      Top = 176
      Width = 121
      Height = 25
      Caption = #1042#1088#1072#1097#1077#1085#1080#1077' 3'
      TabOrder = 6
      OnClick = btn3Click
    end
  end
  object tmr1: TTimer
    Interval = 1
    OnTimer = tmr1Timer
    Left = 288
    Top = 16
  end
  object tmr2: TTimer
    Interval = 1
    OnTimer = tmr2Timer
    Left = 232
    Top = 24
  end
  object tmr3: TTimer
    Interval = 1
    OnTimer = tmr3Timer
    Left = 168
    Top = 32
  end
end
