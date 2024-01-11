#데이터 예제
snum=c(1, 2, 1, 2)
semester=c(1, 1, 2, 2)
math_score=c(60, 90, 70, 90)
english_score=c(80, 70, 40, 60)
score=data.frame(snum, semester, math_score, english_score)
score

library(reshape)
melt(score, id=c("snum", "semester"))