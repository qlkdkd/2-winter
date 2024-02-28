package c3_11_final;

public class c3_11_2_IntegerToString {
    public static void main(String[]args){
        int n=123;
        String num=""+n;
        String n2=String.valueOf(n);
        String n3=Integer.toString(n);
        System.out.println(String.format("%s, %s, %s", num, n2, n3));
    }
}
