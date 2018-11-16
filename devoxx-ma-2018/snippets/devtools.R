library(devtools)

install_git("git://github.com/bbonnin/rpulsar.git", branch = "0.2")

install_github("bbonnin/rpulsar")

install_bitbucket("dannavarro/lsr-package@master", 
	auth_user = "haddock", password = "mypassword")

install_svn("https://github.com/hadley/httr", branch = "oauth")
