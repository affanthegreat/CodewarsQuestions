class Omnibool:
    def __eq__(self, o):
        return o is True or o is False  
omnibool = Omnibool() # this variable needs your wizard magic!