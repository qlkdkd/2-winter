package c4_1_if_else;

public class c4_1_3_andOrNot {
    public static void main(String[]args){
        int money=2000;
        boolean hasCard=true;

        if(money>3000||hasCard){
            System.out.println("택시를 타고 가라");
        }
        else{
            System.out.println("걸어가라");
        }
    }
}
