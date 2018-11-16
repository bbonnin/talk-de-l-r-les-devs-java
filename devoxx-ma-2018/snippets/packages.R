# Déclaration de la librairie - elle doit être installée !
library(httr)

# Installation d'une librairie (récupération depuis le repo standard)
install.packages("httr")

# Installation d'une librairie depuis un repo spécifique
install.packages("httr", repos = "https://mirror.ibcp.fr/pub/CRAN/")

# Suppression de packages
remove.packages("httr")
