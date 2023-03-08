object FHelp: TFHelp
  Left = 219
  Top = 101
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Справка по игре'
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
      'Игра "Пятнашки" одна из известных логических игр.'
      ''
      'Цель игры:'
      ''
      'На поле 4x4 ячейки случайным образом расположены 15 костяшек с'
      'нанесёнными на них цифрами от 1 до 15. Ваша задача: используя'
      'свободную ячейку, расставить костяшки по порядку.'
      'Когда игра завершена, появляется сообщение с поздравлением и '
      'вопросом, хочет ли пользователь начать игру заново. Если'
      'пользователь ответит положительно, или если он после'
      'отрицательного ответа щелкнет на кнопке Новая игра, фишки'
      'перемешаются случайным образом, после чего можно играть снова.'
      ''
      'Управление:'
      ''
      'Для передвежения костяшек используется "мышь". Необходимо'
      'щёлкнуть ею на костяшке, которую вы желаете передвинуть.'
      ''
      'Клавиши управления:'
      ''
      'F1 - вызов справки'
      'F2 - новый расклад'
      'F3 - настройка игры'
      'F4 - сохранение настроек'
      'F8 - окно распологается по центру'
      'Esc - выход')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object BitBtnClose: TBitBtn
    Left = 280
    Top = 256
    Width = 89
    Height = 25
    Caption = 'Закрыть'
    TabOrder = 1
    Kind = bkOK
  end
end

