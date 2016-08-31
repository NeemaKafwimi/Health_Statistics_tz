# Prep to set up a relational database. 
# Installing packages and set work directory
install.packages("sqldf")
setwd("~/Desktop/tz_mortalitydata")

# Loads "sqldf" package
library(sqldf)

# Open a connection to Test.sqlite database
db <- dbConnect(SQLite(), dbname="Test.sqlite")

# Uploads the .csv data files on the database
dbWriteTable(conn = db, name="Mortality", value="mortality.csv", row.names=FALSE, header=TRUE)
dbWriteTable(conn = db, name="Diseases", value="diseases.csv", row.names=FALSE, header=TRUE)
dbWriteTable(conn = db, name="Geography", value="geography.csv", row.names=FALSE, header=TRUE)

dbListTables(db)             # Returns the names of the tables in the database                                 
dbListFields(db, "Diseases") # Returns the names of the columns in the table "Diseases"
dbReadTable(db, "Diseases")  # Returns the data contained in the table "Diseases"


