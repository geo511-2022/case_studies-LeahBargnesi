data(iris)
install.packages("dplyr")
library(dplyr)
head(iris)
selected_Column <- dplyr:: select(iris, Species)
getwd()
mean(iris$Petal.Length)
hist(iris$Petal.Length)

