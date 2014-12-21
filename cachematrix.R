## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL 
 setmatrix <- function(y)
 {
        x<<- y
        inv<<- NULL
 }
 getmatrix<- function() x
 set_inv <- function(inverse) inv<<- inverse
getinv<- function() inv
list(setmatrix = setmatrix, getmatrix = getmatrix, set_inv = set_inv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<- x$getinv()
        if(!is.null(inv))
        {
                message("getting cached data")
                return(inv)
        }
        mat<- x$getmatrix()
        inv<- solve(x)
        x$ste_inv(inv)
        inv
}
