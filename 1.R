A <- c(1, 2, 3, 4, 5)
B <- c(6, 7, 8, 9, 10)
sum_A_B <- A + B # Addition
diff_A_B <- A - B # Subtraction
prod_A_B <- A * B # Element-wise multiplication
div_A_B <- A / B # Element-wise division
pow_A_B <- A ^ B # Element-wise exponentiation
cat("Sum of A and B:", sum_A_B, "\n") # Printing the values
cat("Difference of A and B:", diff_A_B, "\n")
cat("Product of A and B:", prod_A_B, "\n")
cat("Division of A and B:", div_A_B, "\n")
cat("Exponentiation of A and B:", pow_A_B, "\n")
rep_A <- rep(A, times = 2) # Repeat A twice
paste_A <- paste("A:", A, sep = " ") # Concatenate "A:" with each element of A
cumprod_A <- cumprod(A) # Cumulative product of A
# Print the results cat("Repeated A:", rep_A, "\n")
cat("Concatenated A:", paste_A, "\n")
cat("Cumulative product of A:", cumprod_A, "\n")