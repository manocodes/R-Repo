"A data frame is a table or a two-dimensional array-like structure in which each column contains 
values of one variable and each row contains one set of values from each column."

#lets create a data frame
emp.data = data.frame(
  emp.id = c(1:5),
  emp.name = c("Rick","Sen","Jim","Sam","Monty"),
  salary = c(100,96,106, 145, 69),
  start_date=as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                       "2015-03-27")),
  dept = c("IT","Finance","management","security","IT"),
  stringsAsFactors = FALSE
)

#adding two more rows
emp.data2 = data.frame(
  emp.id = c(1:2),
  emp.address = c("highlands Ranch","englewood"),
  company = c(1,2),
  stringsAsFactors = FALSE
)

# emp.finaldata <-rbind(emp.data,emp.data2)
# print(emp.finaldata)

merged.emp = merge(x = emp.data,y=emp.data2,
                   by.x= ("emp.id"),
                   by.y=("emp.id")
                   )

print(merged.emp)

#now lets look at whats melting and casting.
library(MASS)
library(reshape)

print(ships)

molten.ships <- melt(ships, id = c("type","year"))
print(molten.ships)

recasted.ship = cast(molten.ships,type+year~variable,sum)
print(recasted.ship)




