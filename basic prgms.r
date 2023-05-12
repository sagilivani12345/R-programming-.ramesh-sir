### r prgm to display the values.##
name = "pavani"
age =  18
print(paste("My name is",name, "and I am",age ,"years old."))


### to print the details of the object
name = "pavani"; 
n1 =  10; 
n2 =  0.5  
nums = c(10, 20, 30, 40, 50, 60)
print(ls())
print("Details of the objects in memory:")
print(ls.str())

##  m  of numbers from 51 to 91
sum=0
for(i in 51:91)
{.
  sum=sum+i
}
print(sum)
##.write a R program to create a vector which contains 10 random integer values
##between -50 and +50.
v = sample(-50:50, 10, replace=TRUE)
print("Content of the vector:")
print("10 random integer values between -50 and +50:")
print(v)
#
###5. Write a R program to get the first 10 Fibonacci numbers.
Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print("First 10 Fibonacci numbers:")
print(Fibonacci)

### prime numbers in given range
prime_numbers <- function(n) {
  if (n >= 2) {
    x = seq(2, n)
    prime_nums = c()
    for (i in seq(2, n)) {
      if (any(x == i)) {
        prime_nums = c(prime_nums, i)
        x = c(x[(x %% i) != 0], i)
      }
    }
    return(prime_nums)
  }
  else 
  {
    stop("Input number should be at least 2.")
  }
} 
prime_numbers(12)


### check prime number
num = 5
flag = 0
# prime numbers are greater than 1
if(num > 1) {
  # check for factors
  flag = 1
  for(i in 2:(num-1)) {
    if ((num %% i) == 0) {
      flag = 0
      break
    }
  }
} 
if(num == 2)    flag = 1
if(flag == 1) {
  print(paste(num,"is a prime number"))
} else {
  print(paste(num,"is not a prime number"))
}

## factors of number
print_factors <- function(x) {
  print(paste("The factors of",9,"are:"))
  for(i in 1:x) {
    if((x %% i) == 0) {
      print(i)
    }
  }
}

##max min num of vector
nums = c(10, 20, 30, 40, 50, 60)
print('Original vector:')
print(nums)   
print(paste("Maximum value of the said vector:",max(nums)))
print(paste("Minimum value of the said vector:",min(nums)))

##unique  from string
str1 = "The quick brown fox jumps over the lazy dog."
print("Original vector(string)")
print(str1)
print("Unique elements of the said vector:")
print(unique(tolower(str1)))

##unique number from vector
nums = c(1, 2, 2, 3, 4, 4, 5, 6)
print("Original vector(number)")
print(nums)
print("Unique elements of the said vector:")
print(unique(nums))

##to combine the vectors to matrix
a<-c(1,2,3)
b<-c(4,5,6)
c<-c(7,8,9)
m<-cbind(a,b,c)
print("Content of the said matrix:")
print(m)

##15. Write a R program to create three vectors numeric.
a = c(1, 2, 5, 3, 4, 0, -1, -3)
b = c("Red", "Green", "White")
c = c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)
print(a)
print(typeof(a))
print(b)
print(typeof(b))
print(c)
print(typeof(c))

###5*4,3*3, matrixx
m1 = matrix(1:20, nrow=5, ncol=4)
print("5 × 4 matrix:")
print(m1)
cells = c(1,3,5,7,8,9,11,12,14)
rnames = c("Row1", "Row2", "Row3")
cnames = c("Col1", "Col2", "Col3")
m2 = matrix(cells, nrow=3, ncol=3, byrow=TRUE, dimnames=list(rnames, cnames))
print("3 × 3 matrix with labels, filled by rows: ")
print(m2)
print("3 × 3 matrix with labels, filled by columns: ")
m3 = matrix(cells, nrow=3, ncol=3, byrow=FALSE, dimnames=list(rnames, cnames))
print(m3)

##empty plot
#print("Empty plot:")
plot.new()
#print("Empty plot specify the axes limits of the graphic:")
plot(1, type="n", xlab="", ylab="", xlim=c(0, 20), ylim=c(0, 20))

