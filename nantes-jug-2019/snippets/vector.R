> my_vec <- c(1, 3, 5)          # 1 3 5
> my_vec <- 2:4                 # 2 3 4
> my_vec <- seq(2, 3, by=0.5)   # 2.0 2.5 3.0
> my_vec <- rep(1:2, times=3)   # 1 2 1 2 1 2
> my_vec <- rnorm(10)           # -0.5699391  0.2299417 -1.0829267

# Sélection par position
> my_vec[2]                     # 3

> my_vec[-2]                    # 1 5

# Sélection par valeur
> my_vec[my_vec > 2]            # 3 5

> my_vec + 1                    # 2 4 6

> my_vec + c(1, 2, 3)           # 2 5 8

> c(my_vec, 7, 9)               # 1 3 5 7 9

> nb_days <- c(31, 28, 31)

> names(nb_days) <- c("january", "february", "march")

> nb_days["january"]
january 
     31 

> sort(my_vec)
> rev(my_vec)
> table(my_vec)
> unique(my_vec)