package c4_1_if_else;
import java.util.*;
public class c4_1_4_contains {
    public static void main(String[]args){
        ArrayList<String> pocket=new ArrayList<String>();
        pocket.add("paper");
        pocket.add("cellphone");
        pocket.add("money");

        if (pocket.contains("money")){
            System.out.println("택시를 타고 가라");
        }
        else{
            System.out.println("걸어가라");
        }
    }
}