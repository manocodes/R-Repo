library(MASS)
print("Pima.te data set")
print(Pima.te[1:5,])

print("Pima.tr data set")
print(Pima.tr[1:5,])

print("Pima.tr2 data set")
print(Pima.tr2[1:5,])

merged.pima = merge(x=Pima.te, y=Pima.tr,
                    by.x = c("bp","bmi"),
                    by.y = c("bp","bmi")
                    )

print(merged.pima)
nrow(merged.pima)