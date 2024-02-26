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

### 배열 길이 설정하기
```java
package c3_6;

public class c3_6_1_arraySetting {
    public static void main(String[]args){
        String[] weeks=new String[7];
        weeks[0]="Mon";
        weeks[1]="Tue";
        weeks[2]="Wed";
        weeks[3]="Thi";
        weeks[4]="Fri";
        weeks[5]="Sat";
        weeks[6]="Sun";
    }
}
```

### 배열값에 접근하기
인덱스 이용
```java
package c3_6;

public class c3_6_2_arrayAccess {
    public static void main(String[]args){
        String[] weeks={"월", "화", "수", "목", "금", "토", "일"};
        System.out.println(weeks[3]);
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/9ec5cb9c-f9ce-4660-9a52-999d6f51898c)

### 배열의 길이 구하기
* 길이 구하기: length()메서드 이용
* 길이 전체 출력: for문 이
```java
package c3_6;

public class c3_6_3_arrayLength {
    public static void main(String[]args){
        String[] weeks={"월", "화", "수", "목", "금", "토", "일"};
        for(int i=0; i<weeks.length; i++){
            System.out.println(weeks[i]);
        }
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/2fdc22b6-da6b-4702-be0b-3f0f24a2e9ee)

---

## 3-7. 리스트
배열과 리스트의 차이: 배열은 길이가 정해져 있으나, 리스트는 가변형 자료이다.
### ArrayList
* 리스트 자료형: ArrayList, Vector, LinkedList
#### add:리스트의 요솟값 추가
#### get: 리스트의 특정 인덱스의 값 추출
#### size: 리스트의 요소의 개수 리턴
#### remove: 리스트에서 객체에 해당하는 항목을 삭제한 뒤 그 결과로 불값 리턴
```java
package c3_7;
import java.util.ArrayList;
public class c3_7_1_add {
    public static void main(String[]args){
        ArrayList pitches=new ArrayList();
        //add: 리스트의 요솟값 추가
        pitches.add("138");
        pitches.add("129");
        pitches.add("142");
        System.out.println(pitches);
        //get: 리스트의 특정 요솟값 추출
        System.out.println(pitches.get(1));
        //size: 리스트의 요소의 개수 리턴
        System.out.println(pitches.size());
        //contains: 리스트 안에 해당 항목이 있는지 판별-> 불값 리턴
        System.out.println(pitches.contains("142"));
        //remove: 리스트에서 객체에 해당하는 항목을 삭제한 뒤 그 결과로 불값 리턴
        System.out.println(pitches.remove("129"));
        System.out.println(pitches);
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/162f8346-13b6-4da5-9c5f-be11c40ee2b7)

### 제네릭스
자료형을 안전하게 사용할 수 있도록 만들어주는 기능. 자료형을 강제로 바꿀 때 생길 수 있는 캐스팅 오류를 줄일 수 있음

일반적인 방식|선호되는 방식
---|---
`ArrayList<String>pitches=new ArrayList<String>();`|`ArrayList<String> pitches=new ArrayList<>();`

제네릭을 사용하지 않은 경우: 리스트 내 값을 가져올 때 매번 Object자료형에서 String 자료형으로 형 변환을 해야 함
```java
package c3_7;

import java.util.ArrayList;

public class c3_7_2_nonGenerics {
    public static void main(String[]args){
        ArrayList pitches=new ArrayList();
        pitches.add("138");
        pitches.add("129");

        String one=(String)pitches.get(0);
        String two=(String)pitches.get(1);
    }
}
```
제네릭을 한 번에 사용하면 불필요한 코딩 줄일 수 있음
```java
package c3_7;
import java.util.ArrayList;
public class c3_7_3_Generics {
    public static void main(String[]args){
        ArrayList<String> pitches=new ArrayList();
        pitches.add("138");
        pitches.add("129");

        //String one=(String)pitches.get(0);
        //String two=(String)pitches.get(1);
    }
}
```

### 다양한 방법으로 ArrayList 만들기
```java
//배열을 ArrayList로 변환
package c3_7;
import java.util.ArrayList;
import java.util.Arrays;
public class c3_7_4_ArrayList1 {
    public static void main(String[]args){
        String[] data={"138", "129", "142"};
        ArrayList<String> pitches=new ArrayList<>(Arrays.asList(data));
        System.out.println(pitches);
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/30516a1c-98df-4ccc-ab5a-61e57f640ed7)
```java
//String 자료형을 여러개 전달하여 생성
package c3_7;
import java.util.*;
public class c3_7_5_ArrayList2 {
    public static void main(String[]args){
        ArrayList<String> pitches=new ArrayList<>(Arrays.asList("138", "129", "142"));
        System.out.println(pitches);
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/f3c89d2c-6611-4b30-8984-5ce0da205d12)

### String.join
```java
package c3_7;
import java.util.*;
public class c3_7_6_join {
    public static void main(String[]args){
        ArrayList<String> pitches=new ArrayList<>(Arrays.asList("138", "129", "142"));
        String result=String.join(",", pitches);
        System.out.println(result);
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/35016d44-3974-404d-a59f-473ace8b4576)
`String.join("구분자", 리스트 객체)`를 사용해 리스트의 각 요소에 구분자를 넣어 하나의 문자열로 만들 수 있다.
* 배열에도 사용 가능

### 리스트 정렬하기
sort 메서드 이용
```java
package c3_7;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
public class c3_7_7_sort {
    public static void main(String[]args){
        ArrayList<String> pitches=new ArrayList<>(Arrays.asList("138", "129", "142"));
        pitches.sort(Comparator.naturalOrder());
        System.out.println(pitches);
    }
}
```
* 오름차순 정렬: Comparator.naturalOrder()
* 내림차순 정렬: Comparator.reverseOrder()
