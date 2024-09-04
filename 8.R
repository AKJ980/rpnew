# Read the data from Table1.txt
data <- read.table("Table1.txt", header = FALSE)
# a. Change the names of the columns
colnames(data) <- c("Name", "Age", "Height", "Weight", "Gender")
# b. Change the row names and remove the variable Name
rownames(data) <- data$Name
data$Name <- NULL
# Print the resulting data frame
print(data)



txt file :
  Ram 30 177 57 M
Alwin 35 164 48 F
Billy 28 155 45 M
Amera 16 168 60 F
Olive 42 124 70 F
Dora 59 150 55 F