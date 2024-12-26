```r
# This improved code uses a more robust approach by checking for the existence of each column name before subsetting
data <- data.frame(A = 1:3, B = 4:6, C = 7:9)
columns_to_select <- c("A", "D", "C")
# Check if columns exist and handle the error appropriately
invalid_columns <- setdiff(columns_to_select, names(data))
if (length(invalid_columns) > 0) {
  stop(paste("Columns not found:", paste(invalid_columns, collapse = ", ")))
}
subset_data <- data[, columns_to_select]
```