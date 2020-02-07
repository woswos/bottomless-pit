import pwn
import base64
import os

encoded = 'JR4YFw8YLwA7Jx0mCRsaGBsMKhwSLwMdLhsBMC0YHBgwMwcBMBcmFBsfIjAHKxMVHBEBIAoXfA8='
data = base64.b64decode(encoded)

'''
file = open("data.txt","w+")
file.write(data)
file.close()
'''

sol = ""

for i in range(255):
    sol = sol + pwn.xor(data, i)

    print(i)
    
    for k in range(255):
        sol = sol + pwn.xor(data, k)

        for j in range(255):
            sol = sol + pwn.xor(data, j)

file = open("sol.txt","w+")
file.write(sol)
file.close()

#os.system("strings sol.txt | grep '{'")
