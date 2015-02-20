complete <- function(directory, id = 1:332) {
  for (i in id) {
    id3 <- if (i < 10) {paste("00", i, sep ="")}
    else if (i < 100) {paste("0", i, sep="")}
    else {i}
    
    x <- read.csv(file = paste(directory , "/" , id3 , ".csv", sep = ""))
    
    good <- sum(complete.cases(x))
    
    if(!exists("mydata")) {mydata <- good}
    else {mydata <- c(mydata, good)}
  }
  
  y <- data.frame(id, nobs = mydata)
  y
}

