X=c(1, 1.4, 1.6, 2.0, 2.2, 2.4, 3, 3.3, 3.6)#배기량(L)
Y=c(15, 13, 13, 12, 11, 10.5, 10, 9, 8)#연비(km/L)
result=lm(Y~X)#lm: 선형모델(Linear Model)의 약어
anova(result)