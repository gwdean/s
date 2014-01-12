# Simple Linear Regression
fit <- lm(weight ~ height,data=women)
summary(fit)

women$weight

fitted(fit)

residuals(fit)

plot(women$height,women$weight,
     xlab="Height (in inches)",
     ylab="Weight (in pounds)")
abline(fit)

# Polynomial Regression
fit2 <- lm(weight ~ height + I(height^2), data=women)
summary(fit2)

plot(women$height,women$weight,
     xlab="Height (in inches)",
     ylab="Weight (in pounds)")
lines(women$height,fitted(fit2))

# Cubic Polynomial
fit3 <- lm(weight ~ height + I(height^2) + I(height^3), data=women)
summary(fit3)

# Scatterplot
install.packages("car")
library(car)
scatterplot(weight ~ height,
            data=women,
            spread=FALSE, lty.smooth=2,
            pch=19,
            main="Women Age 30-39",
            xlab="Height (inches)",
            ylab="Weight (pounds")

# Multiple Linear Regression
states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])

# Examining bivariate relationships
cor(states)

library(car)
scatterplotMatrix(states,spread=FALSE,lty.smooth=2,main="Scatter Plot Matrix")

# Multiple Linear Regression
fit <- lm(Murder ~ Population + Illiteracy + Income + Frost,data=states)
summary(fit)

# Multiple Linear Regression with a significant interaction term
fit <- lm(mpg ~ hp + wt + hp:wt, data=mtcars)
summary(fit)

# Interaction plot for hp*wt
install.packages("effects")
library(effects)
plot(effect("hp:wt",fit,
            list(wt=c(2.2,3.2,4.2))),
            multiline=TRUE)