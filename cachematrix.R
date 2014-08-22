## Here can be found two functions which are written to cache the inverse
## of a matrix

## makeCacheMatrix function creats a special matrix object that can cache
## its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- matrix()
        mat <<- x 
        setInverse <- function(inverse) inv <<- inverse  
        getInverse <- function() inv
        invrs <- getInverse()
        cacheMat <- matrix(c(mat, invrs))
        cacheMat
}


## cacheSolve function calculates the inverse of the special matrix 
## recieved from the other function

cacheSolve <- function(x, ...) {
        
        l <- length(x)
        h <- x[l, ]
        if (!is.na(h)){
                
                d <- ncol(mat) * nrow(mat) + 1
                message("Matrix inverse is ready")
                inverse <- matrix(x[d:l,], ncol = ncol(mat), nrow = nrow(mat))
                return(inverse)       
        }
        
        inv <<- solve(mat)
        inv
}

