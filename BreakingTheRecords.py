#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the breakingRecords function below.
def breakingRecords(scores):
     min = max = scores[0]
     min_count = max_count = 0
     for i in scores :
            if(i<min):
                min = i
                min_count+=1
            if(i>max):
                max = i
                max_count+=1
     return max_count , min_count          
              
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input())

    scores = list(map(int, input().rstrip().split()))

    result = breakingRecords(scores)

    fptr.write(' '.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
