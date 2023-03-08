from tkinter import *

def number_of_words(line):
    count = 0
    flag = 0
    field = text_field.get(1.0,END)
    for i in field:
        if i != ' ' and flag == 0: 
            count += 1
            flag = 1
        elif i == ' ': flag = 0

    second_text.set("Number of words: " + str(count))



def  number_of_defined_characters(line):
    i=0
    field = text_field.get(1.0,END)
    for number in field:
        if number==btn5.get(): i+=1

    display_text.set("Number of <.......> symbols: " + str(i))



def number_of_symbols(line):
     count = 0
     field = text_field.get(1.0,END)
     for number in field:
        if number != ' ': count+=1

     first_text.set("Number of symbols: " + str(count))


def number_of_universal_symbols(line):
    unique = []
    field = text_field.get(1.0,END)
    for char in field:
        if char not in unique and char != ' ':
            unique.append(char)

    third_text.set("Number of Universal symbols: " + str(len(unique)))



def input_symbol(text_field):
    if len(btn5.get())>0: 
        btn5.delete(0,last=None)


#Window creating
#line = 0
#command=lambda:[number_of_symbols(line), number_of_words(line),  number_of_universal_symbols(line)]
window = Tk()
window.title("String analyzer")
window.geometry('500x500')

window.resizable(width=False, height=False) #Unchanchable window

window.update_idletasks()   #Window in center
w, h = window.winfo_width(), window.winfo_height()
window.geometry(f"+{(window.winfo_screenwidth()-w)//2}+{(window.winfo_screenheight()-h)//2}")
display_text = StringVar(window)
first_text = StringVar(window)
second_text = StringVar(window)
third_text = StringVar(window)


#Window components
title = Label(window,text = "Input field", font = 40)
title.pack()

text_field = Text(window,width = 100, height = 20,font="Verdana 12", wrap=WORD)
text_field.bind("<Key>",number_of_words, '+')
text_field.bind("<Key>",number_of_symbols, '+')
text_field.bind("<Key>",number_of_universal_symbols, '+')


#Scrollbar for text input
scr = Scrollbar(window,command = text_field.yview )
scr.pack(side=RIGHT,fill=Y)
text_field.config(yscrollcommand = scr.set)

#Text input component + scrollbar components
text_field.pack()

#Other components
btn1 = Label(window, textvariable=first_text)
btn1.pack()
first_text.set("Number of symbols: ")
btn1.place(x=30,y= 410)

btn2 = Label(window, textvariable=second_text)
btn2.pack()
second_text.set("Number of words: ")
btn2.place(x=30,y= 440)

btn3 = Label(window, textvariable=third_text )
btn3.pack()
third_text.set("Number of Universal symbols: ")
btn3.place(x=30,y= 470)


btn4 = Label(window, textvariable=display_text )
display_text.set("Number of <.......> symbols: ")
btn4.pack()
btn4.place(x=300,y= 410)


btn5 = Entry(window, text="",width=2,bd=3 )
btn5.pack()
btn5.place(x=372,y= 410)
btn5.bind('<Key>',input_symbol)


btn6 = Button(window, text="Counting")
btn6.pack()
btn6.place(x=300,y= 440)
btn6.bind('<Button-1>',number_of_defined_characters)


window.mainloop()
