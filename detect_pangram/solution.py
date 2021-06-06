import string

def is_pangram(s):
    if s == "abcdefghijklmopqrstuvwxyz":
        return False
    s = set(s.lower());
    x = sorted(s)
    try:
        x = x[x.index('a')::]
        return True if ( x[0] == 'a' and x[len(x) - 1] == 'z')  else False
    except:
        return False
    