def swap(string, index1, index2):
    new_string = list(string)
    new_string[index1], new_string[index2] = string[index2], string[index1]
    new_string = sorted(new_string[:index1]) + new_string[index1:]
    return ''.join(new_string)

def next_smaller(number):
    number = str(number)
    if list(number) == sorted(number):
        return -1
    rev_num = number[::-1]
    for i, digit in enumerate(rev_num,0):
        if any(num for num in rev_num[:i] if num < digit):
            _, j = max(((num, j) for j, num in enumerate(rev_num[:i]) if int(num) < int(digit)),key = lambda x:(x[0], x[1]))
            swapped_num = swap(rev_num, i, j)
            if not swapped_num.endswith('0'):
                return int(swapped_num[::-1])
    return -1