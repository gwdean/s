
```r
Numbers0112 <- c(54, 34, 51, 49, 31, 27, 89, 26, 23, 36, 35, 16)
Numbers1324 <- c(33, 45, 41, 50, 13, 32, 22, 29, 35, 41, 30, 25)
Numbers2536 <- c(17, 65, 23, 31, 40, 16, 54, 42, 56, 29, 34, 13)

Numbers <- c(Numbers0112, Numbers1324, Numbers2536)

sum(Numbers)
```

```
## [1] 1287
```

```r
mean(Numbers)
```

```
## [1] 35.75
```

```r
var(Numbers)
```

```
## [1] 249.8
```

```r
sd(Numbers)
```

```
## [1] 15.8
```

```r
summary(Numbers)
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##    13.0    25.8    33.5    35.8    42.8    89.0
```

```r
plot(Numbers)
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-11.png) 

```r
plot(sort(Numbers))
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-12.png) 

