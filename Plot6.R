SCC <- readRDS('E:/Source_Classification_Code.rds')
NEI <- readRDS('E:/summarySCC_PM25')

#6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor
#   vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen
#   greater changes over time in motor vehicle emissions?


NEIVehicle6 <- subset(NEI, NEI$fips %in% c("24510","06037") & NEI$type == "ON-ROAD")
TVehicle6 <- aggregate(Emissions ~ year + type + fips, NEIVehicle6, sum)

ggplot(TVehicle6, aes(year, Emissions, col=fips)) +
  geom_line() + 
  geom_point() +
  ggtitle(expression("Total Emissions from Motor Vehicle Sources B.C. vs L.A.C.")) + 
  xlab('Year') +
  scale_colour_discrete(name = 'City', labels = c('Los Angeles', 'Baltimore')) 
