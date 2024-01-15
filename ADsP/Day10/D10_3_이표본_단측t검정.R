#이 표본 단측 t-검정을 위한 표본 추출
salaryA=runif(100, min=250, max=300)
salaryB=runif(100, min=200, max=400)
t.test(salaryA, salaryB, alternative='less')