complete <- function(directory, id = 1:332) {

  datos <- data.frame()
    
    for (i in id) {
        
      file <- read.csv(paste(getwd(),"/",directory,"/", formatC(i, width = 3, flag = "0"),".csv", sep=""))
      observations <- nrow(file[complete.cases(file),])
      datos2 <- data.frame(id=i, nobs=observations)
      datos <- rbind(datos, datos2)
        
    }
    return(datos)
}