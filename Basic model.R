# We start off by defining parameter values for the run.

#Define parameter values
# Number of projects =n
n <- 10
#Number of relevant factors =k
k <- 2
# Coefficient mean
muB <- 1
# Coefficient SD
sigma2B <- 10
# Variable mean
muX <- 1
#Variable SD
sigma2X <- 10
# Error mean
muu <- 1
# Error SD
sigma2u <- 10

# Now we can generate the coefficients, variables, and error terms, 
# and use them to determine cost-effectiveness values.
set.seed(123)
coefficients <- rlnorm(k, meanlog=log((muB^2)/(sqrt(sigma2B + (muB^2)))), sdlog=sqrt(log(1 +(sigma2B/(muB^2)))))

variables <- matrix(rlnorm(n*k, meanlog=log((muX^2)/(sqrt((sigma2X + (muX^2))))), sdlog=sqrt(log(1 +(sigma2X/(muX^2))))), nrow=k, ncol=n, byrow=TRUE)

errors <- rlnorm(n, meanlog=log((muu^2)/(sqrt((sigma2u + (muu^2))))), sdlog=sqrt(log(1 +(sigma2u/(muu^2)))))

costeffectiveness <- (t(coefficients) %*% variables) + t(errors)
t(costeffectiveness)

# Now we need to pass this into a data frame
df <- as.data.frame(t(variables))
df <- cbind.data.frame(rep(0, n), t(costeffectiveness), df)

names <- c("lmpred", "ce")
for (i in 1:k) {
  names <-c(names, paste0("v",i))
}

colnames(df) <- names
df

#Initially, project selection is random, which since project generation is random,
#can be represented as taking the first k projects, and adding them to the 'selprojects'
#dataframe, which is an ordered dataframe of the selected projects. 'rejprojects' contains
#the set of projects that have been rejected (not accepted yet)
selprojects <- head(df, k)
selprojects

rejprojects <- tail(df, n-k)
rejprojects
# Now individuals can predict the effectiveness of other projects with a linear regression model
#They select the remaining project with the highest prediction error, and add it to selproject.
while (nrow(selprojects)<n) {
lm <- lm(ce~ . - lmpred -1, data=selprojects)
rejprojects$lmpred <-predict(lm, rejprojects)
rejprojects <- rejprojects[with(rejprojects,order(-lmpred)),]
selprojects <- rbind(selprojects, rejprojects[1,])
rejprojects <- rejprojects[-1,]
}
selprojects
attach(selprojects)
plot(1:nrow(selprojects), cumsum(selprojects$ce), xlab="Number of projects", ylab="Cumulative Progress")
