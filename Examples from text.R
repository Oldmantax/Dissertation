example <- learningtoresearch(10, 2, 2, 1, 2, 1, 2, 1)
plot(1:nrow(example), cumsum(rowMeans(example)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")

parameter <- iteratedltr(1000, 100, 5, 2, 1, 2, 1, 2, 1)
plot(1:nrow(parameter), cumsum(rowMeans(parameter)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")

parameter1 <- iteratedltr(1000, 100, 10, 2, 1, 2, 1, 2, 1)
plot(1:nrow(parameter1), cumsum(rowMeans(parameter1)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")

parameter <- iteratedltr(1000, 100, 5, 2, 1, 2, 1, 2, 1)
plot(1:nrow(parameter), cumsum(rowMeans(parameter)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")

parameter <- iteratedltr(1000, 100, 5, 2, 1, 2, 1, 2, 1)
plot(1:nrow(parameter), cumsum(rowMeans(parameter)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")

parameter <- iteratedltr(1000, 100, 5, 2, 1, 2, 1, 2, 1)
plot(1:nrow(parameter), cumsum(rowMeans(parameter)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
