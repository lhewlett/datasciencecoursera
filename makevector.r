makeVector <- function(x = numeric()) {

  set <- function(y) {
                x <<- y
                m <<- NULL
               
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}