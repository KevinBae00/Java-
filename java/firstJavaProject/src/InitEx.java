public class InitEx {

    // 자동초기화 -> 명시적 초기화 -> 초기화 블록 -> 생성자 초기화 블럭

    int x;
    static int cv;

    // static초기화 블럭
    static {
        System.out.println("static 초기화 블럭");
        cv += 10;
    }

    // 인스턴스 초기화블럭
    {
        System.out.println("인스턴스 초기화 블럭 실행");
        x = 10;
        cv++;
    }

    InitEx() {
        System.out.println("생성자 호출");
    }
}
