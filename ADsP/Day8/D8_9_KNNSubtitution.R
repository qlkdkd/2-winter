#테스트를 위한 결측값을 가진 iris 데이터 생성
copy_iris=iris
copy_iris[sample(1:150, 30), 1]=NA
copy_iris=knnImputation(copy_iris, k=10)
