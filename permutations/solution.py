from itertools import permutations as p 
def permutations(string):
    #your code here
    per = list(p(string))
    mylist = list(dict.fromkeys(per))
    res = []
    for i in mylist:
      y = "".join(i)  
      res.append(y)
    return res