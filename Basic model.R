# We start off by defining parameter values for the run.

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

# Now we can generate the coefficients, variables, and error terms, 
# and use them to determine cost-effectiveness values.
set.seed(123)
coefficients <- rlnorm(k, meanlog=muc, sdlog=sigmac)

variables <- matrix(rlnorm(n*k, meanlog=muv, sdlog=sigmav), nrow=k, ncol=n, byrow=TRUE)

errors <- rlnorm(n, meanlog=mue, sdlog=sigmae)

costeffectiveness <- (t(coefficients) %*% variables) + t(errors)
t(costeffectiveness)

# Now we need to pass this into a data frame
regdata <- as.data.frame(t(variables))
regdata <- cbind.data.frame(t(costeffectiveness), regdata)
colnames(regdata) <- c("ce", "v1", "v2", "v3", "v4", "v5")

#Initially, project selection is random, which since project generation is random,
#can be represented as taking the first k projects.
projectchoice <- costeffectiveness[1:k]
projectchoice

# Now individuals can predict the optimal choice with a linear regression model, and add it
lm <- lm(ce~ ., data=regdata)
lm
