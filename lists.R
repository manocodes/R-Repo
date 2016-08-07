#list functions;
list_data = list("red","green", 10, 20, TRUE, -1)
print(list_data)

list_data = list(c(10,20,20),list("Mano","Sen"),matrix(c("name","Age",10,20),nrow=2))
names(list_data) = c("numbers","names","matrix")

print(list_data)

# Create lists.
list1 <- list(1:5)
print(list1)

list2 <-list(10:14)
print(list2)

# # Convert the lists to vectors.
v1 <- unlist(list1)
v2 <- unlist(list2)
# 
print(v1)
print(v2)
# 
# # Now add the vectors
result <- v1+v2
print(result)