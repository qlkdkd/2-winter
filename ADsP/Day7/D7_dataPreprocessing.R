df1=data.frame(x=c(1, 1, 1, 2, 2), y=c(2, 3, 4, 3, 3))
df2=data.frame(x=c(1, 2, 3, 4), y=c(5, 6, 7, 8))
subset(df1, x==1)
merge(df1, df2, by=c('x'))

#1�� �� �࿡ �Լ��� ����, 2�� �� ���� �Լ��� ����
apply(df1, 1, sum)
apply(df1, 2, sum)