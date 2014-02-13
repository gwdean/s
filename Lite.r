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

#### 2. The Integral            (125-202)       ####
#### 3. Infinite Series         (203-220)       ####
#### 4. Differential Equations  (221-244)       ####
#### 5. Multivariable Calculus  (245-260)       ####
