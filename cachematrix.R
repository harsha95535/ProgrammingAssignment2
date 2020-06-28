## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" , which is really  a list containing a function to set the value of matrix, get the value of matrix, set the value of inverse, get the value of inverse
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
  set <- function(y) {
          x <<- y
          i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse is already calculated(and the matrix has not changed), then cacheSolve should retrieve the inverse from cache 
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
 i <- x$getinverse()
  if (!is.null(i)) {
          message("getting cached data")
          return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
