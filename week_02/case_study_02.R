library(tidyverse)

# define the link to the data - you can try this in your browser too.  Note that the URL ends in .txt.
dataurl="https://data.giss.nasa.gov/tmp/gistemp/STATIONS/tmp_USW00014733_14_0_1/station.txt"
read_table(dataurl)
#the next line tells the NASA site to create the temporary file
httr::GET("https://data.giss.nasa.gov/cgi-bin/gistemp/stdata_show_v4.cgi?id=USW00014733&ds=14&dt=1")
# the next lines download the data
temp=read_table(dataurl,
                skip=3, #skip the first line which has column names
                na="999.90", # tell R that 999.90 means missing in this dataset
                col_names = c("YEAR","JAN","FEB","MAR", # define column names 
                              "APR","MAY","JUN","JUL",  
                              "AUG","SEP","OCT","NOV",  
                              "DEC","DJF","MAM","JJA",  
                              "SON","metANN"))
# renaming is necessary because they used dashes ("-")
# in the column names and R doesn't like that.
View(temp)
ggplot(temp,aes(x=YEAR, y=JJA))+geom_line()+geom_smooth()+xlab("YEAR")+ggtitle(label = "Mean Summer Temperature in Buffalo", subtitle = "Summer includes June, July, and August Data from the Global Historical CLimate Network Red Line is a LOESS smooth")+
  theme(plot.title = element_text(hjust=0.5))
getwd()
png(file = "Mean Summer Temp Buffalo.png")
dev.off()