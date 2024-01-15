# 일 표본 단축 t-검정을 위한 지우개 10개의 표본 추출
weights=runif(10, min=49, max=52)
t.test(weights, mu=50, alternative='greater')#반대 방향은 'less' 사용
