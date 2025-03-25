class Animal{
    String name;

    void setName(String Name){
        this.name = name;
    }
}

class Tiger extends Animal{

}

class Lion extends Animal{

}

class Zookeeper{
    void feed(Tiger tiger){
        System.out.println("feed apple");
    }

    void feed(Lion lion){
        System.out.println("feed banana");
    }
}

public class Main{
    public static void main(String[]args){
        Zookeeper zooKeeper = new Zookeeper();
        Tiger tiger = new Tiger();
        Lion lion = new Lion();
        zooKeeper.feed(tiger);
        zooKeeper.feed(lion);
    }
}