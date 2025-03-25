class Calculator3{
    static int result = 0;

    static int add(int num){
        result += num;
        return result;
    }
}


public class cal2 {
    public static void main(String[] args){
        Calculator3 cal1 = new Calculator3();
        Calculator3 cal2 = new Calculator3();

        System.out.println(cal1.add(3));
        System.out.println(cal1.add(4));

        System.out.println(cal2.add(3));
        System.out.println(cal2.add(10));
    }
}
