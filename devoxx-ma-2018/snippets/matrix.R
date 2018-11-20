> new_hope <- c(460.998, 314.4)
> empire_strikes <- c(290.475, 247.900)
> return_jedi <- c(309.306, 165.8)
> 
> # Create box_office
> box_office <- c(new_hope, empire_strikes, return_jedi)
> 
> # Construct star_wars_matrix
> star_wars_matrix <- matrix(box_office, byrow=TRUE, nrow=3)
> 

> star_wars_matrix
        [,1]  [,2]
[1,] 460.998 314.4
[2,] 290.475 247.9
[3,] 309.306 165.8

> colnames(star_wars_matrix) <- c("US", "non-US")
> rownames(star_wars_matrix) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

> star_wars_matrix
                             US non-US
A New Hope              460.998  314.4
The Empire Strikes Back 290.475  247.9
Return of the Jedi      309.306  165.8

> star_wars_matrix["A New Hope",]
     US  non-US 
460.998 314.400 

> rowSums(star_wars_matrix)
A New Hope The Empire Strikes Back      Return of the Jedi 
   775.398                 538.375                 475.106 

