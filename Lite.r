# An R implementation of many of the examples found in
# Frank Morgan's CALCULUS LITE (AK Peters. 1997.)

#### 1. The Derivative          (001-124)       ####
# p.3
mileage<-function(t) 20*t^2
mileage(3)

# p.7
f<-function(t) 3*t^3 - 7*t^2
f(10)
D(expression(3*t^3-7*t^2),'t')

# p.8
D(expression(-7*x^10+5*x^3+2),'x')

# p.8-10 (Exercises)
D(expression(t^7 + t^5),'t')
D(expression(-6*t^3 + 12*t^2 -4*t + 7),'t')

# p.12-13
## Figure 2.1
x=seq(-3,5,by=0.01)
y1=(5/3)*x+0
y2=-x+2
y3=x+1
plot(x,y1,type="l",xlim=c(-3,6),ylim=c(-2,5))
points(x,y2,type="l",xlim=c(-3,6),ylim=c(-2,5))
points(x,y3,type="l",xlim=c(-3,6),ylim=c(-2,5))

## Figure 2.2 (NEEDS WORK. See 12)
x=seq(-4,4,by=0.01)
y1=x^2
dy1=D(expression(x^2),'x')
y2=2*x

plot(x,y1,type="l",ylim=c(-5,5))
points(x,y2,type="l")

## Figure 2.3 
x=seq(-7,7,by=0.01)
y1=x^2 - 6*x + 2
plot(x,y1,type="l",xlim=c(-7,7),ylim=c(-7,7))

#### 2. The Integral            (125-202)       ####
#### 3. Infinite Series         (203-220)       ####
#### 4. Differential Equations  (221-244)       ####
#### 5. Multivariable Calculus  (245-260)       ####
