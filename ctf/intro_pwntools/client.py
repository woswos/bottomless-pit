#!/usr/bin/env python
import sys
import re

try:
    from pwn import *
except ImportError:
    print "In order to complete this challenge, please install pwntools"
    print "https://pwntools.readthedocs.io/en/stable/install.html"
    sys.exit(1)

def processResponse(data):
    # I guess we should do something with this data and send it back!

    nums = re.findall("\d+", data)

    nums[0] = int(nums[0])
    nums[1] = int(nums[1])

    if data.find("//") != -1:
        ans = nums[0] / nums[1]

    elif data.find("*") != -1:
        ans = nums[0] * nums[1]

    elif data.find("-") != -1:
        ans = nums[0] - nums[1]

    elif data.find("+") != -1:
        ans = nums[0] + nums[1]

    return str(ans)


def pwn(address, port):
    connection = remote(address, port)
    # Let's print the data we receive from this server
    print connection.recvuntil(":")
    # Let's send it some data!
    connection.sendline("Name")
    # Let's print the data we receive from this server, but also store it
    for i in range(200):
        response = connection.recvuntil(":")
        print response
        # Hmm, they seem to be asking for some mathematical computations?
        # If we complete all these tasks, we will be rewarded with a flag!
        connection.sendline(processResponse(response))

def main():
    try:
        address = sys.argv[1]
        port = sys.argv[2]
    except IndexError:
        print "Usage: ./client.py [IP] [Port]"
        sys.exit(1)
    pwn(address, port)

if __name__ == "__main__":
    main()
