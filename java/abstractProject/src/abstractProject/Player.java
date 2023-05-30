package abstractProject;

abstract class Player {
    boolean pause;
    int currentPos;

    // 추상 클래스
    // 1. abstract를 붙인다.
//    2. 멤버면수, 메소드, 생성자 정의가능
//    3. 추상메소드가 있다. -> 선언부만 존재하는 메소드
//    4. 생성이 불가하다.
//    5. 자식클래스에 상속해서 사용가능
//    6.자식클래스는 반드시 추상메소드를 오버라이딩 해야한다.

    Player() {
        pause = false;
        currentPos = 0;
    }

    abstract void play(int pos); // 추상메소드

    void play() {
        play(currentPos);
    }
}
