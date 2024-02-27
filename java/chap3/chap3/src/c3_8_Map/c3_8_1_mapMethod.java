package c3_8_Map;

import java.util.HashMap;

public class c3_8_1_mapMethod {
    public static void main(String[]args){
        HashMap<String, String> map=new HashMap<>();
        //put: key와 value 추가
        map.put("people", "사람");
        map.put("baseball", "야구");
        //get: key에 해당하는 value를 얻을 때 사용
        System.out.println(map.get("people"));//"사람" 출력
        //containsKey/containsValue: 맵에 해당하는 키/값 있는지 여부에 따라 불값 리턴
        System.out.println(map.containsKey("people"));
        System.out.println(map.containsValue("people"));
        //remove: 맵의 항목을 삭제 후 value값 리턴
        System.out.println(map.remove("people"));
        //size: 맵 요소의 개수를 리턴
        System.out.println(map.size());
        //KeySet: 맵의 모든 key를 모아 리턴
        System.out.println(map.keySet());
    }
}
