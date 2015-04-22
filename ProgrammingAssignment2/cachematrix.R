## the function makeCacheMatrix creates an invertible matrix called matrix_A that
## can cache its inverse so the inverse does not need to be calculated repeatedly

makeCacheMatrix <- function(x = matrix()) {
    matrix_A <- NULL
    set <- function(y) {
        x <<- y
        matrix_A <<- NULL
    }
    get <- function() x
    setinverse<- function(solve) matrix_A <<-solve
    getinverse <- function() matrix_A
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}

## the function cacheSolve checks if the inverse of matrix_A has been calculated.
## if yes, the inverse will be retrived from the cache, and no additional calculations
## are needed. if the inverse of matrix_A has not been calculated, the function will 
## calculate the inverse with the solve function in R, and set the inverse in the cache 
## the setinverse function

cacheSolve <- function(x, ...) {
    matrix_A <- x$getinverse()
    if (!is.null(matrix_A)) {
        message("getting cached matrix_A inverse")
        return(matrix_A)
        } 
        inverse_A <- x$get()
        matrix_A <- solve(inverse_A, ...)
        x$setinverse(matrix_A)
        matrix_A
}
