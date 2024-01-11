#데이터 예제
class=c('A', 'A', 'B', 'B')
math=c(50, 70, 60, 90)
english=c(70, 80, 60, 80)
score=data.frame(class, math, english)
score

library(plyr)
#summarise: 데이터 요약, transform: 데이터 추가)
ddply(score, "class", math_avg=mean(math), eng_avg=mean(english))

ddply(score, "class", transform, math_avg=mean(math), eng_avg=mean(english))