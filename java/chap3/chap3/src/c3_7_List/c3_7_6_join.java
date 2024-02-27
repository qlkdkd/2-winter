package c3_7_List;
import java.util.*;
public class c3_7_6_join {
    public static void main(String[]args){
        ArrayList<String> pitches=new ArrayList<>(Arrays.asList("138", "129", "142"));
        String result=String.join(",", pitches);
        System.out.println(result);
    }
}
