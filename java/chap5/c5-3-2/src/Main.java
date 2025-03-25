public class Main{
    void sayNick(String nick){
        if ("바보" == nick){
            return;
        }
        System.out.println("나의 별명은 " + nick + "입니다.");
    }

    public static void main(String[]args){
        Main main = new Main();
        main.sayNick("야호");
        main.sayNick("바보");
    }
}