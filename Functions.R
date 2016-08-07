#here i'm tyring to understand the use of functions and how to use functions.
new.function <- function(no1) {
  print(sum(no1,34,55))
  print(mean(no1:82))
  print(seq(no1,50))
}

new.function(10)

returnValue <- function(no1){
  value = no1^no1
  return(value)
}

no2= returnValue(5)

print(returnValue(5))