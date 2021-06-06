def is_isogram(string):
    for i in string:
        if string.lower().count(i) > 1:
            return False
        
    return True
    #your code here