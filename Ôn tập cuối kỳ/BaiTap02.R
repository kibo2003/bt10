# Bài 2: Datasets ChickWeight (gói datasets)
MatrixGa <- ChickWeight

# a) Vẽ biểu đồ cột so sánh số gà được thử nghiệm trong từng chế độ ăn
dietNumber <- c(levels(MatrixGa$Diet))    # Các chế độ ăn
chick_list <- MatrixGa[MatrixGa$Time == 0, ]  # Gà thử nghiệm

dietValue <- c()   # Số gà theo từng chế độ ăn
for (i in (1:4)) {
  dietValue = c(dietValue, sum(chick_list$Diet == i))
}

barplot(dietValue, names.arg = dietNumber,
        main = "Biểu đồ cột so sánh số gà thử nghiệm trong từng chế độ ăn",
        xlab = "Chế độ ăn", ylab = "Số lượng gà")


# b) Vẽ biểu đồ Histogram về trọng lượng của các con gà khi mới sinh (ngày thứ 0)
chick_list <- MatrixGa[MatrixGa$Time == 0, ]  # Gà mới sinh
chick_list
hist(chick_list$weight)


# c) Vẽ biểu đồ đường thể hiện quá trình trọng lượng của con gà thứ 42 theo thời gian
chick42 <- MatrixGa[MatrixGa$Chick == 42,]
plot(chick42$weight, type = "l")


# d) Tính trọng lượng trung bình và độ lệch chuẩn của các con gà vào ngày thứ 21 theo từng chế độ ăn khác nhau
day21 <- MatrixGa[MatrixGa$Chick == 21,]
day21
sapply(1:4, function(x) {
  diet <- day21[day21$Diet == x,]
  print(mean(diet$weight))
  print(var(diet$weight))
}) 
