## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function:

#We catch the inverse of a matrix. First we set the 'x' as a matrix
#then the 'm' as a null. The functions then create an object that stores a matrix
#and then caches its inverse:

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

## Write a short comment describing this function:
#So this function will get the inverse of the matrix created above. If this inverse 
#has been already calculated, it will get the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  mat <- x$get()
  m <- solve(mat,...)
  x$setInverse(m)
  m
}
