#������ ����
year=c(2012, 2012, 2012, 2012, 2013, 2013, 2013, 2013)
month=c(1, 1, 2, 2, 1, 1, 2, 2)
value=c(3, 5, 7, 9, 1, 5, 4, 6)
data=data.frame(year, month, value)
data

library(plyr)
#������ �Ǵ� ������ 2�� �̻� ��� ��� ����
ddply(data, c("year", "month"), summarise, value_avg=mean(value))

#���ϴ� ������ �Լ��� �ۼ��ؼ� ��� ����
ddply(data, c("year", "month"), function(x){
  value_avg=mean(x$value)
  value_sd=sd(x$value)
  data.frame(avg_sd=value_avg/value_sd)
})