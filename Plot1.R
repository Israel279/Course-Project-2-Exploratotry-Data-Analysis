SCC <- readRDS('E:Source_Classification_Code.rds')

# This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year,
# the table contains number of tons of PM2.5 emitted from a specific type of source for the entire year. Here are the first few rows.

NEI <- readRDS('E:/summarySCC_PM25.rds')

#This table provides a mapping from the SCC digit strings in the Emissions table to the actual name of the PM2.5 source.
#The sources are categorized in a few different ways from more general to more specific and you may choose to explore whatever
#categories you think are most useful. For example, source “10100101” is known as “Ext Comb /Electric Gen /Anthracite Coal /Pulverized Coal”.

#1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
#   Using the base plotting system, make a plot showing the total PM2.5 emission from 
#   all sources for each of the years 1999, 2002, 2005, and 2008.

str(NEI)
NEIYears <- aggregate(Emissions ~ year, NEI, sum)
plot(NEIYears, type= 'l', main= 'Total Emissions', xlab='Year', col='light blue', lwd=2)
points(NEIYears,pch=3 ,cex=1.5, lwd=2, col='dark blue')
