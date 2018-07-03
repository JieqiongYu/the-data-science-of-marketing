# import csv file 
myExploratoryData <- read.csv("~/Documents/code/the-data-science-of-marketing/2-Data-Exploratory-Analysis-And-Performance_Analysis/Exploratory-analysis-with-R/exploratory-r.csv")

# get a quick snapshot of your data
head(myExploratoryData)

hist(myExploratoryData$cpa)

# shift the names to each row
row.names(myExploratoryData) <- myExploratoryData$keyword

# review that transformation 
head(myExploratoryData)

# transform into a matrix 
myDataMatrix <- data.matrix((myExploratoryData))

# generate our heatmap
heatmap(myDataMatrix, Rowv=NA, Colv=NA, scale="column")