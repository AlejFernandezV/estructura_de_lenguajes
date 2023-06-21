import random

ls_nums = []

for i in range(20):
    ls_nums.append(random.randint(0,101))
    
ls_nums.sort()

def sumPares(ls):
    sum = 0
    for num in ls:
        if num % 2 == 0:
            sum += num
    return sum

print(ls_nums)

print(sumPares(ls_nums))