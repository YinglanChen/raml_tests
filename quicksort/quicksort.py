import random
def quicksort(A):
    if len(A) <= 1: return A 
    i = random.randint(0, len(A)-1)
    # split to two groups
    less = []
    greater = [] 
    for element in A:
        if element == A[i]: continue 
        elif element < A[i]:
            less.append(element)
        else:
            greater.append(element)
    left = quicksort(less)
    right = quicksort(greater) 
    return left + [A[i]] + right 
    

