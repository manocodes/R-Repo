#read the first worksheet in the file
setwd("D:/git.repos/R-Repo/R-CodeRepo/DataInterfaces/excel/")
data1 <- read.xlsx("input.xlsx", sheetIndex=1)
print(data1)
data2 <- read.xlsx("input.xlsx", sheetIndex=2)
print(data2)

merged.emp = merge(x = data1 ,y=data2,
                   by.x= ("name"),
                   by.y=("name")
)

print(merged.emp)

file="output.xlsx"
#write.xlsx(merged.emp,file=file)

write.xlsx(merged.emp, file, sheetName="Sheet1", 
           col.names=TRUE, row.names=TRUE, append=FALSE)
write.xlsx(merged.emp, file, sheetName="MTCARS", 
           append=TRUE)

"http://www.sthda.com/english/wiki/r-xlsx-package-a-quick-start-guide-to-manipulate-excel-files-in-r"
#see how you can start adding row by row - good job man..