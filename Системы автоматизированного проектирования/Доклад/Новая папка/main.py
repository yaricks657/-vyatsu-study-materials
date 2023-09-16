import usb.core
import usb.util
import tkinter as tk
import ctypes



class GUI(tk.Frame):
    def __init__(self, master):
        super().__init__(master)

        # Окно для вывода информации
        self.textbox = tk.Text(self, height=20, width=50)
        self.textbox.pack()

        # Окно для вывода позиции курсора
        self.position_label = tk.Label(self, text='Позиция курсора: x=0 y=0')
        self.position_label.pack()

        # Поля для ввода координат
        self.x_label = tk.Label(self, text='X:')
        self.x_label.pack(side='left')
        self.x_entry = tk.Entry(self)
        self.x_entry.pack(side='left')

        self.y_label = tk.Label(self, text='Y:')
        self.y_label.pack(side='left')
        self.y_entry = tk.Entry(self)
        self.y_entry.pack(side='left')

        # Кнопка для перемещения курсора мыши
        self.move_mouse_button = tk.Button(self, text='Переместить курсор', command=self.move_mouse)
        self.move_mouse_button.pack()

        # Поле для ввода текста для вывода в окно
        #self.input_entry = tk.Entry(self)
        #self.input_entry.pack()

        # Кнопка для вывода текста в окно
        self.output_button = tk.Button(self, text='Вывести в окно', command=self.output_text)
        self.output_button.pack()

        self.pack()

    def output_text(self):
        # Добавляем в окно текст из поля для ввода
        self.textbox.delete('1.0', 'end')
        self.textbox.insert('end',mouse())

    def move_mouse(self):
        # Получаем координаты из полей для ввода
        x = int(self.x_entry.get()) if self.x_entry.get() else 0
        y = int(self.y_entry.get()) if self.y_entry.get() else 0
        # Перемещаем курсор мыши
        move_mouse(x,y)

    def update_position_label(self, event):
        # Обновляем текст в окне для вывода позиции курсора
        self.position_label.configure(text='Позиция курсора: x=' + str(event.x_root) + ' y=' + str(event.y_root))


root = tk.Tk()
root.title("Работа с USB-портами. Мышь")
root.resizable(False, False)
gui = GUI(root)

# Привязываем обновление позиции курсора к перемещению мыши
root.bind('<Motion>', gui.update_position_label)

def mouse():

    # находим все USB-устройства
    dev = usb.core.find(find_all=True)

    # выводим информацию о каждом устройстве

    data = ''

    for cfg in dev:
        data = 'VendorID: {}\nProductID: {}\nSerial: {}\nManufacturer: {}\nProduct: {}\n----------------------------------------\nDevice: {}'.format(
            hex(cfg.idVendor), hex(cfg.idProduct), usb.util.get_string(cfg, cfg.iSerialNumber),
            usb.util.get_string(cfg, cfg.iManufacturer), usb.util.get_string(cfg, cfg.iProduct), cfg)

    if data == '':
        data = 'No USB devices found'

    return data

# Перемещаем курсор мыши на заданные координаты
def move_mouse(x, y):
    ctypes.windll.user32.SetCursorPos(x, y)

root.mainloop()
