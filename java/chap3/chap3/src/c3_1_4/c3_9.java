package c3_1_4;

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
