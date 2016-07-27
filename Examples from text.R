example <- learningtoresearch(10, 2, 2, 1, 2, 1, 2, 1)
plot(1:nrow(example), cumsum(rowMeans(example)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")

#Basic model
parameter <- iteratedltr(100, 100, 5, 2, 1, 2, 1, 2, 1)
plot(1:nrow(parameter), cumsum(rowMeans(parameter)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")

#Now we alter the k parameter
parameter1 <- iteratedltr(100, 100, 2, 2, 1, 2, 1, 2, 1)
plot(1:nrow(parameter1), cumsum(rowMeans(parameter1)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")

parameter2 <- iteratedltr(100, 100, 10, 2, 1, 2, 1, 2, 1)
plot(1:nrow(parameter2), cumsum(rowMeans(parameter2)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")

parameter3 <- iteratedltr(100, 100, 40, 2, 1, 2, 1, 2, 1)
plot(1:nrow(parameter3), cumsum(rowMeans(parameter3)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")

#Now we alter the 
parameter4 <- iteratedltr(1000, 100, 5, 2, 1, 2, 10, 2, 1)
plot(1:nrow(parameter4), cumsum(rowMeans(parameter4)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
