# Installation d'une librairie 
install.packages("devtools")

# Installation d'une librairie 
# depuis un repo miroir spécifique
install.packages("devtools", 
    repos = "https://mirror.ibcp.fr/pub/CRAN/")

# Suppression de packages
remove.packages("devtools")

# Déclaration de la librairie
library(devtools)

# Installation hors CRAN
devtools::install_git("git://github.com/bbonnin/rpulsar.git")

devtools::install_bitbucket("dannavarro/lsr-package@master", 
    auth_user = "haddock", password = "mypassword")

devtools::install_svn("https://github.com/hadley/httr",
    branch = "oauth")