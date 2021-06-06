import math as math
 
def find_nb(m):
    # your code
    x = math.sqrt(m)
    if m%(int(x)) != 0:
        return -1
    i=1
    n=0
    while n<=x:
        n+=i
        if n==x:
            return i
        i+=1
    return -1