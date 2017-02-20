## R language
### part 1
* useful shortcuts: Cmd+Enter - run script; Cmd+↑ - history of commands (not only last command with ↑);
* we have some functions in R: factorial(), sqrt(), round() etc.
* 2 major data sctructures - vector and matrix (we will not use array in this course):
```R
vec <- c(1, 2, 3, 10, 100)
mat <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2)
```
* we have element-wise math and some functions for matrix:
```R
vec %*% vec # inner (scalar)
vec %o% vec # outer
t(mat) # transposition
```
### data types
* data types: numbers, character strings, logical (TRUE, FALSE, T, F), factor (again we will not use it);
* data structures are homogeneous (there is some auto conversion);
* we have functions to convert between types;
```R
as.numeric("1")
as.character(TRUE)
```
#### data frames
* lists and data frames (equivalent of Excel spreadsheet - as I thought) are heterogenous;
```R
# created column-by-column
df <- data.frame(c(1, 2, 3), c("R","S","T"), c(TRUE, FALSE, TRUE))
```
* usually we use them with names:
```R
# access to column: ndf$numbers
ndf <- data.frame(numbers = c(1, 2, 3), 
                    letters = c("R","S","T"),
                    logic = c(TRUE, FALSE, TRUE))
* most often we use vectors and data frames (vector is a proection of df); matrix we use when we need fast calculations;
# change or assign names
names(ndf) <- c("num", "let", "log")
```
### part 2
#### slicing
* we may index vector with number or another vector; we may use boolean conditions:
```R
vec[2]
vec[c(5, 6)]
vec[-c(5,6)]
vec[vec > 5]
```
* we may extract a column with `$` or with [row, column] operators (row and column can be a number or a vector):
```R
df[c(2, 4), 3] # extract only 2nd and 4th elements from 3d column
df[ , 1] # returns vector, but df[1] returns the same data but as data frame
df[ , "instrument"]
df$instrument
```
* more precisely we may use integers, blank spaces, names, booleans to slice vector or df;
* we have shortcut to create ranges: `1:4 # 1 2 3 3`
* we may access last elements with `tail(vec, n)` function; we may also view data in Excel like window with `View(df)`;
#### logical tests
* R uses `==` and `!=` as well as other usual operators, boolean operators: `&, |, xor, !, any, all`;
* we have operator `%in%` to test membership:
```
> 1 %in% c(1, 2, 3, 4)
[1] TRUE
> 1 %in% c(2, 3, 4)
[1] FALSE
> c(3,4,5,6) %in% c(2, 3, 4)
[1]  TRUE  TRUE FALSE FALSE
```






















