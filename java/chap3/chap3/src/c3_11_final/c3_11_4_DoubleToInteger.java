package c3_11_final;

public class c3_11_4_DoubleToInteger {
    public static void main(String[]args){
        int n1=123;
        double d1=n1;//정수를 실수로 바꿀 때에는 캐스팅이 필요 없음
        System.out.println(d1);

        double d2=123.456;
        int n2=(int)d2;//실수를 정수로 바꿀 때에는 반드시 정수형으로 캐스팅해주어야 함
        System.out.println(n2);
    }
}
