## Caching the inverse of matrix
## To Caching the inverse of matrix I'm using a pair of functions i.e., makeCacheMatrix and cacheSolve

## makeCacheMatrix : this function is used to create a special "matrix"

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## cacheSolve : this function used to get the inverse of the special "matrix" which is returned by makeCacheMatrix.
## If the inverse of matrix has been already calculated the cacheSolve should retrieve the inverse from cache.  

cacheSolve <- function(x, ...) {      
        i <- x$getinverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i

        }

        ## Return a matrix that is the inverse of 'x'
}
