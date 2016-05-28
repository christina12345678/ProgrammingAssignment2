## makeCacheMatrix is a function that returns a list of functions
## It can store the martix and the cached value of the inverse of the matrix.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  #initialize the inverse
  inv<-NULL
  #store the matrix
  setMatrix<-function(newVariable){
    x<<- newVariable
    inv<<-NULL
  }
  #returns the stored matrix
  getMatrix<-function() 
    x
  #cache the given argument
  setInverse<-function(inverse) 
    inv<<-inverse
  #get the cache value
  getInverse<-function() 
    inv
  # return a list containing these elements
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}
## Write a short comment describing this function

cacheSolve <- function(y, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv<-y$getInverse()
  # Return the cached value if it exists
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  #Otherwise get thr matrix and store its computed inverse
  mat<-y$getMatrix()
  inv<-solve(mat,...)
  y$setInverse(inv)
  inv
}



