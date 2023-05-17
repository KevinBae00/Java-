public class Variable {
    public static void main(String[] args) {
//        변수
//        값을 저장하는 공간
//        타입 변수명
//        기본형 타입 8개
//        정수형 : byte, short, int, long
//        문자형 : char
//        실수형 : float, double
//        논리형 : boolean

        /*boolean bl;
        bl = true; // false
        bl = false;

        char c;
        c = 'a'; // 유니코드 : 'a' -> 97, 'A' -> 65, '0' -> 48
        c = '가'; // '가' -> 44,032

        System.out.println(c);
        System.out.println((int) c);

        byte b;
        b = 10;

        System.out.println(b);
//        b = 128;

        short s;
        s = 128;

        int i;
        i = 38000;

        long l;
        l = 500000000000L;

        float f;
        f = 3.14F;

        double d;
        d = 3.14;*/

//        int x = 10, y = 20, z = 30;
        int x, y, z;
        x = y = z = 10;

//        int i;
//        long l;

//        문자 : 한글자
//        문자열 : 한글자 이상
//        var str = 'abc' or "abc"

//        char c = 'a';
//        String str = "a"; // "abc"

        // 자바의 자료형은 기본형(8개)과 참조형으로 나눈다.

//        boolean -> false;
//        char -> ' ' // 칸벌림
//        byte
//        short
//        int
//        long -> 0
//        float -> 0.0f
//        double -> 0.0
//        String -> ""

//        형변환
//        byte < short < int < long < float < double
//                char

//        강제형 변환

//        자동형 변환
//        byte b = 10;
//        int i = b;

        // 강제형 변환
//        int i = 300;
//        byte b = (byte) i;

//        System.out.println(i);
//        System.out.println(b);

//        char c = 'a';
//        System.out.println(c);

//        int i = c;
//        System.out.println(i);

        int i = 65;
        char c = (char) i;

        System.out.println(c);
    }
}
