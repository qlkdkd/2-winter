class Animal{
    String name;

    void setName(String name){
        this.name = name;
    }
}

class Dog extends Animal{
    void sleep(){
        System.out.println(this.name + " zzz");
    }
}

class HouseDog extends Dog{
    void sleep(){
        System.out.println(this.name + " zzz in house");
    }

    void sleep(int hour){
        System.out.println(this.name + " zzz in house for " + hour + "hours");
    }
}

public class Main{
    public static void main(String[]args){
        HouseDog houseDog = new HouseDog();
        houseDog.setName("happy");
        houseDog.sleep();
        houseDog.sleep(3);
    }
}