package c3_5;

public class c3_5_1_append {
    public static void main(String[]args){
        StringBuffer sb=new StringBuffer();
        sb.append("hello");
        sb.append(" ");
        sb.append("jump to java");
        String result=sb.toString();
        System.out.println(result);
    }
}
