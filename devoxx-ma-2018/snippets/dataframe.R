> movies <- read.csv('starwars.csv', sep=";")

> head(movies, n=2)
                    title revenue
1               Star wars     775
2 The Empire Strikes Back     538

> str(movies)
'data.frame':	8 obs. of  2 variables:
 $ title  : Factor w/ 8 levels "Attack of the Clones",..
 $ revenue: int  775 538 475 1027 649 848 2068 1332

> summary(movies)
                     title      revenue      
 Attack of the Clones   :1   Min.   : 475.0  
 Return of the Jedi     :1   1st Qu.: 621.2  
 Revenge of the Sith    :1   Median : 811.5  
 Star wars              :1   Mean   : 964.0  
 The Empire Strikes Back:1   3rd Qu.:1103.2  
 The Force Awakens      :1   Max.   :2068.0  
 (Other)                :2                       

> movies$trilogy <- c(1, 1, 1, 2, 2, 2, 3, 3)

> head(movies, n=2)
                    title revenue trilogy
1               Star wars     775       1
2 The Empire Strikes Back     538       1

> mean(movies$revenue)
[1] 964

> tapply(movies$revenue, movies$trilogy, mean)
        1         2         3 
 596.0000  841.3333 1700.0000 