## 01. R 기초
### 1. R 설치 및 기본 사용법
### (1) R 설치
1. 다양한 통계분석 프로그램
  * 데이터 분석 도구: SAS, SPSS, S-Link, R
  * 이중 R은 오픈소스라 보편적으로 사용됨
  * R 특징
      * 고차원적 계산 가능-> 복잡한 기법 폭넓게 다룰 수 있음
      * 데이터 시각화 최적화된 환경 제공
      * 한국데이터산업진흥원은 R과 그 개발환경인 R스튜디오 채택
   
2. 통계 및 데이터 분석 프로그램 R
  * 1995년 뉴질랜드 통계학자 로스 이하카, 캐나다 통계학자 로버트 젠틀맨 제작
  * 빠른속도로 확산되고 현재까지도 다양한 분야에서 사용되는 오픈소스 통계 분석 도구

3. R 개발환경인 Rstudio
  * R은 통계 분석을 위한 언어, Rstudio는 사용자가 원하는대로 R명령문을 활용해 구현하게 해주는 통합 개발 환경
  * R언어를 활용하여 작성된 함수에 따라 데이터 분석, 결과 및 시각화된 결과를 사용자에게 개발 환경을 즉시 보여줌
  * R==명령 프롬프트, Rstudio==운영체제(윈도우 등)

### (2) RStudio를 활용한 R기본 사용법
1. 구성
  1. R 스크립트 창
      * 명령문을 작성하여 원하는 라인, 원하는 블록 단위로 문장 실행 가능
      * 만약 R 스크립트 창이 보이지 않는다면 Ctrl+Shift+N 또는 상단의 메뉴에서 File-> New File-> R script 클릭
    
  2. 콘솔창
      * R 스크립트 창과 같이 명령문을 작성하고 실행할 수 있으며, 명령문에 의해 발생한 오류, 결과 등을 확인할 수 있다.
    
  3. 환경과 히스토리
      * 환경: 명령문을 통해 생성된 변수, 불러온 데이터, 생성된 함수 등의 개요 볼 수 있음
      * 히스토리: 그동안 실행된 과거 명령문 볼 수 있음
    
  4. 기타(파일, 산점도, 패키지, 도움말, 기타 뷰어)
      * 현제 작업 디렉토리에 존재하는 파일, 현재 호출되어 있는 패키지, 산점도 같은 시각화 데이터, 도움말 등을 볼 수 있다.
![image](https://github.com/qlkdkd/2-winter/assets/71871927/52602b46-ecf1-4c33-b3e9-16ae66ec4914)

2. R의 데이터 타입
  1. 문자형 타입
      * character, 따옴표나 쌍따옴표로 표시 가능
      * 다른 형식의 변수도 따옴표/쌍따옴표 안에 들어가면 문자형 취급
      * 각 변수의 타입은 class 함수를 이용해 확인할 수 있다.
```r
class('abc')
class("abc")
class('TRUE')
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/bd5db3f9-4618-4b64-a401-5358f7aa230b)

  2. 숫자형 타입
       * 계산이 가능한 데이터
       * numeric(숫자형), double(실수형), integer(정수), complex(복소수)
```r
class('ABC')
class("abc")
class('TRUE')
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/519e8460-c75c-4307-a54b-f6ab0f50fce1)
  3. 논리형 타입
       * 참/ 거짖
```r
class(TRUE)
class(FALSE)
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/535c0da0-6932-466d-b997-9d32e2ffc1ef)

  4. NaN, NA, NULL
      * NaN: Not a Number의 약자, 음수의 제곱근을 구하려고 시도하는 것과 같은 경우에 오류와 함께 숫자가 아님을 반환
      * NA(Not Available): 공간을 차지하는 결측값
      * NULL: 공간을 차지하지 않는 존재하지 않는 값
```r
sqrt(-3)
class(NA)
class(NULL)
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/c96c0b09-7dc8-4dc8-a686-4caf45d3672d)

### 2. R 기본문법
### (1) 연산자
1. 대입 연산자
  * 대입 연산자는 변수에 값을 할당하기 위해 사용하는 연산자
  * 변수에 값이 정상적으로 할당-> RStudio의 오른쪽 상단에 있는 환경 창에 변수와 그에 대응되는 값 혹은 데이터의 개요가 등록됨

