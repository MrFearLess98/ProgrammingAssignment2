##Couple of functions that cache the inverse of a matrix


makeCacheMatrix <- function(x = matrix()) {
        
        ## Declaring the inverse property
        P <- NULL
        
        ## Place the matrix
        place<- function(matrix){
                
                k<<- matrix
                P<<- NULL
        }
        
        ## Get the matrix
        get <- function() {
                ## Output the matrix
                k
        }
        
        ## Set inverse of the matrix
        setInverse <- function(inverse) {
                P <<- inverse
        }
        
        ## Get the Inverse of the matrix
        
        getInverse <- function() {
                ## Return the inverse
                P
        }
        
        ## Return a list of the methods
        list(place = place, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
        
}


## Calculating the inverse of the matrix returned by the function "makeCacheMatrix".
## If the inverse has already been calculated (and the matrix has not changed).
## Then the "cachesolve" below should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        k <- x$getInverse()
        
        ## return the inverse if its already set
        
        if( !is.null(k) ) {
                message("getting cached data")
                return(k)
        }
        
        ## Get the matrix from the object
        data <- x$get()
        
        ## Calculating the inverse using matrix multiplication
        
        k <- solve(data) %*% data
        
        ## Set the inverse to the object
        x$setInverse(m)
        
        ## Return the matrix
        k
        
}
