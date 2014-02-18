# Warm-up. Pseudo-random numbers.
set.seed(42)
runif(2)

RNG.state <- .Random.seed
runif(2)

set.seed(42)
runif(4)

.Random.seed <- RNG.state
runif(2)

# Simulation Models (R-Book.811-825)
par(mfrow=c(2,2))
lambda<-2
x<-numeric(40)
x[1]<-0.6
for (t in 2 : 40) x[t]<-lambda * x[t-1] * (1-x[t-1])
plot(1:40,x,type="l",ylim=c(0,1),ylab="pop",xlab="time",main="3.5")