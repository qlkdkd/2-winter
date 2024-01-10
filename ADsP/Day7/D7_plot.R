x=c(1:10)
y=rnorm(10)
#파라미터 type에서 p는 점, l은 직선, b는 점과 직선, n은 아무것도 표시하지 않음을 의미
#xlim으로 x축의 범위, ylim으로 y축의 범위를 설정할 수 있다
#xlab, ylab으로 각 축의 이름을 지정할 수 있다
#main으로 산점도의 이름을 정할 수 있다
plot(x, y, type='l', xlim=c(-2, 12), ylim=c(-3, 3), xlab='X axis', ylab='Y axis', main='Test plot')
abline(v=c(1, 10), col='blue')