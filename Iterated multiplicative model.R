# Now we implement an iteration of the basic model, so we can see more general patterns,
# with the noise removed
iteratedmltr <- function(r, n, k, muB, sigma2B, muX, sigma2X, muu, sigma2u) {
  i <- r
  CE <- as.vector(c(1:n))
  while (i>0){
    selprojects <-multiplyingltr(n, k, muB, sigma2B, muX, sigma2X, muu, sigma2u)
    CE <- cbind(CE, selprojects$ce)
    i <- i-1
  }
  return(CE[, -1])
}
# Now we can output a graph with average cost effectiveness.
TCE <- iteratedmltr(10, 60, 5, 2, 1, 2, 1, 2, 1)
plot(1:nrow(TCE), cumprod(rowMeans(TCE)), log="y", xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
