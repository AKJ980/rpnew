
convert_to_na <- function(x) {
  if (is.na(as.numeric(x))) {
    return(NA)
  } else {
    return(as.numeric(x))
  }
}
data <- read.table("table0.txt", header = TRUE, na.strings = c("--", "*", "**"))
data$Age <- sapply(data$Age, convert_to_na)
data$Height <- sapply(data$Height, convert_to_na)
data$Weight <- sapply(data$Weight, convert_to_na)
print(data)


make txt file :  
  Name Age Height Weight Gender
Ram 30 177 57 M
Alwin 35 164 48 F
Billy -- 155 45 M
Amera 16 * 60 F
Olive 42 124 ** F
Dora 59 150 55 F n