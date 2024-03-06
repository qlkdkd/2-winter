# 4. 제어문 이해하기
## 4-1. if문
```
boolean money=true;
if(money){
  System.out.println("택시를 타고 가라");
}else{
  System.out.println("걸어가라");
}
```

### 비교 연산자
```java
package c4_1_if_else;

public class c4_1_1_if_elseExameple {
    public static void main(String[]args){
        int x=3;
        int y=2;
        System.out.println(x<y);//false
        System.out.println(x>y);//true
        System.out.println(x==y);//false
        System.out.println(x!=y);//true
    }

}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/08a5e04b-2a17-4f65-80c8-7c1eb02d7a1b)

비교 연산자를 활용한 if else문 예제
```java
ackage c4_1_if_else;

public class c4_1_2_if_else_comparator {
    public static void main(String[]args){
        int money=2000;
        if(money>=3000){
            System.out.println("택시를 타고 가라");
        }
        else{
            System.out.println("걸어가라");
        }
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/40a7f71f-f699-4a2e-bf2e-2ebba70e1771)

### 논리 연산자
연산자|설명
---|---
x&&y|x와 y가 모두 참
x\|\|y|x와 y 둘 중 적어도 하나가 참이면 참
!x|x가 거짓이면 참

```java
package c4_1_if_else;

public class c4_1_3_andOrNot {
    public static void main(String[]args){
        int money=2000;
        boolean hasCard=true;

        if(money>3000||hasCard){
            System.out.println("택시를 타고 가라");
        }
        else{
            System.out.println("걸어가라");
        }
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/1c373c30-de4a-426d-bdeb-683b7271f562)

### contains
```java
package c4_1_if_else;
import java.util.*;
public class c4_1_4_contains {
    public static void main(String[]args){
        ArrayList<String> pocket=new ArrayList<String>();
        pocket.add("paper");
        pocket.add("cellphone");
        pocket.add("money");

        if (pocket.contains("money")){
            System.out.println("택시를 타고 가라");
        }
        else{
            System.out.println("걸어가라");
        }
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/d59d614e-8920-4c23-ba32-d0ec1c693030)
pocket 리스트에 안에 money란 요소가 있으므로 pocket.contains("moneㅛ")가 참이 되어 '택시를 타고 가라'가 출력됨

### else if
```java
package c4_1_if_else;
import java.util.*;
public class c4_1_5_elseif {
    public static void main(String[]args){
        boolean hasCard=true;
        ArrayList<String> pocket=new ArrayList<String>();
        pocket.add("paper");
        pocket.add("cellphone");

        if(pocket.contains("money")){
            System.out.println("택시를 타고가라");
        }
        else if(hasCard){
            System.out.println("택시를 타고가라");
        }
        else{
            System.out.println("걸어가라");
        }
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/8b9f42c1-11ca-4293-bb92-5890752d96c6)
