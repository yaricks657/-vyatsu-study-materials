object Form1: TForm1
  Left = 249
  Top = 185
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1086#1073#1077#1088#1080' '#1082#1072#1088#1090#1080#1085#1082#1091
  ClientHeight = 234
  ClientWidth = 255
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 80
    Top = 40
    object N1: TMenuItem
      Caption = #1048#1075#1088#1072
    end
    object N2: TMenuItem
      Caption = #1056#1072#1079#1084#1077#1088#1085#1086#1089#1090#1100
      object N3x31: TMenuItem
        Caption = '3x3'
        OnClick = N3x31Click
      end
      object N4x41: TMenuItem
        Caption = '4x4'
      end
      object N6x61: TMenuItem
        Caption = '6x6'
      end
      object N9x91: TMenuItem
        Caption = '9x9'
      end
    end
    object N3: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
    end
  end
end
