## the function taks a matrix X and caches the inverse of it in inv which is inotialized to NULL 
## 

## the function taks a matrix X and caches the inverse of it in inv which is inotialized to NULL

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


## this puction returns the value of the inverse of the matrix X either from cache or by computing is depending on whether
## the value of inverse is cached or not

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
