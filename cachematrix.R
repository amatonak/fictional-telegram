## Functions makeCacheMatrix and cacheSolve take x an invertible
## matrix and caches the matrix, the environment of its creation,
## the inverse, and the environment of the inverses creation.

## Caches the matrix and the inverse.

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}

## Solves the cached matrix or recalls the cached inverse.

cacheSolve <- function(x, ...) {
        s <- x$getsolve()
        if(!is.null(s)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setsolve(s)
        s
        ## Return a matrix that is the inverse of 'x'
}
