package c3_5;

public class c3_5_3_Insert {
    public static void main(String[]args) {
        StringBuffer sb=new StringBuffer();
        sb.append("jump to java");
        sb.insert(0, "hello");
        System.out.println(sb.toString());
    }
}
