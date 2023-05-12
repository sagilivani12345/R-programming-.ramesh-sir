# 1.Define the input vectors for height and weight
height <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
weight <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Create a data frame with height and weight
data <- data.frame(height, weight)

# Perform linear regression
model <- lm(weight ~ height, data=data)

# Predict the weight for a person with height 170
new_height <- data.frame(height=170)
predicted_weight <- predict(model, newdata=new_height)
print(paste("Predicted weight for a person with height 170:", predicted_weight))

# Visualize the regression graphically
plot(height, weight, main="Linear Regression", xlab="Height", ylab="Weight")
abline(model, col="red", lwd=2)

#2.# Install and load necessary packages
#install.packages("ggplot2")
#install.packages("dplyr")
#install.packages("car")
library(ggplot2)
library(dplyr)
library(car)

data(water, package = "carData")

# View the structure of the dataset
str(water)

# Plot the relationship between mortality and hardness
plot(water$hardness, water$mortality,
     xlab = "Hardness", ylab = "Mortality",
     main = "Scatter Plot of Mortality vs. Hardness")

# Fit the data into a linear regression model
model <- lm(mortality ~ hardness, data = water)

# Predict the mortality for hardness = 88
new_data <- data.frame(hardness = 88)
predicted_mortality <- predict(model, newdata = new_data)
print(paste("Predicted mortality for hardness = 88:", predicted_mortality))

#3.# Load the mtcars dataset
data(mtcars)

# Create a multiple regression model
model <- lm(mpg ~ disp + hp + wt, data = mtcars)

# View the summary of the model
summary(model)

# Predict the mileage of a car with disp = 221, hp = 102, and wt = 2.91
new_data <- data.frame(disp = 221, hp = 102, wt = 2.91)
predicted_mpg <- predict(model, newdata = new_data)
print(paste("Predicted mileage for disp = 221, hp = 102, and wt = 2.91:", predicted_mpg))

#4.# Load the delivery dataset
data(delivery)

# Create a linear regression model
model <- lm(delTime ~ n.prod + distance, data = delivery)

# View the summary of the model
summary(model)

# Predict the delTime for n.prod = 9 and distance = 450
new_data <- data.frame(n.prod = 9, distance = 450)
predicted_delTime <- predict(model, newdata = new_data)
print(paste("Predicted delTime for n.prod = 9 and distance = 450:", predicted_delTime))

#5 A,
# Load the delivery dataset
data(delivery)
# Create a linear regression model
model <- lm(delTime ~ n.prod + distance, data = delivery)
# View the summary of the model
summary(model)
# Predict the delTime for n.prod = 9 and distance = 450
new_data <- data.frame(n.prod = 9, distance = 450)
predicted_delTime <- predict(model, newdata = new_data)
print(paste("Predicted delTime for n.prod = 9 and distance = 450:", predicted_delTime))
#5,B
# Load the mtcars dataset
data(mtcars)

# Create a logistic regression model
model <- glm(am ~ hp + wt + cyl, data = mtcars, family = "binomial")

# View the summary of the model
summary(model)

# Predict the transmission mode (automatic or manual) for a car with hp = 150, wt = 3.5, and cyl = 8
new_data <- data.frame(hp = 150, wt = 3.5, cyl = 8)
predicted_am <- predict(model, newdata = new_data, type = "response")
if(predicted_am >= 0.5){
  print("Predicted transmission mode: Manual")
} else {
  print("Predicted transmission mode: Automatic")
}

#6.
# Load the warpbreaks dataset
data(warpbreaks)

# Create a Poisson regression model
model <- glm(breaks ~ type + tension, data = warpbreaks, family = poisson)

# View the summary of the model
summary(model)

#POISSION REGRESSION:
#1.
# Load the iris dataset
data(iris)

# Set the seed for reproducibility
set.seed(123)

# Randomly sample the iris dataset into training and test sets
train_index <- sample(1:nrow(iris), 0.8 * nrow(iris))
train_data <- iris[train_index, ]
test_data <- iris[-train_index, ]

# Create a logistic regression model with training data
model <- glm(Species ~ Petal.Width + Petal.Length, data = train_data, family = binomial)

# Predict the probabilities using the test data
predicted_probs <- predict(model, newdata = test_data, type = "response")

# Convert probabilities to predicted classes
predicted_classes <- ifelse(predicted_probs > 0.5, "versicolor", "setosa")

# Create the confusion matrix
confusion_matrix <- table(test_data$Species, predicted_classes)
print(confusion_matrix)
#2(1)
# Define the values
# Define the values
values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

# Compute the mean
mean_value <- mean(values)
print(paste("Mean:", mean_value))

# Compute the median
median_value <- median(values)
print(paste("Median:", median_value))

# Compute the mode
mode_value <- names(table(values))[table(values) == max(table(values))]
print(paste("Mode:", mode_value))
#2(2):
# Find the 2nd highest value
sorted_values <- sort(values, decreasing = TRUE)
second_highest <- sorted_values[2]
print(paste("2nd Highest Value:", second_highest))
# Find the 3rd lowest value
sorted_values <- sort(values)
third_lowest <- sorted_values[3]
print(paste("3rd Lowest Value:", third_lowest))
#3.
# Load the air quality data set
data(airquality)
# i. Compute the mean temperature (without using built-in function)
mean_temp <- sum(airquality$Temp) / length(airquality$Temp)
print(paste("Mean Temperature:", mean_temp))

# ii. Extract the first five rows from airquality
first_five_rows <- airquality[1:5, ]
print(first_five_rows)

# iii. Extract all columns from airquality except Temp and Wind
subset_data <- airquality[, !(colnames(airquality) %in% c("Temp", "Wind"))]
print(subset_data)

# iv. Find the coldest day during the period
coldest_day <- airquality$Day[which.min(airquality$Temp)]
print(paste("Coldest Day:", coldest_day))

# v. Count the number of days with wind speed greater than 17 mph
wind_gt_17_count <- sum(airquality$Wind > 17)
print(paste("Number of Days with Wind Speed > 17 mph:", wind_gt_17_count))


