###########################################################################
# 3-day R workshop
# Advanced tidyverse
# 17th March 2019
# 05_practise_data_cleaning.R
###########################################################################
# Lets take what we've seen and apply it to a messy data set
# library(tidyverse)

# Open the who_tb_data.csv file using MS Excel or other spreadsheet software
# This data frame comes as part of the tidyr package with some tweaks

tidyr::who

# As you look to populate this script, look to do so using the following steps:

# 1. Read in the WHO TB data

# Check the data to ensure it has been loaded correctly

View("Your_data")

# 2. Use gather() to gather the columns starting at new_ep_f014 to new_sp_m65
# Call the key column "key" and the value column "cases"
# Tip: Include the arguemnt na.rm = TRUE

View("Your_data")

# Check the tidied data for any more NA's using is.na()
# The data should now comprise 76046 rows
# If no NA's present in a column, you should get FALSE 76046 times

table(is.na("Your_data"$country))
table(is.na("Your_data"$iso2))
table(is.na("Your_data"$iso3))
table(is.na("Your_data"$year))
table(is.na("Your_data"$key))
table(is.na("Your_data"$cases))

# 3. Use separate() on the 'key' column - what separator will you use (sep = ?)
# How many columns will be returned?
# What names will you give them?

# Note: Should column names include spaces you'll need to use back ticks (``)
# Example:
# separate(crappy column name, .... would throw an error
# separate(`crappy column name`, ... would solve this

# Hint: new_ep_f014
# The first three letters of each column denote whether the column contains
# new or old cases (new)
# Next two letters describes the type of TB (ep stand for extrapulmonary)
# The lext letter gives the sex (female)
# The numbers give the age group (0-14 years)

# 4. Use separate() again - to give a gender and age category columns
# Is the separator the same or different?

# 5. Use select() to keep useful columns or get rid of uninformative ones

# 6. Use spread() to place male and female cases in separate columns

# 7. Use mutate to get the total number of cases by summing male and female cases

# 8. Use filter() to generate a tibble of data from Ireland

# Well done on successfully making it this far!
# If you want to practice some more, here's a few additional excercises...

# 9. Use filter() to obtain information on all countries with more than 1000 sp cases

# 10. Combine group_by() and summarise() to get the median number of total cases by country

# 11. Combine group_by() and summarise() to generate a ratio for male and female cases in Ireland

# 12. Use the magrittr operator (%>%) to create one continuous chuck of code from steps 1-7

# 13. Write your cleaned data to file using write_csv()
