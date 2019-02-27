library(ggplot2)
library(scales)

logger <- java.type("demos.java_r.Logger")

function(params) {
    svg()

    logger$log("CODE R - Type of plot:", params$type)

    switch(params$type,
        'loess'={
            plot <- ggplot(mtcars, aes(x = wt, y = mpg)) +
                geom_smooth(method = "loess")

        },
        'lm_cyl'={
            plot <- ggplot(mtcars, 
                    aes(x = wt, y = mpg, color = cyl, shape = cyl)) +
                geom_smooth(method = "lm")
        },
        {
            plot <- ggplot(mtcars, aes(x = wt, y = mpg))
        }
    )

    plot <- plot + geom_point(size=3.0) +
        xlab('Weight (x 1000lbs)') + ylab('Miles per Gallon') +
        theme_minimal()

    print(plot)
    svg.off()
}