library(ggplot2)
library(scales)

starwars <- read.csv(file="starwars.csv", header=TRUE, sep=",")

trilogy <- c(1,2,3)

if (!is.null(trilogy)) {
  # Filter the movies according to trilogies selection
  starwars <- starwars[starwars$trilogy %in% trilogy,]
}

# Keep titles in the same order as in the file
starwars$title <- factor(starwars$title, levels = starwars$title)

# http://colorbrewer2.org

ggplot(data = starwars, mapping = aes(x = title, y = revenue, fill = factor(trilogy))) +
  geom_col(color = "white") +
  scale_y_continuous(name = "Revenue ($)", labels = comma) +
  scale_x_discrete(name = "", labels = wrap_format(13)) +
  scale_fill_manual(values=c("#66c2a5", "#fc8d62", "#8da0cb")) +
  guides(fill = FALSE) +
  theme_minimal() +
  theme(axis.text = element_text(family = "Arial", size=10))

