package c4_1_if_else;
import java.util.*;
public class c4_1_5_elseif {
    public static void main(String[]args){
        boolean hasCard=true;
        ArrayList<String> pocket=new ArrayList<String>();
        pocket.add("paper");
        pocket.add("cellphone");

        if(pocket.contains("money")){
            System.out.println("택시를 타고가라");
        }
        else if(hasCard){
            System.out.println("택시를 타고가라");
        }
        else{
            System.out.println("걸어가라");
        }
    }
}
