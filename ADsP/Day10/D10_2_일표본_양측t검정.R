#일 표본 양측 t-검정을 위한 40kg~100kg 사이 남성 100명의 표본 추출
weights=runif(100, min=40, max=100)
t.test(weights, mu=70, alternative='two.sided')