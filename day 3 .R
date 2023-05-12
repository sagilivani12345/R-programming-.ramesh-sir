##vector
vector<-c(12,7,3,4.2,18,2,54,-21,8,-5)
result<-mean(vector)
print(result)

# vector 
vector<- c(12,7,3,4.2,18,2,54,-21,8,-5)
# find middle number 
result <- median(vector)
print(result)

vector <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
# define mode() function
mode = function() {  
  return(names(sort(-table(vector)))[1])
}
mode()

 # Create the vector with numbers.
  
 # Calculate the mode using the user function.
 result <- getmode(v)
 print(result)
 # Create the vector with characters.
   charv  
 # Calculate the mode using the user function.
   result get mode(charv)
print(result)
#5
library(dplyr) data(mpg)
# find the standard deviation of city miles per gallon sd_city_mpg <- sd(mpg$cty, na.rm = TRUE) sd_city_mpg
# find the variance of highway miles per gallon
var_highway_mpg var(mpg$hwy,na.rm =TRUE) var_highway_mpg
#6
library(dplyr) data(mpg)
# query i: find the range of the disp column 
disp_range range(mpg$displ, na.rm = TRUE) disp_range
# query ii: find the quartiles of the disp column 
disp_quartiles <- quantile(mpg$displ, probs = c(().25, 0.5, 0.75), na.rm - —TRUE) disp_quartiles
# query iii: find the IQR of the disp column
disp_iqr <- IQR(mpg$dispI, na.rm =TRUE) disp_iqr

#7
# load the mpg dataset library(dplyr) data(mpg)
# query a: find the skewness of city miles per gallon 
skew_city_mpg <- skewness(mpg$cty, na.rm = TRUE)
skew_city_mpg
# plot a histogram of city miles per gallon
library(ggpIot2) qplot(mpg$cty, geom = "histogram", binwidth = 2) + labs(x = "City miles per gallon", y = "Frequency")
# query b: find the kurtosis of city miles per gallon
kurt_city_mpg <- kurtosis(mpg$cty, na.rm = TRUE) 
kurt_city_mpg
