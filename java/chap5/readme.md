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

```
this.name = name;
```
* 객체가 메서드르르 호출하기 위해서는 객체.메서드로 호출해야 한다. 즉, 우리가 만든 setName 메서드를 호출하려면 다음과 같이 호출해야 한다.

```
cat.setName("boby");
```
* 이때 setName 메서드는 입력 항목으로 "boby"와 같이 문자열을 전달해야 한다. setName메서드를 호출할 수 있도록 main 메서드를 다음과 같이 수정해 보자.

```java
class Animal{
    String name;

    public void setName(String name){
        this.name = name;
    }
}

public class Main{
    public static void main(String[] args){
        Animal cat = new Animal();
        cat.setName("boby");
        System.out.println(cat.name);
    }
}
```

```
this.name = name;
```
* main 메서드에서 cat.setName("boby")는 "boby"를 입력값으로 하여 setName메서드를 호출했기 때문에 setName함수의 입력항목 Name에는 "boby"라는 문자열이 전달될 것이다.

```
this.name = "boby"
```
* this는 Animal 클래스에 의해서 생성된 객체를 지칭한다.
* 따라서 this.name = "boby";는 다음과 같이 해석된다.

```
cat.name = boby;
```
* cat.name과 같이 하면 객체 변수에 접근할 수 있음을 우리는 알고 있다. 객체 변수에 값을 대입하는 방법도 아주 쉽다. 그냥 변수에 값을 대입하는 것과 마찬가지 방법이다.

```
객체.객체변수 = 값;
```
따라서 cat.name = "boby"라는 문장은 객체 cat의 객체변수 name에 boby라는 값을 대입한다.

```java
class Animal{
    String name;

    public void setName(String name){
        this.name = name;
    }
}

public class Main{
    public static void main(String[]args){
        Animal cat = new Animal();
        cat.setName("boby");

        Animal dog = new Animal();
        dog.setName("happy");

        System.out.println(cat.name);
        System.out.println(dog.name);
    }
}
```

---

## 5-3. 메서드 더 살펴보기
* 자바의 함수는 따로 존재하지 않고 클래스 내에 존재한다. 자바는 이러한 클래스 내의 함수를 메서드라고 부른다.

```java
public class Sample {
    int sum(int a, int b){
        return a+b;
    }

    public static void main(String[]args){
        int a=3;
        int b=4;

        Sample sample = new Sample();
        int c = sample.sum(a, b);
        System.out.println(c);
    }
}
```

### 매개변수와 인수
* 매개변수: 메서드에 전달된 입력값을 저장하는 변수
* 인수: 메서드를 호출할 때 전달되는 입력값

### 메서드의 구조
```
리턴 자료형 메서드명(입력자료형1 매개변수1, 입력자료형2 매개변수2, ...){
    return 리턴값; // 리턴 자료형이 void인 경우 리턴 문이 필요 없음
}
```

### 입력값과 리턴 값이 모두 있는 메서드
```java
int sum(int a, int b){
    return a+b;
}
```

### 입력값이 없는 메서드
```java
String say(){
    return "Hi";
}
```

### 리턴값이 없는 메서드
```java
void sum(int a, int b){
    System.out.println(a + "과" + b + "의 합은 " + (a+b) + "입니다.");
}
```

### 입력값과 리턴값이 모두 없는 메서드
```java
void say(){
    System.out.println("Hi");
}
```

### return의 또 다른 쓰임
* 특별한 경우 메서드를 빠져나가고 싶다면 return 을 단독으로 사용하여 메서드를 즉시 빠져나갈 수 있다.

