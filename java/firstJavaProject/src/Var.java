public class Var {
    // 멤버변수
    // 자동 초기화
    // 1.인스턴 변수
    // 2.클래스(static)
    // - 생성없이 사용가능 (클래스이름.변수명)
    // -

    int iv;
    static int cv;

    // 지역변수
    // 반드시 초기화
    void add() {
        int lv;
        lv = 200;
        System.out.println(lv);
    }
}
