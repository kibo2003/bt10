# Bài 3: Datasets chickwts (gói datasets)
ConGa <- chickwts

# a) Tính trọng lượng trung bình và phương sai của toàn bộ 71 con gà
mean(ConGa$weight)    # Trọng lượng
var(ConGa$weight)     # Phương sai

# b) Tính trọng lượng trung bình và phương sai của các con gà theo từng nhóm ăn khác nhau
CheDoAn <- c(levels(ConGa$feed))
CheDoAn

# Đưa cân nặng vào từng nhóm ăn
GTTB = c()
PS = c()
for (i in (1:length(CheDoAn))) {
  weigthTB = ConGa[ConGa$feed == CheDoAn[i],]
  GTTB = c(GTTB, mean(weigthTB$weight))
  PS = c(PS, var(weigthTB$weight))
}
data.frame(CheDoAn, GTTB, PS)

# c) Vẽ biểu đồ cột so sánh trọng lượng trung bình của các con gà theo từng loại thức ăn khác nhau
barplot(GTTB, names.arg = CheDoAn,
        main = "Trọng lượng trung bình của các con gà theo từng loại thức ăn khác nhau",
        xlab = "Chế độ ăn", ylab = "Trọng lượng trung bình")
