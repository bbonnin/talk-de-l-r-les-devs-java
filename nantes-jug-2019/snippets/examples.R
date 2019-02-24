# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", 
	 "Wednesday", "Thursday", "Friday")

A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)



total_poker <- sum(poker_vector)

> poker_vector <- c(140, -50, 20, -120, 240)
> roulette_vector <- c(-24, -50, 100, -350, 10)
> days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> names(poker_vector) <- days_vector
> names(roulette_vector) <- days_vector
> days_vector
[1] "Monday"    "Tuesday"   "Wednesday" "Thursday"  "Friday"   
> poker_vector
   Monday   Tuesday Wednesday  Thursday    Friday 
      140       -50        20      -120       240 
> # Poker and roulette winnings from Monday to Friday:
> poker_vector <- c(140, -50, 20, -120, 240)
> roulette_vector <- c(-24, -50, 100, -350, 10)
> days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> names(poker_vector) <- days_vector
> names(roulette_vector) <- days_vector
> 
> # Define a new variable based on a selection
> poker_midweek <- poker_vector[c(2, 4)]
> 
> poker_midweek
 Tuesday Thursday 
     -50     -120 
> # Define a new variable based on a selection
> poker_midweek <- poker_vector[c(2, 3, 4)]
> 
> poker_midweek
  Tuesday Wednesday  Thursday 
      -50        20      -120 
> # Define a new variable based on a selection
> roulette_selection_vector <- roulette_vector[2:5]
> 
> # Select poker results for Monday, Tuesday and Wednesday
> poker_start <- poker_vector[c("Monday", "Tuesday", "Wednesday")]
> 
> # Calculate the average of the elements in poker_start
> mean(poker_start)
[1] 36.66667


> # Which days did you make money on poker?
> selection_vector <- poker_vector > 0
> 
> # Print out selection_vector
> selection_vector
   Monday   Tuesday Wednesday  Thursday    Friday 
     TRUE     FALSE      TRUE     FALSE      TRUE

> # Select from poker_vector these days
> poker_winning_days <- poker_vector[selection_vector]
> poker_winning_days
   Monday Wednesday    Friday 
      140        20       240

> # Construct a matrix with 3 rows that contain the numbers 1 up to 9
> matrix(1:9, byrow = TRUE, nrow = 3)
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
[3,]    7    8    9

> # Box office Star Wars (in millions!) US revenue, Non-US revenue
> new_hope <- c(460.998, 314.4)
> empire_strikes <- c(290.475, 247.900)
> return_jedi <- c(309.306, 165.8)
> 
> # Create box_office
> box_office <- c(new_hope, empire_strikes, return_jedi)
> 
> # Construct star_wars_matrix
> star_wars_matrix <- matrix(box_office, byrow=TRUE, nrow=3)
> 

> star_wars_matrix
        [,1]  [,2]
[1,] 460.998 314.4
[2,] 290.475 247.9
[3,] 309.306 165.8


> # Box office Star Wars (in millions!)
> new_hope <- c(460.998, 314.4)
> empire_strikes <- c(290.475, 247.900)
> return_jedi <- c(309.306, 165.8)
> 
> # Construct matrix
> star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)
> 
> # Vectors region and titles, used for naming
> region <- c("US", "non-US")
> titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
> 
> 
> 
> # Name the columns with region
> colnames(star_wars_matrix) <- region
> 
> # Name the rows with titles
> rownames(star_wars_matrix) <- titles
> 
> # Print out star_wars_matrix
> star_wars_matrix
                             US non-US
A New Hope              460.998  314.4
The Empire Strikes Back 290.475  247.9
Return of the Jedi      309.306  165.8

> # Construct star_wars_matrix
> box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
> star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                             dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                             c("US", "non-US")))
> 
> # Calculate worldwide box office figures
> worldwide_vector <- rowSums(star_wars_matrix)
> worldwide_vector
             A New Hope The Empire Strikes Back      Return of the Jedi 
                775.398                 538.375                 475.106
> 

