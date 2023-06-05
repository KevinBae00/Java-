import java.util.TreeSet;

public class TreeSetTest {
    public static void main(String[] args) {
//        자동 정렬이  아니다
//        데이터 자체에 정렬 기준이 정의되어 있다.
//        Integer클래스는 Comparable이 상속되어 있다.
//        compareTo()메소드가 오버라이딩 되어있다.
        TreeSet set = new TreeSet();

//        set.add(3); // new Integer(3);
//        set.add(1);
//        set.add(4);
//        set.add(2);
//        set.add(5);

//        System.out.println(set);
//        set.add("홍길동");
//        set.add("이길동");
//        set.add("고길동");
//        set.add("최길동");
//        set.add("다길동");

//        System.out.println(set);

//        set.add(new Member("홍길동", 14));
//        set.add(new Member("고길동", 12));
//        set.add(new Member("이길동", 11));
//
//        System.out.println(set);

        set.add("홍길동");
        set.add("이길동");
        set.add("고길동");
        set.add("최길동");
        set.add("다길동");

        System.out.println("오름차순");
        System.out.println(set);

        TreeSet set2 = new TreeSet(new Descend());
        set2.add("홍길동");
        set2.add("이길동");
        set2.add("고길동");
        set2.add("최길동");
        set2.add("다길동");

        System.out.println("내림차순");
        System.out.println(set2);


    }
}
