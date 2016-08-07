#create a vector
# apple_colors <- c('green', 'green','red','yellow','red','yellow')
# factor_apple <- factor(apple_colors)
#
# print(factor_apple)
# print(nlevels(factor_apple))

# apple <- c('red','green','apple')
# print(apple)
# print(class(apple))
#
#create a lit
# list1 <- list(c(c(2,4,5),21.3),sin)
# print(list1)

#matrices
M = matrix(c(TRUE,FALSE,'3','test',5,6),nrow=2, ncol=3, byrow=TRUE)
print(M)
a <- array(c('1',2,3,4),dim=c(2,2))
print(a)
print(a[1,2])
BMI = data.frame(
  name=c("Mano","Nethmini","Sen","Minoli"),
  age=c(38,33,8,3),
  Citizen=c('SL','SL','SL','USA')
)

print(BMI)
# Assignment using equal operator.
var.1 = c(0,1,2,3)

# Assignment using leftward operator.
var.2 <- c("learn","R")

# Assignment using rightward operator.
c(TRUE,1) -> var.3

print(var.1)
cat ("var.1 is ", var.1 ,"\n")
cat ("var.2 is ", var.2 ,"\n")
cat ("var.3 is ", var.3 ,"\n")

print(ls())
print(ls(pattern="app"))


print(var.1)
