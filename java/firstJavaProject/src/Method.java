public class Method {
    // 메소드
    // 1. 인스턴스 메소드
    // 2. 클래스 메소드

//    리턴타입 메소드명(매개변수1, ...){
//      실행문
//      [return 값] // 리턴타입이 기본형 or 참조형일때 작성
//    }

    //    리턴타입 : void, 기본형, 참조형
    void add() {
        System.out.println(3 + 2);
    }

    void add2(int x, int y) {
        System.out.println(x + y);
    }

    int add3(int x, int y) {
        int result = x + y;
        return result;
    }

    int maxVal(int x, int y) {
//        if (x > y) {
//            return x;
//        } else {
//            return y;
//        }

        if (x > y) {
            return x;
        }
        return y;

//        int max = 0;
//        if (x > y) {
//            max = x;
//        } else {
//            max = y;
//        }
//        return max;
    }

    void test(int x) {
        if (x > 10) {
            return; // 메소드의 강제종료
        }
        System.out.println("hello");
    }

    void add5(int... x) {
        int sum = 0;
        for (int num : x) {
            sum += num;
        }
        System.out.println(sum);
    }

    static void add6(int x, int y) {
        System.out.println("static add6()" + (x + y));
    }
}
