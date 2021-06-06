def can_move(
    map,
    i,
    j,
    di,
    dj,
    ):

    n = len(map)
    i += di
    j += dj


    if i < 0 or i >= n or j < 0 or j >= n:
        return False


    if map[i][j] == 1:
        return False

    i += di
    j += dj



    if i < 0 or i >= n or j < 0 or j >= n:
        return True


    if map[i][j] == 1:
        return False



    return True


def spiralize(size):

    if size == 0:
        return []
    elif size == 1:
        return [[1]]
    elif size == 2:
        return [[1, 1], [0, 1]]


    spiral = [[0 for i in range(size)] for j in range(size)]



    i = j = 0



    (di, dj) = (0, 1)



    rotated = 0
    while rotated < 2:
        spiral[i][j] = 1

        if can_move(spiral, i, j, di, dj):


            i += di
            j += dj
            rotated = 0
        else:



            (di, dj) = (dj, -di)
            rotated += 1


    (di, dj) = (-dj, di)
    if spiral[i + di][j + dj] == 1:
        spiral[i][j] = 0

    return spiral
