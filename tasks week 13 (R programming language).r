# 1. Write an R program to create three vectors a, b, c with 5 integers. Combine the three vectors to become a 3×5 matrix where each column represents a vector. Print the content of the matrix. Plot a graph and label correctly.

a <- c(1L, 2L, 3L, 4L, 5L)
b <- c(6L, 7L, 8L, 9L, 10L)
c <- c(11L, 12L, 13L, 14L, 15L)

c(a, b, c)

# creating matrix
m <- matrix(c(a, b, c), ncol = 3)

# print matrix
print(m)

matplot(t(m),
        type = "l",
        lwd = 2,
        main="Plotting the Rows of a Matrix",
        ylab="Value")

# 2. Write a R program to create a Data frames which contain details of 5 employees and display the details. (Name, Age, Role and Length of service).

# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  age = c(20,25,30,35,40),
  role = c("engineer", "marketing executive", "CEO", "COO", "CFO"),
  years_of_service = (c(2, 3, 7, 5, 4)),
  stringsAsFactors = FALSE
)
# Print the data frame.			
print(emp.data) 

# 3. Import the GGPLOT 2 library and plot a graph using the qplot function. X axis is the sequence of 1:20 and the y axis is the x ^ 2. Label the graph appropriately. install.packages("ggplot2", dependencies = TRUE)

# Import Libraries
library(ggplot2)


graph.data <- data.frame(
  x = c(1:20), 
  y = x^2,
)



# 4. Create a simple bar plot of five subjects

marks = c(70, 95, 80, 74)
barplot(marks,
        main = "Comparing marks of 5 subjects",
        xlab = "Marks",
        ylab = "Subject",
        names.arg = c("English", "Science", "Math.", "Hist."),
        col = "darkred",
        horiz = FALSE)
# 5. Write a R program to take input from the user (name and age) and display the values.

name = readline(prompt="Input your name: ")
age =  readline(prompt="Input your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))
print(R.version.string)


# 6. Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 20 to 50 and sum of numbers.

print("Sequence of numbers from 20 to 50:")
print(seq(20,50))
print("Mean of numbers from 20 to 60:")
print(mean(20:60))
print("Sum of numbers from 51 to 91:")
print(sum(51:91))

# 7. Write a R program to create a vector which contains 10 random integer values between -50 and +50

x = sample(-50:50, 10)
print(x)

