get_bin = lambda x: format(x, 'b')
def count_bits(n):
    count=0
    x = get_bin(n)
    for i in range(0,len(x)):
        print(x[i])
        if x[i] == '1':
            count= count + 1
    return count
