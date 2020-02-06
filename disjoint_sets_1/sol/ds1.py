import sys

n, _ = input().split()
C = set([frozenset([i]) for i in range(int(n))])


def find_set(x):
    for M in C:
        if x in M:
            return M
    assert False


for line in sys.stdin:
    op, s, t = line.split()
    S, T = find_set(int(s)), find_set(int(t))
    if op == "q":
        print("yes" if S == T else "no")
    if op == "u":
        if S == T:
            continue
        C.remove(S)
        C.remove(T)
        C.add(S.union(T))
