import java.util.ArrayList;

public class ArrayListTest {
    public static void main(String[] args) {
        ArrayList list = new ArrayList();
        list.add(1); // new Integer(1);
//        list.add(0.2); // new Double(0.2), 가능하면 한 타입만 사용
        list.add(3); // 아쉽게도 int를 Integer로 바꾸는 과정은 공개가 안되어 있다.. (JVM에서 하는 듯하다.)

        System.out.println(list.get(0)); // list.get(0) == Integer(1),  System.out.println(lInteger(1).toString())
        System.out.println(2);

        for (Object obj : list) {
            int i = (Integer) obj;
            System.out.println(i);
        }
    }
}
