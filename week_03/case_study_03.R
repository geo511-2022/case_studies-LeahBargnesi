library(ggplot2); library(gapminder); library(dplyr) 
gapminder
filter_gapminder <- filter(gapminder,country!="Kuwait")
ggplot(filter_gapminder,aes(x= lifeExp, y= gdpPercap))+
  geom_point() + facet_wrap(~year,nrow=1) +
  scale_y_continuous(trans = "sqrt") + theme_bw() +
  labs(title="Wealth and Life Expectancy Through Time", x="Life Expectancy", y="GDP Per Capita")
group_by(filter_gapminder, continent, year)
gapminder_continent <- summarize(filter_gapminder, gdpPercapweighted = weighted.mean(x = gdpPercap, w = pop),
         pop = sum(as.numeric(pop)))
gapminder_continent
ggplot(filter_gapminder, aes(x= year, y= gdpPercap))+
  geom_line()+ geom_point()+
  geom_line(data=gapminder_continent, color="black")+
  geom_point(data=gapminder_continent,show.legend = TRUE )+
  facet_wrap(~year,nrow=1)+ theme_bw()+
  labs(title="Wealth and Life Expectancy Through Time", x="Year", y="GDP per Capita")