대입 연산자|내용
---|---
`<-`, `<<-`, `=`|오른쪽 값을 왼쪽에 대입
`->`, `->>`|왼쪽 값을 오른쪽에 대입

```r
string1<-'abc'
"data"->string2
number1<<- 15
Inf->>num2
logical=NA
```

2. 비교 연산자
  * 대입 연산자에 의하여 할당된 값과 변수를 비교하거나 임의의 숫자, 문자 혹은 논리값을 비교할 수 있음
  * NA는 비교할 값이 존재하지 않으므로 어떤 것과 비교를 하더라도 NA 반환함

비교 연산자|내용
---|---
==|두 값이 같은지 비교
`<`, `>`|초과, 미만을 비교
`!=`|두 값이 다른지를 비교
`<=`, `=>`|이상, 이하를 비교
`is.character`|문자형인지 아닌지를 비교
`is.numeric`|숫자형인지 아닌지를 비교
`is.logical`|논리형인지 아닌지를 비교
`is.na`|NA인지 아닌지를 비교
`is.null`|NULL인지 아닌지를 비교

```r
string1=='abc'
string1!'abcd'
string2>'DATA'
number1<=15
is.na(logical)
is.null(NULL)
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/d1e993a2-ecb4-4c75-9a10-200df81527f6)

3. 산술 연산자
산술 연산자|내용
---|---
`+`|덧셈
`-`|뻴셈
`*`|곱셈
`/`|나눗셈
`%/%`|몫
`%$`|나머지
`^`, `**`|거듭제곱
`exp()`|자연상수 거듭제곱

4. 논리 연산자
논리 연산자|내용
---|---
`!`|not 연산자
`&`|and 연산자
`|`|or 연산자

### (2) R 데이터 구조
1. 벡터
  * 벡터는 타입이 같은 여러 데이터를 하나의 행으로 저장하는 1차원 데이터 구조
  * '연결한다'라는 의미의 'connection'의 c를 써서 데이터를 묶을 수 있다.
  * 벡터를 생성할 때 c안에 콜론(:)을 활용하여 시작값과 끝값을 지정해 벡터를 생성할 수 있다.
```r
v4=c(3, TRUE, FALSE)
v4
v5=c('a', 1, TRUE)
v5
v1=c(1:6)
v1
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/15276792-bc72-45b7-aa5f-bec581aa192c)

2. 행렬
  * 2차원 구조를 가진 벡터.
  * 벡터의 성질-> 행렬에 저장된 모든 데이터는 같은 타입이여야 함
  * 그렇지 못할 경우 자동으로 타입 변환 수행
  * matrix를 사용하여 행렬을 만들 경우, 행의 수를 결정하거나 ncol을 사용하여 열의 수를 결정할 수 있다.
  * matrix를 사용하여 행렬을 만들 경우 행렬의 값들이 열로 저장되는 것을 볼 수 있다. 하지만 byrow옵션에 T(TRUE)를 지정하면 열이 아닌 행으로 저장된다.
  * dim함수를 사용하면 행의 개수와 열의 개수를 지정하여 행렬로 변환 가능
     * dim함수는 벡터를 행렬로 변환할 뿐만 아니라 주어진 행렬이 몇 개의 행과 몇 개의 열로 구성되어 있는지 행렬의 크기를 나타내기도 한다.
