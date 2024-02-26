# 3. 자료형
## 3-1. 숫자
### 정수
* int, long
```java
int age=10;//정수형은 int가 기본
long countOfStar=12789471289749L;
```
### 실수
* float, double
```java
float pi=3.14f;
double morePi=3.141592;//실수형은 double형이 기본
```
### 8진수, 16진수
* int형 값 앞에 0을 붙이면 8진수
* 0x를 붙이면 16진수
```java
int octal=023;//10진수 19
int hex=0xC3;//10진수 195
```

### 숫자연산
```java
//기본 사칙연산
public class c3_1 {
    public static void main(String[] args){
        int a=10;
        int b=5;
        System.out.println(a+b);
        System.out.println(a-b);
        System.out.println(a*b);
        System.out.println(a/b);
    }
}
```
```java
//나머지 연산 '%'
public class c3_2 {
    public static void main(String[] args){
        System.out.println(7%3);
        System.out.println(3%7);
    }
}
```

### 증감연산
* ++, --를 이용해 값을 1 증가 또는 감소시킬 수 있음
```java
public class c3_3 {
    public static void main(String[] args){
        int i=0;
        int j=10;
        i++;
        j--;

        System.out.println(i);
        System.out.println(j);
    }
}
```
---
## 3-2. 불
* 불 자료형: 참 또는 거짓의 값을 갖는 자료형

### 불 연산
```
2>1 //true
1==2 //false
3%2==1 //true
"3".equals("2") //false
```
```java
public class c3_4 {
    public static void main(String[] args){
        int base=180;
        int height=185;
        boolean isTall=height>base;

        if(isTall){
            System.out.println("키가 큽니다.");
        }
    }
}
```

---

## 3-3. 문자
* 문자형 자료형은 char을 이용한다
```java
public class c3_5 {
    public static void main(String[] args){
        char a1='a';
        char a2=97;
        char a3='\u0061';

        System.out.println(a1);
        System.out.println(a2);
        System.out.println(a3);
    }
}
```
---
## 3-4. 문자열
* 문자열: 문자로 구성된 문자
* String으로 나타냄
```java
public class c3_6 {
    public static void main(String[] args){
        String a="hello";
        String b="java";
        String c="hello";
        System.out.println(a.equals(b));//false출력
        System.out.println(a==b);//false출력
    }
}
```
### 원시 자료형
* int, long, double, float, boolean, char 자료형
* new키워드로 값을 생성할 수 없음
* 리터럴 표기 방식으로만 값을 세팅할 수 있음
```java
boolean result=true;
char a='A';
int i=100000;
```
* String은 리터럴 표기 방식을 사용할 수 있으나 원시 자료형에 포함되지 않음

### Wrapper 클래스
* Wrapper 클래스는 원시 자료형을 대신하여 사용할 수 있는 자료형으로 객체지향 프로그래밍의 모든 기능을 활용할 수 있게 해준다.
원시 자료형|Wrapper 클래스
---|---
int|Int
long|Long
double|Double
float|Float
boolean|Boolean
char|Char

* ArrayList, HashMap, HashSet 등은 데이터를 사용할 때 Wrapper 클래스를 사용해햐 함:
* -> 이렇게 하면 값 대신 객체를 주고받을 수 있어서 코드를 객체 중심으로 작성하는 데 유리함

