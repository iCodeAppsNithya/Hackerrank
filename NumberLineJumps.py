#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the kangaroo function below.

def kangaroo(x1, v1, x2, v2):
    x = x1
    y = x2
    if(x2>x1 and v2>v1):
        return "NO"
    else:
        for i in range(10000):
            x+=v1
            y+=v2
            if(x==y):
                return "YES"
        return "NO"    
                    

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    x1V1X2V2 = input().split()

    x1 = int(x1V1X2V2[0])

    v1 = int(x1V1X2V2[1])

    x2 = int(x1V1X2V2[2])

    v2 = int(x1V1X2V2[3])

    result = kangaroo(x1, v1, x2, v2)

    fptr.write(result + '\n')

    fptr.close()