```r
m1=matrix(c(1:6), nrow=2)#3*2행렬
m1
m2=matrix(c(1:6), ncol=2)#2*3행렬
m2
m3=matrix(c(1:6), nrow=2, byrow=T)#m1의 전치행렬
m3
v1=c(1:6)
v1
dim(v1)=c(2, 3)
v1
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/ebca07eb-37f6-44d7-a4fd-3ee9c5413d46)

3. 배열
  * 3차원 이상의 구조를 갖는 벡터
  * 배열 또한 벡터의 성질-> 하나의 배열에 포함된 데이터는 모두 같은 타입
     * array를 사용하여 배열 만들 수 있음
     * 몇 차원의 구조를 갖는지 dim 옵션에 명시해야 함-> 그렇지 않으면 1차원 벡터 생성
  * dim함수를 사용해서 벡터에 차원을 지정해 만들 수 있음
```r
a1=array(c(1:12), dim=c(2, 3, 2))
a1
a2=c(1:12)
dim(a2)=c(2, 3, 2)
a2
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/b1b075e9-6942-427f-911f-7bc24be911f9)
![image](https://github.com/qlkdkd/2-winter/assets/71871927/4191a763-12d9-4a0e-998c-919ccbb0e749)

4. 리스트
  * 데이터 구조에 상관 없이 사용자가 원하는 모든 것을 저장할 수 있는 자료구조
```r
L=list()
L[[1]]=5
L[[2]]=c(1:6)
L[[3]]=matrix(c(1:6), nrow=2)
L[[4]]=array(c(1:12), dim=c(2, 3, 2))
L
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/1e2df5fa-b7bc-41b5-be00-f61333a87a22)

5. 데이터프레임
  * 데이터 분석을 위한 2차원 구조를 갖는 관계형 데이터구조-> R에서 가장 많이 활용되는 데이터구조
  * 행렬과 같은 모양, 여러개의 벡터로 구성-> 각 열은 서로 다른 타입의 데이터를 가질 수 있음
```r
v1=c(1, 2, 3)
v2=c('a', 'b', 'c')
df1=data.frame(v1, v2)
df1
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/4ed26fa4-88d7-4886-8ff1-542d08e7b8ba)

### (3) R 내장함수
1. 기본함수
![image](https://github.com/qlkdkd/2-winter/assets/71871927/31910109-c825-45eb-ab8b-7cc371160075)
```r
help(paste)
?paste

paste('This is', 'a pen')

seq(1, 10, by=2)

rep(1, 5)

a=1
a
rm(a)
a

ls()
print(10)
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/77e7fc95-0bf8-4047-b542-2df5fb0f8f3e)

2. 통계함수

함수|내용|예시
---|---|---
`sum`|입력된 값의 합을 구한다|`sum(vector1)`
`mean`|입력된 값의 평균을 구한다|`mean(vector1)`
`median`|입력된 값의 중앙값을 구한다|`median(vector1)`
`var`|입력된 값의 표본 분산을 구한다|`var(vector1)`
`sd`|입력된 값의 표본 표준편차를 구한다.|`sd(vector1)`
`max`|입력된 값의 최댓값을 구한다.|`max(vector1)`
`min`|입력된 값의 최솟값을 구한다.|`min(vector1)`
`range`|입력된 값의 최댓값되 최솟값을 구한다.|`range(vector1)`
`summary`|입력된 값의 요약값을 구한다.|`summary(vector1)`
`skewness`|입력된 값의 왜도를 구한다.|`skewness(vector1)`
`kurtosis`|입력된 값의 척도를 구한다.|`kurtosis(vector1)`

```r
v1=c(1:9)
sum(v1)
mean(v1)
median(v1)
var(v1)
sd(v1)
max(v1)
min(v1)
range(v1)
summary(v1)
#첨도와 왜도 값 계산 함수를 사용하려면 별도의 패키지가 필요함
library(fBasics)
skewness(v1)
attr(, "method")

kurtosis(v1)
attr(, "method")
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/a5e66c61-cc8f-4c82-a3f7-b225bf772206)

### (4) R 데이터 핸들링
1. 데이터 이름 변경
  * 2차원 이상의 데이터 구조는 `colnames`와 `rownames` 함수를 사용하여 행과 열의 이름을 알 수 있으며 이름을 지정할 수 있음
```r
m1=matrix(c(1:6), nrow=2)
colnames(m1)=c('c1', 'c2', 'c3')
rownames(m1)=c('r1', 'r2')
m1

colnames(m1)
rownames(m1)

df1=data.frame(x=c(1, 2, 3), y=c(4, 5, 6))
colnames(df1)=c('c1', 'c2')
rownames(df1)=c('r1', 'r2', 'r3')
df1

colnames(df1)
rownames(df1)
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/9045daa4-fe32-41ed-ae0b-ef60b83b4e18)

2. 데이터 추출
   * R이 보유한 여러 데이터 구조 모두 인덱싱 지원-> 대괄호 기호`([, ])`를 사용하여 원하는 위치의 데이터를 손쉽게 얻을 수 있음
   * 행과 열의 이름으로도 데이터를 얻을 수 있음
   * 데이터프레임에서는 `$`기호를 사용하여 원하는 열의 데이터를 구할 수 있으며, `$`와 `[]`를 혼용할 수 있다.

```r
v1=c(3, 6, 9, 12)
v1[2]

