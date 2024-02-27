//배열을 ArrayList로 변환
package c3_7_List;
import java.util.ArrayList;
import java.util.Arrays;
public class c3_7_4_ArrayList1 {
    public static void main(String[]args){
        String[] data={"138", "129", "142"};
        ArrayList<String> pitches=new ArrayList<>(Arrays.asList(data));
        System.out.println(pitches);
    }
}
