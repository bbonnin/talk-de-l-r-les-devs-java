my_vec <- c("pomme", "banane")
my_vec <- 2:4                 # 2 3 4
my_vec <- seq(2, 3, by=0.5)   # 2.0 2.5 3.0
my_vec <- rep(1:2, times=3)   # 1 2 1 2 1 2
my_vec <- rnorm(10)           # -0.569  0.229 -1.082

# Un peu d'arithmétique vectorielle
my_vec + 1
my_vec - c(1, 2, 3)
my_vec * -3:-1

sort(my_vec)    # trie le vecteur
rev(my_vec)     # inverse les éléments
table(my_vec)   # compte les valeurs
unique(my_vec)  # retourne les valeurs uniques

# Sélection par position: le premier indice est 1 !!!
my_vec[2] 
my_vec[-2]

# Sélection par valeur
my_vec[my_vec > 2]

nb_days <- c(31, 28, 31)
names(nb_days) <- c("january", "february", "march")
nb_days["january"]

my_matrix <- matrix(data, nrow=x, ncol=y, ...)
my_matrix <- matrix(rnorm(30), nrow=5, ncol=6)
my_matrix <- matrix(1:9, byrow = TRUE, nrow = 3)
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
[3,]    7    8    9

my_matrix[2, 3]      # 6
my_matrix[, 2]       # 2 5 8

my_matrix + 2
my_matrix * 3
my_matrix ^ 2
my_matrix %*% my_matrix # produit avec elle-même

t(my_matrix)       # transposée de my_matrix
solve(my_matrix)   # inverse de my_matrix
rowSums(my_matrix) # somme de chaque ligne