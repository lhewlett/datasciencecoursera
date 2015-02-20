corr <- function(directory, threshold = 0) {
  
  mycorr <- c()

  for (i in 1:332) {
    id3 <- if (i < 10) {paste("00", i, sep ="")}
    else if (i < 100) {paste("0", i, sep="")}
    else {i}
    
    x <- read.csv(file = paste(directory , "/" , id3 , ".csv", sep = ""))
    
    good <- complete.cases(x)
    good_val <- x[good,]
    
    if(sum(good) >= threshold)
      {nitrate <- good_val["nitrate"]
       sulfate <- good_val["sulfate"]
       correlation <- cor(nitrate,sulfate)
       
       mycorr <- c(mycorr, correlation)
       
       ##if(!exists("myid")) {myid <- i}
       ##else {myid <- c(myid, i)}
       
       
      }

   
    
  }
  
print(mycorr)
  
}
