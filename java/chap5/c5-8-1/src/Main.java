interface Predator{
    String getFood();
}

class Animal{
    String name;

    void setName(String name){
        this.name = name;
    }
}

class Tiger extends Animal implements Predator{
    public String getFood(){
        return "apple";
    }
}

class Lion extends Animal implements Predator{
    public String getFood(){
        return "banana";
    }
}

class Zookeeper{
    void feed(Predator predator){
        System.out.println("feed " + predator.getFood());
    }
}

class Bouncer{
    void barkAnimal(Animal animal){
        if(animal instanceof Tiger){
            System.out.println("어흥");
        }
        else if(animal instanceof Lion){
            System.out.println("으르렁");
        }
    }
}

public class Main{
    public static void main(String[]args){

        Tiger tiger = new Tiger();
        Lion lion = new Lion();

        Bouncer bouncer = new Bouncer();
        bouncer.barkAnimal(tiger);
        bouncer.barkAnimal(lion);
    }
}