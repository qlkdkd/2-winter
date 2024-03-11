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
