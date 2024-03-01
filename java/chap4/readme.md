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
