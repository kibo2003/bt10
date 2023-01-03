# Bài 6: Datasets AHCAVote2017 (gói Stat2Data)
install.packages("Stat2Data")
library(Stat2Data)
data(AHCAvote2017)
AHCAvote2017

# a) Xây dựng bảng tần số về số thành viên của quốc hội theo từng bang
dataVote <- AHCAvote2017
table(dataVote$STATE)

# b) Xây dựng bảng tần số giữa kết quả phiếu bầu đạo luật này (AHCAvote) với kết quả bầu tổng thống trước đó (Trump)
votes <- rep(
  c("AHCAvote", "Trump"),
  times = c(sum(dataVote$AHCAvote), sum(dataVote$Trump))
)
table(votes)

# c) Vẽ biểu đồ cột về số thành viên quốc hội theo Đảng Dân chủ (Democrat) và Đảng Cộng hòa (Republican)
Democrating <- sum(dataVote$Dem)
Republicaing <- sum(dataVote$Rep)
nameCity <- c("Demorat", "Republican")
barplot(c(Democrating, Republicaing), names.arg = nameCity,
        main = "Biểu đồ cột về số thành viên quốc hội theo Đảng Dân chủ (Democrat) và Đảng Cộng hòa (Republican)",
        xlab = "Thành viên Quốc hội theo Đảng",
        ylab = "Số thành viên"
)

# d) Hãy vẽ biểu đồ tán xạ giữa cột uniChange và AHCAvote
plot(dataVote$uniChange, dataVote$AHCAvote)
