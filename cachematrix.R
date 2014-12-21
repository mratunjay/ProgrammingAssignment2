## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL 
 setmatrix <- function(y)        #sets the matrix
 {
        x<<- y
        inv<<- NULL
 }
 getmatrix<- function() x        #gets the matrix
 set_inv <- function(inverse) inv<<- inverse       #sets inverse of the matrix
getinv<- function() inv                             #gets inverse of the matrix
list(setmatrix = setmatrix, getmatrix = getmatrix, set_inv = set_inv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<- x$getinv()      #gets cached value of inverse
        if(!is.null(inv))   #if cached value is same then does not compute inverse
        {
                message("getting cached data")
                return(inv)
        }
        mat<- x$getmatrix() #if cached value is NULL computes the inverse and sets the inverse
        inv<- solve(x)
        x$ste_inv(inv)
        inv
}
