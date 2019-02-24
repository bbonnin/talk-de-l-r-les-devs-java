my_character <- "Hello"
my_numeric <- 42
my_bool <- TRUE

elements <- c(1, 3, 5)
total <- 0
  
for (elt in elements) {
     if (is.numeric(elt)) {
          total <- total + elt
     } else {
          # stop("Bad value")
     }
}

print(paste("Total =", total))

add <- function (a, b = 1) {
     return (a + b)
}

add(1, 3)
add(1)
add(b = 4, a = 2)