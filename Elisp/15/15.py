def route_num(cube_size):
    L = [1] * cube_size
    print(L)
    for i in range(cube_size):
        for j in range(i):
            L[j] = L[j]+L[j-1]
            print(L)
        L[i] = 2 * L[i - 1]
        print(L)
    return L[cube_size - 1]

route_num(2)
