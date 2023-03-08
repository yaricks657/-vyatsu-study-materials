import another
from tkinter import *
from tkinter import ttk

lst = [("","","",""),
       ("","","",""),
       ("","","",""),
       ("","","",""),
       ("","","",""),
       ("","","",""),
       ("","","",""),
       ("","","",""),
       ("","","",""),
       ("","","",""),
       ("","","","")]

another.openСonnection()

window = Tk()
window.title("Database for Python")
window.geometry('1000x500')

window.resizable(width=False, height=False) #Unchanchable window

window.update_idletasks()   #Window in center
w, h = window.winfo_width(), window.winfo_height()
window.geometry(f"+{(window.winfo_screenwidth()-w)//2}+{(window.winfo_screenheight()-h)//2}")

frame_list = Frame(window, bg='blue')
frame_list.grid(column=0,row=0,columnspan=2,sticky="we")
first_text = StringVar(window)
second_text = StringVar(window)
third_text = StringVar(window)



heads = ['id', 'First name', 'Second name', 'Age']
table = ttk.Treeview(frame_list)
table['columns'] = heads

for header in heads:
    table.heading(header, text=header, anchor='center')
    table.column(header, anchor='center')
for row in lst:
    table.insert('', END, values=row)



btn3 = Entry(window, text="0", width=20, bd=3,textvariable=third_text)
btn3.grid(column=1, row=4, columnspan=1)

btn6 = Button(window, text="Add")
# btn6.pack()
# btn6.place(x=300, y=440)
btn6.grid(column=0, row=2, columnspan=1)
btn6.bind('<Button-1>', another.add)

btn7 = Button(window, text="Change")
# btn7.pack()
# btn7.place(x=300, y=440)
btn7.grid(column=0, row=3, columnspan=1)
btn7.bind('<Button-1>', another.change)


btn5 = Entry(window, text="0", width=20, bd=3,textvariable=first_text)
btn5.grid(column=1, row=2, columnspan=1)

btn4 = Entry(window, text="0", width=20, bd=3,textvariable=second_text)
btn4.grid(column=1, row=3, columnspan=1)



table.pack(expand=YES, fill=BOTH)

#Components



	#подключение к базе данных
window.mainloop()
#another.closeConnection()
