library(randomForest)
library(adabag)
index=sample(c(1, 2), nrow=(iris), replace=T, prob=c(0.7, 0.3))
train=iris[index==1, ]
test=iris[index==2, ]
result=randomForest(Species~., data=train, ntree=100)
pred=predict(result, newdata=test)
table(condition=test$Species, pred)