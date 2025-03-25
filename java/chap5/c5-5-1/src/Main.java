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

public class Main{
    public static void main(String[]args){
        Dog dog = new Dog();
        dog.setName("Poppy");
        System.out.println(dog.name);
        dog.sleep();
    }
}