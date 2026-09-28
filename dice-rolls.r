# 2. rolls of a dice - nr of occurrences of the nr "6"
set.seed(154)
m = 6000
x = sample(1:6, m, replace = T)
x
sum(x == 6)
sum(x == 6) / m
