//String 자료형을 여러개 전달하여 생성
package c3_7_List;
import java.util.*;
public class c3_7_5_ArrayList2 {
    public static void main(String[]args){
        ArrayList<String> pitches=new ArrayList<>(Arrays.asList("138", "129", "142"));
        System.out.println(pitches);
    }
}
