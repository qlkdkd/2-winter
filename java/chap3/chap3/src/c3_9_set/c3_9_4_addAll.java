package c3_9_set;
import java.util.HashSet;
import java.util.Arrays;
public class c3_9_4_addAll {
    public static void main(String[]args){
        HashSet<String> set=new HashSet<>();
        set.add("Jump");
        set.addAll(Arrays.asList("To", "Java"));
        System.out.println(set);
    }
}
