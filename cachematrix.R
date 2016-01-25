## This function is aimed at created cache for matrix and 
## return its inversed one

## makeCacheMatrix gets a square matrix from input
## 'set' function is used to set a matrix to cache

makeCacheMatrix <- function(x = matrix()) {
	m <<- x
	set <- function(y = matrix) {
		x <<- y
	}
	get <- function() x
	list(set = set, get = get)
}


## cacheSolve serves to return an inverse matrix of the one
## put in by makeCacheMatrix
## If a matrix different to the initial one is set to cache by 'set' function,
## cacheSolve will return it without any action

cacheSolve <- function(x, ...) {
	if(!identical(x$get(), m)) {
		message("getting cached data")
		return(x$get())
	}
	Matrix <- x$get()
	L <- solve(Matrix)
	L
        ## Return a matrix that is the inverse of 'x'
}
