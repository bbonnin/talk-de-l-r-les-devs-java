# Avec la librairie de base
plot(mtcars$hp, mtcars$mpg)


# Avec la librairie Ggplot2
qplot(mtcars$hp, mtcars$mpg)

qplot(mtcars$hp, mtcars$mpg) 
  + geom_smooth(method='lm')

qplot(mtcars$hp, mtcars$mpg, 
    color=as.factor(mtcars$cyl)) 
  + geom_smooth(method='lm')
  + labs(colour = "cyl")