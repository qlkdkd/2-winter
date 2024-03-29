# 02. 분류 분석
---
## 1. 로지스틱 회귀분석
### (1) 로지스틱 회귀분석 개요
#### 1. 로지스틱 회귀분석
* 로지스틱 회귀분석은 회귀분석을 분류에 이용한 방법
* 독립변수의 선형결합을 이용해 사건의 발생 가능성을 예측하는 분석 방법, 종속변수가 범주형 변수일 때 사용 가능
* 종속변수가 바로 범주형 변수를 반환하지 않고 각 범주(집단)에 포함될 확률값을 반환하여 분류

#### 2. 로지스틱스 회귀분석의 변수
* 종속변수가 속할 수 있는 집단이 두 개로 이진분류가 기본
* 다중 로지스틱 회귀분석: 세 개 이상의 집단을 분류하는 경우
* 독립변수가 연속형이면서 종속변수가 범주형일 때 가능. 독립변수가 범주형일 경우 더미변수로 변환
* 독립변수가 어떤 값을 가지는 상관없이 종속변수는 확률값을 가짐
  * 종속변수는 항상 0과 1 사이의 값을 가짐
  * Odds, Logit, sigmoid
 
### (2) 로지스틱 회귀분석의 알고리즘
#### 1. 오즈(Odds)
* 성공할 확률이 실패할 확률의 몇 배인지를 나타내는 값
* 로지스틱 회귀분석에서 이 오즈를 사용하여 각 범주(집단)에 분류될 확률 값을 추정
* $x$: 독립변수, $P$: 성공확률, $1-P$: 실패확률
* -> $\frac{P}{1-P}$: 오즈 값
* 오즈 값에 로그를 취하면
$$ln(\frac{P}{1-P})=\alpha+\beta_1X_1+\beta_2X_2+...+\beta_kX_k$$
* 위 로지스틱 회귀분석의 추정식으로부터 오즈값을 도출하면 아래 식을 얻을 수 있음
$$\frac{P}{1-P}=e^{\alpha+\beta_1X_1+\beta_2X_2+...+\beta_kX_k}$$
* 이는 독립변수 $X_k$가 1만큼 증가할 때 $e$의 $\beta_k$제곱만큼 오즈값(성공 확률)이 증가함을 의미

#### 2. 로짓 변환
* 오즈의 한계
  * 음수를 가질 수 없음
  * 확률값과 오즈의 그래프는 비대칭성을 띔
* 로짓: 오즈에 로그값을 취한 것으로 오즈의 한계를 극복한 것
$$log(Odds)=log(\frac{P}{1-P})$$
* 오즈의 범위가 무한대로 확장, 로짓값의 그래프는 성공확률 0.5를 기준으로 대칭 형태를 띠게 됨
$$-\infty < log(Odds) < \infty$$
* 로짓 변환을 이용한 로지스틱 회귀분석
$$log(Odds)=\log(\frac{P}{1-P})=beta_1X_1+\beta_2X_2+...+\beta_kX_k$$

