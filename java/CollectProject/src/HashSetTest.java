import java.util.HashSet;

public class HashSetTest {
    public static void main(String[] args) {
//        1. 순서가 없다
//        2. 중복 허용 안함
//        3. hash구조는 기본 오름차순 정렬되어 진다.
        HashSet set = new HashSet();
        set.add(1);
        set.add(3);
        set.add(4);
        set.add(5);
        set.add(5);
        set.add("5"); // new String("5")
        set.add("홍길동");
        set.add("이순신");

        System.out.println(set);
    }
}
