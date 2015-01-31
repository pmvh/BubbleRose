# This script needs packages circular and ggplot2

library(ggplot2)
library(circular)
y=c(1,2,5,5,7,3,2,6)
rose.diag(y)
x <- circular(runif(50, 0, 2*pi))
rose.diag(x, bins = 18, main = 'Uniform Data')
points(x)
