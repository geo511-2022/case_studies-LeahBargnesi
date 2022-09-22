library(ggplot2); library(gapminder); library(dplyr) 
gapminder
filter_gapminder <- filter(gapminder,country!="Kuwait")
plot1<- ggplot(filter_gapminder,aes(x= lifeExp, y= gdpPercap))+
  geom_point(aes(x=lifeExp, y=gdpPercap, color = "continent", size= pop/10000)) + facet_wrap(~year,nrow=1) +
  scale_y_continuous(trans = "sqrt") + theme_bw() +
  labs(title="Wealth and Life Expectancy Through Time", x="Life Expectancy", y="GDP Per Capita")
group_by(filter_gapminder, continent, year)
gapminder_continent <- summarize(filter_gapminder, gdpPercapweighted = weighted.mean(x = gdpPercap, w = pop),
         pop = sum(as.numeric(pop)))
gapminder_continent
plot2<- ggplot(gapminder_continent,aes(x= year,y=gdpPercap))+
  geom_line(aes(color= "continent", group="country"))+ geom_point(aes(color= "continent", group="country"))+
  geom_line(data=gapminder_continent, aes(x=year, y=gdpPercapweighted))+
  geom_point(data=gapminder_continent, show.legend = TRUE, aes(x=year, y=gdpPercapweighted, size= pop/10000) )+
  facet_wrap(~continent, nrow=1)+ theme_bw()+
  labs(title="Wealth and Life Expectancy Through Time", x="Year", y="GDP per Capita")
png(filename="plot1.png", width= 15, units="in", res=72)
dev.off()
png(filename="plot2.png", width=15, units="in", res=72)
dev.off()
plot1
plot2
