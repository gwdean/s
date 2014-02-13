# From the R-Book, 63. 
# Doesn't work in the form it is right now.
central <- function(y,measure){
  switch(measure,
         Mean = mean(y),
         Geometric = exp(mean(log(y))),
         Harmonic = 1/mean(1/y),
         Median = median(y),
  stop("Measure not included"))}
         