#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the bonAppetit function below.
def bonAppetit(bill, k, b):
    sum = 0
    for i in range(n):
        if(i!=k):
            sum += bill[i]
    anna_bill = sum//2 
    if anna_bill == b :
        print ("Bon Appetit")
    else :
        print (b-anna_bill)
            
if __name__ == '__main__':
    nk = input().rstrip().split()

    n = int(nk[0])

    k = int(nk[1])

    bill = list(map(int, input().rstrip().split()))

    b = int(input().strip())

    bonAppetit(bill, k, b)
