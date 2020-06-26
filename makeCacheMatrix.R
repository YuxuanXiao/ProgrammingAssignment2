makeCacheMatrix <- function(x = matrix()){
        default <- NULL
        set <- function(y){
                x <<- y
                default <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) default <<-
          inverse
        getInverse <- function() default
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}