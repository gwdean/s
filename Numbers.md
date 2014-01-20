Old Testament

```r
ot <- c(61, 50, 33, 44, 43, 28, 29, 5, 39, 34, 37, 35, 34, 39, 13, 19, 9, 41, 
    101, 29, 10, 8, 73, 72, 8, 59, 19, 11, 6, 9, 3, 4, 7, 3, 4, 4, 2, 12, 3)
length(ot)
```

```
## [1] 39
```

```r
sum(ot)
```

```
## [1] 1040
```

```r
sort(ot)
```

```
##  [1]   2   3   3   3   4   4   4   5   6   7   8   8   9   9  10  11  12
## [18]  13  19  19  28  29  29  33  34  34  35  37  39  39  41  43  44  50
## [35]  59  61  72  73 101
```

```r
rev(sort(ot))
```

```
##  [1] 101  73  72  61  59  50  44  43  41  39  39  37  35  34  34  33  29
## [18]  29  28  19  19  13  12  11  10   9   9   8   8   7   6   5   4   4
## [35]   4   3   3   3   2
```

```r
plot(ot)
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-11.png) 

```r
plot(rev(sort(ot)))
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-12.png) 

```r
ot/sum(ot)
```

```
##  [1] 0.058654 0.048077 0.031731 0.042308 0.041346 0.026923 0.027885
##  [8] 0.004808 0.037500 0.032692 0.035577 0.033654 0.032692 0.037500
## [15] 0.012500 0.018269 0.008654 0.039423 0.097115 0.027885 0.009615
## [22] 0.007692 0.070192 0.069231 0.007692 0.056731 0.018269 0.010577
## [29] 0.005769 0.008654 0.002885 0.003846 0.006731 0.002885 0.003846
## [36] 0.003846 0.001923 0.011538 0.002885
```

The Book of Numbers

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

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-21.png) 

```r
plot(sort(Numbers))
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-22.png) 

New Testament

```r
nt <- c(45, 30, 47, 34, 44, 19, 18, 12, 7, 7, 6, 5, 4, 3, 5, 4, 2, 2, 15, 5, 
    5, 4, 6, 1, 1, 2, 20)
sum(nt)
```

```
## [1] 353
```

```r
length(nt)
```

```
## [1] 27
```

```r
sort(nt)
```

```
##  [1]  1  1  2  2  2  3  4  4  4  5  5  5  5  6  6  7  7 12 15 18 19 20 30
## [24] 34 44 45 47
```

```r
rev(sort(nt))
```

```
##  [1] 47 45 44 34 30 20 19 18 15 12  7  7  6  6  5  5  5  5  4  4  4  3  2
## [24]  2  2  1  1
```

```r
plot(sort(nt))
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-31.png) 

```r
mean(nt)
```

```
## [1] 13.07
```

```r
rev(sort(nt/sum(nt)))
```

```
##  [1] 0.133144 0.127479 0.124646 0.096317 0.084986 0.056657 0.053824
##  [8] 0.050992 0.042493 0.033994 0.019830 0.019830 0.016997 0.016997
## [15] 0.014164 0.014164 0.014164 0.014164 0.011331 0.011331 0.011331
## [22] 0.008499 0.005666 0.005666 0.005666 0.002833 0.002833
```

```r
hist(rev(sort(nt/sum(nt))))
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-32.png) 

Bible

```r
bible <- c(ot, nt)
length(bible)
```

```
## [1] 66
```

```r
sum(bible)
```

```
## [1] 1393
```

```r
mean(bible)
```

```
## [1] 21.11
```

```r
plot(bible)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-41.png) 

```r
plot(sort(bible))
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-42.png) 

```r
mean(ot)
```

```
## [1] 26.67
```

```r
mean(nt)
```

```
## [1] 13.07
```

```r
mean(bible)
```

```
## [1] 21.11
```

