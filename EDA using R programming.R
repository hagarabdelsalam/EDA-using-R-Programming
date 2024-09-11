#EDA using R Programming

# Load the tidyverse package, which is a collection of R packages for data manipulation and visualization.
library(tidyverse)
# Lists all available example datasets in R, including 'starwars'.
data()

# Opens a help search for the 'starwars' dataset, providing more information about it
??starwars

# Displays the dimensions of the 'starwars' dataset (number of rows and columns)
dim(starwars)

# Displays the structure of the 'starwars' dataset, including data types and a preview of each column.
str(starwars)

# Provides a transposed view of the 'starwars' dataset's structure, showing each column's type and values.
glimpse(starwars)

View(starwars)
head(starwars)# Displays the first six rows of the 'starwars' dataset.

tail(starwars)# Displays the last six rows of the 'starwars' dataset.

starwars$gender# Displays the  column from the 'starwars' dataset.


# Attaches the 'starwars' dataset, making its columns directly accessible by name.
attach(starwars)
names(starwars)# Returns the names of the columns in the 'starwars' dataset.
length(starwars)# Returns the number of columns in the 'starwars' dataset.
class(vehicles)# Displays the class (data type) of the specific column.
length(height) # Returns the number of elements (rows) in the 'specific' column.
unique(name) # Returns the unique values from specific column (character names in 'starwars').


table(hair_color)# Creates a frequency table of unique values in the specific column.

sort(table(hair_color))# Sorts the frequency table of 'hair_color' in ascending order.

# Sorts the frequency table of 'hair_color' in descending order.
sort(table(hair_color),decreasing = TRUE)

# Creates a bar plot of the sorted 'hair_color' frequency table in descending order.
barplot(sort(table(hair_color),decreasing = TRUE))

# Opens a view of the sorted 'hair_color' frequency table in descending order.
View(sort(table(hair_color),decreasing = TRUE))

#this will be the same result as the code of View above but using deffirent method
starwars %>%
  select(hair_color)%>%
  count(hair_color) %>%
  arrange(desc(n)) %>%
  View()


is.na(hair_color)#function to find null values
View(starwars[is.na(hair_color),])#View give all the data where  hair_color is null 


summary(height) # Provides summary statistics (min, 1st quartile, median, mean, etc.)

boxplot(height)# Creates a boxplot for the specific column, showing the distribution of values.

# Creates a histogram for the specific column, showing the frequency distribution of values.
hist(height)  
