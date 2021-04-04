SCC <- readRDS('E:/Source_Classification_Code.rds')
NEI <- readRDS('E:/summarySCC_PM25')

#5. How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

NEIVehicle <- NEI[NEI$type == 'ON-ROAD' & NEI$fips == '24510',]
TVehicle <- aggregate(Emissions ~ year + type, NEIVehicle, sum)

ggplot(TVehicle, aes(year, Emissions)) +
  geom_line(col='cadetblue3') + 
  geom_point(col='deeppink3') +
  ggtitle(expression("Total Emissions from Motor vehicle Sources in Baltimore City")) + 
  xlab('Year')
