## create an invertible matrix called matrix_A that can cache its inverse 
makeCacheMatrix <- function(x = matrix()) {
    matrix_A <- NULL
    set <- function(y) {
        x <<- y
        matrix_A <<- NULL
    }

## calculate and cache the inverse of matrix_A
    get <- function() x
    setinverse<- function(solve) matrix_A <<-solve
    getinverse <- function() matrix_A
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}

## check if the inverse of matrix_A has been calculated and is in the cache
cacheSolve <- function(x, ...) {
    matrix_A <- x$getinverse()

## if yes, retrive matrix_A's inverse from cache
    if (!is.null(matrix_A)) {
        message("getting cached matrix_A inverse")
        return(matrix_A)
        } 

## otherwise, calculate the inverse of matrix_A
        inverse_A <- x$get()
        matrix_A <- solve(inverse_A, ...)
        x$setinverse(matrix_A)
        matrix_A
}
