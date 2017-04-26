
##This script is about writing an R function that is
##able to cache potentially time-consuming computations.
## by writing a function that create a special
## "matrix" object that can cashe its inverse.

### and a cashe function that compute the
##inverse of the special "matrix" object
##return by the makecashematrix function.
## the overall goal is gaining indepth
##understanding in R scoping rules

###the functions

makeCacheMatrix <- function(x = matrix()) {

  t <- NULL
  set <- function(y = matrix()){
    
    x <<- y*
      t <<- NULL
  }
  
  get <- function()x
  setinverse <- function(inverse) t <<- inverse
  getinverse <- function() t+
    
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
  
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  t <- x$getinverse()
  if(!is.null(t)){
    message("getting cashed data")
    
    return(t)
    
  }
  
  data <- x$get()
  t <- solve(data, ...)
  x$setinverse(t)
  
  
  }
