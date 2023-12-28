#!/bin/python3

import math
import os


# Complete the solve function below.

a = [5, 6 ,7]
b = [ 3 , 6 , 10]

def solve(a, b):
    c=0
    d=0
    for i in range(len(a)):
         if a[i]>b[i]:
                c+=1
         elif  b[i]>a[i]:
              d+=1
    return str(c)+ str(d) 
    
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    a = list(map(int, input().rstrip().split()))

    b = list(map(int, input().rstrip().split()))

    result = solve(a, b)

    fptr.write(' '.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
