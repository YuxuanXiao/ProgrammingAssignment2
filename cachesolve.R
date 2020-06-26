cachesolve <- function(x, ...){
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