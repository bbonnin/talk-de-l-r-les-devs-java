> my_vec <- c(1, 3, 5)

# Accès aux éléments
> my_vec[2]
[1] 3

> my_vec[-2]
[1] 1 5

> my_vec[c(2,3)]
[1] 3 5

> my_vec[my_vec > 2]
[1] 3 5

# Opérations sur les vecteurs
> my_vec + 1
[1] 2 4 6

> my_vec + c(1, 2, 3)
[1] 2 5 8

> c(my_vec, 7, 9.5)
[1] 1.0 3.0 5.0 7.0 9.5

# Nommage des éléments
> nb_days <- c(31, 28, 31)

> months <- c("january", "february", "march")
> names(nb_days) <- months

> nb_days
january february    march 
     31       28       31 

> nb_days["january"]
january 
     31 

> sum(nb_days)
[1] 90

> mean(nb_days)
[1] 30