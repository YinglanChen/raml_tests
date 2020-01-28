def insertion_sort(l):
    for i in range(len(l)):
        # invariant: 
        # the sub-array from start to the (i-1) element is sorted 
        if i == 0: continue 
        curr = l[i]
        prev = l[i-1] 
        
        pt = i 
        while (curr < prev):
            l[pt] = l[pt-1]
            l[pt-1] = curr 
            if pt-1 == 0: break
            # update prev 
            pt -= 1
            prev = l[pt-1]
            
    return l 

print(insertion_sort([1,2,3,3,2,1]))