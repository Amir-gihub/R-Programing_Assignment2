## Put comments here that give an overall description of what your
## functions do
 
## Write a short comment describing this function

## Answer:  

## Making a matrix object which is able to cache its inverse
 <- function( m = matrix() ) {

	## Initialize the inverse property
    i <- NULL

    ## Setting the matrix
    set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }

    ## Getting the matrix
    get <- function() {
    	## Return the matrixsd
    }

    ## Setting the matrix inverse
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ## Getting the matrix inverse
    getInverse <- function() {
        ## Return the inverse property
        i
    }

    ## Return a list of the approaches
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

## Answer:

## Compute the inverse of the special matrix returned by "makeCacheMatrix"
## above. If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {

    ## Return a matrix which is the inverse of 'x'
    m <- x$getInverse()


    ## Return the inverse if its set already
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

    ## Getting the matrix from our object
    data <- x$get()


    ## Calculate the inverse by using the matrix multiplication
    m <- solve(data) %*% data


    ## Setting the inverse to the object
    x$setInverse(m)


    ## Matrix returning
    m
}
