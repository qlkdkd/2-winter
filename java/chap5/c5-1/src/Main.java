class Calculator{
    static int result = 0;

    static int add(int num){
        result += num;
        return result;
    }
}

public class Main{
    public static void main(String[] args){
        System.out.println(Calculator.add(3));
        System.out.println(Calculator.add(4));
    }
}