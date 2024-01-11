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
* sqldf: 표준 SQL문장 활용하여 R에서 데이터프레임을 가능하게 해주는 패키지, SAS에서 PROC SQL과 같은 역할 함
```r
#데이터 예제
snum=c(1, 2, 1, 2)
semester=c(1, 1, 2, 2)
math_score=c(60, 90, 70, 90)
english_score=c(80, 70, 40, 60)
score=data.frame(snum, semester, math_score, english_score)
score

library(sqldf)
sqldf('select * from score where snum=1')
sqldf('select avg(math_score), avg(english_score) from score group by snum')
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/95071594-058b-48d2-b92a-bcf399f4753d)

### (3) plry 패키지
* apply함수 기반, 데이터 분리-재결합하는 가장 필수적인 데이터 제공. 입출력되는 자료구조에 따라 여러가지 함수 지원
* ddply: 가장 많이 쓰임
* [plyr 공식 문서](https://cran.r-project.org/web/packages/plyr/plyr.pdf)
![image](https://github.com/qlkdkd/2-winter/assets/71871927/7c477032-708e-4142-be7c-649f8a912913)

```r
#데이터 예제
class=c('A', 'A', 'B', 'B')
math=c(50, 70, 60, 90)
english=c(70, 80, 60, 80)
score=data.frame(class, math, english)
score

library(plyr)
#summarise: 데이터 요약, transform: 데이터 추가)
ddply(score, "class", math_avg=mean(math), eng_avg=mean(english))

ddply(score, "class", transform, math_avg=mean(math), eng_avg=mean(english))
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/5c11efd0-6a18-4766-bd82-8e6cad2a7533)

```r
#데이터 예제
year=c(2012, 2012, 2012, 2012, 2013, 2013, 2013, 2013)
month=c(1, 1, 2, 2, 1, 1, 2, 2)
value=c(3, 5, 7, 9, 1, 5, 4, 6)
data=data.frame(year, month, value)
data

library(plyr)
#기준이 되는 변수를 2개 이상 묶어서 사용 가능
ddply(data, c("year", "month"), summarise, value_avg=mean(value))

#원하는 임의의 함수를 작성해서 사용 가능
ddply(data, c("year", "month"), function(x){
  value_avg=mean(x$value)
  value_sd=sd(x$value)
  data.frame(avg_sd=value_avg/value_sd)
})
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/2671e392-7a2d-41ec-9ad7-db4d31896048)

### (4) data.table 패키지
* 데이터 테이블은 데이터프레임과 유사하지만, 특정 칼럼별로 주솟값을 값는 인덱스를 생성하여 연산 및 검색을 빠르게 할 수 있는 데이터 구조이다
* 기존 데이터프레임보다 적게는 4배에서 크게는 100배에 가까운 빠른 속도로 데이터를 탐색, 정렬, 병합할 수 있게 한다

```r
year=rep(c(2012:2015), each=12000000)
month=rep(rep(c(1:12), each=1000000), 4)
value=runif(48000000)

library(data.table)
#같은 데이터로 4800만개의 행을 갖는 데이터프레임과 데이터 테이블을 생성
DataFrame=data.frame(year, month, value)
DataTable=as.data.table(DataFrame)

#데이터프레임의 검색시간을 측정
system.time(DataFrame[DataFrame$year==2012, ])
#데이터테이블의 검색시간을 측정
system.time(DataTable[DataTable$year==2012, ])

#명령문의 시작부터 종료까지 0.25초
#데이터 테이블의 연도 칼럼에 키 값을 설정

#칼럼이 키 값으로 설정될 경우 자동 오름차순 정렬
setkey(DataTable, year)
#키값으로 설정된 칼럼과 J 표현식을 사용한 검색 시간 측정
system.time(DataTable[J(2012)])

#명령문의 시작부터 종료까지 0.12초
#키 값을 활용한 데이터 테이블의 탐색 속도가 더 빠른 것을 확인할 수 있다
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/8edb35a5-e047-4695-9c59-105d33231198)

## 03. 데이터 탐색
### 1. 탐색적 데이터 분석(EDA)
### (1) 탐색적 데이터 분석
* 탐색적 데이터 분석(EDA; Exploratory Data Analysis): 데이터를 이해하고 의미있는 관계를 찾아내기 위해 데이터의 통계값과 분포 등을 시각화하고 분석하는 것
* 탐색적 데이터 분석 통해 데이터 특성을 이해하고 이를 토대로 분석 모델을 구축할 수 있다

### (2) 붓꽃(IRIS) 데이터를 이용한 탐색적 데이터 분석의 예
* 붓꽃(IRIS) 데이터는 통계학자 피셔의 붓꽃 분류 연구에 기반한 데이터로 R 실습에 자주 활용됨
* 세가지 붓꽃 종(Species)에 따른 꽃받칩 길이(Sepal Length), 꽃받침 폭(Sepal Width), 꽃잎 길이(Petal Length), 꽃잎 폭(Petal Width)을 기록한 데이터이다
* R에 기본 데이터로 내장-> iris라는 데이터프레임 불러오기 가능