m1=matrix(c(1:6), nrow=3)
m1[2, 2]

colnames(m1)=(c('c1', 'c2'))
m1[, 'c1']

rownames(m1)=c('r1', 'r2', 'r3')
m1['r3', 'c2']

v1=c(1:6)
v2=c(7:12)
df1=data.frame(v1, v2)
df1$v1
df1$v2
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/e9c677e3-1581-4290-8d04-f992387cee08)

3. 데이터 결합
  * rbind: 행으로 결합
  * cbind: 열로 결합
  * 행렬과 행렬, 데이터프레임과 데이터프레임의 경우 행의 수 또는 열의 수가 같을 경우 결합 가능
  * 벡터와 벡터의 결합에서는 재사용 규칙으로 인하여 부족한 데이터를 앞에서부터 다시 재활용하여 사용하며 오류와 함께 결과를 반환함
```r
v1=c(1, 2, 3)
v2=c(4, 5, 6)
rbind(v1, v2)
cbind(v1, v2)

v1=c(1, 2, 3)
v2=c(4, 5, 6, 7, 8)
rbind(v1, v2)
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/2702b237-aac4-4dfd-9331-1175937840da)

### (5) 제어문
1. 반복문
  * 특정 부분의 코드가 반복적으로 수행되도록 함
  * for문, while문
```r
for(i in 1:3){
    print(i)
}

data=c("a", "b", "c")
for(i in data){
    print(i)
}

i=0
while(i<5){
    print(i)
    i=i+1
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/1d16bb0b-f74e-4e0a-a736-c4f599d8f39d)

2. 조건문
  * 참과 거짓에 따라 특정 코드가 수행될지 혹은 수행되지 않을지를 결정
```r
number=5
if(number<5){
  print('number는 5보다 작다')
}else if(number>5){
  print("number은 5보다 크다")    
}else{
  print("number은 5와 같다")
}

number=3
if(number<5){
  print("number는 5보다 작다")
}else if(number>5){
  print("number는 5보다 크다")
}else{
  print("number는 5와 같다")
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/167be39c-71ef-4f14-91f6-243c594ee5b4)

3. 사용자 정의 함수
  * 자주 사용되는 구문을 필요할 때마다 작성하지 않고 하나의 함수로 명명하여 저장하였다가 필요한 경우 함수를 호출해서 대신 사용 가능
```r
comparedTo5=function(number){
  if(number<5){
    print("number<5")
  }else if(number>5){
    print("number>5")
  }
  else{
    print("number==5")
  }
}

comparedTo5(10)
comparedTo5(3)
comparedTo5(5)
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/4aa30f9c-c054-477c-b24e-8c8ca8e5fa49)

### (6) 통계 분석에서 자주 사용되는 R 함수
1. 숫자 연산

함수|내용
---|---
`sqrt`|주어진 수의 제곱근을 구한다
`abs`|주어진 수의 절댓값을 구한다
`exp`|자연상수 e의 제곱수를 구한다
`log`|밑이 자연상수인 로그 값을 구한다
`log10`|밑이 10인 로그 값을 구한다
`pi`|원주율을 나타낸다
`round`|주어진 수의 반올림 값을 구한다
`ceiling`|주어진 수를 올림한다
`floor`|주어진 수를 내림한다

2. 문자 연산

함수|내용
---|---
`tolower`|주어진 문자열을 소문자로 바꾼다
`toupper`|주어진 문자열을 대문자로 바꾼다
`nchar`|주어진 문자열의 길이를 구한다
`substr`|문자열의 일부분을 추출한다
`strsplit`|문자열을 구분자로 나누어 쪼갠다
`grepl`|문자열에 주어진 문자가 있는지 확인한다
`gsub`|문자열의 일부분을 다른 문자로 대체한다

