data(iris)
install.packages("dplyr")
library(dplyr)
head(iris)
selected_Column <- dplyr:: select(iris, Species)
getwd()
petal_length_mean <- mean(iris$Petal.Length)
hist(iris$Petal.Length)

