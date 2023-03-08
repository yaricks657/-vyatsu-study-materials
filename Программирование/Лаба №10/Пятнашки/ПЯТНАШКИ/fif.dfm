object Form1: TForm1
  Left = 261
  Top = 147
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1103#1090#1085#1072#1096#1082#1080
  ClientHeight = 373
  ClientWidth = 379
  Color = cl3DLight
  TransparentColorValue = 8208128
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 0
    Height = 373
  end
  object Panel1: TPanel
    Left = 7
    Top = 38
    Width = 290
    Height = 300
    HelpType = htKeyword
    BevelOuter = bvNone
    Color = clSilver
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    Visible = False
  end
  object Panel2: TPanel
    Left = 7
    Top = 6
    Width = 288
    Height = 30
    BevelInner = bvLowered
    BorderStyle = bsSingle
    Color = clActiveBorder
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Images = ImageList1
    Left = 8
    object N1: TMenuItem
      Caption = '&'#1048#1075#1088#1072
      object N6: TMenuItem
        Caption = #1053#1086#1074#1072#1103' '#1080#1075#1088#1072
        ImageIndex = 0
        ShortCut = 113
        OnClick = N6Click
      end
      object N2: TMenuItem
        Caption = #1056#1072#1079#1084#1077#1088#1085#1086#1089#1090#1100
        ImageIndex = 1
        object N41: TMenuItem
          Caption = '4'#1093'4'
          OnClick = N41Click
        end
        object N61: TMenuItem
          Caption = '6'#1093'6'
          OnClick = N61Click
        end
        object N91: TMenuItem
          Caption = '9'#1093'9'
          OnClick = N91Click
        end
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Caption = #1042#1099'&'#1093#1086#1076
        ImageIndex = 3
        ShortCut = 27
        OnClick = N4Click
      end
    end
  end
  object ImageList1: TImageList
    Left = 320
    Top = 8
  end
end
