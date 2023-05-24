package chapter07;

public class Excercise9 {
    public static void main(String[] args) {
        Excercise ex1 = Excercise.getInstance();
        Excercise ex2 = Excercise.getInstance();

        System.out.println("ex1 == ex2 : " + (ex1 == ex2));
    }
}

class Excercise {
    private static Excercise excercise = new Excercise();

    public static Excercise getInstance() {
        return excercise;
    }
}
