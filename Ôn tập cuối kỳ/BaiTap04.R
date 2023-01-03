# Bài 4: Datasets iris (gói datasets)
# Tính độ dài trung bình của cánh hoa (Pedal.Length) của toàn bộ các bông hoa và theo từng loài hoa riêng biệt
Petaliris <- iris
SpeciesIris <- Petaliris$Species
spiece = c(levels(SpeciesIris))

TB = c()
for (i in (1:length(spiece))) {
  TBLength = Petaliris[Petaliris$Species == spiece[i],]
  TB = c(TB, mean(TBLength$Petal.Length))
}
data.frame(spiece, TB)

