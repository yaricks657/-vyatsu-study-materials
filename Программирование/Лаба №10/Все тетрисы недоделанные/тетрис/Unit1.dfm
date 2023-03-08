object Form1: TForm1
  Left = 198
  Top = 114
  AutoScroll = False
  AutoSize = True
  Caption = #1058#1077#1090#1088#1080#1089
  ClientHeight = 281
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 230
    Height = 280
  end
  object Label5: TLabel
    Left = 240
    Top = 256
    Width = 63
    Height = 25
    AutoSize = False
    Caption = 'LostAngel (C) 2006 '#1075#1086#1076
    WordWrap = True
  end
  object GroupBox1: TGroupBox
    Left = 232
    Top = 0
    Width = 81
    Height = 65
    Caption = 'Points'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 25
      Height = 13
      Caption = #1054#1095#1082#1080
    end
    object Label2: TLabel
      Left = 8
      Top = 40
      Width = 37
      Height = 13
      Caption = #1056#1077#1082#1086#1088#1076
    end
    object Label3: TLabel
      Left = 48
      Top = 16
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label4: TLabel
      Left = 48
      Top = 40
      Width = 6
      Height = 13
      Caption = '0'
    end
  end
  object GroupBox2: TGroupBox
    Left = 232
    Top = 72
    Width = 81
    Height = 177
    Caption = 'Speed'
    TabOrder = 1
  end
  object Timer1: TTimer
    Interval = 200
    OnTimer = Timer1Timer
    Left = 192
    Top = 40
  end
  object mm1: TMainMenu
    Left = 32
    Top = 24
    object km1: TMenuItem
      Caption = 'Game'
      object h1: TMenuItem
        Caption = 'New game'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Difficulty1: TMenuItem
      Caption = 'Difficulty'
      object Easy1: TMenuItem
        Caption = 'Very easy'
        OnClick = Easy1Click
      end
      object Normal1: TMenuItem
        Caption = 'Easy'
        OnClick = Normal1Click
      end
      object Normal2: TMenuItem
        Caption = 'Normal'
        OnClick = Normal2Click
      end
      object Hard1: TMenuItem
        Caption = 'Hard'
        OnClick = Hard1Click
      end
      object Impossible1: TMenuItem
        Caption = 'Impossible'
        OnClick = Impossible1Click
      end
    end
  end
end
