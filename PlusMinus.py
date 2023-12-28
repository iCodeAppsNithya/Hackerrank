#!/bin/python3

import sys

# Complete the plusMinus function below.
def plusMinus(arr):
    count1 = 0
    count2 = 0
    count3 = 0
    res1 = 0
    res2 = 0
    res3 = 0
    for i in range(n):
        if arr[i]>0:
            count1+=1
        elif arr[i]<0:
            count2+=1
        elif arr[i]==0:
            count3+=1
    
    res1 = count1 / (len(arr))
    res2 = count2 / (len(arr))
    res3 = count3 / (len(arr))
    print (res1)
    print (float(res2))
    print (float(res3))

if __name__ == '__main__':
    n = int(input())

    arr = list(map(int, input().rstrip().split()))

    plusMinus(arr)
