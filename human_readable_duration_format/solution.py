import datetime
from math import floor


def format_duration(seconds):
    if(seconds == 0):
        return 'now'
    Time = str(datetime.timedelta(seconds=seconds)).split(',')
    res = ''
    if len(Time) != 1:
        s = Time[0].split(" ")
        years = floor(int(s[0])/365)
        days = floor(int(s[0])%365)
        if(years <0):
            res = res + s[0] + ', '
            Time = Time[1]
        if(years >=1):
            if(years == 1):
                 res = res + str(years) + ' year, '
            else:
                 res = res + str(years) + ' years, '
        if(days == 1):
             res = res + str(days) + ' day'
        else:
             res = res + str(days) + ' days'
        Time = Time[1]
    if type(Time) == list:
        y = Time[0].split(':')
    else:
        y = Time.split(':')
    currTime = [int(float(i)) for i in y]
    if currTime[0] != 0:
        if res == '':
            if currTime[0] == 1:
                res = res + str(currTime[0]) + ' hour'
            else:
                res = res + str(currTime[0]) + ' hours'
        else:
            if currTime[0] == 1:
                res = res + ', ' + str(currTime[0]) + ' hour'
            else:
                res = res + ', ' + str(currTime[0]) + ' hours'
    if currTime[1] != 0:
        if res == '':
            if currTime[1] == 1:
                res = res + str(currTime[1]) + ' minute'
            else:
                res = res + str(currTime[1]) + ' minutes'
        else:
            if currTime[1] == 1:
                q = ", "
                if currTime[2] == 0:
                    q = " and "
                res = res + q + str(currTime[1]) + ' minute'
            else:
                q = ", "
                if currTime[2] == 0:
                     q = " and "
                res = res + q + str(currTime[1]) + ' minutes'
    if currTime[2] != 0:
        if res == '':
            if currTime[2] <= 1:
                res = res + str(currTime[2]) + ' second'
            else:
                res = res + str(currTime[2]) + ' seconds'
        else:
            if currTime[2] == 1:
                res = res + ' and ' + str(currTime[2]) + ' second'
            else:
                res = res + ' and ' + str(currTime[2]) + ' seconds'
    return res

