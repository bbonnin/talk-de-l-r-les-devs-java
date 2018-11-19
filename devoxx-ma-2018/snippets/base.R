> "Hello World !"
[1] "Hello World !"

> my_numeric <- 42
> my_bool <- TRUE

> days <- c(31, 28, 31)
> days[2]
[1] 28

> days + 1
[1] 32 29 32

> days + c(1, 2, 3)
[1] 32 30 34

> c(days, 30, 31)
[1] 31 28 31 30 31

> months <- c("january", "february", "march")
> names(days) <- months
> days
 january february    march 
      31       28       31 

> days[c(2,3)]
february    march 
      28       31 

> sum(days)
[1] 90
> mean(days)
[1] 30