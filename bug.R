```r
# This code attempts to subset a data frame using a character vector of column names, but fails if any column name is not present.
data <- data.frame(A = 1:3, B = 4:6, C = 7:9)
columns_to_select <- c("A", "D", "C")
subset_data <- data[, columns_to_select]
```