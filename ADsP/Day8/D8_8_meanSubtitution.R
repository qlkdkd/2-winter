#테스트를 위한 결측값을 가진 iris 데이터 생성
copy_iris=iris#원본 데이터를 유지
dim(copy_iris)#기존 데이터 수

#평균 대치법
meanValue=mean(copy_iris$Sepal.Length, na.rm=T)#결측값을 제외한 평균 계산
copy_iris$Sepal.Length[is.na(copy_iris$Sepal.Length)]=meanValue#평균 대치

#centralImputation을 활용한 중앙값 대치
library(DMwR2)
copy_iris[sample(1:150, 30), 1]=NA
copy_iris=centralImputation(copy_iris)