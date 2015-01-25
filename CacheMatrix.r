# The makeCacheMatrix function creates an ivnerse, It will do the following: 
# 1. set the value of the Matrix
# 2. get the value of the Matrix
# 3. set the value of the inverse Matrix
# 4. get the value of the inverse Matrix


makeCacheMatrix <- function(x = matrix()) {

  
    i <- NULL

# initialize an empty matrix 

    set <- function(y) {
        x <<- y
        i <<- NULL
# resets matrix equal to null 
    }

    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i

# returns the inverse 

    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

# A list of funtions is created 

}



#The following function returnes and inverse matrix,

#1. It first checks to see if the inverse has already been calculated. If true The inverse will be returned. 
#2. If false it will compute the inverse


cacheSolve <- function(x, ...) {
    i <- x$getinverse()

# gets the inverse 
   
 if(!is.null(i)) {
        message("getting cached data.")
        return(i)
# if not null, inverse will be returned
    
    }
   
    data <- x$get()
    i <- solve(data)

# calcluates the inverse 
  
    x$setinverse(i)
    i
# returns the new inverse 
}





