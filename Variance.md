Variance
========

```r
y <- c(13, 7, 5, 12, 9, 15, 6, 11, 9, 7, 12)
var(y)
```

```
## [1] 10.25
```

```r

variance <- function(x) sum((x - mean(x))^2)/(length(x) - 1)
variance(y)
```

```
## [1] 10.25
```

```r

v <- function(x) sum(x/length(x))
v(y)
```

```
## [1] 9.636
```

```r

s <- function(x) sum(x)
s(y)
```

```
## [1] 106
```

```r

s(y)/length(y)
```

```
## [1] 9.636
```

```r

a <- c(0, 50, 100, 100, 50, 0)
b <- c(50, 50, 50, 50, 50, 50)
c <- c(60, 60, 60, 60, 60, 0)

mean(a)
```

```
## [1] 50
```

```r
var(a)
```

```
## [1] 2000
```

```r
sd(a)
```

```
## [1] 44.72
```

```r

mean(b)
```

```
## [1] 50
```

```r
var(b)
```

```
## [1] 0
```

```r
sd(b)
```

```
## [1] 0
```

```r

mean(c)
```

```
## [1] 50
```

```r
var(c)
```

```
## [1] 600
```

```r
sd(c)
```

```
## [1] 24.49
```

```r

variance.ratio <- function(x, y) {
    v1 <- var(x)
    v2 <- var(y)
    if (var(x) > var(y)) {
        vr <- var(x)/var(y)
        df1 <- length(x) - 1
        df2 <- length(y) - 1
    } else {
        vr <- var(y)/var(x)
        df1 <- length(y) - 1
        df2 <- length(x) - 1
    }
    2 * (1 - pf(vr, df1, df2))
}

a <- rnorm(10, 15, 2)
b <- rnorm(10, 15, 4)

variance.ratio(a, b)
```

```
## [1] 0.002033
```

```r
var.test(a, b)
```

```
## 
## 	F test to compare two variances
## 
## data:  a and b 
## F = 0.0994, num df = 9, denom df = 9, p-value = 0.002033
## alternative hypothesis: true ratio of variances is not equal to 1 
## 95 percent confidence interval:
##  0.02468 0.40003 
## sample estimates:
## ratio of variances 
##            0.09936
```

```r

```

