
def get_order(order):
    lt = "Burger Fries Chicken Pizza Sandwich Onionrings Milkshake Coke".split()
    res = ""
    for item in lt:
        if item.casefold() in order:
            for i in range(0, order.count(item.casefold())):
                res += item + " "
    return res[:-1]