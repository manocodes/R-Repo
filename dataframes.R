"A data frame is a table or a two-dimensional array-like structure in which each column contains 
values of one variable and each row contains one set of values from each column."

#lets create a data frame
emp.data = data.frame(
  emp.id = c(1:5),
  emp.name = c("Rick","Sen","Jim","Sam","Monty"),
  salary = c(100,96,106, 145, 69),
  start_date=as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                       "2015-03-27")),
  stringsAsFactors = FALSE
)

print(emp.data)

#structure of the data
str(emp.data)

#lets get the summery, mean, meadian, min, max
print(summary(emp.data))

#now lets get a few columns
result= data.frame(emp.data$emp.id,emp.data$start_date)
print(result)

result = emp.data[c(1,2),c(2,3)]
print(result)

#lets add a column to the original data set
emp.data$dept <- c("IT","Finance","management","security","IT")
print(emp.data)

#adding two more rows
emp.data2 = data.frame(
  emp.id = c(6:7),
  emp.name = c("Buta","Kota"),
  salary = c(200,96),
  start_date=as.Date(c("2012-01-01", "2013-09-23")),
  dept = c("kitchn","IT"),
  stringsAsFactors = FALSE
)

emp.finaldata <-rbind(emp.data,emp.data2)
print(emp.finaldata)


