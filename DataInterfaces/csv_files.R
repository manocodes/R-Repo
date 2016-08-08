#print the current working directory
setwd("D:/git.repos/R-Repo/R-CodeRepo/DataInterfaces")

#print(getOption("max.print"))
#options(max.print=999999)

data = read.csv("Chicago.csv")
#print(data)

if (is.data.frame(data)){
  #print(ncol(data))
  #print(nrow(data))

   sal = max((data$Salary))
   cat("Max salary is" , sal , "\n")
  
  #  highestearner = subset(data, Salary == max(Salary))
  #  print(highestearner)
  # 
  # lowearner = subset(data, Salary == min(Salary))
  #  print(lowearner)
  # 
  # police = subset(data,Department=="BUDGET & MGMT")
  # print(police)
  # 
  # write.csv(police,"police.csv")
  # 
  # info <- subset(data, Salary < 100000 & Department == "BUDGET & MGMT")
  # print(info)

  deps = factor(data$Department)
  #print(deps)
  
  tabdata = table(deps)
  
  
  test = as.character(levels(deps))
  
  
  write.csv(tabdata, "temp.csv")
}


