corr <- function(directory, threshold = 0) {
  
  datos <- NULL
  
  for (i in 1:332) {
    
    file <- read.csv(paste(getwd(),"/",directory,"/", formatC(i, width = 3, flag = "0"),".csv", sep=""))
    file <- file[complete.cases(file),]
    observations <- nrow(file)
    if (observations>threshold) {
      datos2 <- cor(file[,2], file[,3])
      datos <- c(datos, datos2)
    }
    
  }
  return(datos)
  
}