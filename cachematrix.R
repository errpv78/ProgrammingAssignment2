## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function is used to set the value in cache to inverse
# of matrix
makeCacheMatrix <- function(x = matrix()) {
  cached = NULL
  set_data = function(y)
  {
    x=y
    cached = NULL
  }
  get_data = function()
  {
    x
  }
  set_inverse = function(inverse)
  {
    cached<<-inverse
  }
  get_inverse = function()
  {
    cached
  }
  list(set = set_data,
       get - get_data,
       setinverse = set_inverse,
       getinverse = get_inverse)
}

## Write a short comment describing this function
# This function first checks if cached is null or not, if not
# then it calculates the inverse and stores in cache, otherwise
# gets the inverse from cache
cacheSolve <- function(x, ...) 
{
  cached = x$getinverse()
  if(!is.null(cached))
  {
    message("Inverse already present in cache")
    return(cached)
  }
  data = x$get()
  inv = solve(data, ...)
  x$setinverse(inv)
}
