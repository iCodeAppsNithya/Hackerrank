#!/bin/python3

import os
import sys
from fractions import gcd
#
# Complete the getTotalX function below.
#
def getTotalX(a, b):
    sum = 0
    for i in list(range(a[-1], b[0] + 1)):
        t = 0
        for j in a:
            if (i % j == 0): 
                t += 1
            else: 
                t = 0
                break    
        
        for k in b:
            if (k % i == 0): 
                t += 1
            else: 
                t = 0
                break       
        if (t == len(a) + len(b)):
            sum += 1   
    return sum 
 

if __name__ == '__main__':
    f = open(os.environ['OUTPUT_PATH'], 'w')

    nm = input().split()

    n = int(nm[0])

    m = int(nm[1])

    a = list(map(int, input().rstrip().split()))

    b = list(map(int, input().rstrip().split()))

    total = getTotalX(a, b)

    f.write(str(total) + '\n')

    f.close()
