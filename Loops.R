#this is a repeat loop
var <- 0
repeat {
  #commands
  cat("value is ", var, "\n")
  var = var +1
  if (var > 10) {
    break
  }
}

#this is a while loop
var = 0
while (var <= 10){
  cat ("value is ", var, "\n")
  var = var + 1
}
  
#for loops

let = LETTERS[1:10]
for (i in let){
  #statements and commands
  print (i)
}

#the other constants like letters are here
#LETTERS|LETTERS|MONTH.ABB|MONTH.NAME
let = month.name[1:12]
for (i in let){
  #statements and commands
  print (i)
}
