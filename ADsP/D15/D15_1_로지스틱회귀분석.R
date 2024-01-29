#이진 분류를 위해 3개의 범주를 보유한 iris의 Species를 두 개의 범주만 갖도록 추출
iris_bin1=subset(iris, Species=='setosa'|Species=='versicolor')
#데이터 분할은 생략
str(iris_bin1)

#Species가 범주형(Factor)변수로 setosa를 1로, versicolor를 2로 인식하고 있음
#Species~. 은 Species를 종속변수, 나머지 변수를 독립변수로 활용하겠다는 의미
# family='binomial은 glm을 로지스틱 회귀분석으로 사용하겠다는 의미
result=glm(data=iris_bin1, Species~., family='binomial')
result=glm(data=iris_bin1, Species~., family='binomial', control=list(maxit=50))
prirs(iris_bin1, col=iris_bin1$Species)
result=glm(data=iris_bin1, Species~Sepal.Length, family='binomial')
Summary(result)