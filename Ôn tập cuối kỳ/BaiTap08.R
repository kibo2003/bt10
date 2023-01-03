# Bài 8: Datasets BlueJays (gói Stat2Data)
library(Stat2Data)
data(BlueJays)
View(BlueJays)

# a) Có bao nhiêu con chim đực, chim cái trong mẫu dữ liệu trên
JayBlue <- BlueJays
table(JayBlue$KnownSex)

# b) Tính trung bình và độ lệch chuẩn các thông số của các loài chim trên:
# (BillDepth, BillWidth, BillLength, Head, Mass, Skull)

# BillDepth
mean(JayBlue$BillDepth)
var(JayBlue$BillDepth)

# BillWidth
mean(JayBlue$BillWidth)
var(JayBlue$BillWidth)

# BillLength
mean(JayBlue$BillLength)
var(JayBlue$BillLength)

# Head
mean(JayBlue$Head)
var(JayBlue$BillLength)

# Mass
mean(JayBlue$Mass)
var(JayBlue$Mass)

# Skull
mean(JayBlue$Skull)
var(JayBlue$Skull)

# c) Vẽ biểu đồ histogram về trọng lượng các loài chim trên
hist(JayBlue$Mass)

# d) Vẽ biểu đồ tán xạ giữa BillWidth và BillLength
plot(JayBlue$BillWidth, JayBlue$BillLength,
     main = "Biểu đồ tán xạ giữa BillWidth và BillLength")