> worldwide_vector <- rowSums(star_wars_matrix)
> 
> # Bind the new variable worldwide_vector as a column to star_wars_matrix
> all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
> all_wars_matrix
                             US non-US worldwide_vector
A New Hope              460.998  314.4          775.398
The Empire Strikes Back 290.475  247.9          538.375
Return of the Jedi      309.306  165.8          475.106

> star_wars_matrix
                           US non-US
A New Hope              461.0  314.4
The Empire Strikes Back 290.5  247.9
Return of the Jedi      309.3  165.8
> star_wars_matrix2
                        US non-US
The Phantom Menace   474.5  552.5
Attack of the Clones 310.7  338.7
Revenge of the Sith  380.3  468.5
> rbind(star_wars_matrix, star_wars_matrix2)
                           US non-US
A New Hope              461.0  314.4
The Empire Strikes Back 290.5  247.9
Return of the Jedi      309.3  165.8
The Phantom Menace      474.5  552.5
Attack of the Clones    310.7  338.7
Revenge of the Sith     380.3  468.5

> # all_wars_matrix is available in your workspace
> all_wars_matrix
                           US non-US
A New Hope              461.0  314.4
The Empire Strikes Back 290.5  247.9
Return of the Jedi      309.3  165.8
The Phantom Menace      474.5  552.5
Attack of the Clones    310.7  338.7
Revenge of the Sith     380.3  468.5
> 
> # Total revenue for US and non-US
> total_revenue_vector <- colSums(all_wars_matrix)
> 
> # Print out total_revenue_vector
> total_revenue_vector
    US non-US 
2226.3 2087.8

 
> 
> # all_wars_matrix is available in your workspace
> all_wars_matrix
                           US non-US
A New Hope              461.0  314.4
The Empire Strikes Back 290.5  247.9
Return of the Jedi      309.3  165.8
The Phantom Menace      474.5  552.5
Attack of the Clones    310.7  338.7
Revenge of the Sith     380.3  468.5
> 
> # Select the non-US revenue for all movies
> non_us_all <- all_wars_matrix[,2]
> 
> # Average non-US revenue
> mean(non_us_all)
[1] 347.9667
> 
> # Select the non-US revenue for first two movies
> non_us_some <- all_wars_matrix[1:2,2]
> 
> # Average non-US revenue for first two movies
> mean(non_us_some)
[1] 281.15





> # all_wars_matrix is available in your workspace
> all_wars_matrix
                           US non-US
A New Hope              461.0  314.4
The Empire Strikes Back 290.5  247.9
Return of the Jedi      309.3  165.8
The Phantom Menace      474.5  552.5
Attack of the Clones    310.7  338.7
Revenge of the Sith     380.3  468.5
> 
> # Estimate the visitors
> visitors <- all_wars_matrix / 5
> 
> # Print the estimate to the console
> visitors
                           US non-US
A New Hope              92.20  62.88
The Empire Strikes Back 58.10  49.58
Return of the Jedi      61.86  33.16
The Phantom Menace      94.90 110.50
Attack of the Clones    62.14  67.74
Revenge of the Sith     76.06  93.70



mtcars

head(mtcars)

                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1

str(mtcars) structure des data
'data.frame': 32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...


 # Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation , rings)

# Print out diameter of Mercury (row 1, column 3)
planets_df[1,3]

# Print out data for Mars (entire fourth row)
planets_df[4,]

# Select first 5 values of diameter column
planets_df[1:5,"diameter"]

# Select the rings variable from planets_df
rings_vector <- planets_df[,"rings"]

# Adapt the code to select all columns for planets with rings
planets_df[rings_vector, ]

# Select planets with diameter < 1
subset(planets_df, diameter < 1)

# Use order() to create positions
positions <-  order(planets_df$diameter)

# Use positions to sort planets_df
planets_df[positions,]




# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector,my_matrix,my_df)

# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Adapt list() call to give the components names
my_list <- list(my_vector, my_matrix, my_df)
names(my_list) <- c("vec","mat","df")
# Print out my_list
my_list




> shining_list <- list(moviename = mov, actors=act,reviews=rev)
+ 
> shining_list
$moviename
[1] "The Shining"

