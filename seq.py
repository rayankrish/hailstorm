import math

"""
for i in range(1, 5, 1):
    print("[", end="")
    for j in range(5):
        print(int(math.pow(4, j)) * i, end=", ")
    print("]")
"""

seqs = [[1], [1], [1], [1]] # with x_0 value
coefs = [4, 4, 4, 4]
y_0 = [0, 1, 2, 3]

for i in range(5):
    for seq, coef, y in zip(seqs, coefs, y_0):
        seq.append(seq[-1]*coef+y)

for seq in seqs:
    print(seq)


