###########################################################################
# 3-day R workshop 
# 17th March 2019
# 02_pm_good_habits.R
###########################################################################
# 1. This file is already machine readable, but it needs to be human readable too
# Will you remember what you did in 6 months time?
# Frequently comment within your code to make the steps human readable
# Comment on any line that is ambiguous
# Every file should also contain a header

# 2. Organisation ---------------------------------------------------------
# Great way to navigate to specific points in your R script
# Ctrl/Cmd+Shift+R

# 3. Assignment -----------------------------------------------------------
# Always use <-, not =, for assignment
# Good
x <- 5

# 3. Assignment -----------------------------------------------------------
# Bad
x = 5

# 4. Variable names -------------------------------------------------------
# Variable and function names should be lowercase
# Use an underscore (_) to separate words within a name
# They should be descriptive and succinct
strwrs_df # here "_df" identifies the object as a data frame
strwrs_mx # here "_mx" indicates the object is a matrix
strwrs_lm # here "_lm" the object stores the output of a linear model

# Good
day_one
day_1

# Bad
first_day_of_the_month
firstdayofthemonth
DayOne

# 5. Object names ---------------------------------------------------------
# Must start with a letter and can only contain letters, numbers, "_" and "."
# Good
this_is_recommended <- 5 #Although it should be shortened
so.is.this <- 5

#Bad
1.not.this <- 5
notthiseither <- 5

c <- 5 # This is problematic as the concatenate function is c()
# In functions T == TRUE and F == FALSE, so best avoid
T == TRUE
F == FALSE
T <- TRUE
T == 5
T == TRUE

# 6. Syntax ---------------------------------------------------------------
# Place spaces around all infix operators (=, +, -, <-, etc.)
# The same rule applies when using = in function calls
# Always put a space after a comma, and never before 
# Good
average <- mean(feet / 12 + inches, na.rm = TRUE)

# Bad
average<-mean(feet/12+inches,na.rm=TRUE)

# Important exception
# Double colons (:) don’t need spaces around them
x <- c(1:10, 15, 20, 25:30)

# Use extra spacing if it improves alignment
# Spread text over multiple lines to improve readability
# Good
x <- list(
     total = a + b + c, 
     mean  = (a + b + c) / n,
     places = c("Baltimore", "Youghal", "Fermoy", "Kanturk")
     )

# Bad
x <- list(total=a+b+c, mean=(a+b+c)/n, places=c("Baltimore", "Youghal", "Fermoy", "Kanturk"))
x <- list(total = a + b + c, mean  = (a + b + c) / n, places = c("Baltimore", "Youghal", "Fermoy", "Kanturk"))


# 7. Break the code up into digestible chunks -----------------------------
# Add notes to clarify why some operations were performed
# Here is some example code from a project I'm currently working on
clean_data <- read_csv("path to my data table.csv") %>%
  
  select(-safety.data) %>% # This column contained a solitary "." entry
 
  # Just making column names more intuitive 
  rename(diet = diet.allocation,
         age = age.pasted.values,
         diabetes = presence.of.diabetes,
         ethnicity = self.reported.ethenicity) %>%

  # Tidy up the column types
  mutate(age = as.numeric(age),
         sex = factor(sex),
         height.m = as.numeric(height.m))

# 8. Finish up and write to file as a record if required ------------------
# write_csv(clean_data, 
#           paste("afternoon_session/data/",Sys.Date(),"_clean_data.csv", 
#                 sep=""))