```java
public class Main{
    void sayNick(String nick){
        if ("바보" == nick){
            return;
        }
        System.out.println("나의 별명은 " + nick + "입니다.");
    }

    public static void main(String[]args){
        Main main = new Main();
        main.sayNick("야호");
        main.sayNick("바보");
    }
}
```
![image](https://github.com/user-attachments/assets/2e91d179-758b-46d2-90ca-026ced58233b)

### 메서드 내에서 선언된 변수의 효력범위

```java
public class Main{
    int a;

    void varTest(Main main){
        main.a++;
    }

    public static void main(String[]args){
        Main main = new Main();
        main.a = 1;
        main.varTest(main);
        System.out.println(main.a);
    }
}
```
![image](https://github.com/user-attachments/assets/9a60de8a-8901-4d25-9458-4b5f8dcb0ebd)

---

## 5-4. 값에 의한 호출과 객체에 의한 호출
* 메서드에 값(원시 자료형)을 전달하는 것과 객체를 전달하는 것에는 큰 차이가 있다.
```java
class Updater{
    void update(int count){
        count++;
    }
}

class Counter{
    int count = 0; //객체 변수
}

public class Main{
    public static void main(String[]args){
        Counter myCounter = new Counter();
        System.out.println("Before update: " + myCounter.count);
        Updater myUpdater = new Updater();
        myUpdater.update(myCounter.count);
        System.out.println("after update: " + myCounter.count);
    }
}
```
![image](https://github.com/user-attachments/assets/75c6ee6b-5c45-4a25-8521-ad1e16c29e7d)

* Counter 클래스에 의해 생성된 myCounter 객체의 객체 변수인 count값을 Updater클래스를 이용하여 증가시키고자 한다. 하지만 예상과는 달리 실행해 보면 다음과 같은 결과값이 나온다.

* 객체변수 count의 값을 update메서드에 넘겨서 변경시키더라도 값에 변화가 없다. 그 이유는 5-3절에서 알아본 것과 같이 update메서드는 값(int자료형)을 전달받았기 때문이다.

```java
class Updater{
    void update(Counter counter){
        counter.count++;
    }
}

class Counter{
    int count = 0; //객체 변수
}

public class Main{
    public static void main(String[]args){
        Counter myCounter = new Counter();
        System.out.println("Before update: " + myCounter.count);
        Updater myUpdater = new Updater();
        myUpdater.update(myCounter);
        System.out.println("after update: " + myCounter.count);
    }
}
```
![image](https://github.com/user-attachments/assets/4dc0b535-2502-414b-a97f-684ec9893889)

* 이전 예제와의 차이점은 update 메서드의 입력 항목에 있다. 이전에는 int count와 같이 값을 전달받았다면 지금은 Counter counter와 같이 객체를 전달받도록 변경한 것이다.

---

## 5-5. 상속
### 자식 클래스의 기능 확장하기
* 5-2절의 Dog 클래스에서 sleep 메서드를 추가해 보자.

```java
class Animal{
    String name;

    void setName(String name){
        this.name = name;
    }
}

class Dog extends Animal{
    void sleep(){
        System.out.println(this.name + " zzz");
    }
}

public class Main{
    public static void main(String[]args){
        Dog dog = new Dog();
        dog.setName("Poppy");
        System.out.println(dog.name);
        dog.sleep();
    }
}
```
![image](https://github.com/user-attachments/assets/0cfa27a3-498d-4fef-ba0c-ad8429bdc5a8)

### IS-A 관계란?
* Dog 클래스는 Animal 클래스를 상속했다. 즉, Dog는 Animal의 하위 개념이라고 할 수 있다. 이런 경우 Dog는 Animal에 포함되기 때문에 '개(Dog)는 동물(Animal)이다'라고 표현할 수 있다. 자바는 이러한 관계를 IS-A 관계라고 표현한다.
* 이렇게 IS-A관계(상속 관계)에 있을 때 자식 클래스의 객체는 부모 클래스의 자료형인 것처럼 사용할 수 있다. 그래서 다음과 같은 코딩이 가능하다.

```
Animal dog = new Dog(); //Dog is a Animal
```

* 하지만 이 반대의 경우, 즉 부모 클래스로 만들어진 객체를 자식 클래스의 자료형으로는 사용할 수 없다.

```
Animal dog = new Animal(); //컴파일 오류!
```

### 메서드 오버라이딩
```java
class Animal{
    String name;

    void setName(String name){
        this.name = name;
    }
}

class Dog extends Animal{
    void sleep(){
        System.out.println(this.name + " zzz");
    }
}

class HouseDog extends Dog{

}

public class Main{
    public static void main(String[]args){
        HouseDog houseDog = new HouseDog();
        houseDog.setName("happy");
        houseDog.sleep();
    }
}
```
* HouseDog 클래스에 Dog클래스와 동일한 형태(즉, 입출력이 동일)의 sleep메서드를 구현하면 HouseDog클래스의 sleep메서드가 Dog 클래스의 sleep메서드보다 우선순위를 갖게 되어 HouseDog클래스의 sleep메서드가 호출되게 한다.
* 이렇게 부모 클래스의 메서드를 자식 클래스가 동일한 형태로 또다시 구현하는 행위를 메서드 오버라이딩이라고 한다.

### 메서드 오버로딩
* 메서드 오버로딩: 입력 항목이 다른 경우 동일한 이름의 메서드를 만들 수 있는 경우

```java
class Animal{
    String name;

    void setName(String name){
        this.name = name;
    }
}

class Dog extends Animal{
    void sleep(){
        System.out.println(this.name + " zzz");
    }
}

class HouseDog extends Dog{
    void sleep(){
        System.out.println(this.name + " zzz in house");
    }

    void sleep(int hour){
        System.out.println(this.name + " zzz in house for " + hour + "hours");
    }
}

public class Main{
    public static void main(String[]args){
        HouseDog houseDog = new HouseDog();
        houseDog.setName("happy");
        houseDog.sleep();
        houseDog.sleep(3);
    }
}
```
![image](https://github.com/user-attachments/assets/547fe34d-d039-4a64-a058-2fd367fd3cba)

---

## 5-6. 생성자
```java
class Animal{
    String name;

    void setName(String name){
        this.name = name;
    }
}

class Dog extends Animal{
    void sleep(){
        System.out.println(this.name + " zzz");
    }
}

class HouseDog extends Dog{
    void sleep(){
        System.out.println(this.name + " zzz in house");
    }

    void sleep(int hour){
        System.out.println(this.name + " zzz in house for " + hour + "hours");
    }
}

public class Main{
    public static void main(String[]args){
        HouseDog dog = new HouseDog();
        System.out.println(dog.name);
    }
}
```
![image](https://github.com/user-attachments/assets/76139a8a-acca-444c-9992-fad10e49ed4d)

* dog객체의 name변ㅅ에 아무런 값도 설정하지 않았기 떄문에 null이 출력될 것이다. 이렇듯 HouseDog 클래스는 코딩하기에 따라 객체 변수 name에 값을 설정할 수도 있고 설정하지 않을수도 있다.
* 그렇다면 name이라는 객체 변수에 값을 무조건 설정해야만 객체가 생성될 수 있도록 강제할 수 있는 방법은 없을까? 바로 생성자를 이용하면 된다. HouseDog클래스에 다음과 같은 메서드를 추가해 보자.

```java
class Animal{
    String name;

    void setName(String name){
        this.name = name;
    }
}

class Dog extends Animal{
    void sleep(){
        System.out.println(this.name + " zzz");
    }
}

class HouseDog extends Dog{
    HouseDog(String name){
        this.setName(name);
    }
    void sleep(){
        System.out.println(this.name + " zzz in house");
    }

    void sleep(int hour){
        System.out.println(this.name + " zzz in house for " + hour + "hours");
    }
}

public class Main{
    public static void main(String[]args){
        HouseDog dog = new HouseDog("happy");
        System.out.println(dog.name);
    }
}
```
![image](https://github.com/user-attachments/assets/8c7076f7-494c-48ff-8a68-c821876f0dbe)

* 이와 같이 메서드명이 클래스명과 동일하고 리턴 자료형을 정의하지 않는 메서드를 생성자라고 한다.
* 생성자 규칙
    * 클래스명 == 메서드명
    * 리턴 타입 정의 x
 
### 디폴트 생성자
```java
class Dog extends Animal{
   void sleep(){
       System.out.println(this.name + " zzz");
   }
}
```

```java
class Dog extends Animal{
   Dog(){
       
   }
   void sleep(){
       System.out.println(this.name + " zzz");
   }
}
```
* 첫번째 코드와 두 번째 코드의 차이점
    * 두 번째 코드에는 생성자가 구현되어 있음. 생성자의 입력 항목이 없고 생성자 내부에 아무 내용이 없는 이와 같은 생성자를 디폴트 생성자라고 부름
* 디폴트 생성자를 구현하면 new Dog()로 Dog클래스의 객체가 만들어질 때 디폴트 생성자 Dog()가 실행될 것이다.

* 만약 클래스에 생성자가 하나도 없다면 컴파일러는 자동으로 이와 같은 디폴트 생성자를 추가한다. 하지만 사용자가 작성한 생성자가 하나라도 구현되어 있다면 컴파일러는 디폴트 생성자를 추가하지 않는다.

### 생성자 오버로딩
```java
class Animal{
    String name;

    void setName(String name){
        this.name = name;
    }
}

class Dog extends Animal{
    void sleep(){
        System.out.println(this.name + " zzz");
    }
}

class HouseDog extends Dog{
    HouseDog(String name){
        this.setName(name);
    }
    HouseDog(int type){
        if(type == 1){
            this.setName("yokshire");
        }
        else if (type ==2){
            this.setName("bulldog");
        }
    }

    void sleep(){
        System.out.println(this.name + " zzz in house");
    }

    void sleep(int hour){
        System.out.println(this.name + " zzz in house for " + hour + " hours");
    }
}

public class Main{
    public static void main(String[]args){
        HouseDog happy = new HouseDog("Happy");
        HouseDog yokshire = new HouseDog(1);
        System.out.println(happy.name);
        System.out.println(yokshire.name);
    }
}
```

* HouseDog 클래스는 두 개의 생성자가 있다. 하나는 String 자료형을 입력으로 받는 생성자이고, 다른 하나는 int자료형을 입력으로 받는 생성자이다. 두 생성자의 차이는 입력 항목이다. 이렇게 입력 항목이 다른 생성자를 여러개 만들 수 있는데 이런 것을 생성자 오버로딩이라고 한다.

---

## 5-7. 인터페이스

### 인터페이스는 왜 필요한가?
```
난 동물원(zoo)의 사육사(zookeeper)이다.
육식동물(predator)이 들어오면 난 먹이를 던져준다(feed).
호랑이(tiger)가 오면 사과(apple)를 던져준다.
사자(lion)가 오면 바나나(banana)를 던져준다.
```

```java
class Animal{
    String name;

    void setName(String Name){
        this.name = name;
    }
}

class Tiger extends Animal{

}

class Lion extends Animal{

}

class Zookeeper{
    void feed(Tiger tiger){
        System.out.println("feed apple");
    }

    void feed(Lion lion){
        System.out.println("feed banana");
    }
}

public class Main{
    public static void main(String[]args){
        Zookeeper zooKeeper = new Zookeeper();
        Tiger tiger = new Tiger();
        Lion lion = new Lion();
        zooKeeper.feed(tiger);
        zooKeeper.feed(lion);
    }
}
```
![image](https://github.com/user-attachments/assets/9bb88932-4ebb-4361-ac26-2ec4bf539596)

* 만약 Tiger와 Lion 뿐이라면 Zookeeper클래스는 더이상 할 일이 없겠지만 Crocodile, Leopard 등이 계속 추가된다면 Zookeeper는 클래스가 추가될 떄마다 매번 다음과 같은 feed 메서드를 추가해야 한다.

### 인터페이스 작성하기
```java
interface Predator{
}

class Animal{
    String name;

    void setName(String name){
        this.name = name;
    }
}

class Tiger extends Animal implements Predator{

}

class Lion extends Animal implements Predator{

}

class Zookeeper{
    void feed(Predator predator){
        System.out.println("feed apple");
    }
}

public class Main{
    public static void main(String[]args){
        Zookeeper zooKeeper = new Zookeeper();
        Tiger tiger = new Tiger();
        Lion lion = new Lion();
        zooKeeper.feed(tiger);
        zooKeeper.feed(lion);
    }
}
```
* 이 코드와 같이 작성한 인터페이스는 class 가 아닌 interface 키워드로 작성한다.
* 그리고 Tiger, Lion 클래스는 작성한 인터페이스를 구현하도록 implements라는 키워드를 사용한다.
* feed 메서드의 입력으로 Tiger, Lion을 각각 필요로 했지만 이제 이것을 Predator라는 인터페이스로 대체할 수 있게 되었다.
    * tiger, lion은 각각 Tiger, Lion객체이기도 하지만 Predator 인터페이스의 객체이기도 하기 때문에 이와 같이 Predator를 자료형으로 사용할 수 있는 것이다.
* 이제 어떤 육식동물 클래스가 추가되더라도 ZooKeeper는 feed메서드를 추가할 필요가 없다. 다만 육식동물 클래스가 추가될 때마다 다음과 같이 Predator인터페이스를 구현하여야 된다.

```java
class Crocodile extends Animal implements Predator{}
```

### 인터페이스의 메서드
```java
interface Predator{
    String getFood();
}

class Animal{
    String name;

    void setName(String name){
        this.name = name;
    }
}

class Tiger extends Animal implements Predator{
    public String getFood(){
        return "apple";
    }
}

class Lion extends Animal implements Predator{
    public String getFood(){
        return "banana";
    }
}

class Zookeeper{
    void feed(Predator predator){
        System.out.println("feed " + predator.getFood());
    }
}

public class Main{
    public static void main(String[]args){
        Zookeeper zooKeeper = new Zookeeper();
        Tiger tiger = new Tiger();
        Lion lion = new Lion();
        zooKeeper.feed(tiger);
        zooKeeper.feed(lion);
    }
}
```
* tiger에게는 apple을, lion에게는 banana를 줘야 하므로
    * Predator 인터페이스에 다음과 같은 getFood메서드를 추가한다.
    * Tiger, Lion 클래스에 getFood 메서드 구현
    * ZooKeeper클래스도 변경
 
### 인터페이스 더 파고들기
* 중요한 점: 메서드의 개수가 줄어들었다는 점이 아니라 ZooKeeper클래스가 동물 클래스에 의존적인 클래스에서 동물 클래스와 상관 없는 독립적인 클래스가 되었다는 점

### 디폴트 메서드
* 인터페이스의 메서드는 구현체를 가질 수 없지만 디폴트 메서드를 사용하면 실제 구현된 형태의 메서드를 가질 수 있다.

```java
interface Predator{
    String getFood();

    default void printFood(){
        System.out.printf("my food is %s\n", getFood());
    }
}
```

### 스태틱 메서드
* 인터페이스에 스태틱 메서드를 구현하면 인터페이스명.스태틱메서드명 과 같이 사용하여 일반 클래스의 스태틱 메서드를 사용하는 것과 동일하게 사용할 수 있다.

```java
interface Predator{
    String getFood();

    default void printFood(){
        System.out.printf("my food is %s\n", getFood());
    }
    int LEG_COUNT = 4;
    
    static int speed(){
        return LEG_COUNT * 30;
    }
}
```

* 이렇게 스태틱 메서드를 추가하면 다음과 같이 사용할 수 있다.
```
Predator.speed();
```

## 5-8. 다형성
```java
interface Predator{
    String getFood();
}

class Animal{
    String name;

    void setName(String name){
        this.name = name;
    }
}

class Tiger extends Animal implements Predator{
    public String getFood(){
        return "apple";
    }
}

class Lion extends Animal implements Predator{
    public String getFood(){
        return "banana";
    }
}

class Zookeeper{
    void feed(Predator predator){
        System.out.println("feed " + predator.getFood());
    }
}

class Bouncer{
    void barkAnimal(Animal animal){
        if(animal instanceof Tiger){
            System.out.println("어흥");
        }
        else if(animal instanceof Lion){
            System.out.println("으르렁");
        }
    }
}

public class Main{
    public static void main(String[]args){

        Tiger tiger = new Tiger();
        Lion lion = new Lion();

        Bouncer bouncer = new Bouncer();
        bouncer.barkAnimal(tiger);
        bouncer.barkAnimal(lion);
    }
}
```
![image](https://github.com/user-attachments/assets/b8dc5f44-4428-43a8-8470-dc2100e38ddf)

* instanceof: 어떤 객체가 특정 클래스의 객체인지를 조사할 때 사용

* Barkable 인터페이스를 작성하고 Tiger클래스와 Lion클래스가 Barkable 인터페이스를 구현하도록 변경

```java
interface Barkable{
    void bark();
}
```

```java
class Tiger extends Animal implements Predator, Barkable{
    public String getFood(){
        return "apple";
    }

    public void bark(){
        System.out.println("어흥")
    }
}

class Lion extends Animal implements Predator, Barkable{
    public String getFood(){
        return "banana";
    }

    public void bark(){
        System.out.println("으르렁")
    }
}

class Bouncer{
    void barkAnimal(Barkable animal){
        animal.bark();
    }
}
```
* 코드에서 보았듯이 콤마(,)를 이용하여 인터페이스를 여러 개 implements할 수 있다.
* barkAnimal 메서드의 입력 자료형이 Animal에서 Barkable로 변경되었다. 그리고 animal의 객체 타입을 체크하여 '어흥' 또는 '으르렁'을 출력하던 부분을 그냥 bark 메서드를 호출하도록 변경했다.
* 이렇게 하나의 객체가 여러 개의 자료형 타입을 가질 수 있는 것을 객체지향 세계에서는 다형성이라고 한다.

* 그리고 Tiger클래스의 객체는 다음과 같이 여러 가지 자료형으로 표현할 수 있다.

```
Tiger tiger = new Tiger();
Animal animal = new Tiger();
Predator predator = new Tiger();
Barkable barkable = new Tiger();
```
* 여기서 중요한 점은 Predator로 선언된 predator객체와 Barkable로 선언된 barkable객체는 사용할 수 있는 메서드가 서로 다르다는 점이다.
    * predator객체는 getFood()메서드가 선언된 Predator인터페이스의 객체이므로 getFood메서드만 호출이 가능하다.
    * 이와 마찬가지로 Barkable로 선언된 barkable객체는 bark메서드만 호출 가능한다.
 
* 만약 getFood메서드와 bark메서드를 모두 사용하고 싶은 경우
    * 다음과 같이 새로운 인터페이스 생성
 
```java
interface Predator{
    String getFood();
}

interface Barkable{
    void bark();
}

interface BarkablePredator extends Predator, Barkable{

}

class Animal{
    String name;

    void setName(String name){
        this.name = name;
    }
}

class Tiger extends Animal implements Predator, Barkable{
    public String getFood(){
        return "apple";
    }

    public void bark(){
        System.out.println("어흥");
    }
}

class Lion extends Animal implements BarkablePredator{
    public String getFood(){
        return "banana";
    }

    public void bark(){
        System.out.println("으르렁");
    }
}

class Zookeeper{
    void feed(Predator predator){
        System.out.println("feed " + predator.getFood());
    }
}

class Bouncer{
    void barkAnimal(Barkable animal){
        animal.bark();
    }
}

public class Main{
    public static void main(String[]args){

        Tiger tiger = new Tiger();
        Lion lion = new Lion();

        Bouncer bouncer = new Bouncer();
        bouncer.barkAnimal(tiger);
        bouncer.barkAnimal(lion);
    }
}
```
* 기존의 인터페이스를 상속하여 BarkablePredator를 만들었다. 이와 같이 하면 BarkablePredator는 Predator의 getFood메서드, Barkable의 bark메서드를 그대로 사용할 수 있다.
    * 인터페이스는 일반 클래스와 달리 extends를 이용하여 여러 개의 인터페이스를 동시에 상속할 수 있다. 즉 다중 상속이 지원된다.
* Lion클래스를 수정하고  Bouncer클래스를 실행하더라도 이와 같이 동일한 결과값이 출력되는 것을 확인할 수 있다.
* 자식 인터페이스로 생성한 객체의 자료형은 부모 인터페이스로 사용하는 것이 가능하다.

```java
interface Predator{
    String getFood();

    default void printFood(){
        System.out.printf("my food is %s\n", getFood());
    }

    int LEG_COUNT = 4;

    static int speed(){
        return LEG_COUNT * 30;
    }
}

interface Barkable{
    void bark();
}

interface BarkablePredator extends Predator, Barkable{

}

class Animal{
    String name;

    void setName(String name){
        this.name = name;
    }
}

class Tiger extends Animal implements Predator, Barkable {
    public String getFood() {
        return "apple";
    }
    public void bark(){
        System.out.println("어흥");
    }
}

class Lion extends Animal implements BarkablePredator{
    public String getFood(){
        return "banana";
    }
    public void bark(){
        System.out.println("으르렁");
    }
}

class ZooKeeper{
    void feed(Predator predator){
        System.out.println("feed "+predator.getFood());
    }
}

class Bouncer{
    void barkAnimal(Barkable animal){
        animal.bark();
    }
}

public class Main{
    public static void main(String[]args){
        Tiger tiger = new Tiger();
        Lion lion = new Lion();

        Bouncer bouncer = new Bouncer();
        bouncer.barkAnimal(tiger);
        bouncer.barkAnimal(lion);
    }
}
```

---

## 5-9. 추상 클래스
* 추상 클래스: 인터페이스의 역할도 하면서 클래스의 기능도 가지고 있는 자바의 '돌연변이'같은 클래스
