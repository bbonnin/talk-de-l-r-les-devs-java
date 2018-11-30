new_hope <- c(460, 314)
empire_strikes <- c(290, 247)
return_jedi <- c(309, 165)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)
box_office

# Construct star_wars_matrix
starwars_bo <- matrix(box_office, byrow=TRUE, nrow=3)
starwars_bo
  
# Name the columns with region
colnames(starwars_bo) <- c("US", "non-US")
# Name the rows with titles
rownames(starwars_bo) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

starwars_bo

starwars_bo["A New Hope", ]

rowSums(starwars_bo)
