def cond(chunk):   
    check = sum([int(dig) ** 3  for dig in chunk])
  
    if check % 2 == 0:
     return chunk[::-1]
    
    else:
     return chunk[1 : len(chunk)] + chunk[0:1]


def revrot(string, sz):
    if sz == 0:
        return ''
    strg_size = len(string)
    
    chunks = [string[x : x + sz]  for x in range(0, strg_size, sz)
             if len(string[x:x + sz]) == sz
             ]
    
    spl_chunks = list(map(cond, chunks))
    revrot_num =  ''.join(spl_chunks)
    
    return revrot_num
    
    
