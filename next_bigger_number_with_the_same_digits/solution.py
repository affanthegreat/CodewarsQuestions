def next_bigger(n):
    #your code here

    x = list(str(n))
    sortedL = sorted(x)
    if len(x) <1 or int(''.join(list(reversed(sortedL)))) == n :
        return -1
    
    i = max(i for i in range(1,len(x)) if x[i - 1]  < x[i])
    j = max(j for j in range(i,len(x)) if x[j] > x[i-1])
    x[j],x[i-1] = x[i -1], x[j]
    x[i:] = reversed(x[i:])
    return int(''.join(x))