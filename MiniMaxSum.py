#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the miniMaxSum function below.
def miniMaxSum(arr):
    total =0 
    for i in range(len(arr)):
        total += arr[i]
    print (str(total - max(arr))+ " "+ str(total - min(arr)))    
        
if __name__ == '__main__':
    arr = list(map(int, input().rstrip().split()))

    miniMaxSum(arr)
