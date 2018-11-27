somme <- function (elements = c()) {
  
  total <- 0
  
  for (elt in elements) {
    
    if (is.numeric(elt)) {
      total <- total + elt
    }
  }
  
  return (total)
}

somme(c(1, 3, 5))