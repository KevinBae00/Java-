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

        MyFunction mf = (x, y) -> x + y;
        int result = mf.sum(10, 20);
        System.out.println(result);
    }
}
