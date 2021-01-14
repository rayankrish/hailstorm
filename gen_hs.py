start = int(input("number: "))
seq = ""
while start != 1:
    if start%2==0:
        start /= 2
        seq+="L"
    else:
        start = (start*3)+1
        seq+="R"
print(seq)
print("reverse", seq[::-1])