#### 3. 시그모이드 함수
* 로지스틱 회귀분석과 인공신경망 분석에서 활성화함수로 활용되는 대표적인 함수 중 하나
* 시그모이드 함수는 로짓 함수와 역함수관계-> 로짓함수를 통해 시그모이드 함수 도출됨
$$p=\frac{1}{1+e^{-(\beta_0+\beta_1+X)}}$$
![image](https://github.com/qlkdkd/2-winter/assets/71871927/dc463b6a-f7d5-4eaa-9bfa-c457db8b35f6)

---

## 2. 의사결정 나무
### (1) 의사결정나무 개요
#### 1. 의사결정 나무
* 의사결정 나무: 자료를 학습하여 특정 분리 규칙을 찾아내고, 그에 따라 몇 개의 소집단으로 분류하는 분석 방법
  * 상위 도느에서부터 하위 노드로 분류하는 과정이 나뭇가지와 유사한 구조로 나타남
  * 의사결정이 진행되는 방식을 한 눈에 볼 수 있음
* 데이터의 어떤 기준을 바탕으로 분류 기준값을 정의하는지가 알고리즘의 성능에 큰 영향을 미침
* 올바른 분류를 위해서는 상위 노드에서 하위 노드로 갈수록 집단 내에서는 동질성이, 집단 간에는 이질성이 커져야 함

#### 2. 의사결정나무 구성요소
* 회귀트리: 종속변수가 연속형, 분류트리: 종속변수가 이산형
* 의사결정나무는 그림과 같이 상위 노드에서 하위 노드로 가면서 집단이 분류됨
![image](https://github.com/qlkdkd/2-winter/assets/71871927/dbe232d6-e616-4fd1-876f-9d84ed2c5d3b)
* 뿌리마디: 전체 자료를 포함하고 있는 가장 최상위 마디
* 자식마디: 하나의 마디로부터 나온 2개 이상의 하위 마디
* 부모마디: 모든 자식마디의 바로 상위마디
* 끝마디: 자식마디가 없는 최하위 마디
* 중간마디: 부모마디와 자식마디를 모두 보유한 마디
* 가지: 부모마디와 자식마디를 연결하는 연결선
* 깊이: 뿌리마디를 제외한 중간마디 수

#### 3. 의사결정나무의 활용
* 세분화: 비슷한 특성을 가진 그룹별로 분할
* 분류: 종속변수의 범주를 몇 개의 등급으로 분류
* 예측: 데이터들로부터 규칙을 찾아내어 이를 예측에 활용
* 차원 축소 및 변수 선택: 여러 개의 독립변수들 중에서 종속변수에 큰 영향을 끼치는 변수를 선택
* 교호작용: 여러 개의 독립변수들을 결합하여 종속변수에 작용하는 규칙을 파악/범주형변수를 병합 또는 연속형 변수를 몇 개의 등급으로 이산화

#### 4. 의사결정나무의 특징
* 장점
  * 모딜이 직관적이고 해석이 용이하다
  * 데이터 정규화 및 단위 변환이 필요하지 않다
  * 다른 기법에 비해 전처리 작업이 어렵지 않다.
  * 이산형 변수, 연속형 변수 모두에 적용이 가능하다.
  * 데이터의 선형성, 정규성 등의 가정이 불필요하다.
  * 이상값에 민감하지 않다.
 
* 단점
  * 독립변수 사이의 중요도를 판단하기 쉽지 않다.
  * 분류 경계선 근처의 자료에 대해 오차가 크다
  * 과적합 발생 가능성이 높다.
 
### (2) 의사결정나무의 분석 과정
#### 1. 성장
* 성장단계: 분석 목적과 자료구조에 따라 적절한 분리 기준과 정지 규칙을 설정해 의사결정나무를 성장시키는 단계
  * 각 마디에서 최적의 분리규칙을 찾아 의사결정나무를 형성
  * 적절한 정지 규칙을 만족하면 나무의 성장을 중단
  * 최적의 분할: 불순도 감소량을 가장 크게 하는 분할
 
* 분리기준
  * 의사결정나무는 데이터를 분류하는 방법으로 불순도 이용
  * 불순도: 자료들의 범주가 한 그룹 안에 얼마나 섞여 있는지를 나타내는 측도, 분류가 잘 되어 하나의 범주로만 구성되어 있으면 불순도 값은 작고, 다양한 범주의 데이터로 구성되어 있으면 불순도 값은 큼
 
* 정지 규칙
  * 의사결정 나무가 너무 많은 분리 기준을 보유하고 있으면 해석상의 어려움 발생
  * 분석자가 설정한 특정 조건하에 현재의 마디에서 더 이상 분리가 일어나지 않고 현재의 마디가 끝마디가 되도록 정지시킴
![image](https://github.com/qlkdkd/2-winter/assets/71871927/c869437a-af2d-4c06-a7d6-4c6633bf82ba)
![image](https://github.com/qlkdkd/2-winter/assets/71871927/efde32c7-dff3-4c27-8878-a9c5f2019565)

#### 의사결정나무 분리 기준
* 종속변수가 범주형일 경우: 분류트리 사용, 분리 기준으로 카이제곱 검정, 지니 지수, 엔트로피 지수 등을 사용
* 종속변수가 연속형일 경우: 회귀트리 사용, 분리 기준으로 분산분석에서의 F통계량, 분산의 감소량 등 사용
* 보통 분류트리 많이 사용, 종속변수 연속형이면 회귀트리 사용
* 지니 지수: 불순도를 나타내는 값, 낮을수록 좋음
* 엔트로피 지수: 순수도를 나타내는 값, 높을수록 좋음

![image](https://github.com/qlkdkd/2-winter/assets/71871927/875602c6-510e-4694-8299-0047f7c6e65d)
![image](https://github.com/qlkdkd/2-winter/assets/71871927/518c4f32-75f9-478e-b700-dff6e033e780)
![image](https://github.com/qlkdkd/2-winter/assets/71871927/c1b6de36-f440-4aeb-80b1-b386dcbef1e6)

#### 2. 가지치기
* 모형이 복잡한 경우 과적합이, 너무 단순한 경우 과소적합 발생
* 의사결정나무의 성장이 끝났지만 모형이 너무 복잡한 경우 과적합 발생
* -> 일부 가지를 적당히 제거하여 적당한 크기의 완성된 의사결정나무 모형으로 만들어줌
![image](https://github.com/qlkdkd/2-winter/assets/71871927/7ca96861-508e-4839-93a8-33ca8d5da7c6)

#### 3. 타당성 평가
* 형성된 의사결정나무를 평가하는 단계
* 검증용 데이터를 이용해 모델의 예측 정확도 평가
* 이익 도표 등의 평가 지표를 이용해 의사결정나무를 평가

#### 4. 해석 및 예측
* 구축된 의사결정나무를 예측에 적용하고 이를 해석하는 단계

### (3) 의사결정나무 예시
```r
#데이터 마이닝을 위한 데이터 분할 시행
#train데이터는 index값을 1로 70%, test데이터는 index값을 2로 30% 생성
index=sample(c(1, 2), nrow(iris), replace=T, prob=c(0.7, 0.3))
train=iris[index==1, ]
test=iris[index==2, ]
library(rpart)
result=rpart(data=train, Species~.)

#margin으로 그래프 외곽의 여백의 두께를 조정
plot(result, margin=0.3)
text(result)

#train데이터로 구축된 모형을 test데이터로 검정
pred=predict(result, newdata=test, type='class')
#test데이터의 실제값(condition)과 예측값(predict)으로 표를 작성
table(condition=test$Species, pred)

result
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/0609e64b-7b31-4323-bbc0-8dbaf06d263f)
![image](https://github.com/qlkdkd/2-winter/assets/71871927/99b753f6-ca81-4a13-9ef5-3350f3801fb0)
![image](https://github.com/qlkdkd/2-winter/assets/71871927/8a068256-f014-4c7d-a474-490d17012abe)

---

## 3. 앙상블 분석
### (1) 앙상블 분석 개요
* 데이터마이닝에서는 여러 개의 모형을 생성 및 조합하여 예측력이 높은 모형을 만드는 것을 의미
* 배깅(bagging), 부스팅(boosting), 랜덤 포레스트(random forest)
* 각각의 예측모형에서 독립적으로 산출된 결과를 종합하여 예측의 정확도를 향상시킬 수 있음
  * 종속변수의 형태에 따라 회귀분석과 분류분석에 모두 적용할 수 있음
* 결과가 수치형 데이터: 값들의 평균을 통해 최종 결과를 예측, 결과가 범주형 데이터: 다수결 방식으로 최종 결과 예측

### (2) 앙상블 분석의 종류
#### 1. 배깅
* Bootstrap Aggregating의 줄임말, 여러 개의 붓스트랩을 집계하는 알고리즘
* 붓스트랩: 원본 데이터와 같은 크기의 표본을 랜덤복원추출한 샘플 데이터를 의미, 특히 모델 구축을 위한 훈련용(train)데이터를 가리킴
  * 복원추출이기 때문에 하나의 붓스트랩에는 같은 데이터가 여러 번 추출될 수 있지만, 그렇지 않을 수 있음
* 앙상블 분석에서 각각의 모델을 분류기(classifier)라고 부르며, 흔히 의사결정나무 사용
  * 여러 개의 분류기에 의한 결과를 놓고 다수결에 의하여 최종 결괏값을 선정하는 작업을 보팅(voting)이라 함
* 분석을 위한 데이터 모집단의 분포를 현실적으로 알 수 없음
  * 그러나 하나의 붓스트랩을 구성할 때 원본 데이터로부터 복원추출을 진행하기 때문에 붓스트랩은 알 수 없던 모집단의 특성을 더 잘 반영할 수 있음
![image](https://github.com/qlkdkd/2-winter/assets/71871927/0dca9b93-2c48-451c-8974-49f0aef33f56)
```r
library(adabag)
#데이터 분할 70:30
index=sample(c(1, 2), nrow(iris), replace=T, prob=c(0.7, 0.3))
train=iris[index=1, ]
test=iris[index=2, ]

#의사결정나무 개수를 정하는 매개변수 mfinal=100이 기본값이다.
result=bagging(data=train, Species~. )
#첫번째 의사결정나무
plot(result$trees[[1]], margin=0.3)
text(result$trees[[1]])

#백 번째 의사결정나무
plot(result$trees[[100]], margin=0.3)
text(result$trees[[100]])

#train데이터로 구축된 모형을 text데이터로 검정
pred=predict(result, newdata=test)
#test데이터의 실제값과 예측값으로 표를 작성
table(condition=test$Species, pred$class)
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/c112dbfd-c5e7-4dd0-9981-5fc2acd0ee56)
![image](https://github.com/qlkdkd/2-winter/assets/71871927/24f4962d-b009-4475-8d2c-d1ac5f2d9044)
![image](https://github.com/qlkdkd/2-winter/assets/71871927/aff97c68-6068-4a17-b0ee-ff0ecb9d2cbb)

#### 2. 부스팅
* 부스팅은 여러 개의 모형을 구축한다는 점에서 배깅과 유사하지만, 배깅은 각 분류기(모델)이 독립적인데 반해, 부스팅은 독립적이지 않음
* 부스팅은 이전 모델을 구축한 뒤 다음 모델을 구축할 때 이전 분류기에 의해 잘못 분류된 데이터에 더 큰 가중치를 주어 붓스트랩을 구성함
  * 약한 모델들을 결합하여 나감으로써 점차적으로 강한 분류기를 만들어 나가는 과정
* 에이다부스팅(Ada Boosting), Gradient Boost, XGBoost, Light GBM
* 붓스트랩은 재구성하는 과정에서 잘못 분류된 데이터에 더 큰 가중치를 주어 표본을 추출-> 훈련오차 빠르게 줄일 수 있음, 예측 성능 또한 배깅보다 성능이 뛰어남
![image](https://github.com/qlkdkd/2-winter/assets/71871927/0f2ebda4-c997-4bb8-b2d4-a138dbc838fc)
```r
library(adabag)
index=sample(c(1, 2), nrow=(iris), replace=T, prob=c(0.7, 0.3))
train=iris[index==1, ]
test=iris[index==2, ]

#boos=T 값을 주어야 가중치 값을 조정한다.
result=boosting(data=train, Species~., boos=T, mfinal=10)

#첫 번째 의사결정나무
plot(result$trees[[1]], margin=0.3)
text(result$trees[[1]])

#가중치가 조정되면서 생성된 10번째 의사결정 나무
plot(result$trees[[10]], margin=0.3)
text(result$trees[[10]])

#train데이터로 구축된 모형을 test 데이터로 검증
pred=predict(result, newdata=test)
#test데이터의 실제 값(condition)과 예측값(predict)의 표를 확인
pred$confusion
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/0c2ffa6f-a35b-4d55-bf7c-f890ba327e4f)
![image](https://github.com/qlkdkd/2-winter/assets/71871927/ebe52edd-e14f-4fc5-ba99-dd6dba76f866)
![image](https://github.com/qlkdkd/2-winter/assets/71871927/cf4718d7-34be-4d8d-b3a1-2301cd638ef1)

#### 3. 랜덤 포레스트
* 서로 상관성이 없는 나무들로 이루어진 숲을 의미. 방법은 배깅과 유사, 배깅에 더 많은 무작위성을 주는 분석 기법
* 많은 무작위성으로 생성된 서로 다른 여러 개의 트리로 구성-> 여러 개의 약한 트리들의 선형 결합으로 최종 결과를 얻는 모델
* 분류: 다수결로 최종결과를 구함, 회귀의 경우: 평균 또는 중앙값을 구함
* 각 마디에서 최적의 분할이 아닌 표본추출 과정이 한법 더 반복되어 추출된 표본을 대상으로 최적의 분할을 실시
* 랜덤포레스트는 큰 분산을 갖고 있다는 의사결정나무의 단점을 보완-> 분산 감소, 모든 분류기들이 높은 비상관성 갖음-> 일반화 성능 향상, 이상값에 민감하지 않음
![image](https://github.com/qlkdkd/2-winter/assets/71871927/4827c9b9-cf33-4ab9-b773-1ee4f959f2f4)
```r
library(randomForest)
library(adabag)
index=sample(c(1, 2), nrow=(iris), replace=T, prob=c(0.7, 0.3))
train=iris[index==1, ]
test=iris[index==2, ]
result=randomForest(Species~., data=train, ntree=100)
pred=predict(result, newdata=test)
table(condition=test$Species, pred)
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/9b2f4fb5-d33b-48a3-967d-089b591b3e45)
