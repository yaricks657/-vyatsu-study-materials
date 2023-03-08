import xmlrpc.client

server = xmlrpc.client.ServerProxy("http://localhost:9000/")
try:
    print(server.methods_for_string("Hello, my name is Willy. I am from the USA. My profession is a programmer.",'a'))
except Exception as e:
    print("Error")
