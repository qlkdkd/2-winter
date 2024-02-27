package c3_9_set;

import java.util.HashSet;
import java.util.Arrays;
public class c3_9_2_variableSetCalc {
    public static void main(String[] args){
        HashSet<Integer> s1= new HashSet<>(Arrays.asList(1, 2, 3, 4, 5, 6));
        HashSet<Integer> s2= new HashSet<>(Arrays.asList(4, 5, 6, 7, 8, 9));
        //교집합
        HashSet<Integer> intersection=new HashSet<>(s1);
        intersection.retainAll(s2);
        System.out.println(intersection);

        //합집합
        HashSet<Integer> union=new HashSet<>(s1);
        union.addAll(s2);
        System.out.println(union);

        //차집합 구하기
        HashSet<Integer> substract=new HashSet<>(s1);
        substract.removeAll(s2);
        System.out.println(substract);
    }
}
