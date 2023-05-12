
##1
print("Two vectors of different lengths:")
v1 =  c(1,3,4,5)
v2 =  c(10,11,12,13,14,15)
print(v1)
print(v2)
result = array(c(v1,v2),dim = c(3,3,2))     
print("New array:")
print(result)
print("The second row of the second matrix of the array:")
print(result[2,,2])
print("The element in the 3rd row and 3rd column of the 1st matrix:")
print(result[3,3,1])

##2.Write a R program to combine three arrays so that the first row of the first
num1 = rbind(rep("A",3), rep("B",3), rep("C",3))
print("num1")
print(num1)
num2 = rbind(rep("P",3), rep("Q",3), rep("R",3))
print("num2")
print(num2)
num3 = rbind(rep("X",3), rep("Y",3), rep("Z",3))
print("num3")
print(num3)
a = matrix(t(cbind(num1,num2,num3)),ncol=3, byrow=T)
print("Combine three arrays, taking one row from each one by one:")
print(a)

##3.
# Create two data frames
df1 <- data.frame(A = c(1, 2, 3), B = c(4, 5, 6))
df2 <- data.frame(C = c(7, 8, 9), D = c(10, 11, 12))
list1 <- list(df1, df2)
my_array <- array(unlist(list1), dim = c(3, 4, 2))
print(my_array)


##4.create a 5*3 array for >50 integers
a <- array(seq(from = 50, length.out = 15, by = 2), c(5, 3))
print("Content of the array:")
print("5×3 array of sequence of even integers greater than 50:")
print(a)

##5.extract 5th and 3rd row from dataframe
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print("Original dataframe:")
print(exam_data)
print("Extract 3rd and 5th rows with 1st and 3rd columns :")
result =  exam_data[c(3,5),c(1,3)]
print(result)

##6.add a column
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print("Original dataframe:")
print(exam_data)
print("New data frame after adding the 'country' column:")
exam_data$country = c("USA","USA","USA","USA","USA","USA","USA","USA","USA","USA")
print(exam_data)

###7.
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print("Original dataframe:")
print(exam_data)
new_exam_data = data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no')
)
exam_data =  rbind(exam_data, new_exam_data)
print("After adding new row(s) to an existing data frame:")
print(exam_data)

##8.save the information.
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
  )
print("Original dataframe:")
print(exam_data)
save(exam_data,file="data.rda")
load("data.rda")
file.info("data.rda") 

###9.order entire dataframe 
data = airquality
print("Original data: Daily air quality measurements in New York, May to September 1973.")
print(class(data))
print(head(data,10))
result = data[order(data[,1]),]
print("Order the entire data frame by the first and second column:")
print(result)

summary(airquality)
                                      
data=airquality                                        
print(data)  

##10.
data(airquality)
if(is.data.frame(airquality)){
  print("airquality is a data frame.")
} else{
  print("airquality is not a data frame.")
}
airquality <- airquality[order(airquality$Month, airquality$Day),]
airquality <- airquality[, !(names(airquality) %in% c("Solar.R", "Wind"))]
print(airquality)
##11.
# Load the women dataset
data(women)
height_factor <- cut(women$height, breaks = c(55, 60, 65, 70, 75), labels = c("Short", "Medium Short", "Medium Tall", "Tall"))
print(height_factor)

##12.
# Set seed for reproducibility
set.seed(123)
my_factor <- factor(sample(LETTERS, 20, replace = TRUE))
five_levels <- levels(my_factor)[1:5]
##13.
# Load the iris dataset
data(iris)
##1)
dim(iris)
# Structure
str(iris)
#summary
summary(iris)
# Standard deviation of all features
sapply(iris[,1:4], sd)

# (ii) #mean
aggregate(iris[,1:4], by = list(Species = iris$Species), FUN = mean)
# Standard deviation
aggregate(iris[,1:4], by = list(Species = iris$Species), FUN = sd)
# (iii) Quantile value of sepal width and length
quantile(iris$Sepal.Width)
quantile(iris$Sepal.Length)/
# (iv) Create new data frame 
iris1 <- iris
iris1$Sepal.Length <- cut(iris1$Sepal.Length, breaks = quantile(iris1$Sepal.Length, probs = c(0, 0.25, 0.5, 0.75, 1)), labels = c("Q1", "Q2", "Q3", "Q4"))
head(iris1)
# (v) Average value of numerical variables 
aggregate(iris1[,1:4], by = list(Species = iris1$Species, Sepal.Length = iris1$Sepal.Length), FUN = mean)
# (vi) 
tapply(iris1[,1:4], list(Species = iris1$Species, Sepal.Length = iris1$Sepal.Length), mean)
# (vii) Create Pivot Table
library(dplyr)
library(tidyr)
iris_pivot <- iris1 %>% 
  group_by(Species, Sepal.Length) %>% 
  summarize(across(everything(), mean)) %>% 
  pivot_wider(names_from = Sepal.Length, values_from = c(Sepal.Width, Petal.Length, Petal.Width))
iris_pivot

