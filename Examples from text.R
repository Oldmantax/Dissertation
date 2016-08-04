#Set seed, so that results are replicable
set.seed(123)

#Example model
example <- learningtoresearch(10, 2, 1, 10, 1, 10, 1, 10)
plot(1:nrow(example), cumsum(rowMeans(example)), xlab="Number of projects", ylab="Cumulative Average Progress")
title("Example")

#Basic model
parameter <- iteratedltr(1000, 100, 10, 1, 10, 1, 10, 1, 10)
plot(1:nrow(parameter), cumsum(rowMeans(parameter)), xlab="Number of projects", ylab="Cumulative Average Progress")
title("Learning to research: basic model")

#First we alter the n parameter
parameter1 <- iteratedltr(1000, 500, 10, 1, 10, 1, 10, 1, 10)
plot(1:nrow(parameter1), cumsum(rowMeans(parameter1)), xlab="Number of projects", ylab="Cumulative Average Progress")
title("Learning to research: n=500")

parameter2 <- iteratedltr(1000, 20, 10, 1, 10, 1, 10, 1, 10)
plot(1:nrow(parameter2), cumsum(rowMeans(parameter2)), xlab="Number of projects", ylab="Cumulative Average Progress")
title("Learning to research: n=20")

#Now we alter the k parameter
parameter3 <- iteratedltr(1000, 100, 2, 1, 10, 1, 10, 1, 10)
plot(1:nrow(parameter3), cumsum(rowMeans(parameter3)), xlab="Number of projects", ylab="Cumulative Average Progress")
title("Learning to research: k=2")

parameter4 <- iteratedltr(1000, 100, 50, 1, 10, 1, 10, 1, 10)
plot(1:nrow(parameter4), cumsum(rowMeans(parameter4)), xlab="Number of projects", ylab="Cumulative Average Progress")
title("Learning to research: k=50")

