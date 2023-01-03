# Bài 1: Datasets AirPassengers (gói datasets)
# a) Vẽ biểu đồ thể hiện số hành khách đi máy bay trong tháng 1

# Tải gói datasets
install.packages("datasets")
library(datasets)

# Chuyển về dạng ma trận
matData <- matrix(AirPassengers, nrow = 12, byrow = TRUE)
matData

# Vẽ biểu đồ cột
year = c(1949:1960)
barplot(matData[,1], names.arg = year, main = "Biểu đồ cột thể hiện số hành khách đi máy bay trong tháng 1",
        xlab = "Năm", ylab = "Số hành khách")


# b) Vẽ biểu đồ cột thể hiện số hành khách đi máy bay trong từng năm
AllYear <- rowSums(matData)
barplot(AllYear, names.arg = year, main = "Biểu đồ cột thể hiện số hành khách đi máy bay trong từng năm",
        xlab = "Năm", ylab = "Số hành khách")


# c) Tính số hành khách trung bình đi máy bay hàng tháng trong 1 năm
Allyear <- rowMeans(matData)
data.frame(year, Allyear)


# d) Tính số hành khách trung bình đi máy bay từng tháng trong năm
month <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
Allmonth <- colMeans(matData)
data.frame(month, Allmonth)
