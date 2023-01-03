# Ví dụ PTDL1:
c1 = c(1, 2, 3, 4, 3 ,2)
c2 = c(4, 5, 6, 6, 5, 4)
c3 = c(7, 8, 9, 9, 8, 7)
c4 = c(10, 9, 9, 8, 7, 6)
data1 <- data.frame(c1, c2, c3, c4)
data1 == data1$c2[1:3]

# Ví dụ PTDL2:
c1 = c(1, 2, 3, 4, 5, 6)
c2 = c(7, 8, 9, 10, 11, 12)
c3 = c(13, 14, 15, 16, 17, 18)
c4 = c(19, 20, 21, 22, 23, 24)
data2 <- data.frame(c1, c2, c3, c4)

data2$c2 < 10 & data2$c3 > 13
data2[data2$c2 < 10 & data2$c3 > 13]
