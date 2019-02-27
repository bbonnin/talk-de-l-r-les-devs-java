my_matrix <- matrix(data, nrow=x, ncol=y, ...)
my_matrix <- matrix(rnorm(30), nrow=5, ncol=6)
my_matrix <- matrix(1:9, byrow = TRUE, nrow = 3)

my_matrix + 2
my_matrix * 3
my_matrix ^ 2
my_matrix %*% my_matrix # produit de my_matrix avec elle-même

t(my_matrix)      # transposée de my_matrix
solve(my_matrix)  # inverse de my_matrix

# Exemple: box office (US et reste du monde) de Star Wars
new_hope <- c(460, 314)
empire_strikes <- c(290, 247)
return_jedi <- c(309, 165)

starwars_bo <- matrix(
     c(new_hope, empire_strikes, return_jedi),
     byrow=TRUE, nrow=3)

     [,1] [,2]
[1,]  460  314
[2,]  290  247
[3,]  309  165

starwars_bo[3, 1]      # 309
starwars_bo[, 2]       # 314 247 165

colnames(starwars_bo) <- c("Revenue US", "Revenue non-US")
rownames(starwars_bo) <- c("A New Hope", 
                         "The Empire Strikes Back", 
                         "Return of the Jedi")

                         US non-US
A New Hope              460    314
The Empire Strikes Back 290    247
Return of the Jedi      309    165

starwars_bo["A New Hope", ]
    US non-US 
   460    314

rowSums(starwars_bo)

A New Hope The Empire Strikes Back      Return of the Jedi 
       774                     537                     474   