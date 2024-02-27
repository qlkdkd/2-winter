package c3_9_set;
import java.util.*;
public class c3_9_5_remove {
    public static void main(String[]args){
        HashSet<String> set=new HashSet<>(Arrays.asList("Jump", "To", "Java"));
        set.remove("To");
        System.out.println(set);
    }
}
