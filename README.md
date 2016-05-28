### How to use the programming
# source("ProgrammingAssignment2/cachematrix.R")
my_matrix <- makeCacheMatrix(matrix(2:5, 2, 2))
my_matrix$getMatrix()
#> my_matrix$getMatrix()
#     [,1] [,2]
#[1,]    2    4
#[2,]    3    5
my_matrix$getInverse()
#> my_matrix$getInverse()
#NULL
cacheSolve(my_matrix)
#> cacheSolve(my_matrix)
#     [,1] [,2]
#[1,] -2.5    2
#[2,]  1.5   -1
my_matrix$getInverse()
#> my_matrix$getInverse()
#     [,1] [,2]
#[1,] -2.5    2
#[2,]  1.5   -1
my_matrix$setMatrix(matrix(c(2, 2, 1, 4), 2, 2))
#> my_matrix$set(matrix(c(2, 2, 1, 4), 2, 2))
my_matrix$getMatrix()
#>my_matrix$getMatrix()
#     [,1] [,2]
#[1,]    2    1
#[2,]    2    4
my_matrix$getInverse()
#> my_matrix$getInverse()
NULL
cacheSolve(my_matrix)
#> cacheSolve(my_matrix)
#           [,1]       [,2]
#[1,]  0.6666667 -0.1666667
#[2,] -0.3333333  0.3333333
cacheSolve(my_matrix)
#> cacheSolve(my_matrix)
#getting cached data
#           [,1]       [,2]
#[1,]  0.6666667 -0.1666667
#[2,] -0.3333333  0.3333333
my_matrix$getInverse()
#> my_matrix$getInverse()
#           [,1]       [,2]
#[1,]  0.6666667 -0.1666667
#[2,] -0.3333333  0.3333333


