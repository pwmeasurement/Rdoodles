rm(list=ls()) 

# function to find if a number is divisible by numbers 1:10
is.div.1t10 <- function(n) {
  is.true <- TRUE
  for(i in 1:10) is.true <- is.true & (n %% i == 0)
  return(is.true)
}

is.good <- function(stop=1000000) {
  for(i in 1:stop) if(is.div.1t10(i)) return(i)
  return(NA)
}

prime_factors <- function(x, i=2, factors = NULL){
  if(x<i) return(factors)
  else if(! x %% i) prime_factors(x/i, i, c(factors, i))
  else  prime_factors(x, i+1, factors)
}
