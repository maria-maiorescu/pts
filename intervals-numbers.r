# 3. generate 300 random nr

set.seed(154)
x = runif(300, 0, 100)
x
I1 = sum(x < 20)
I1
I2 = sum(x >= 20) - sum(x >= 40)
I2
