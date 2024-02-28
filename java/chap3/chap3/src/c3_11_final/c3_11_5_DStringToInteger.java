package c3_11_final;

public class c3_11_5_DStringToInteger {
    public static void main(String[]args){
        String num="123.456";
        //int n=Integer.parseInt(num);NumberFormatException 발생
        double n=Double.parseDouble(num);
        int n2=(int)n;
        System.out.println(n2);
    }
}
