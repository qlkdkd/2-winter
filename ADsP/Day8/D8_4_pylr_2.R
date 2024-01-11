#데이터 예제
year=c(2012, 2012, 2012, 2012, 2013, 2013, 2013, 2013)
month=c(1, 1, 2, 2, 1, 1, 2, 2)
value=c(3, 5, 7, 9, 1, 5, 4, 6)
data=data.frame(year, month, value)
data

library(plyr)
#기준이 되는 변수를 2개 이상 묶어서 사용 가능
ddply(data, c("year", "month"), summarise, value_avg=mean(value))

#원하는 임의의 함수를 작성해서 사용 가능
ddply(data, c("year", "month"), function(x){
  value_avg=mean(x$value)
  value_sd=sd(x$value)
  data.frame(avg_sd=value_avg/value_sd)
})
