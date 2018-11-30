library(ggplot2)
library(scales)

logger <- java.type("io.millesabords.demos.java_r.LogHolder")

function(params) {
    svg()

    logger$log("CODE R - Process file:", params$filename)

    starwars <- read.csv(file = params$filename, header = TRUE, sep = ",")

    if (!is.null(params$trilogies)) {
        trilogies <- as.vector(params$trilogies)
        logger$log("CODE R - Filter with ", trilogies)
        starwars <- starwars[starwars$trilogy %in% trilogies, ]
    }

    starwars$title <- factor(starwars$title, levels = starwars$title)

    plot <- ggplot(data=starwars, mapping = aes(x = title, y = revenue, fill = factor(trilogy))) +
        geom_col(color = "white") +
        scale_y_continuous(name = "Revenue ($)", labels = comma) +
        scale_x_discrete(name = "", labels = wrap_format(11)) +
        scale_fill_manual(values = c("#66c2a5", "#fc8d62", "#8da0cb")) +
        guides(fill = FALSE) +
        theme_minimal() +
        theme(axis.text = element_text(family = "Arial", size = 8), text = element_text(family = "Arial"))

    print(plot)
    svg.off()
}