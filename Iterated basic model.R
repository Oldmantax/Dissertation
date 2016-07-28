# Now we implement an iteration of the basic model, so we can see more general patterns,
# with the noise removed
iteratedltr <- function(r, n, k, muB, sigma2B, muX, sigma2X, muu, sigma2u) {
i <- r
CE <- as.vector(c(1:n))
while (i>0){
  selprojects <-learningtoresearch(n, k, muB, sigma2B, muX, sigma2X, muu, sigma2u)
  CE <- cbind(CE, selprojects$ce)
  i <- i-1
}
return(CE[, -1])
}