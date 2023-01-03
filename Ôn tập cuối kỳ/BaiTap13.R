# Bài 13: Datasets Diamonds (gói Stat2Data)
library(Stat2Data)
data(Diamonds)
View(Diamonds)

# a) Tính giá trị trung bình của 1 viên kim cương 
CrystalDiamond <- Diamonds
mean(CrystalDiamond$TotalPrice)

# b) Tính giá trị trung bình của 1 carat kim cương
mean(CrystalDiamond$Carat)

# c) Vẽ biểu đồ histogram về trọng lượng của các viên kim cương
hist(CrystalDiamond$Carat, main = "Biểu đồ về trọng lượng của các viên kim cương",
     xlab = "Trọng lượng", ylab = "Số viên kim cương")

# d) Vẽ biểu đồ thể hiện tổng khối lượng kim cương theo từng màu
mauSac = c(levels(CrystalDiamond$Color))
ColorCarat <- sapply(mauSac, function(x) {
  sum(CrystalDiamond[CrystalDiamond$Color == x, ]$Carat)
})
barplot(ColorCarat, main = "Biểu đồ thể hiện tổng khối lượng kim cương theo từng màu",
        xlab = "Màu sắc", ylab = "Tổng khối lượng")

# e) Vẽ biểu đồ tán xạ giữa Depth và PricePerCt, Depth và TotalPrice
plot(CrystalDiamond$Depth, CrystalDiamond$PricePerCt,
     main = "Biểu đồ tán xạ giữa Depth và PricePerCt")
plot(CrystalDiamond$Depth, CrystalDiamond$TotalPrice,
     main = "Biểu đồ tán xạ giữa Depth và TotalPrice")
