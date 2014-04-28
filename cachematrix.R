## Put comments here that give an overall description of what your
## functions do

## Creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        z <- NULL
        set <- function(y){
                x <<- y
                z <<- NULL
        }
        get <- function() x
        matinverse <- function(inverse) z <<- inverse
        getinversematrix <- function() z
        list(set= set, get = get,
             matinverse = matinverse,
             getinversematrix = getinversematrix)

}



## Computes the inverse of the matrix. If the inverse has already been calculated (and the 
## matrix has not changed), then the cachesolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        z <- x$getinversematrix()
        if (!is.null(z)){
                message("getting cached data")
                return(z)
        }
        data <- x$get()
        z <- solve(data, ...)
        x$matinverse(k)
        z
}
