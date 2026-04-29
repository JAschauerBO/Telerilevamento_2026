## We learn how to create functions, YIPPIEH!

somma <- function(x,y) {  # dont use sum because it overwrites the r function sum
  z = x + y
  return(z)
  }

somma(1,5)

# Exercise: make a function called difference
difference <- function(x,y) {
  z = x - y
  return(z)
  }

difference(5,3)

mf <- function(nrow=1, ncol=2) {  # use default values
  par(mfrow=(c(nrow, ncol)))
  }


# if condition
is_positive <- function(x) {
  if (x>0) {
    print("The number is positive")
    }
  else if (x<0) {
    print("The number is negative")
    }
  else {
    print("Zero")
    }
  }

is_positive(3)


# for Loop
loop <- function(x=1) {
  for (i in 1:5) {
    print(i*x)
    }
  }
