package lamdaProject;

public class LamdaTest {
    public static void main(String[] args) {
//        람다식
//        ()->{}

//        int add(int x, int y){
//            return x + y;
//        }

//        1. (int x, int y) -> {return x+y};
//        2. (int x, int y) -> x + y
//        3. (x, y)
//        4. x -> x * x 매개변수가 하나인 경우 괄호 생략 가능

//        MyFunction mf = (x, y) -> x + y;
//        int result = mf.sum(10, 20);
//        System.out.println(result);
//
//        mf = (x, y) -> x - y;
//        result = mf.sum(30, 10);
//        System.out.println(result);

//        printMul(3, 4, (x, y) -> x * y);

//        MyFunction2<String> f1 = (x) -> System.out.println(x);
//        f1.print("abc");

        MyFunction2<String> f2 = (x) -> System.out.println(x);
        f2.print(String.valueOf("100"));
    }

    static void printMul(int x, int y, MyFunction f) {
        System.out.println(f.sum(x, y));
    }
}
