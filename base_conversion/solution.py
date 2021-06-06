def to_base(n, base, alphabet):
    if n < base:
        return alphabet[n]
    else:
        q, r = divmod(n, base)
        return to_base(q, base, alphabet) + alphabet[r]

def convert(input, source, target):
    b = len(source)
    n = sum(source.index(x) * b ** i for i, x in enumerate(reversed(input)))
    return to_base(n, len(target), target)