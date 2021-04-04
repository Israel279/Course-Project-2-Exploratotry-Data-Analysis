SCC <- readRDS('E:/Source_Classification_Code.rds')
NEI <- readRDS('E:/summarySCC_PM25.rds')

#3. Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad)
#   variable, which of these four sources have seen decreases in emissions from 1999–2008 for
#   Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 
#   plotting system to make a plot answer this question.

NEItype <- aggregate(Emissions ~ type + year + fips, NEI, sum)
NEItype <- NEItype[NEItype$fips == '24510',]
library(ggplot2)
ggplot(NEItype, aes(year, Emissions, col=type)) +
  geom_line() + 
  geom_point() +
  ggtitle(expression("Total Emissions in Baltimore City, Maryland by Type and Year")) + 
  xlab('Year')
