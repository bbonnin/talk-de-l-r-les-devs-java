library(ggplot2)
library(scales)

logger <- java.type("demos.java_r.Logger")

function(params) {
    svg()

    logger$log("CODE R - Process file:", params$filename)
    logger$log("CODE R - Filter with ", params$trilogies)

    starwars <- read.csv(file = params$filename, header = TRUE)

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