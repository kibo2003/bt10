# Bài 9: Datasets BritishUnions (gói Stat2Data)
data(BritishUnions)
View(BritishUnions)

# a) Vẽ biểu đồ thể hiện tỷ lệ thất nghiệp theo thời gian
UnionsBritish <- BritishUnions
day <- c(levels(UnionsBritish$Date))
barplot(UnionsBritish$Unemployment, names.arg = day,
     main = "Biểu đồ cột thể hiện tỷ lệ thất nghiệp theo thời gian",
     xlab = "Thời gian", ylab = "Tỷ lệ thất nghiệp")

# b) Vẽ biểu đồ tán xạ giữa các thuộc tính AgreePct, DisagreePct, NetSupport, Unemployment
plot(UnionsBritish$AgreePct, UnionsBritish$Unemployment,
     main = "Biểu đồ tán xạ giữa AgreePct với Unemployment")
plot(UnionsBritish$DisagreePct, UnionsBritish$Unemployment,
     main = "Biểu đồ tán xạ giữa DisagreePct với Unemployment")
plot(UnionsBritish$NetSupport, UnionsBritish$Unemployment,
     main = "Biểu đồ tán xạ giữa NetSupport với Unemployment")
