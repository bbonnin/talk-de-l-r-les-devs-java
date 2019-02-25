library(ggplot2)
library(scales)

logger <- java.type("demos.java_r.Logger")

function(params) {
    svg()

    logger$log("CODE R - Param1:", params$param1)
    logger$log("CODE R - Param2:", params$param2)

    if (!is.null(params$trilogies)) {
        trilogies <- as.vector(params$trilogies)
        starwars <- starwars[starwars$trilogy %in% trilogies, ]
    }

    starwars$title <- factor(starwars$title, levels = starwars$title)

    plot <- ggplot(
            data = starwars, 
            ...)

    print(plot)
    svg.off()
}