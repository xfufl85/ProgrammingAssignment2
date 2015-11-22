## A pair of functions that cache the inverse of a matrix. 

## This function creates a special matrix object that can cache its inverse. 
## 1. set the value of the matrix; 2. get the value of the matrix;
## 3. set the inverse of the matrix; 4. get the inverse of the matrix. 
 
makeCacheMatrix <- function(x = matrix()) {
                 m <- NULL
                set <- function (y) {
                     x <<- y
                     m <<-NULL                     
                     }
                get <- function() x
                set.matrix<-function(solve) m<<-solve
                get.matrix<-function () m
                list(set=set,get=get,
                     set.matrix=set.matrix,
                     get.matrix=get.matrix)

}


## This function checks if the inverse matrix has already been calculated. If so, it gets the
## inverse matrix from the cache and skips the computation. Otherwise, it calculates the inverse matrix. 

cacheSolve <- function(x = matrix(), ...) {
                m <- x$get.matrix()
            if (!is.null(m)){
                 message("getting cached data")
                 return (m)
              }
             data <- x$get()
             m <- solve (data, ...)
             x$set.matrix(m)
             m
        ## Return a matrix that is the inverse of 'x'
}
