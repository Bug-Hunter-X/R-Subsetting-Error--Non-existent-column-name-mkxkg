```r
# This improved code checks for the existence of the column name before subsetting.

df <- data.frame(a = 1:3, b = 4:6)
col_name <- "c"

if (col_name %in% names(df)) {
  print(df[, col_name])
} else {
  print(paste0("Column '", col_name, "' not found."))
}

#Alternatively, use the more robust method of subsetting with `[[` operator to safely access columns.
col_name <- "a"
if (exists(paste0("df$", col_name)))
{
  print(df[[col_name]])
} else {
  print(paste0("Column '", col_name, "' not found."))
}
```