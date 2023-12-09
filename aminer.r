args <- commandArgs(trailingOnly=TRUE)
folder_path <- args[1]
file_list <- list.files("C:/Users/jjx/assignment_idaccuracy/Aminer")
all_data <- do.call(rbind, lapply(file_list, function(file) {
  data <- read.csv('1_1Yuanbo Zhang_aminer.cnprofileyuanbo-zhang542a4624dabfae864af93d5f.csv') 
  data <- data[, c("doi", "年份", "期刊", "标题")] 
  return(data)
}))
print(all_data)
