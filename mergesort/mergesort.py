def mergesort(A):
  if len(A) <= 1: return A 
  mid = len(A)//2 
  left = mergesort(A[:mid])
  right = mergesort(A[mid:])
  result = merge(left,right)
  return result

def merge(left, right): 
  pt1 = 0
  pt2 = 0
  A = []
  while (pt1 < len(left) and pt2 < len(right)):
      a = left[pt1]
      b = right[pt2]
      if a <= b: 
        A.append(a)
        pt1 += 1 
      else:
        A.append(b)
        pt2 += 1

  if pt1 < len(left):
      A += left[pt1:]
  if pt2 < len(right):
      A += right[pt2:]
  return A 

A = [4,3,2,1]
print(mergesort(A))