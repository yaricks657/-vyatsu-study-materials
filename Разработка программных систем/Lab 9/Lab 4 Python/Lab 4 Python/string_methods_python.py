
def number_of_words(line):
     return  sum(map(lambda x : int(x.isalpha()), line.split()))


def  number_of_defined_characters(line,symbol):
    return  line.count(symbol)


def number_of_symbols(line): 
     return len(line)

def number_of_universal_symbols(line):
    return len(set(line))


def menu():
    line = input("Enter the string: ")
    print("1. Number of symbols")
    print("2. Number of words")
    print("3. Number of defined characters")
    print("4. Number of universal symbols")
    print("5. Exit")

    what_to_do = input("Select an action: ")

    if what_to_do == "1":
        count = number_of_symbols(line)
        print("Number of symbols is " + str(count))
        menu()


    elif what_to_do == "2":
         count =  number_of_words(line)
         print("Number of words is " + str(count))
         menu()

    elif what_to_do == "3":
         symbol = input("Enter a symbol to search for: ")
         count =  number_of_defined_characters(line, symbol)
         print("There are " + str(count) + ' symbols "' + symbol + '"')
         menu()

    elif what_to_do == "4":
        count =  number_of_universal_symbols(line)
        print("Number of universal symbols are " + str(count))
        menu()

    elif what_to_do == "5": exit
       
    else:
         print("\nWrong number. Try again.")
         menu()
