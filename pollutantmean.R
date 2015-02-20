pollutantmean <- function(directory, pollutant, id = 1:332) {
  	
	for (i in id) {
		id3 <- if (i < 10) {paste("00", i, sep ="")}
				else if (i < 100) {paste("0", i, sep="")}
				else {i}
		
		x <- read.csv(file = paste(directory , "/" , id3 , ".csv", sep = ""))
		if(!exists("mydata")) {mydata <- x}
		else {mydata <- rbind(mydata, x)}
		}
			
		myarray <- mydata[pollutant]
		bad <- is.na(myarray)
		good <- myarray[!bad]
		mean(good)
}
