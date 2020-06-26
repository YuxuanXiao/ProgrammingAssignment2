## These functions create a "matrix" object that can compute and cache its inverse

## A function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
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


## A function computes and cache the inverse of the special "matrix"

cacheSolve <- function(x, ...) {
        default <- x$getInverse()
        if(!is.null(default)){
                message("getting cached data")
                return(default)
        }
        data <- x$get()
        default <- solve(data, ...)
        x$setInverse(default)
        default
}
