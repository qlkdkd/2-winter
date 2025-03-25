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
    HouseDog(String name){
        this.setName(name);
    }
    HouseDog(int type){
        if(type == 1){
            this.setName("yokshire");
        }
        else if (type ==2){
            this.setName("bulldog");
        }
    }

    void sleep(){
        System.out.println(this.name + " zzz in house");
    }

    void sleep(int hour){
        System.out.println(this.name + " zzz in house for " + hour + " hours");
    }
}

public class Main{
    public static void main(String[]args){
        HouseDog happy = new HouseDog("Happy");
        HouseDog yokshire = new HouseDog(1);
        System.out.println(happy.name);
        System.out.println(yokshire.name);
    }
}