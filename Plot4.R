#4. Across the United States, how have emissions from coal combustion-related sources changed
#   from 1999–2008?

str(SCC)
str(NEI)
SCCcoal <- SCC[grepl("coal", SCC$Short.Name, ignore.case = T),]
NEIcoal <- NEI[NEI$SCC %in% SCCcoal$SCC,]
TCoal <- aggregate(Emissions ~ year + type, NEIcoal, sum)

ggplot(TCoal, aes(year, Emissions, col=type)) +
  geom_line() + 
  geom_point() +
  ggtitle(expression("Total Emissions from Coal Combustion-Related Sources")) + 
  xlab('Year')
