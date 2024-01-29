library(adabag)
index=sample(c(1, 2), nrow=(iris), replace=T, prob=c(0.7, 0.3))
train=iris[index==1, ]
test=iris[index==2, ]

#boos=T 값을 주어야 가중치 값을 조정한다.
result=boosting(data=train, Species~., boos=T, mfinal=10)

#첫 번째 의사결정나무
plot(result$trees[[1]], margin=0.3)
text(result$trees[[1]])

#가중치가 조정되면서 생성된 10번째 의사결정 나무
plot(result$trees[[10]], margin=0.3)
text(result$trees[[10]])

#train데이터로 구축된 모형을 test 데이터로 검증
pred=predict(result, newdata=test)
#test데이터의 실제 값(condition)과 예측값(predict)의 표를 확인
pred$confusion