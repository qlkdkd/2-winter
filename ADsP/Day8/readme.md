## 02. 데이터 마트
### 1. 데이터 마트의 이해
### (1) 데이터 마트
* 효율적 데이터 분석을 위해서 데이터를 체계적으로 준비할 필요 있음-> 데이터 분석 전 분석 목적에 맞춰 데이터를 수집, 변형하는 과정 필요
* 데이터 마트: 데이터 웨어하우스로부터 특정 사용자가 관심을 갖는 데이터들을 주제별 부서별로 추출하여 모은 비교적 작은 규모의 데이터 웨어하우스다
* 데이터 마트 개발: 분석 목적별, 주제별, 부서별로 데이터를 수집하고 변형하여 한 곳에 모으는 작업
* R에서 제공하는 reshape, sqldf, plyr 등의 패키지 제공

![image](https://github.com/qlkdkd/2-winter/assets/71871927/6ff90765-f538-4efc-9448-02b4e4d1b9f8)

### (2) 데이터 전처리
* 데이터 마트 개발 이후, 빅데이터 분석단계 이전 전처리 단계 거쳐야 함
* 전처리: 데이터 정제 과정과 분석 변수를 처리하는 과정 포함됨
    * 전처리는 정제와 변수 처리를 포함한 광의의 개념
* 데이터 정제 과정: 결측값과 이상값을 처리하는 내용
* 분석 변수 처리 과정: 변수 선택, 차원 축소, 파생변수 생성, 변수 변환, 클래스 불균형(불균형 데이터 처리)

### 2. 데이터 마트 개발을 위한 R 패키지 활용
### (1) reshape 패키지
* 20개의 가까운 함수 보유
* melt와 cast 함수는 데이터 마트를 개발하는데 특화
* [reshape 공식 문서](https://cran.r-project.org/web/packages/reshape/reshape.pdf)
* `melt`: '녹이다'라는 뜻의 melt함수는 데이터를 특정 변수를 기준으로 녹여서 나머지 변수에 대한 세분화된 데이터 제작 가능

```r
#데이터 예제
snum=c(1, 2, 1, 2)
semester=c(1, 1, 2, 2)
math_score=c(60, 90, 70, 90)
english_score=c(80, 70, 40, 60)
score=data.frame(snum, semester, math_score, english_score)
score

library(reshape)
melt(score, id=c("snum", "semester"))
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/c78868ae-bd8b-4260-9140-3b8880f865c2)


* `cast`: '주조하다'라는 의미의 cast함수는 melt에 의해 녹은 데이터를 요약을 위해 새롭게 가공할 수 있게 도와준다
```r
#데이터 예제
#데이터 예제
snum=c(1, 2, 1, 2)
semester=c(1, 1, 2, 2)
math_score=c(60, 90, 70, 90)
english_score=c(80, 70, 40, 60)
score=data.frame(snum, semester, math_score, english_score)
score
melted_score=melt(score, id=c("snum", "semester"))

#학생의 과목별 평균점수를 알고 싶은 경우
cast(melted_score, snum~variable, mean)

#학생의 학기별 평균점수를 알고 싶은 경우
cast(melted_score, snum~semester, mean)
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/a72db252-c36b-4c90-a607-35fc2d1a53b3)

### (2) sqldf 패키지
* sql
