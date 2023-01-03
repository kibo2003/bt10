# Bài 12: Datasets CloudSeeding2 (gói Stat2Data)
data("CloudSeeding2")
View(CloudSeeding2)

# a) Tính lượng mưa trung bình tại các khu vực trên khi Seeded = U
Cloud2Seed <- CloudSeeding2
mean(Cloud2Seed[Cloud2Seed$Seeded == "U", ]$TE)
mean(Cloud2Seed[Cloud2Seed$Seeded == "U", ]$TW)
mean(Cloud2Seed[Cloud2Seed$Seeded == "U", ]$NC)
mean(Cloud2Seed[Cloud2Seed$Seeded == "U", ]$SC)
mean(Cloud2Seed[Cloud2Seed$Seeded == "U", ]$NWC)
# So sánh kết quả khi Seeded = U:
# + Tại khu vực NWC có lượng mưa nhiều nhất
# + Tại khu vực SC có lượng mưa ít nhất


# b) Tính lượng mưa trung bình tại các khu vực trên theo mùa khi Seeded = U
Cloud2U <- Cloud2Seed[Cloud2Seed$Seeded == "U",]
mua = c(levels(Cloud2Seed$Season))

# Khu vực TE
meanRainTE <- sapply(mua, function(x) {
  mean(Cloud2U[Cloud2U$Season == x, ]$TE)
  })
meanRainTE

# Khu vực TW
meanRainTW <- sapply(mua, function(x) {
  mean(Cloud2U[Cloud2U$Season == x, ]$TW)
})
meanRainTW

# Khu vực NC
meanRainNC <- sapply(mua, function(x) {
  mean(Cloud2U[Cloud2U$Season == x, ]$NC)
})
meanRainNC

# Khu vực SC
meanRainSC <- sapply(mua, function(x) {
  mean(Cloud2U[Cloud2U$Season == x, ]$SC)
})
meanRainSC

# Khu vực NWC
meanRainNWC <- sapply(mua, function(x) {
  mean(Cloud2U[Cloud2U$Season == x, ]$NWC)
})
meanRainNWC


# c) Tính lượng mưa tại các khu vực TE và TW khi Seeded = S
Cloud2S <- Cloud2Seed[Cloud2Seed$Seeded == "S",]
RainTE <- sum(Cloud2S$TE)
RainTE
RainTW <- sum(Cloud2S$TW)
RainTW


# d) Tính lượng mưa tại các khu vực TE và TW theo mùa khi Seeded = S

# Lượng mưa tại TE 
RaintTE <- sapply(mua, function(x) {
  sum(Cloud2S[Cloud2S$Season == x,]$TE)
})
RaintTE

# Lượng mưa tại TW
RaintTW <- sapply(mua, function(x) {
  sum(Cloud2S[Cloud2S$Season == x,]$TW)
})
RaintTW
