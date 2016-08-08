#read the first worksheet in the file
setwd("D:/git.repos/R-Repo/R-CodeRepo/DataInterfaces/binary/")

# Create a connection object to read the file in binary mode using "rb".
read.filename <- file("bootstat.dat", "rb")

# First read the column names. n = 3 as we have 3 columns.
column.names <- readBin(read.filename, character(),  n=2)

# Next read the column values. n = 18 as we have 3 column names and 15 values.
read.filename <- file("bootstat.dat", "rb")
bindata <- readBin(read.filename, integer(), n=100)

# Print the data.
print(bindata)
print(column.names)

# Read the values from 4th byte to 8th byte which represents "cyl".
cyldata = bindata[1:25]
print(cyldata)

# Read the values form 9th byte to 13th byte which represents "am".
amdata = bindata[26:50]
print(amdata)


# Combine all the read values to a dat frame.
finaldata = cbind(cyldata, amdata)
colnames(finaldata) = column.names
print(finaldata)