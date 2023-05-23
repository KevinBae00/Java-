public class VarFun {
    // 멤버변수와 메소드의 관계

    int iv;
    static int cv;

    void iFunction() {
        iv = 10;
        cv = 20;
    }

    static void sFunction() {
        cv = 30;
        // iv = 40; // 클래스 메소드는 인스턴스 변수를 사용할 수 없다.
    }

}
