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

---

## 4-2. switch/case문
```
switch(입력 변수){
  case 입력값1:..
    break;
  case 입력값2:
    break;
  ...
  default:...
    break;
```

```java
package c4_2_switch_case;
import java.util.*;
public class c4_2_1_switch_case_example {
    public static void main(String[]args){
        int month;
        Scanner sc=new Scanner(System.in);
        System.out.println("월 입력: ");
        month=sc.nextInt();
        String monthString="";
        switch(month){
            case 1: monthString="January";break;
            case 2: monthString="February";break;
            case 3: monthString="march";break;
            case 4: monthString="April";break;
            case 5: monthString="May";break;
            case 6: monthString="June";break;
            case 7: monthString="July";break;
            case 8: monthString="August";break;
            case 9: monthString="September";break;
            case 10: monthString="Octover";break;
            case 11: monthString="November";break;
            case 12: monthString="December";break;
            default: monthString="Invalid month";break;
        }
        System.out.println(monthString);
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/21c8e083-5178-42e8-846a-7191876db5a3)

---

## 4-3. while문
```
while(조건문){
  수행할 문장1;
  수행할 문장2;
  수행할 문장3;
  ...
}
```
```java
package c4_3_while;

public class c4_3_1_while_example {
    public static void main(String[]args){
        int treeHit=0;
        while (treeHit<10){
            treeHit++;
            System.out.println(String.format("나무를 %d번 찍었습니다.", treeHit));
            if(treeHit==10){
                System.out.println("나무 넘어갑니다.");
            }
        }
    }
}
```

### 무한루프
```java
package c4_3_while;

public class c4_3_2_infinityLoop {
    public static void main(String[]args){
        while(true){
            System.out.println("Ctrl+c를 눌러야 while문을 빠져나갈 수 있습니다.");
        }
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/f2417af9-8b23-4d77-945a-ef70861a4940)
조건문 자체가 true이므로 조건문은 항상 참이 됨. while문은 조건문이 참인 동안에 whiel문에 속해 있는 문장들을 계속해서 수행하므로 while문 내의 문장들을 수행한다.

### while문 빠져나가기-break
```java
package c4_3_while;

public class c4_3_3_break {
    public static void main(String[]args){
        int coffee=10;
        int money=300;

        while (money>0){
            System.out.println("돈을 받았으니 커피를 줍니다.");
            coffee--;
            System.out.println(String.format("남은 양의 커피의 양은 %d입니다.", coffee));
            if (coffee==0){
                System.out.println("커피다 다 떨어졌습니다. 판매를 중지합니다.");
                break;
            }
        }
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/7a21b9ee-246b-4a6a-a253-3239783acbfa)

### while문으로 돌아가기-continue
```java
package c4_3_while;

public class c4_3_4_continue {
    public static void main(String[]args){
        int a=0;
        while(a<10){
            a++;
            if(a%2==0){
                continue;
            }
            System.out.println(a);
        }
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/9cd5158a-c7d4-46bb-bca9-2b6aa3092280)

---

## 4-4. for 문
```java
package c4_4_forLoop;

public class c4_4_1_forLoopExample {
    public static void main(String[]args){
        String[] numbers={"one", "two", "three"};
        for(int i=0; i<numbers.length; i++){
            System.out.println(numbers[i]);
        }
    }
}
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/ea8b2852-a077-4d55-99dd-0828572280cf)

---

## 4-5. for each
```java
package c4_5_for_each;

public class c4_5_1_forEachExample {
    public static void main(String[]args){
        String[] numbers={"one", "two", "three"};
        for(String number: numbers){
            System.out.println(number);
        }
    }
}
```
