#테스트를 위한 결측값을 가진 iris 데이터 생성
copy_iris=iris#원본 데이터 유지
dim(copy_iris)#기존 데이터 수

copy_iris[sample(1:150, 30), 1]=NA#Sepal.length에 30개의 결측값 생성
copy_iris=copy_iris[complete.cases(copy_iris), ]# 단순대치법
dim(copy_iris)#30개의 결측값을 보유한 행을 제거한 데이터의 수