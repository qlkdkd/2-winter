# 2. 변수와 자료형

## 2-1. 컴퓨터는 데이터를 어떻게 표현할까?

### 컴퓨터에서 수를 표현하는 방법
* 우리가 사용하는 모든 데이터는 컴퓨터 내부에서 0과 1로 이루어짐
* 비트(bit): 0또는 1로 표현할 수 있는 최소 단위
* 1바이트(bit)=8비트

* 10진수와 2진수
    * 10진수: 0~9까지 한자릿수고 10부터는 2자릿수
    * 2진수: 0과 1로만 표현되는 수
 
![image](https://github.com/qlkdkd/2-winter/assets/71871927/012b4e29-1134-4543-a296-3f103a77ebf1)

* 2진수, 16진수, 8진수
    * 2진수는 비트값 그대로 표현 가능, 그러나 길이가 너무 길어서 8진수나 16진수로 표현하기도 함
        * 자바에서 표현할 때 앞에 0b 붙임
    * 8진수: 3개의 비트 필요, 자바에서 표현할 때 0을 붙임
    * 16진수: 4개의 비트 필요, 자바에서 표현할 때 0x를 붙임
![image](https://github.com/qlkdkd/2-winter/assets/71871927/46b52936-2fe6-42bf-8cf6-3cce44f830fe)

### 부호 있는 수를 표현하는 방법
* 부호 또한 0과 1로만 표현
* 부호 비트(Most Significant Bit): 부호를 나타내는 비트. 0이면 양수, 1이면 음수
* 예: 8비트로 나타낸 5와 -5
![image](https://github.com/qlkdkd/2-winter/assets/71871927/969cd513-9637-42af-8dfd-beaaf050abc6)
![image](https://github.com/qlkdkd/2-winter/assets/71871927/bac037b2-ab00-4731-8675-5125fb57103e)

* 2의 보수
    * 보수: 말 그대로 보충해주는 수
    * 어떤 특정한 10진수 n이 있을 때 3에 대한 n의 보수는 n-3
    * 2진수의 경우 0011의 보수는 1101(0011->1100+1)
        * 0011+1101=0000
     
---

## 2-2. 변수란 무엇일까?
### 변수 선언하고 값 대입하기
* 변수: 값을 저장하는 공간의 이름
* 자료형: 변수를 사용하기 위해 어떤 형태의 자료를 저장할 것인지 정해주는 것
    * 예: 사람나이: 정수형(int), 사람 이름: 문자열(string)
```java
public class variable1 {
    public static void main(String[] args){
        int level;
        level=10;
        System.out.println(level);
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/d24e18b3-8641-4bca-8d4d-e6f888a1e88d)

* package: 소스 코드의 묶음
* variable1: 클래스 이름
* main(): 자바 프로그램이 첫 시작되는 함수

### 변수 초기화하기
```java
public class variable2 {
    public static void main(String[] args){
        int level=10;
        System.out.println(level);
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/200b451e-2692-4393-88b0-cfdfb3dd5bad)
* 초기화: 변수에 처음 값을 대입하는 것
* 이처럼 변수 선언 동시에 값을 바로 대입 가능

### 변수 이름 정하기
제약 사항|예시
---|---
변수 이름은 영문자(대문자, 소문자)나 숫자를 사용할 수 있고, 특수 문자 중에는 $, _만 사용할 수 있다.|g_level(O), count100(O), _master(O), $won(O)
변수 이름은 숫자로 시작할 수 없다|27day(X), 1abc(X)
자바에서 이미 사용중인 예약어는 사용할 수 없다|while(X), int(X), break(X)

* 변수 이름은 프로그램에서 계속 사용하기 때문에 사용 목적에 맞게 의미를 잘 부여해서 만드는 것이 좋다

---

## 2-3. 변수가 저장되는 공간의 특성, 자료형
### 변수와 메모리
* 변수는 컴퓨터 내부의 메모리 공간에 저장
* 메모리: 프로그램이 실행되는 작업 공간
* 변수를 선언한다는 것은 선언한 변수 이름으로 어떤 위치에 있는 메모리를 얼마만큼의 크기로 사용하겠다는 뜻
* 예: `int level;` 문장을 선언하면, 메모리에 4바이트(int형) 크기의 공간이 level이라는 이름으로 할당
![image](https://github.com/qlkdkd/2-winter/assets/71871927/e4f6ad2a-5edf-42e2-9650-682f1133ff13)

### 기본 자료형의 종류
바이트\타입|정수형|문자형|실수형|논리형
---|---|---|---|---
1바이트|byte|-|-|boolean
2바이트|short|char|-|-
4바이트|int|-|float|-
8바이트|long|-|double|-
