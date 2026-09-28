# 5. roulette with 38 slots (0, 00, 1, 2,...,36)
# the 0, 00 are green slots
# the rest 36 are half red, half black
# if the ball is on red - win; on black -lose

set.seed(154)
x = sample(1:38, 1000, replace = T)  # the numbers 1:38 - the 38 slots

red = sum (x <= 18)
black = 1000 - red
winnings = red - black

red
black
winnings
