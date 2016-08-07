"Matrices are the R objects in which the elements are arranged in a two-dimensional 
rectangular layout. They contain elements of the same atomic types. 
Though we can create a matrix containing only characters or only logical values, 
they are not of much use. We use matrices containing numeric elements to be used 
in mathematical calculations."
#A Matrix is created using the matrix() function."

matta = matrix(c(10,20,30,40,50,60))
print(matta)

matta = matrix(c(10,20,30,40,50,60),nrow=2,byrow=FALSE,dimnames=list(c("1","2"),c("A","B","C")))
print(matta)

"and i thought of doinf factors the same way here, kinda impatient"
#Create a vector as input
data <- c("east", "north", "west", "south","south","north","west","east")
print(data)
print(is.factor(data))

factor_data = factor(data)
print(factor_data)
print(is.factor(factor_data))

# Create the vectors for data frame.
height <- c(132,151,162,139,166,147,122)
weight <- c(48,49,66,53,67,52,40)
gender <- c("male","male","female","female","male","female","male")

input <- data.frame(height, weight, gender)
print(input)

# Test if the gender column is a factor.
print(is.factor(input$gender))

# Print the gender column so see the levels.
print(input$gender)

factor_date <- factor(input$gender)
new_order <- factor(factor_date,levels = c("male","female"))
print(new_order)