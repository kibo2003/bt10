# Bài 10: Datasets CAFE (gói Stat2Data)
install.packages("Stat2Data")
library(Stat2Data)
data("CAFE")
View(CAFE)

# a) Thống kê số thành viên ở Thượng viện theo từng bang
ThuongVien <- CAFE
table(ThuongVien$State)

# b) Điều luật trên có được thông qua không?
Vote1 <- length(ThuongVien[ThuongVien$Vote == 1,]$Vote)
Vote0 <- length(ThuongVien[ThuongVien$Vote == 0,]$Vote)
Vote1 > Vote0

# c) Vẽ biểu đồ cột thể hiện kết quả bỏ phiếu theo từng Đảng (Đảng Dân Chủ/Đảng Cộng Hòa)
DangDanChu <- sum(ThuongVien[ThuongVien$Party == "D", ]$Vote)
DangCongHoa <- sum(ThuongVien[ThuongVien$Party == "R", ]$Vote)
DangXH <- c("Đảng Dân Chủ", "Đảng Cộng Hòa")

barplot(c(DangCongHoa, DangDanChu), names.arg = DangXH,
        main = "Kết quả bỏ phiếu theo từng Đảng",
        xlab = "Đảng", ylab = "Số phiếu")

# d) Vẽ biểu đồ hộp thể hiện mức đóng góp cho ngành công nghiệp ô tô với những thành viên không thông qua dự luật trên
Contrinutionist <- sum(ThuongVien[ThuongVien$Vote == 0,]$Contribution)
boxplot(Contrinutionist, main = "Biểu đồ hộp thể hiện mức đóng góp cho ngành công nghiệp ô tô với những thành viên không thông qua dự luật trên")
