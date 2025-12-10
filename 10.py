import scipy
def minimize(line):
    _, *bs, js = line.split()
    bs = [[int(i) for i in button[1:-1].split(',')] for button in bs]
    js = [int(i) for i in js[1:-1].split(',')]

    res = scipy.optimize.linprog(
        [1 for i in range(len(bs))],
        A_eq = [[int(i in b) for b in bs] for i in range(len(js))],
        b_eq = js,
        integrality = 1
    )

    return sum(res.x)

print(int(sum(minimize(line) for line in open(0))))
