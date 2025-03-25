public class Main{
    int a;

    void varTest(Main main){
        main.a++;
    }

    public static void main(String[]args){
        Main main = new Main();
        main.a = 1;
        main.varTest(main);
        System.out.println(main.a);
    }
}