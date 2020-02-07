import pwn
import base64
import os

encoded = 'IConIT0xdSoldit1GTJ2GTIudRkxdigidTQgMyoZMXY0KiIZdiAZJTQ/NjJ2Zzs='
data = base64.b64decode(encoded)

sol = ""

for i in range(255):
    sol = sol + pwn.xor(data, i)

file = open("sol.txt","w+")
file.write(sol)
file.close()

os.system("strings sol.txt | grep 'flag'")
