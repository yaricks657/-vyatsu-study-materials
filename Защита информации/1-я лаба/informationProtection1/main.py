import requests
import os

def pcid() -> str:
    from cpuid import cpuid
    from functools import reduce
    regs = cpuid(1)
    return str(reduce(lambda x, y: x ^ y, [regs[0], regs[2], regs[3]]))


SERVER_URL = 'http://192.168.197.129:5000'
id_ = pcid()
try:
    response = requests.get(f'{SERVER_URL}/check', params={
        'id': id_
    }).text

    if response == 'TRUE':
        print('Program is activated')
        os.system('"C:\Windows\System32\calc.exe"')
    else:
        print('Program is not activated')
except:
    print('Can not check activation status')

a = int (input())
