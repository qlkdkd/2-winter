
#데이터 마이닝을 위한 데이터 분할 시행
#train데이터는 index값을 1로 70%, test데이터는 index값을 2로 30% 생성
index=sample(c(1, 2), nrow(iris), replace=T, prob=c(0.7, 0.3))
train=iris[index==1, ]
test=iris[index==2, ]
library(rpart)
result=rpart(data=train, Species~.)

#margin으로 그래프 외곽의 여백의 두께를 조정
plot(result, margin=0.3)
text(result)

#train데이터로 구축된 모형을 test데이터로 검정
pred=predict(result, newdata=test, type='class')
#test데이터의 실제값(condition)과 예측값(predict)으로 표를 작성
table(condition=test$Species, pred)

result