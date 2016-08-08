#print the current working directory
setwd("D:/git.repos/R-Repo/R-CodeRepo/DataInterfaces")

#this read the data file into memory. this files contains a huge number of records.
data = read.csv("Chicago.csv")

#go ahead if the file format adhears to a data.frame structure
if (is.data.frame(data)){

  #lets identify the factor which will be the base for our file seperation.
  deps = factor(data$Department)
  
  #factor levels into a vector 
  test = as.character(levels(deps))
  
  #create a seperate csv file for each factor level, filter the data for that factor and write
  #data to a new file.
  for (i in test)
    {
    name = paste(as.character(i), ".csv",sep="")
    deptData = subset(data,Department==i)
    write.csv(deptData, name)
  }
  
  #this creates a summery .csv file as well.
  tabdata = table(deps)
  write.csv(tabdata, "_SUMMERY_OF_ALL_DEPARTMENTS_EMPLOYEES.csv")
  
  pie(tabdata)
  
}