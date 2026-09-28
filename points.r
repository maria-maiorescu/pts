# set the seed so we get the same random results each time
set.seed(154)

# define the three vertices of the triangle
P = c(1, 1)
Q = c(50, 95)
R = c(99, 1)

# choose an initial point inside the triangle
x = 50
y = 40

# number of points we want to generate
n = 1000

# create two vectors where we will store
# the x and y coordinates of every new point
X = numeric(n)
Y = numeric(n)

# repeat the experiment n times
for (i in 1:n) {

  # randomly choose one of the three vertices
  # 1 represents P, 2 represents Q, 3 represents R
  vertex = sample(1:3, 1)

  # if P was chosen, move halfway from the current point to P
  if (vertex == 1) {
    x = (x + P[1]) / 2
    y = (y + P[2]) / 2
  }

  # if Q was chosen, move halfway from the current point to Q
  if (vertex == 2) {
    x = (x + Q[1]) / 2
    y = (y + Q[2]) / 2
  }

  # if R was chosen, move halfway from the current point to R
  if (vertex == 3) {
    x = (x + R[1]) / 2
    y = (y + R[2]) / 2
  }

  # save the coordinates of the new point
  X[i] = x
  Y[i] = y
}

# plot all the generated points
plot(X, Y)
