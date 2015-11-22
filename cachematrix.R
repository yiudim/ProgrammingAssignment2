## The following is a pair of functions where makecacheMatrix creates a special 
## vector that contains the following 4 functions.
## set - to set value of matrix
## get - to get value of matrix
## setinverse - set the inverse of the matrix
## getinverse - get the inverse of the matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y) {
		x <<- y
		i <<- NULL
	}
	get <-function() x
	setinverse <- function(solve) i <<- solve
	getinverse <- function() i
	list(set = set, get = get,
	     setinverse = setinverse,
	     getinverse = getinverse)

}


## cacheSolve returns the inverse of the matrix. If the inverse of the matrix has been 
## calculated, cacheSolvd will return the cached value. Otherwise, it will calcuate and 
## store within the special vector before before returning the inverse matrix.
##
## cacheSolve assumes all matrix passes to it are inversible.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	i <- x$getinverse()
	if(!is.null(i)) {
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	i <- solve(data, ...)
	x$setinverse(i)
	i
}
