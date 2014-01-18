Notes on Likelihood Theory.
adapted from Julian J. Farway's *Extending the Linear Model with R* (2006)

# Likelihood Theory
## Maximum Likelihood

```r
loglik <- function(p, y, n) lchoose(n, y) + y * log(p) + (n - y) * log(1 - p)

nloglik <- function(p, y, n) loglik(p, y, n) - loglik(y/n, y, n)

pr <- seq(0.05, 0.95, by = 0.01)
matplot(pr, cbind(nloglik(pr, 10, 25), nloglik(pr, 20, 50)), type = "l", xlab = "p", 
    ylab = "log-likelihood")
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1.png) 

```r

f <- function(x) -loglik(x, 10, 25)
mm <- nlm(f, 0.5, hessian = T)
```

```
## Warning: NaNs produced Warning: NA/Inf replaced by maximum positive value
## Warning: NaNs produced Warning: NA/Inf replaced by maximum positive value
```

```r

mm$estimate
```

```
## [1] 0.4
```

```r

c(1/mm$hessian, 0.4 * (1 - 0.4)/25)
```

```
## [1] 0.009602 0.009600
```

## Hypothesis Testing
