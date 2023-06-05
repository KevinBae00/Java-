import java.util.HashSet;

public class MemberTest {
    public static void main(String[] args) {
        // hashset은 객체의 중복을 제거하기 위해 equals(), hashcode() 반드시 오버라이딩
        HashSet set = new HashSet();

        Member m1 = new Member("홍길동", 10);
        Member m2 = new Member("홍길동", 10);

        String s1 = new String("abc");
        String s2 = new String("abc");

        set.add(m1);
        set.add(m2);
        set.add(s1);
        set.add(s2);

        System.out.println(set);
    }
}
