#!/bin/python3

import os
import sys

#
# Complete the timeConversion function below.
#
def timeConversion(s):
    time = int(s[0:2])
    if(s[-2:]=="AM"):
        if(time==12):
            return "00"+str(s[2:8])
        else:
            return s[:8]
        
    elif(s[-2:]=="PM"):
        if(time==12):
            return s[:8]
        else:
            return str(time+12)+str(s[2:8])

if __name__ == '__main__':
    f = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = timeConversion(s)

    f.write(result + '\n')

    f.close()
