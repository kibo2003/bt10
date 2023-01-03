# Bài 7: Datasets BirdNest (gói Stat2Data)
data(BirdNest)
View(BirdNest)

# a) Xây dựng bảng tần số về số loài chim theo từng loại tổ (Nesttype)
dataBird <- BirdNest
NestType <- c(levels(dataBird$Nesttype))
NestType

sapply(NestType, function(x) {
  sum(dataBird$Nesttype == x)
})

# b) Loài chim nào có chiều dài trung bình lớn nhất, nhỏ nhất
lengthMax = which(dataBird$Length == max(dataBird$Length))
dataBird$Common[lengthMax]

lengthMin = which(dataBird$Length == min(dataBird$Length))
dataBird$Common[lengthMin]

# Cách 2: dataBird$Common[which.max(dataBird$Length)]
# Cách 2: dataBird$Common[which.min(dataBird$Length)]

# c) Vẽ biểu đồ thể hiện vị trí làm tổ của các loài chim
localBird <- table(dataBird$Location)
barplot(localBird, main = "Biểu đồ thể hiện vị trí làm tổ các loài chim",
        xlab = "Các loài chim", ylab = "Số lượng")

# d) Tính thời gian trung bình các loài chim này chăm sóc chim non trong tổ
mean(dataBird$Nestling)
