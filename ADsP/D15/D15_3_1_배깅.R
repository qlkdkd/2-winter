library(adabag)
#데이터 분할 70:30
index=sample(c(1, 2), nrow(iris), replace=T, prob=c(0.7, 0.3))
train=iris[index=1, ]
test=iris[index=2, ]

#의사결정나무 개수를 정하는 매개변수 mfinal=100이 기본값이다.
result=bagging(data=train, Species~. )
#첫번째 의사결정나무
plot(result$trees[[1]], margin=0.3)
text(result$trees[[1]])

#백 번째 의사결정나무
plot(result$trees[[100]], margin=0.3)
text(result$trees[[100]])

#train데이터로 구축된 모형을 text데이터로 검정
pred=predict(result, newdata=test)
#test데이터의 실제값과 예측값으로 표를 작성
table(condition=test$Species, pred$class)
