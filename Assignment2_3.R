#2.3
 

matx <- replicate(10, rnorm(10), simplify = "matrix")  # matrix 10 x 10 with random normal numbers
matx
matx <- as.data.frame(m) # transforming into data frame
View(matx)

install.packages("rbenchmark")
library(rbenchmark)
benchmark(
  vect = as.vector(matx),          # vecotrized form
  conc = (n <- as.vector(
    for (i in seq(nrow(matx))) { 
      for (j in seq(ncol(matx))) {   # nested for 
        print(2*sin(matx[i, j]))  # performing algebraic function on each element
      }
    }))
)
