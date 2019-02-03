## Put comments here that give an overall description of what your
## functions do

## This fun will create a matrix obj that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function(y) {
            x <<- y
            inverse <<- NULL
        }
        get <- function() x
        setinverse <- function(inv) inverse <<- inv
        getinverse <- function() inverse
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
    
    
    
}


## This fun computes inverse of matrix 
##if inverse has already been calculated,then cached value will be retrieved
##

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getinverse()
        if(!is.null(inverse)) {
            message("getting cached data")
            return(inverse)
        }
        data <- x$get()
        inverse <- solve(data, ...)
        x$setinverse(inverse)
        inverse
    
    
    
}
