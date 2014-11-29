## ----, results='asis'----------------------------------------------------
library(plyr)
library(ggplot2)
library(ggthemes)
library(gameday)
date<-data.frame(date = as.Date(-30:0,Sys.time()))

perc<-ddply(date, ~date, function(x){
	score<-scores(x$date)
	return(data.frame(perc=nrow(score[score$home_score>score$away_score,])/nrow(score)))
})

ggplot(perc,aes(x = date, y = perc))+
	geom_point()+
	geom_smooth(method = "loess")+
	theme_gdocs()

## ----, results='asis'----------------------------------------------------
date<-data.frame(date = as.Date(-41:0,Sys.time()))

games<-ddply(date, ~date, function(x){
	if(gday(date = x$date)) return(TRUE)
	return(FALSE)
})
backtoback<-ddply(date, ~date, function(x){
	if(gday(date = x$date)&gday(date = x$date+1)) return(TRUE)
	return(FALSE)
})

data<-data.frame(week = 1:6)

for(i in 1:6){
	data$game[i] = sum(games[(7*i-6):(7*i),2])
	data$backtoback[i] = (sum(backtoback[(7*i-6):(7*i),2])!=0)
}


ggplot(data, aes(week,game,fill=backtoback))+
  geom_bar(stat="identity")+
  theme_gdocs()	

