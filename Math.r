# Math.r (Adapted from Crawley-2007.(195-277))

## Mathematical Functions (195-207)
### Logarithmic functions (196)
x<-seq(0,10,0.1)

y<-exp(x)
plot(y~x,type="l",main="Exponential")

z<-log(x)
plot(z~x,type="l",main="Logarithmic")

### Trigonometric functions (197)
x<-seq(0,2*pi,2*pi/100)
y1<-cos(x)
y2<-sin(x)
y3<-tan(x)
plot(y1~x,type="l",main="cosine")
plot(y2~x,type="l",main="sine")
plot(y3~x,type="l",ylim=c(-3,3),main="tangent")

### Power laws (197-199) [Could use manipulate here]
x<-seq(0,1,0.01)
y<-x^0.5
plot(x,y,type="l",main="0<b<1")
y<-x
plot(x,y,type="l",main="b=1")
y<-x^2
plot(x,y,type="l",main="b>1")
y<-1/x
plot(x,y,type="l",main="b<1")

### Polynomial functions
par(mfrow=c(2,2))
x<-seq(0,10,0.1)
y1<-2+5*x-0.2*x^2
y2<-2+5*x-0.4*x^2
y3<-2+4*x-0.6*x^2+0.04*x^3
y4<-2+4*x+2*x^2-0.6*x^3+0.04*x^4
plot(x,y1,type="l",ylab="y",main="decelerating")
plot(x,y2,type="l",ylab="y",main="humped")
plot(x,y3,type="l",ylab="y",main="inflection")
plot(x,y4,type="l",ylab="y",main="local maximum")

par(mfrow=c(2,2))
y1<-x/(2+5*x)
y2<-1/(x-2+4/x)
y3<-1/(x^2-2+4/x)
plot(x,y1,type="l",ylab="y",main="Michaelis-Menten")
plot(x,y2,type="l",ylab="y",main="shallow hump")
plot(x,y3,type="l",ylab="y",main="steep hump")

### Gamma function (201)
par(mfrow=c(1,1))
t<-seq(0.2,4,0.01)
plot(t,gamma(t),type="l")
abline(h=1,lty=2)

plot(gamma(seq(0.2,1,0.01)))
### Asymptotic functions
(1/44.44 - 1/70.59)/(1/0.2 - 1/0.6)
(1/0.2) * (((400*0.2)/44.44) - 1)
  
### Sigmoid (S-shaped) functions (203-204)
par(mfrow=c(2,2))
x<-seq(0,10,0.1)
y1<-100/(1+90*exp(-1*x))
y2<-20+100/(1+exp(0.8*(3-x)))
plot(x,y1,type="l",main="three-parameter logistic")
plot(x,y2,type="l",ylim=c(0,140),main="four-parameter logistic")

x<--200:100
y<-100*exp(-exp(0.02*x))
plot(x,y,type="l",main="negative Gompertz")

x<-0:100
y<-50*exp(-5*exp(-0.08*x))
plot(x,y,type="l",main="positive Gompertz")
### Biexponential model
### Transformation of the response and explanatory variables
### Probability functions (206-207)
par(mfrow=c(1,1))
x<-0:6
plot(x,factorial(x),type="s",main="factorial x",log="y")

choose(8,3)

plot(0:8,choose(8,0:8),type="s",main="binomial coefficients")
## Continuous Probability Distributions (208-241)
### Normal distribution (210)
### The central limit theorem (213-216)
hist(runif(10000)*10,main="")

means<-numeric(10000)
for(i in 1:10000){
  means[i]<-mean(runif(5)*10)
}
hist(means,ylim=c(0,1600))
mean(means)
sd(means)

xv<-seq(0,10,0.1)
yv<-dnorm(xv,mean=4.98214,sd=1.274905)*5000
lines(xv,yv)

par(mfrow=c(2,2))
hist(sample(1:6,replace=T,10000),breaks=0.5:6.5,main="",xlab="one die")

a<-sample(1:6,replace=T,10000)
b<-sample(1:6,replace=T,10000)
hist(a+b,breaks=1.5:12.5,main="",xlab="two dice")

c<-sample(1:6,replace=T,10000)
hist(a+b+c,breaks=2.5:18.5,main="",xlab="three dice")

d<-sample(1:6,replace=T,10000)
e<-sample(1:6,replace=T,10000)
hist(a+b+c+d+e,breaks=4.5:30.5,main="",xlab="five dice")

mean(a+b+c+d+e)
sd(a+b+c+d+e)
lines(seq(1,30,0.1),dnorm(seq(1,30,0.1),17.5227,3.778877)*10000)
### Maximum likelihood with the normal distribution (216)
### Generating random numbers... (219)
### Comparing data with a normal distribution (220)
### Other distributions used in hypothesis testing (221)
#### Chi-Squared
#### Fisher's F
#### Student's t
#### The Gamma Distribution
#### The Exponential Distribution
#### Cauchy
#### The lognormal distribution
#### The logistic distribution
#### The log-logistic distribution
#### The Weibull distribution
#### Multivariate normal distribution
#### The uniform distribution (240-241)
x<-ceiling(runif(10000)*6)
table(x)
hist(x,breaks=0.5:6.5,main="")

x<-runif(1000000)
y<-runif(1000000)
plot(x,y,pch=16) # All black

table(cut(x,6),cut(y,6))
#### Plotting empirical cumulative distribution functions

##### Cumulative Probability Function (208)
curve(pnorm(x),-3,3)
arrows(-1,0,-1,pnorm(-1),col="red")
arrows(-1,pnorm(-1),-3,pnorm(-1),col="green")

pnorm(-1)
##### Probability Density (208)
curve(dnorm(x),-3,3)

## Discrete Probability Distributions (242-258)
## Matrix Algebra (258-275)
## Differential Equations (275-277)