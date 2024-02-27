package c3_7_List;
import java.util.ArrayList;
public class c3_7_1_ArrayList {
    public static void main(String[]args){
        ArrayList pitches=new ArrayList();
        //add: 리스트의 요솟값 추가
        pitches.add("138");
        pitches.add("129");
        pitches.add("142");
        System.out.println(pitches);
        //get: 리스트의 특정 요솟값 추출
        System.out.println(pitches.get(1));
        //size: 리스트의 요소의 개수 리턴
        System.out.println(pitches.size());
        //contains: 리스트 안에 해당 항목이 있는지 판별-> 불값 리턴
        System.out.println(pitches.contains("142"));
        //remove: 리스트에서 객체에 해당하는 항목을 삭제한 뒤 그 결과로 불값 리턴
        System.out.println(pitches.remove("129"));
        System.out.println(pitches);
    }
}