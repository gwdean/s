## Putnam Problem (PP)

X shoots free throws.
X hits the first.
X misses the second.
thereafter
the probability that X hits the next shot
is equal to the proportion of shots she
has hit so far.

What is the probability that she hits exactly
50 out of her first 100 shots?

## Generalized Putnam Problem (GPP)

X shoots free throws.
To begin, X hits _a_ and misses _b_ shots.
thereafter,
X hits with probability equal to the proportion
of hits so far.
Determine the probability distribution of Sn.
Equivalently, describe the distribution of \Theta-n.

a        := hits
b        := misses
Sn       := number of successes among _n_ attempts.
Theta-n  := Sn+a/(a+b+n)

Theta-n can be thought of as an "updated belief" in Shanille's
shooting ability based on all accumulated data.

## The GPP is a Probability Problem...

## Bayesian Statistics: A Primer (355-356)
## Bayesian Inference the Beta-Binomial Way (356-362)
## Solving the GPP (362-367)
## Conclusion (367)

Title
========================================================

This is an R Markdown document. Markdown is a simple formatting syntax for authoring web pages (click the **MD** toolbar button for help on Markdown).

When you click the **Knit HTML** button a web page will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:


```r
summary(cars)
```

```
##      speed           dist    
##  Min.   : 4.0   Min.   :  2  
##  1st Qu.:12.0   1st Qu.: 26  
##  Median :15.0   Median : 36  
##  Mean   :15.4   Mean   : 43  
##  3rd Qu.:19.0   3rd Qu.: 56  
##  Max.   :25.0   Max.   :120
```


You can also embed plots, for example:


```r
plot(cars)
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


