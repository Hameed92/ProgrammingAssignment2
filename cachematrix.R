## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){
  inverse <- NULL
  set <- function(y){
    x <<- y
    inverse <<- NULL
  }
  get <- function()
    x
  setInverse <- function(inverse_given)
    inverse <<- inverse_given
  getInverse <- function()
    inverse
  list(set_var = set, get_var = get,setInverse_var = setInverse, getInverse_var = getInverse)
}
######

## Write a short comment describing this function

cacheSolve <- function(x, ...){
  inverse <- x$getInverse()
  if (!is.null(inverse)){
    message("getting the inverse")
    return(inverse)
  }
  input_mat <- x$get_var()
  inverse_calc <- solve(input_mat, ...)
  x$setInverse(inverse_calc)
  inverse_calc
}
