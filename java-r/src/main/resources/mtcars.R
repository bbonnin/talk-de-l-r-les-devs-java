library(ggplot2)
library(scales)

logger <- java.type("io.millesabords.demos.java_r.Logger")

#############################################################################################
# With plotMtcars, all the context for the execution is provided by the Java app

function(params) {
    svg()

    logger$log("CODE R - Type of plot:", params$type)

    mtcars$cyl <- as.factor(mtcars$cyl)

    switch(params$type,
        'loess'={
            plot <- ggplot(data = mtcars, mapping = aes(x = wt, y = mpg)) +
                geom_ribbon(stat = "smooth", method = "loess", alpha = .15, fill = "lightgray", linetype = 0) +
                geom_smooth(method = 'loess', se = FALSE, color = "blue")

        },
        'lm_cyl'={
            plot <- ggplot(mtcars, aes(x=wt, y=mpg, color=cyl, shape=cyl)) +
                geom_ribbon(stat = "smooth", method = "lm", alpha = .15, fill = "lightgray", linetype = 1) +
                geom_smooth(method=lm, se=FALSE)
        },
        'lm_cyl_no_confidence_interval'={
            plot <- ggplot(mtcars, aes(x=wt, y=mpg, color=cyl, shape=cyl)) +
                geom_smooth(method=lm, se=FALSE, fullrange=TRUE)
        },
        {
            plot <- ggplot(data = mtcars, mapping = aes(x = wt, y = mpg))
        }
    )

    plot <- plot + geom_point(size=3.0) +
        xlab('Weight (x 1000lbs)') + ylab('Miles per Gallon') +
        theme_minimal() +
        theme(axis.text = element_text(family = "Arial", size = 8), text = element_text(family = "Arial"))

    print(plot)
    svg.off()
}
