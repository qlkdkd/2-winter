#������ ����
snum=c(1, 2, 1, 2)
semester=c(1, 1, 2, 2)
math_score=c(60, 90, 70, 90)
english_score=c(80, 70, 40, 60)
score=data.frame(snum, semester, math_score, english_score)
score
melted_score=melt(score, id=c("snum", "semester"))

#�л��� ���� ��������� �˰� ���� ���
cast(melted_score, snum~variable, mean)

#�л��� �б⺰ ��������� �˰� ���� ���
cast(melted_score, snum~semester, mean)