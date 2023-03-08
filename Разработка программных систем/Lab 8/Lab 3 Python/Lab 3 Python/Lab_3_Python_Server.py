from xmlrpc.server import SimpleXMLRPCServer
import string_methods   


def methods_for_string(line,symbol):
    words = string_methods.number_of_words(line)
    symbols = string_methods.number_of_symbols(line)
    universal_symbols = string_methods.number_of_universal_symbols(line)
    defined_symbols = string_methods.number_of_defined_characters(line,symbol)
    return print("String: " + line + '\n' + 
                 "There are " + str(words) + " words\n" + 
                 "There are " + str(symbols) + " symbols\n" + 
                 "There are " + str(universal_symbols) + " universal symbols\n" + 
                 "There are " + str(defined_symbols) + " symbols '" + symbol + "'\n")

server = SimpleXMLRPCServer(("localhost", 9000))
print("Listening on port 9000...")
server.register_function(methods_for_string, "methods_for_string")
server.serve_forever()

