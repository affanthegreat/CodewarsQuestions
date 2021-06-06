def spin_words(sentence):
    # Your code goes here
    sp = sentence.split(" ")
    res = ""
    for i in sp:
        if(len(i) < 5):
            res = res + i + " "
        else:
            res += i[::-1] + " "    
        
    return res.strip()