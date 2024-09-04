# HARSH BHATI BOLTE
# Convert state.x77 to a data frame
state_df <- as.data.frame(state.x77)
# Count states with income less than 5000
num_low_income_states<-sum(state_df$Income < 5000)
print(num_low_income_states)
# Find the state with the highest income
highest_income_state <- rownames(state_df)[which.max(state_df$Income)]

# Find the state with the lowest income
lowest_income_state <- rownames(state_df)[which.min(state_df$Income)]

print(highest_income_state)
print(lowest_income_state)
state_df <- state_df[, !(names(state_df) %in% c("div", "Life Exp", "HS Grad", "Frost", "abb"))]
# Ensure Illiteracy column exists; if not, check if it needs to be handled
if ("Illiteracy" %in% names(state_df)) {
  state_df$Illiteracy_Level <- cut(state_df$Illiteracy,
                                   breaks = c(-Inf, 1, 2, Inf),
                                   labels = c("low", "some", "high"))
}
# Ensure state.region is added to state_df
state_df$Region <- state.region

# Filter western states with low illiteracy
west_states_low_illiteracy <- subset(state_df, Region == "West" & Illiteracy_Level == "low")

# Find the western state with the highest income
if (nrow(west_states_low_illiteracy) > 0) {
  highest_income_west_state <- west_states_low_illiteracy$State[which.max(west_states_low_illiteracy$Income)]
  highest_income_west_income <- max(west_states_low_illiteracy$Income)
}

print (highest_income_west_state)
print (highest_income_west_income)
# Rename the column to show only the first 3 letters
names(state_df)[names(state_df) == "Region"] <- "Reg"
state_df$Reg <- substr(state_df$Reg, 1, 3)