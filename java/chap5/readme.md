# 5. 객체지향 프로그래밍
```java
package c5_1_OOP;

class calculator{
    static int result=0;

    static int add(int num){
        result+=num;
        return result;
    }
}

public class c5_1_1_calculator{
    public static void main(String[]args){
        System.out.println(calculator.add(3));
        System.out.println(calculator.add(4));
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/1beb7c0c-2c24-4111-94c9-7f3a7f729e81)
* add: 매개변수 num으로 받은 값을 이전에 계산한 결과값에 더한 후 돌려주는 메서드

### 객체 사용하기
```java
package c5_1_OOP;

class calculator1{
   int result=0;
   int add(int num){
       result+=num;
       return result;
   }
}

public class c5_1_2_calculator2 {
    public static void main(String[]args){
        calculator1 cal1=new calculator1();//계산기 1 객체
        calculator1 cal2=new calculator1();//계산기 2 객체

        System.out.println(cal1.add(3));
        System.out.println(cal1.add(4));

        System.out.println(cal2.add(3));
        System.out.println(cal2.add(10));
    }
}
```
* calculator1 클래스로 만든 별개의 계산기 cal1, cal2(이것을 바로 객체라 부름)가 각각의 역할 수행
* 각각의 계산기의 결괏값 역시 다른 계산기의 결과값과 상관없이 독립적인 값 유지

## 5-2. 클래스
### 클래스와 객체
```java
package c5_2_class;
class Animal{

}
public class c5_2_1_classExample {
    public static void main(String[]args){
        Animal cat=new Animal();
    }
}
```
Animal 클래스는 가장 간단한 형태의 클래스이다. 클래스의 선언만 있지 내용이 없는 껍데기 뿐인 클래스이다. 하지만 이 껍데기뿐인 클래스도 아주 중요한 기능을 가지고 있다. **바로 객체를 만드는 기능**이다.
* 다음과 같이 무수히 많은 동물 객체들을 Animal 클래스로 만들 수 있다.

```
Animal cat=new Aninal();
Animal dog=new Animal();
Animal horse=new Animal();
```

### 객체 변수란?
```java
package c5_2_class;
class Animal{
    String name;
}
public class c5_2_1_classExample {
    public static void main(String[]args){
        Animal cat=new Animal();
    }
}
```
* 객체 변수: 클래스에 선언된 변수
* 객체: 클래스에 의해 생성되는 것

* 객체 변수 사용
```
객체.객체변수
```

```java
package c5_2_class;
class Animal{
    String name;
}
public class c5_2_1_classExample {
    public static void main(String[]args){
        Animal cat=new Animal();
        System.out.println(cat.name);
    }
}
```

### 메서드란?
* 메서드: 클래스 내에 구현된 함수
```java
package c5_2_class;
class Animal{
    String name;

    public void setName(String name){
        this.name=name;
    }
}
public class c5_2_1_classExample {
    public static void main(String[]args){
        Animal cat=new Animal();
        cat.setName("boby");
        System.out.println(cat.name);
    }
}
```
* Animal 클래스에 추가된 setName 메서드는 다음과 같은 형태의 메서드이다.
  * 입력: String
  * 출력: void
