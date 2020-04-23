# Function to compte the mode of a vector.

getmode <- function(v) {
  
  uniqv <- unique(v)
  
  uniqv[which.max(tabulate(match(v, uniqv)))]
  
}