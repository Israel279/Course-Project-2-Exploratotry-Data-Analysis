SCC <- readRDS('E:/Source_Classification_Code.rds')
NEI <- readRDS('E:/summarySCC_PM25.rds')

#2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510")
#   from 1999 to 2008? Use the base plotting system to make a plot answering this question.

NEIfips <- aggregate(Emissions ~ fips + year , NEI, sum)
NEIBCM <- NEIfips[NEIfips$fips == '24510',]
NEIBCM <- NEIBCM[,2:3]
plot(NEIBCM, type= 'l', main= 'Total Emissions in Baltimore City, Maryland', xlab='Year', ylab='Emissions', col='pink', lwd=2)
points(NEIBCM ,pch=3 ,cex=1.5, lwd=2, col='dark red')
