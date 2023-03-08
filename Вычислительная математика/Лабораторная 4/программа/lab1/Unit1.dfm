object Form1: TForm1
  Left = 476
  Top = 113
  Width = 727
  Height = 494
  Caption = #1063#1080#1089#1083#1077#1085#1085#1099#1077' '#1084#1077#1090#1086#1076#1099' '#1088#1077#1096#1077#1085#1080#1103' '#1085#1077#1083#1080#1085#1077#1081#1085#1099#1093' '#1091#1088#1072#1074#1085#1077#1085#1080#1081
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
  object lbl1: TLabel
    Left = 504
    Top = 18
    Width = 70
    Height = 19
    Caption = #1048#1085#1090#1077#1088#1074#1072#1083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 498
    Top = 74
    Width = 97
    Height = 19
    Caption = #1055#1086#1075#1088#1077#1096#1085#1086#1089#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 196
    Height = 19
    Caption = #1059#1088#1072#1074#1085#1077#1085#1080#1077':  sqrt(x+1)-1/x;'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 288
    Top = 16
    Width = 155
    Height = 19
    Caption = #1048#1085#1090#1077#1088#1074#1072#1083':  [0,4;0,8] '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object PaintBox: TPaintBox
    Left = 8
    Top = 48
    Width = 473
    Height = 393
  end
  object lbl2: TLabel
    Left = 496
    Top = 288
    Width = 167
    Height = 16
    Caption = 'f(x)'#39'=1/(2*sqrt(x+1))+1/x*x;'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 496
    Top = 312
    Width = 189
    Height = 13
    Caption = 'f(x)'#39#39'=1/(4*sqrt(x+1)*(x+1))-2/x*x*x;'
  end
  object lbl5: TLabel
    Left = 496
    Top = 336
    Width = 12
    Height = 13
    Caption = 'fff'
  end
  object lbl6: TLabel
    Left = 496
    Top = 352
    Width = 12
    Height = 13
    Caption = 'fff'
  end
  object lbl7: TLabel
    Left = 496
    Top = 368
    Width = 12
    Height = 13
    Caption = 'fff'
  end
  object lbl8: TLabel
    Left = 496
    Top = 384
    Width = 12
    Height = 13
    Caption = 'fff'
  end
  object lbl9: TLabel
    Left = 496
    Top = 400
    Width = 12
    Height = 13
    Caption = 'fff'
  end
  object lbl10: TLabel
    Left = 496
    Top = 416
    Width = 12
    Height = 13
    Caption = 'fff'
  end
  object edt1: TEdit
    Left = 496
    Top = 42
    Width = 55
    Height = 21
    TabOrder = 0
    Text = '0,4'
  end
  object edt2: TEdit
    Left = 552
    Top = 42
    Width = 55
    Height = 21
    TabOrder = 1
    Text = '0,8'
  end
  object edt3: TEdit
    Left = 496
    Top = 98
    Width = 105
    Height = 21
    TabOrder = 2
    Text = '0,00001'
  end
  object btn1: TButton
    Left = 493
    Top = 129
    Width = 137
    Height = 33
    Caption = #1050#1086#1084#1073#1080#1085#1080#1088#1086#1074#1072#1085#1085#1099#1081' '#1084#1077#1090#1086#1076
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 493
    Top = 169
    Width = 137
    Height = 33
    Caption = #1052#1077#1090#1086#1076' '#1080#1090#1077#1088#1072#1094#1080#1081
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 493
    Top = 248
    Width = 137
    Height = 33
    Caption = #1057#1078#1072#1090#1100'  '#1080#1085#1090#1077#1088#1074#1072#1083
    TabOrder = 5
    OnClick = btn3Click
  end
  object Button1: TButton
    Left = 493
    Top = 208
    Width = 137
    Height = 33
    Caption = #1056#1080#1089#1086#1074#1072#1090#1100
    TabOrder = 6
    OnClick = Button1Click
  end
end
