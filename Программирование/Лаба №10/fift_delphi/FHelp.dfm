object FHelp: TFHelp
  Left = 219
  Top = 101
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '������� �� ����'
  ClientHeight = 291
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MemoHelp: TMemo
    Left = 8
    Top = 8
    Width = 385
    Height = 233
    Color = clSilver
    Lines.Strings = (
      '���� "��������" ���� �� ��������� ���������� ���.'
      ''
      '���� ����:'
      ''
      '�� ���� 4x4 ������ ��������� ������� ����������� 15 �������� �'
      '���������� �� ��� ������� �� 1 �� 15. ���� ������: ���������'
      '��������� ������, ���������� �������� �� �������.'
      '����� ���� ���������, ���������� ��������� � ������������� � '
      '��������, ����� �� ������������ ������ ���� ������. ����'
      '������������ ������� ������������, ��� ���� �� �����'
      '�������������� ������ ������� �� ������ ����� ����, �����'
      '������������ ��������� �������, ����� ���� ����� ������ �����.'
      ''
      '����������:'
      ''
      '��� ������������ �������� ������������ "����". ����������'
      '�������� �� �� ��������, ������� �� ������� �����������.'
      ''
      '������� ����������:'
      ''
      'F1 - ����� �������'
      'F2 - ����� �������'
      'F3 - ��������� ����'
      'F4 - ���������� ��������'
      'F8 - ���� ������������� �� ������'
      'Esc - �����')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object BitBtnClose: TBitBtn
    Left = 280
    Top = 256
    Width = 89
    Height = 25
    Caption = '�������'
    TabOrder = 1
    Kind = bkOK
  end
end

