package c4_2_switch_case;
import java.util.*;
public class c4_2_1_switch_case_example {
    public static void main(String[]args){
        int month;
        Scanner sc=new Scanner(System.in);
        System.out.println("월 입력: ");
        month=sc.nextInt();
        String monthString="";
        switch(month){
            case 1: monthString="January";break;
            case 2: monthString="February";break;
            case 3: monthString="march";break;
            case 4: monthString="April";break;
            case 5: monthString="May";break;
            case 6: monthString="June";break;
            case 7: monthString="July";break;
            case 8: monthString="August";break;
            case 9: monthString="September";break;
            case 10: monthString="Octover";break;
            case 11: monthString="November";break;
            case 12: monthString="December";break;
            default: monthString="Invalid month";break;
        }
        System.out.println(monthString);
    }
}
