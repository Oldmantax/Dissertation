# Now we implement an iteration of the basic model, so we can see more general patterns,
# with the noise removed
iteratedltr <- function(r, n, k, muc, sigmac, mue, sigmae, muv, sigmav) {
i <- r
CE <- as.vector(c(1:n))
while (i>0){
  selprojects <-learningtoresearch(n, k, muc, sigmac, mue, sigmae, muv, sigmav)
  CE <- cbind(CE, selprojects$ce)
  i <- i-1
}
return(CE[, -1])
}
# Now we can output a graph with average cost effectiveness.
TCE <- iteratedltr(100, 60, 5, 2, 1, 2, 1, 2, 1)
plot(1:nrow(TCE),cumsum(rowMeans(TCE)), xlab="Number of projects", ylab="Cumulative Average Progress")
