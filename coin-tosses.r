# 1. coin tosses - probab. of obtaining "head" after a nr of tosses
set.seed(154)
m= 1000    # the number of coin tosses

# c("H", "T") - creates the vector that contains "head" and "tails"
# replace = T - either "head" or "tails" can be selected again after each toss
x = sample(c("H", "T"), m, replace = T)  

# displays all the results
x

# we count how many times we got "heads"
sum(x == "H")

# probability: head/total nr of tosses
sum(x == "H") / m
