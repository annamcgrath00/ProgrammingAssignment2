## Put comments here that give an overall description of what your
## functions do
## These function produce and store an inverted matrix 'x' so the matrix does not need to be repeatedly calculated

## Write a short comment describing this function
## This sets the matrix and the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
	        set <- function(y){
		        x <<- y
		        inv <<- NULL
	        }
	get <- function() x
	setinverse <- function(inverse) inv <<- inverse
	getinverse <- funtion() inv
	list( set = set, get = get, 
		setinverse = setinverse,
		getinverse = getinverse)

}

## Write a short comment describing this function
## This checks to see if the inverse matrix is cached. if not, it will calculate it and cache it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
		if(!is.null(inv)){
			message("getting cached data")
			return(inv)
		}
		data <- x$get()
		inv <- solve(data, ...)
		x$setinverse(inv)
		inv
}
