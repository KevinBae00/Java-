public class MethodTest {
    public static void main(String[] args) {
        int x = 10, y = 20; // 지역변수

        Method m = new Method();
        m.add(); // 매소드의 호출

//        m.add2(10, 20);
        m.add2(x, y);
        int result = m.add3(100, 200);


        System.out.println(result);

        int max = m.maxVal(500, 300);
        System.out.println(max);
    }
}
