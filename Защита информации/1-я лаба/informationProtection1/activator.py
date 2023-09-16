import requests
import rsa
import base64


def pcid() -> str:
    from cpuid import cpuid
    from functools import reduce

    regs = cpuid(1)
    return str(reduce(lambda x, y: x ^ y, [regs[0], regs[2], regs[3]]))


SERVER_URL = 'http://192.168.197.129:5000'

PRIVATEKEY_PATH = 'private.pem'
with open(PRIVATEKEY_PATH, 'rb') as keyfile:
    privatekey = rsa.PrivateKey.load_pkcs1(keyfile.read())

id_ = pcid()

signature = rsa.sign(id_.encode('utf-8'), privatekey, 'SHA-256')

try:
    response = requests.post(f'{SERVER_URL}/register', json={
        'id': id_,
        'signature': base64.b64encode(signature).decode('utf-8')
    }).text
    if response == 'OK':
        print('Successfully activated')
    else:
        print('An error occurred during activation')
except:
    print('Can not establish connection with activation server')

a = int (input())