### 문자열 내장 메서드
* equals(): 문자열 2개가 같은지를 비교하여 결과값 리턴, = 사용해도 동일한 결과
* indexOf(): 특정 문자열이 시작되는 위치(인덱스 값)를 리턴함
* contains(): 문자열에서 특정 문자열이 포함되어 있는지 여부를 리턴함
* charAt(): 문자열에서 특정 위치의 문자를 리턴
* replaceAll(): 문자열에서 특정 문자열을 다른 문자열로 바꿀 때 사용
* subString(): 문자열에서 특정 문자열을 뽑아낼 때 사용
* toUpperClass(): 문자열을 모두 대문자로 변경
* split(): 문자열을 특정한 구분자로 나누어 문자열 배열로 리턴함
```java
public class c3_6_1 {
    public static void main(String[] args){
        String a="hello";
        String b=new String("hello");
        System.out.println(a.equals(b));
        System.out.println(a==b);
        String a = "Hello java";
        System.out.println(a.indexOf("java"));//문자열 내 특정 문자 위치 검색
        System.out.println(a.contains("java"));//문자열 내 특정 문자 판별
        System.out.println(a.charAt(6));//특정 인덱스에 위치한 문자 출력
        System.out.println(a.replaceAll("java", "world"));//특정 문자열 대체
        System.out.println(a.substring(0, 4));//특정 위치 문자열 제거
        System.out.println(a.toUpperCase());//대문자 변경
        String a="a:b:c:d";
        String[]result=a.split(":");
        System.out.println(result);
    }
}
```
### 문자열 포매팅
* 숫자 바로 대입하기: String.format메서드 사용
* 문자열에 바로 대입하기
* 숫자값을 나타내는 변수 대입하기
```java
public class c3_9 {
    public static void main(String[]args){
        //문자열 포매팅
        System.out.println(String.format("I eat %d apples.", 3));

        //문자열 바로 대입
        System.out.println(String.format("I eat %s apples.", "five"));

        //숫자값 대입
        int number=3;
        System.out.println(String.format("I eat %d apples", number));
    }
}
```
* 값을 2개 이상 넣기
```java
public class c3_9_1 {
    public static void main(String[]args){
        int number=10;
        String day="three";
        System.out.println(String.format("I ate %d apples. So I was sick for %s day", number, day));
    }
}
```

* 문자열 포맷 코드 종류
종류|설명
---|---
%s|String, 또는 모든 형태의 값
%c|char
%d|int
%f|float
%lf|double
%o|8진수
%x|16진수
%%|특수문자
```java
public class c3_9_2 {
    public static void main(String[]args){
        System.out.println(String.format("I have %s apples", 3));
        System.out.println(String.format("rate is %s", 3.234));
    }
}
```

---

## 3-5. StringBuffer
### append
문자열 추가기능. toString()메서드 사용하여 StringBuffer를 String자료형으로 변경 가
```java
package c3_5;

public class c3_5_1_append {
    public static void main(String[]args){
        StringBuffer sb=new StringBuffer();
        sb.append("hello");
        sb.append(" ");
        sb.append("jump to java");
        String result=sb.toString();
        System.out.println(result);
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/611da256-f4f5-4234-bb3f-bbd0073b818b)
StringBuffer 대신 String 사용
```java
package c3_5;

public class c3_5_2_append2 {
    public static void main(String[]args){
        String result="";
        result+="hello";
        result+=" ";
        result+="jump to java";
        System.out.println(result);
    }
}
```
차이점: 첫번째 예제는 StringBuffer객체를 한번만 생성하지만, 두번째 예제에서는 +연산마다 새로운 객체가 만들어지므로 4개의 객체가 생성됨.

그러나 StringBuffer자료형은 String보다 무거운 편

### Insert
특정 위치에 원하는 문자열 삽입
```java
package c3_5;

public class c3_5_3_Insert {
    public static void main(String[]args) {
        StringBuffer sb=new StringBuffer();
        sb.append("jump to java");
        sb.insert(0, "hello");
        System.out.println(sb.toString());
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/48daa8df-ecb0-40dd-b284-149e33855433)

### substring
String 자료형의 substring 메서드와 동일하게 작용됨
```java
package c3_5;

public class c3_5_4_substring {
    public static void main(String[]args){
        StringBuffer sb=new StringBuffer();
        sb.append("Hello jump to java");
        System.out.println(sb.substring(0, 4));
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/61744bb2-550b-46ca-8e02-263ac0fcd083)

---

## 3-6. 배열
```
int[] odds={1, 3, 5, 7, 9};
String[] weeks={"월", "화", "수", "목", "금", "토", "일"};
```

