#!/bin/python3

import os
import sys


i = 0

def simpleArraySum(ar):
    sum = 0
    for i in range(ar_count):
        sum += ar[i]
    return sum
        
        
    
    
    
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    ar_count = int(input("Enter the number of array elements"))

    ar = list(map(int, input().rstrip().split()))

    result = simpleArraySum(ar)

    fptr.write(str(result) + '\n')

    fptr.close()
