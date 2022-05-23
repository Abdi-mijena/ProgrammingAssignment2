## Below are two functions  used to create special matrix and
## cache the inverse of the matrix

## This makeCacheMatrix function special matrix

makeCacheMatrix <- function(x = matrix()) {
        mat <- NULL
        set <- function(newMatrix) {
                x <<- newMatrix
                mat <<- NULL
        }
        get <- function() x
        setInverse <- function(inv) mat <<- inv
        getInverse <- function() mat
        list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## This cacheSolve function used to find inverse sepacial matrix
## created by above function

cacheSolve <- function(x, ...) {
        iv <- x$getInverse()
        if(!is.null(iv)){
                return(m)
        }
        data <- x$get()
        iv <- solve(data, ...)
        x$setInverse(iv)
        iv
}
