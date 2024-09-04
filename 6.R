replace_with_na <- function(data_frame, value_to_replace) {
  # Replace the specified value with NA
  data_frame[data_frame == value_to_replace] <- NA
  
  return(data_frame)
}
# Sample data frame
df <- data.frame(
  x = c(1, 2, 3, 4, 5),
  y = c("A", "B", "A", "C", "A")
)
# Replace all occurrences of "A" with NA in column 'y'
new_df <- replace_with_na(df, "A")
print(new_df)