```r
head(iris, 3)

#기초 통계량
summary(iris)

#데이터 구조 파악
str(iris)
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/97d3bd54-ce37-4ddf-a114-fa04301f1f7b)

### 2. 결측값
### (1) 결측값
* 존재하지 않는 데이터를 의미, NA(Not Available)로 표현
   * 데이터를 수집하는 환경에 따라 null, 공백, -1 등으로 표현
* 데이터 분석에 앞서 결측값 처리는 중요한 과제 중 하나
   * 일반적으로 결측값 삭제
   * 경우에 따라 의미를 갖는 경우 있음(예: 특정 설문 문항에 대해 결측값이 많다는 것은 해당 문항의 민감함을 나타내는 측도로써 활용 가능)
* 패키지: Amelia, DmwR2

### (2) 결측값 대치 방법
1. 단순 대치법
   * 결측값 존재하는 데이터 삭제하는 방법
   * 가장 쉬운 결측값 처리 방법, 결측값이 많은 경우 대량의 데이터 손실 발생 가능
   * 단순 대치법 함수: `complete`, `cases`
   * complete.cases: 하나의 열에 결측값 존재하면 FALSE, 존재하지 않으면 TRUE 반환
![image](https://github.com/qlkdkd/2-winter/assets/71871927/16484dfb-eef6-4eb1-a311-0444601f5300)
```r
#테스트를 위한 결측값을 가진 iris 데이터 생성
copy_iris=iris#원본 데이터 유지
dim(copy_iris)#기존 데이터 수

copy_iris[sample(1:150, 30), 1]=NA#Sepal.length에 30개의 결측값 생성
copy_iris=copy_iris[complete.cases(copy_iris), ]# 단순대치법
dim(copy_iris)#30개의 결측값을 보유한 행을 제거한 데이터의 수
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/6bf1c356-1caa-426d-a56e-ebb6deb3d694)

2. 평균 대치법
   * 관측 또는 실험으로 얻은 데이터를 대표할 수 있는 평균 혹은 중앙값으로 결측값 대치-> 불완전한 자료를 완전한 자료로 만드는 방법
   * 비조건부 평균 대치법: 데이터의 평균값으로 결측값 대치
   * 조건부 평균 대치법: 실제 값들을 분석하여 회귀분석을 활용하는 대치 방법
   * 평균값 혹은 중앙값 직접 구하여 결측값 대치, DMwR2패키지의 central Imputation함수 사용하여 쉽게 대치
![image](https://github.com/qlkdkd/2-winter/assets/71871927/0af748d7-138b-4098-ade1-b1ccde5f8358)
```r
#테스트를 위한 결측값을 가진 iris 데이터 생성
copy_iris=iris#원본 데이터를 유지
dim(copy_iris)#기존 데이터 수

#평균 대치법
meanValue=mean(copy_iris$Sepal.Length, na.rm=T)#결측값을 제외한 평균 계산
copy_iris$Sepal.Length[is.na(copy_iris$Sepal.Length)]=meanValue#평균 대치

#centralImputation을 활용한 중앙값 대치
library(DMwR2)
copy.iris[sample(1:150, 30), 1]=NA
copy_iris=centralImputation(copy_iris)
```

3. 단순 확률 대치법
   * 평균 대치법에서 추정량 표준 오차의 과소 추정 문제를 보완하고자 고안된 방법. 대표적인 방법: KNN(K-Nearest Neighbor) 방법
![image](https://github.com/qlkdkd/2-winter/assets/71871927/4b534fa5-15b0-4686-a10d-c9807572cb34)
   * KNN방법
      * K 최근접 이웃 알고리즘, 주변 K개의 데이터 중 가장 많은 데이터로 대치하는 방법
      * K=1인 경우 결측값이 파란색이 유력
      * K=4인 경우 결측값으로 검정색이 유력
      * -> 주변 몇 개의 데이터가 결측값을 대치하기 좋은가에 대한 K를 선정하기 쉽지 않음
![image](https://github.com/qlkdkd/2-winter/assets/71871927/29dbba2b-7524-4927-b691-e1b956f93340)

```r
#테스트를 위한 결측값을 가진 iris 데이터 생성
copy_iris=iris
copy_iris[sample(1:150, 30), 1]=NA
copy_iris=knnImputation(copy_iris, k=10)
```

### 3. 이상값
### (1) 이상값
* 이상값: 다른 데이터와 비교하였을 때 극단적으로 크거나 극단적으로 작은 값
* 원인: 입력자의 실수, 설문응답자의 악의적인 의도
* 제거하는 것이 일반적, 의미를 갖는 경우도 있으므로 목적이나 종류에 따라 사용자의 적절한 판단이 필요하다

### (2) 이상값 판단
1. ESD(Extreme Studentized Deviation)
   * ESD: 평균으로부터 '표준편차 3'만큼 떨어진 값들을 이상값으로 인식하는 방법
   * 정규분포에서 99.7%의 자료들은 표준편차 3 안에 위치-> 전체 데이터의 약 0.3%를 이상값으로 구분
![image](https://github.com/qlkdkd/2-winter/assets/71871927/c63b6aaa-3e5e-4767-8d4e-e6804c132152)

2. 사분위수
   * 사분위수를 이용하여 25%에 해당하는 값(Q1)과 75%에 해당하는 값(Q3)을 활용하여 이상치를 판단하는 방법
   * 가장 작은 하한 사분위수: Q1, 가장 큰 사분위수인 상한 사분위수: Q3
   * IQR(사분범위; InterQuartile Range): 사분위의 정상 범위인 Q1과 Q3 사이를 의미
   * 일반적으로 사분범위에서 1.5분위수를 벗어나는 경우 이상치로 판단
      * $Q1-1.5*IQR$보다 작거나 $Q3+1.5*IQR$보다 큰 경우 이상값으로 간주
![image](https://github.com/qlkdkd/2-winter/assets/71871927/a67d682f-3c62-4ac2-89f2-090ccea7b5bd)
