# 4. flipping coin - obtaining 2 successive H or T

set.seed(154)

x = sample(c("H", "T"), 1) # vector c with H and T at the first toss
n = 1  # count the first toss

repeat {
  y = sample(c("H", "T"), 1) # make another coin toss
  n = n + 1   # increase the number of coin tosses
  
  if (x == y) break   #if the last toss = the current toss
  x = y # save the current toss as the previous one
}

n
