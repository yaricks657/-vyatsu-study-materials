import string_methods_c 
import string_methods_python
from datetime import datetime
import time
import random
import string


def generate_random_string(length):
    letters = string.ascii_lowercase
    rand_string = ''.join(random.choice(letters + " ") for i in range(length))
    return rand_string

line = generate_random_string(2500000)
number = 500000

for i in range(5):
   
    print("Number of words in random string of length " + str(number))

    start_time = datetime.now()
    print(string_methods_c.number_of_words(line[:number]))
    print(datetime.now() - start_time)

    start_time = datetime.now()
    print(string_methods_python.number_of_words(line[:number]))
    print(datetime.now() - start_time)

    number+=500000