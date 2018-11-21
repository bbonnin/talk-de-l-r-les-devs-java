> new_hope <- c(460.998, 314.4)
> empire_strikes <- c(290.475, 247.900)
> return_jedi <- c(309.306, 165.8)
> box_office <- c(new_hope, empire_strikes, return_jedi)

> # Construction de la matrice
> starwars_bo <- matrix(box_office, byrow=TRUE, nrow=3)
        [,1]  [,2]
[1,] 460.998 314.4
[2,] 290.475 247.9
[3,] 309.306 165.8

> # Nommage des éléments
> colnames(starwars_bo) <- c("US", "non-US")
> rownames(starwars_bo) <- c("A New Hope", 
	                     "The Empire Strikes Back", 
	                     "Return of the Jedi")

> starwars_bo
                             US non-US
A New Hope              460.998  314.4
The Empire Strikes Back 290.475  247.9
Return of the Jedi      309.306  165.8

> starwars_bo["A New Hope", ]
     US  non-US 
460.998 314.400 

> rowSums(starwars_bo)
A New Hope  The Empire Strikes Back  Return of the Jedi 
   775.398                  538.375             475.106 