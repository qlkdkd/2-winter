package c3_7_List;

import java.util.ArrayList;

public class c3_7_2_nonGenerics {
    public static void main(String[]args){
        ArrayList pitches=new ArrayList();
        pitches.add("138");
        pitches.add("129");

        String one=(String)pitches.get(0);
        String two=(String)pitches.get(1);
    }
}
