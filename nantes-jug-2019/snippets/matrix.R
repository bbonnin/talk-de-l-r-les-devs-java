> my_matrix <- matrix(data, nrow=x, ncol=y, ...)

> my_matrix <- matrix(rnorm(30), nrow=5, ncol=6)
> my_matrix <- matrix(1:9, byrow = TRUE, nrow = 3)
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
[3,]    7    8    9

> my_matrix[2, 3]      # 6

> my_matrix[, 2]       # 2 5 8

# Exemple: box office (US et reste du monde) de Star Wars
> new_hope <- c(460, 314)
> empire_strikes <- c(290, 247)
> return_jedi <- c(309, 165)
> box_office <- c(new_hope, empire_strikes, return_jedi)

> starwars_bo <- matrix(box_office, byrow=TRUE, nrow=3)
     [,1] [,2]
[1,]  460  314
[2,]  290  247
[3,]  309  165

> colnames(starwars_bo) <- c("Revenue US", "Revenue non-US")
> rownames(starwars_bo) <- c("A New Hope", 
                         "The Empire Strikes Back", 
                         "Return of the Jedi")

                         US non-US
A New Hope              460    314
The Empire Strikes Back 290    247
Return of the Jedi      309    165

> starwars_bo["A New Hope", ]
    US non-US 
   460    314

> rowSums(starwars_bo)
A New Hope The Empire Strikes Back      Return of the Jedi 
       774                     537                     474 