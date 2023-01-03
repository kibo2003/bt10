# Bài 5: Datasets sleep (gói datasets)
# Tính thời gian ngủ tăng thêm trung bình của 2 nhóm
sleepExtra <- sleep
groupID <- c(levels(sleepExtra$group))

sapply(groupID, function(x){
  TBsleep = sleepExtra[sleepExtra$group == x,]
  return (mean(TBsleep$extra))
})