#Now we alter Mub
parameter5 <- iteratedltr(1000, 100, 10, 0.2, 10, 1, 10, 1, 10)
plot(1:nrow(parameter5), cumsum(rowMeans(parameter5)), xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: ", {mu}[{beta}], "=0.2")))

parameter6 <- iteratedltr(1000, 100, 10, 5, 10, 1, 10, 1, 10)
plot(1:nrow(parameter6), cumsum(rowMeans(parameter6)), xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: ", {mu}[{beta}], "=5")))

#Now we alter sigma2b
parameter7 <- iteratedltr(1000, 100, 10, 1, 2, 1, 10, 1, 10)
plot(1:nrow(parameter7), cumsum(rowMeans(parameter7)), xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: ", {sigma}[{beta}]^2, "=2")))

parameter8 <- iteratedltr(1000, 100, 10, 1, 50, 1, 10, 1, 10)
plot(1:nrow(parameter8), cumsum(rowMeans(parameter8)), xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: ", {sigma}[{beta}]^2, "=50")))

#Now we alter MuX
parameter9 <- iteratedltr(1000, 100, 10, 1, 10, 0.2, 10, 1, 10)
plot(1:nrow(parameter9), cumsum(rowMeans(parameter9)), xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: ", {mu}[{X}], "=0.2")))
plot(parameter9$ce)

parameter10 <- iteratedltr(1000, 100, 10, 1, 10, 5, 10, 1, 10)
plot(1:nrow(parameter10), cumsum(rowMeans(parameter10)), xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: ", {mu}[{X}], "=5")))

#Now we alter sigma2X
parameter11 <- iteratedltr(1000, 100, 10, 1, 10, 1, 2, 1, 10)
plot(1:nrow(parameter11), cumsum(rowMeans(parameter11)), xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: ", {sigma}[{X}]^2, "=2")))

parameter12 <- iteratedltr(1000, 100, 10, 1, 10, 1, 50, 1, 10)
plot(1:nrow(parameter12), cumsum(rowMeans(parameter12)), xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: ", {sigma}[{X}]^2, "=50")))

#Now we alter MuU
parameter13 <- iteratedltr(1000, 100, 10, 1, 10, 1, 10, 0.2, 10)
plot(1:nrow(parameter13), cumsum(rowMeans(parameter13)), xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: ", {mu}[{u}], "=0.2")))

parameter14 <- iteratedltr(1000, 100, 10, 1, 10, 1, 10, 5, 10)
plot(1:nrow(parameter14), cumsum(rowMeans(parameter14)), xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: ", {mu}[{u}], "=5")))

#Now we alter sigma2u
parameter15 <- iteratedltr(1000, 100, 10, 1, 10, 1, 10, 1, 2)
plot(1:nrow(parameter15), cumsum(rowMeans(parameter15)), xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: ", {sigma}[{u}]^2, "=2")))

parameter16 <- iteratedltr(1000, 100, 10, 1, 10, 1, 10, 1, 50)
plot(1:nrow(parameter16), cumsum(rowMeans(parameter16)), xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: ", {sigma}[{u}]^2, "=50")))

#Now we reset the seed
set.seed(123)

#Multiplicative model
parameter17 <- iteratedmltr(1000, 100, 10, 1, 10, 1, 10, 1, 10)
plot(1:nrow(parameter17), cumprod(rowMeans(parameter17)), log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title("Learning to research: multiplicative model")

#First we alter the n parameter
parameter18 <- iteratedmltr(1000, 500, 10, 1, 10, 1, 10, 1, 10)
plot(1:nrow(parameter18), cumprod(rowMeans(parameter18)), log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title("Learning to research: multiplicative with n=500")

parameter19 <- iteratedmltr(1000, 20, 10, 1, 10, 1, 10, 1, 10)
plot(1:nrow(parameter19), cumprod(rowMeans(parameter19)), log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title("Learning to research: multiplicative with n=20")

#Now we alter the k parameter
parameter20 <- iteratedmltr(1000, 100, 2, 1, 10, 1, 10, 1, 10)
plot(1:nrow(parameter20), cumprod(rowMeans(parameter20)),log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title("Learning to research: multiplicative with k=2")

parameter21 <- iteratedmltr(1000, 100, 50, 1, 10, 1, 10, 1, 10)
plot(1:nrow(parameter21), cumprod(rowMeans(parameter21)),log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title("Learning to research: multiplicative with k=50")

#Now we alter Mub
parameter22 <- iteratedmltr(1000, 100, 10, 0.2, 10, 1, 10, 1, 10)
plot(1:nrow(parameter22), cumprod(rowMeans(parameter22)),log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: multiplicative with ", {mu}[{beta}], "=0.2")))

parameter23 <- iteratedmltr(1000, 100, 10, 5, 10, 1, 10, 1, 10)
plot(1:nrow(parameter23), cumprod(rowMeans(parameter23)),log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: multiplicative with ", {mu}[{beta}], "=5")))

#Now we alter sigma2b
parameter24 <- iteratedmltr(1000, 100, 10, 1, 2, 1, 10, 1, 10)
plot(1:nrow(parameter24), cumprod(rowMeans(parameter24)),log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: multiplicative with ", {sigma}[{beta}]^2, "=2")))

parameter25 <- iteratedmltr(1000, 100, 10, 1, 50, 1, 10, 1, 10)
plot(1:nrow(parameter25), cumprod(rowMeans(parameter25)),log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: multiplicative with ", {sigma}[{beta}]^2, "=50")))

#Now we alter MuX
parameter26 <- iteratedmltr(1000, 100, 10, 1, 10, 0.2, 10, 1, 10)
plot(1:nrow(parameter26), cumprod(rowMeans(parameter26)),log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: multiplicative with ", {mu}[{X}], "=0.2")))

parameter27 <- iteratedmltr(1000, 100, 10, 1, 10, 5, 10, 1, 10)
plot(1:nrow(parameter27), cumprod(rowMeans(parameter27)),log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: multiplicative with ", {mu}[{X}], "=5")))

#Now we alter sigma2X
parameter28 <- iteratedmltr(1000, 100, 10, 1, 10, 1, 2, 1, 10)
plot(1:nrow(parameter28), cumprod(rowMeans(parameter28)),log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: multiplicative with ", {sigma}[{X}]^2, "=2")))

parameter29 <- iteratedmltr(1000, 100, 10, 1, 10, 1, 50, 1, 10)
plot(1:nrow(parameter29), cumprod(rowMeans(parameter29)),log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: multiplicative with ", {sigma}[{X}]^2, "=50")))

#Now we alter MuU
parameter30 <- iteratedmltr(1000, 100, 10, 1, 10, 1, 10, 0.2, 10)
plot(1:nrow(parameter30), cumprod(rowMeans(parameter30)),log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: multiplicative with ", {mu}[{u}], "=0.2")))

parameter31 <- iteratedmltr(1000, 100, 10, 1, 10, 1, 10, 5, 10)
plot(1:nrow(parameter31), cumprod(rowMeans(parameter31)),log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: multiplicative with ", {mu}[{u}], "=5")))

#Now we alter sigma2u
parameter32 <- iteratedmltr(1000, 100, 10, 1, 10, 1, 10, 1, 2)
plot(1:nrow(parameter32), cumprod(rowMeans(parameter32)),log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: multiplicative with ", {sigma}[{u}]^2, "=2")))

parameter33 <- iteratedmltr(1000, 100, 10, 1, 10, 1, 10, 1, 50)
plot(1:nrow(parameter33), cumprod(rowMeans(parameter33)),log="y", xlab="Number of projects", ylab="Cumulative Average Progress")
title(expression(paste("Learning to research: multiplicative with ", {sigma}[{u}]^2, "=50")))
