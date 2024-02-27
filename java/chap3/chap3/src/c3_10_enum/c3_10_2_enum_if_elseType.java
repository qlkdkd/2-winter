package c3_10_enum;

public class c3_10_2_enum_if_elseType {
    enum coffeeType{
        Americano, Ice_Americano, Cafe_Latte
    }

    public static void main(String[] args){
        for(coffeeType type: coffeeType.values()){
            System.out.println(type);//순서대로 출력
        }
    }
}