```r
data='This is a pen'
tolower(data)
toupper(data)
nchar(data)
substr(data, 9, 13)
strsplit(data, 'is')
grepl('pen', data)
gsub('pen', 'banana', data)
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/31369dda-5a0f-45ba-b844-ec845225ebd4)

3. 벡터 연산

함수|내용
---|---
`length`|주어진 벡터의 길이를 구한다
`paste`|주어진 벡터를 구분자를 기준으로 결합한다.
`cov`|두 수치 벡터의 공분산을 구한다
`cor`|두 수치 벡터의 상관계수를 구한다
`table`|데이터의 개수를 구한다
`order`|벡터의 순서를 구한다

4. 행렬 연산

함수|내용
---|---
`t`|전치행렬을 구한다
`diag`|대각행렬을 구한다
`%*%`|두 행렬을 곱한다

5. 데이터 탐색

함수|내용
---|---
`head`|데이터의 앞 일부분을 보여준다
`tail`|데이터의 뒤 일부분을 보여준다
`quantile`|수치 벡터의 4분위수를 보여준다

```r
x=c(1:12)
head(x, 5)
tail(x, 5)
quantile(x)
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/1b0d916d-4310-4fb0-a53a-c745bde2e7be)

6. 데이터 전처리

함수|내용
---|---
`subset`|데이터에서 조건식에 맞는 데이터 추출함
`merge`|두 데이터를 특정 공통된 열을 기준으로 병합
`apply`|데이터에 열(또는 행)별로 주어진 함수를 적용

```r
df1=data.frame(x=c(1, 1, 1, 2, 2), y=c(2, 3, 4, 3, 3))
df2=data.frame(x=c(1, 2, 3, 4), y=c(5, 6, 7, 8))
subset(df1, x==1)
merge(df1, df2, by=c('x'))

#1은 각 행에 함수를 적용, 2는 각 열에 함수를 적용
apply(df1, 1, sum)
apply(df1, 2, sum)
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/5a0a7772-6e27-4304-8d25-b0e5fea7ccfe)

7. 정규 분포(기본값은 표준 정규분포로 mean=0, sd=1)

함수|내용
---|---
`dnorm`|정규 분포에서 주어진 값에서 함수 값을 구함
`rnorm`|정규 분포에서 주어진 개수만큼 표본을 구함
`pnorm`|정규 분포에서 주어진 값보다 작을 확률 값을 구함
`qnorm`|정규 분포에서 주어진 넓이 값을 갖는 x값을 구함

8. 표본추출

함수|내용
---|---
`runif`|균일 분포에서 주어진 개수만큼 표본을 추출함
`sample`|주어진 데이터에서 주어진 개수만큼 표본을 추출함

9. 날짜

함수|내용
---|---
`Sys.date`|연, 월, 일 출력
`Sys.time`|연, 월, 일, 시간 출력
`as.Date`|주어진 데이터를 날짜 형식으로 변환
`format`|원하는 날짜 형식으로 변경
`as.POSIXct`|타임 스탬프를 날짜 및 시간으로 변환함

```r
Sys.Date()
Sys.time()
as.Date("2020-01-01")

#%Y는 연도 네자리, %y는 연도 두자리, %m은 월, %d는 일, %A는 요일 등
format(Sys.Date(), '%Y/%m/%d')
format(Sys.Date(), '%A')

#시간 데이터를 unclass하면 타임 스탬프를 얻을 수 있음
unclass(Sys.time())
as.POSIXct(1577804401, origin='1970-01-01')
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/d1d88d38-5d4d-4f82-bde6-0440f1418bc7)

10. 산점도

함수|내용
---|---
`plot`|주어진 데이터의 산점도를 그린다
`abline`|산점도에 추가 직선을 그린다

```r
x=c(1:10)
y=rnorm(10)
#파라미터 type에서 p는 점, l은 직선, b는 점과 직선, n은 아무것도 표시하지 않음을 의미
#xlim으로 x축의 범위, ylim으로 y축의 범위를 설정할 수 있다
#xlab, ylab으로 각 축의 이름을 지정할 수 있다
#main으로 산점도의 이름을 정할 수 있다
plot(x, y, type='l', xlim=c(-2, 12), ylim=c(-3, 3), xlab='X axis', ylab='Y axis', main='Test plot')
abline(v=c(1, 10), col='blue')
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/273f44f1-3e47-4009-99aa-823682f45b5e)

11. 파일 입출력

함수|내용
---|---
`read.csv`|csv파일을 불러옴
`write.csv`|주어진 데이터를 csv파일로 저장
`saveRDS`|분석 모델 및 R 파일을 저장
`readRDS`|분석 모델 및 R 파일 불러옴

12. rlxk

함수|내용
---|---
`install.packages`|패키지 설치
`library`|설치된 패키지 호출
`getwd`|작업 디렉터리 확인
`setwd`|작업 디렉터리 설정
