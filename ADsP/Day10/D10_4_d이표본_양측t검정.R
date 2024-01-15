#이표본 양측 t-검정을 위한 표본 추출
speedK=runif(100, min=30, max=40)
speedL=runif(100, min=25, max=35)
t.test(speedK, speedL, alternative='two.sided')