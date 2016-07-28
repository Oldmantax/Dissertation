#Set seed, so that results are replicable
set.seed(123)

#Example model
example <- learningtoresearch(10, 2, 1, 10, 1, 10, 1, 10)
plot(1:nrow(example), cumsum(rowMeans(example)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title("Example")

#Basic model
parameter <- iteratedltr(1000, 100, 10, 1, 10, 1, 10, 1, 10)
plot(1:nrow(parameter), cumsum(rowMeans(parameter)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title("Learning to research: basic model")

#First we alter the n parameter
parameter1 <- iteratedltr(1000, 500, 10, 1, 10, 1, 10, 1, 10)
plot(1:nrow(parameter1), cumsum(rowMeans(parameter1)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title("Learning to research: n=500")

parameter2 <- iteratedltr(1000, 20, 10, 1, 10, 1, 10, 1, 10)
plot(1:nrow(parameter2), cumsum(rowMeans(parameter2)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title("Learning to research: n=20")

#Now we alter the k parameter
parameter3 <- iteratedltr(1000, 100, 2, 1, 10, 1, 10, 1, 10)
plot(1:nrow(parameter3), cumsum(rowMeans(parameter3)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title("Learning to research: k=2")

parameter4 <- iteratedltr(1000, 100, 50, 1, 10, 1, 10, 1, 10)
plot(1:nrow(parameter4), cumsum(rowMeans(parameter4)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title("Learning to research: k=50")

#Now we alter Muc
parameter5 <- iteratedltr(1000, 100, 10, 0.2, 10, 1, 10, 1, 10)
plot(1:nrow(parameter5), cumsum(rowMeans(parameter5)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title(expression(paste("Learning to research: ", {mu}[{beta}], "=0.2")))

parameter6 <- iteratedltr(1000, 100, 10, 5, 10, 1, 10, 1, 10)
plot(1:nrow(parameter6), cumsum(rowMeans(parameter6)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title(expression(paste("Learning to research: ", {mu}[{beta}], "=5")))

#Now we alter sigmac
parameter7 <- iteratedltr(1000, 100, 10, 1, 2, 1, 10, 1, 10)
plot(1:nrow(parameter7), cumsum(rowMeans(parameter7)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title(expression(paste("Learning to research: ", {sigma}[{beta}]^2, "=2")))

parameter8 <- iteratedltr(1000, 100, 10, 1, 50, 1, 10, 1, 10)
plot(1:nrow(parameter8), cumsum(rowMeans(parameter8)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title(expression(paste("Learning to research: ", {sigma}[{beta}]^2, "=50")))

#Now we alter Mue
parameter9 <- iteratedltr(1000, 100, 10, 1, 10, 0.2, 10, 1, 10)
plot(1:nrow(parameter9), cumsum(rowMeans(parameter9)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title(expression(paste("Learning to research: ", {mu}[{u}], "=0.2")))

parameter10 <- iteratedltr(1000, 100, 10, 1, 10, 5, 10, 1, 10)
plot(1:nrow(parameter10), cumsum(rowMeans(parameter10)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title(expression(paste("Learning to research: ", {mu}[{u}], "=5")))

#Now we alter sigmae
parameter11 <- iteratedltr(1000, 100, 10, 1, 10, 1, 2, 1, 10)
plot(1:nrow(parameter11), cumsum(rowMeans(parameter11)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title(expression(paste("Learning to research: ", {sigma}[{u}]^2, "=2")))

parameter12 <- iteratedltr(1000, 100, 10, 1, 10, 1, 50, 1, 10)
plot(1:nrow(parameter12), cumsum(rowMeans(parameter12)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title(expression(paste("Learning to research: ", {sigma}[{u}]^2, "=50")))

#Now we alter Muv
parameter13 <- iteratedltr(1000, 100, 10, 1, 10, 1, 10, 0.2, 10)
plot(1:nrow(parameter13), cumsum(rowMeans(parameter13)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title(expression(paste("Learning to research: ", {mu}[{X}], "=0.2")))

parameter14 <- iteratedltr(1000, 100, 10, 1, 10, 1, 10, 5, 10)
plot(1:nrow(parameter14), cumsum(rowMeans(parameter14)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title(expression(paste("Learning to research: ", {mu}[{X}], "=5")))

#Now we alter sigmav
parameter15 <- iteratedltr(1000, 100, 10, 1, 10, 1, 10, 1, 2)
plot(1:nrow(parameter15), cumsum(rowMeans(parameter15)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title(expression(paste("Learning to research: ", {sigma}[{X}]^2, "=2")))

parameter16 <- iteratedltr(1000, 100, 10, 1, 10, 1, 10, 1, 50)
plot(1:nrow(parameter16), cumsum(rowMeans(parameter16)), xlab="Number of projects", ylab="Logarithm of Cumulative Average Progress")
title(expression(paste("Learning to research: ", {sigma}[{X}]^2, "=50")))
