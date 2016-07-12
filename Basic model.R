# We start off by running some variables 

#Define parameter values
# Number of projects =n 
n <- 40
#Number of relevant factors =k
k <- 5
# Coefficient mean
muc <- 1
# Coefficient SD
sigmac <- 2
# Variable mean
muv <- 3
#Variable SD
sigmav <- 2
# Error mean
mue <- 1
# Error SD
sigmae <- 2

#
> coefficients <- rlnorm(k, meanlog=muc, sdlog=sigmac)
> coefficients

> set.seed(123)
> coefficients <- rlnorm(k, meanlog=muc, sdlog=sigmac)
> coefficients

> variables <- matrix(rlnorm(n*k, meanlog=muv, sdlog=sigmav), nrow=k, ncol=n, byrow=TRUE)
> variables

> errors <- rlnorm(n, meanlog=mue, sdlog=sigmae)
> errors

> CE <- (t(coefficients) %*% variables) + t(errors)
> CE