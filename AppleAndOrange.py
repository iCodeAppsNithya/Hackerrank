#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the countApplesAndOranges function below.
def countApplesAndOranges(s, t, a, b, apples, oranges):
    apple_count = 0
    orange_count =0
    for i in range(m):
         if (apples[i] + a >= s and  apples[i] + a <= t):
            apple_count += 1
    for i in range(n):
        if (oranges[i] + b >= s and  oranges[i] + b <= t):
            orange_count += 1

    
    return str(apple_count)+"\n"+str(orange_count)        


if __name__ == '__main__':
    st = input().split()

    s = int(st[0])

    t = int(st[1])

    ab = input().split()

    a = int(ab[0])

    b = int(ab[1])
 
    mn = input().split()

    m = int(mn[0])

    n = int(mn[1])

    apples = list(map(int, input().rstrip().split()))

    oranges = list(map(int, input().rstrip().split()))

    print(countApplesAndOranges(s, t, a, b, apples, oranges))
