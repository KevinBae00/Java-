package javalanhProject;

public class PersonTest {
    public static void main(String[] args) {
//        Person p1 = new Person(11111, "홍길동");
//        System.out.println(p1.toString());
//
//        Person p2 = new Person(11111, "홍길동");
//        System.err.println(p2);
//
//        if (p1 == p2) {
//            System.out.println("두 객체는 같다");
//        } else {
//            System.out.println("두 객체는 다르다");
//        }

//         객체 생성 방식
        Person person = new Person(1111, "홍길동");
        Class s = person.getClass();
        System.out.println(s.getName());

//        Class를 사용한 객체 생성방식
        try {
            Class s2 = Class.forName("javalanhProject.Person");
            System.out.println(s2.getName());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
