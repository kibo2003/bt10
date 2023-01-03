# Bài 11: Datasets Clothing (gói Stat2Data)
data(Clothing)
View(Clothing)

# a) Lập bảng tần số thể hiện số khách hàng có thẻ thành viên (Card = 1) và không có thẻ thành viên (Card = 0)
ClothingTV <- Clothing
table(ClothingTV$Card)


# b) Tính số tiền trung bình mà 1 khách hàng bỏ ra trong lần mua gần đây nhất với nhà máy bán lẻ này
mean(ClothingTV$Amount)


# c) Tính số tiền trung bình trong 1 lần thanh toán của 60 khách hàng này trong 12 và 24 tháng vừa qua

# Số tiền trung bình trong 12 tháng của 60 khách hàng
mean12 <- sum(ClothingTV$Dollar12)/sum(ClothingTV$Freq12)
mean12
# Số tiền trung bình trong 24 tháng của 60 khách hàng
mean24 <- sum(ClothingTV$Dollar24)/sum(ClothingTV$Freq24)
mean24


# d) Vẽ biểu đồ cột thể hiện số tiền trung bình trong 1 lần thành toán giữa các khách hàng có thẻ thành viên (Card = 1) và không có thẻ (Card = 0)
Card1 <- ClothingTV[ClothingTV$Card == 1, ]
Card0 <- ClothingTV[ClothingTV$Card == 0, ]

# Tháng 12 thẻ có
Card1_12 <- sum(Card1$Dollar12)/sum(Card1$Freq12)

# Tháng 24 thẻ có
Card1_24 <- sum(Card1$Dollar24)/sum(Card1$Freq24)

# Tháng 12 thẻ không
Card0_12 <- sum(Card0$Dollar12)/sum(Card0$Freq12)

# Tháng 24 thẻ không
Card0_24 <- sum(Card0$Dollar24)/sum(Card0$Freq24)

# Vẽ biểu đồ tương ứng
barplot(c(Mean12Card0, Mean12Card1), names.arg = c("Không", "Có"),
        main = "Số tiền trung bình trong 1 lần thanh toán tháng 12 giữa khách hàng không thẻ và có thẻ",
        xlab = "Phiếu bầu", ylab = "Số lượng phiếu")
barplot(c(Mean24Card0, Mean24Card1), names.arg = c("Không", "Có"),
        main = "Số tiền trung bình trong 1 lần thanh toán tháng 24 giữa khách hàng không thẻ và có thẻ",
        xlab = "Phiếu bầu", ylab = "Số lượng phiếu")
