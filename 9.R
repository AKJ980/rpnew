install.packages("ggplot2")

# Load the ggplot2 library
library(ggplot2)
# Load the mtcars dataset
data(mtcars)
# a. Plot Miles/(US) gallon versus Rear axle ratio
sc<-ggplot(mtcars, aes(x = mpg, y = drat)) +
  geom_point() +
  labs(title = "Scatterplot of Miles/(US) gallon vs. Rear axle ratio",
       x = "Miles/(US) gallon",
       y = "Rear axle ratio") +
  theme_minimal()
print(sc)