# Box office (US et reste du monde) de Star Wars
> new_hope <- c(460, 314)
> empire_strikes <- c(290, 247)
> return_jedi <- c(309, 165)

> box_office <- c(new_hope, empire_strikes, return_jedi)
[1] 460 314 290 247 309 165

# Construction de la matrice
> starwars_bo <- matrix(box_office, byrow=TRUE, nrow=3)
     [,1] [,2]
[1,]  460  314
[2,]  290  247
[3,]  309  165

# Nommage des éléments
> colnames(starwars_bo) <- c("US", "non-US")
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