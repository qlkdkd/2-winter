#대응표본 t-검정을 위한 표본 추출
before=runif(100, min=60, max=80)
after=before+rnorm(10, mean=-3, sd=2)
t.test(before, after, alternative='greater', paired=TRUE)