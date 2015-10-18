## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

   ##function will set or get value of the matrix
   ##function will set or get value of inverse matrix 
   ##just like the makeVector code example with few changes (inverse instead of mean)
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
  list(set = set, get = get, setInverse = setInverse,getInverse = getInverse)
}


## Write a short comment describing this function
   ##function will calculate inverse matrix
   ##set inverse
   ##get inverse value from cache

cacheSolve <- function(x, ...) {
  m <- x$getInverse()
  
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
}
