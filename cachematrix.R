## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      #reset m to NULL (to clear cruft?)
      m <- NULL
      #caches the object x into object y and
      
      m <- x
      #method to return original matrix
      get <- function() m
      
      #return result of getinverse
      getinverse <- function() 1/m
      
      #list of methods available to objects inside
      #makeCachMatrix()
      list(get = get, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      #grab the contents of getinverse method
      #in makeCacheMatrixto in case object already exists
      m<-x$getinverse()
      #test to see if computed inverse does not already exist
      if(!is.null(m)) { #if inverse = FALSE then continue to pass it to "m"
            message("getting the cached data")#inform user of cached data
            return(m)#finished so return m
      }
      #it wasn't cached so get it from makeCacheMatrix get method and invert
      data <- x$get()  #return the orignal matrix
      m <- 1/data  #invert the matrix
      m  #return m
}
