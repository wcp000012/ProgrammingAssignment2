## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This Function create a special matrix that can save ist inversive matrix

makeCacheMatrix <- function(x = matrix()) {
  xp<-NULL
  set <- function(y){
    x<<-y
    xp<<-NULL
  }
  get <- function() x
  setinverse <- function(inver) xp <<- inver
  getinverse <- function() xp
  
  list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function
##This Function will check if the inverse Matrix has already been calculated.
##If so, it will get the inverse Matrax directly without re-calculating.
## Otherwise, it will calculate the inverse and save it using setinverse. 
cacheSolve <- function(x, ...) {
  xp <- x$getinverse()
  if(!is.null(xp)){
    message("Getting inverse matrix")
    return(xp)
  }
  M <- x$get()
  xp <- solve(M,...)
  x$setinverse(xp)
  xp
  
        ## Return a matrix that is the inverse of 'x'
}
