#데이터 예제
snum=c(1, 2, 1, 2)
semester=c(1, 1, 2, 2)
math_score=c(60, 90, 70, 90)
english_score=c(80, 70, 40, 60)
score=data.frame(snum, semester, math_score, english_score)
score
melted_score=melt(score, id=c("snum", "semester"))

#학생의 과목별 평균점수를 알고 싶은 경우
cast(melted_score, snum~variable, mean)

#학생의 학기별 평균점수를 알고 싶은 경우
cast(melted_score, snum~semester, mean)