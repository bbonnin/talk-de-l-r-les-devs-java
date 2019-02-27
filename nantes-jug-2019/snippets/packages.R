install.packages("devtools")

remove.packages("devtools")

library(devtools)

devtools::install_git("git://github.com/bbonnin/rpulsar.git")

install_bitbucket("dannavarro/lsr-package@master", 
    auth_user = "haddock", password = "mypassword")

install_svn("https://github.com/hadley/httr",
    branch = "oauth")