$actors
[1] "Jack Nicholson"   "Shelley Duvall"   "Danny Lloyd"      "Scatman Crothers"
[5] "Barry Nelson"    

$reviews
  scores sources                                              comments
1    4.5   IMDb1                     Best Horror Film I Have Ever Seen
2    4.0   IMDb2 A truly brilliant and scary film from Stanley Kubrick
3    5.0   IMDb3                 A masterpiece of psychological horror
> mov
[1] "The Shining"
> actors
Error: object 'actors' not found
> act
[1] "Jack Nicholson"   "Shelley Duvall"   "Danny Lloyd"      "Scatman Crothers"
[5] "Barry Nelson"
> rev
  scores sources                                              comments
1    4.5   IMDb1                     Best Horror Film I Have Ever Seen
2    4.0   IMDb2 A truly brilliant and scary film from Stanley Kubrick
3    5.0   IMDb3                 A masterpiece of psychological horror
> 


# Print out the vector representing the actors
shining_list$actors

# Print the second element of the vector representing the actors
shining_list$actors[2]

 
 > # Comparison of logicals
> TRUE == FALSE
[1] FALSE
> 
> # Comparison of numerics
> -6*14 != 17-101
[1] FALSE
> 
> # Comparison of character strings
> "useR" == "user"
[1] FALSE
> 
> # Compare a logical with a numeric
> TRUE == 1
[1] TRUE

> # Comparison of numerics
> (-6 * 5 + 2) >= (-10 + 1)
[1] FALSE
> 
> # Comparison of character strings
> "raining" <= "raining dogs"
[1] TRUE
> 
> # Comparison of logicals
> TRUE > FALSE
[1] TRUE



> # The linkedin and facebook vectors have already been created for you
> linkedin <- c(16, 9, 13, 5, 2, 17, 14)
> facebook <- c(17, 7, 5, 16, 8, 13, 14)
> 
> # Popular days
> linkedin > 15
[1]  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE
> 
> # Quiet days
> linkedin <= 5
[1] FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE
> 
> # LinkedIn more popular than Facebook
> linkedin > facebook
[1] FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE
> 

> 
> # The linkedin and last variable are already defined for you
> linkedin <- c(16, 9, 13, 5, 2, 17, 14)
> last <- tail(linkedin, 1)
> 
> # Is last under 5 or above 10?
> last < 5 | last > 10
[1] TRUE
> 
> # Is last between 15 (exclusive) and 20 (inclusive)?
> last > 15 & last <= 20
[1] FALSE




# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else { # sur la meme ligne
  print("Try to be more visible!")
}

 # Create a vector filled with random normal values
u1 <- matrix(30)
print("This loop calculates the square of the first 10 elements of vector u1")

# Initialize `usq`
usq <- 0

for(i in 1:10) {
  # i-th element of `u1` squared into `i`-th position of `usq`
  usq[i] <- u1[i]*u1[i]
  print(usq[i])
}

print(i)



readinteger <- function(){
  n <- readline(prompt="Please, enter your ANSWER: ") 
}

repeat {   
  response <- as.integer(readinteger());
  if (response == 42) {
    print("Well done!");
    break
  } else print("Sorry, the answer to whatever the question MUST be 42");
}


readinteger <- function(){
  n <- readline(prompt="Please, enter your ANSWER: ")
}

response <- as.integer(readinteger())

while (response!=42) {   
  print("Sorry, the answer to whatever the question MUST be 42");
  response <- as.integer(readinteger());
}




# apply family
https://www.datacamp.com/community/tutorials/r-tutorial-apply-
https://www.r-bloggers.com/r-tutorial-on-the-apply-family-of-functions/
https://datascienceplus.com/using-the-apply-family-of-functions-in-r/
The functions within the family are: apply(), sapply(), lapply(), mapply(), rapply(), tapply(), vapply()

# Construct a 5x6 matrix
X <- matrix(rnorm(30), nrow=5, ncol=6)

# Sum the values of each column with `apply()`
apply(X, 2, sum) # 2 veut dire 'column'




