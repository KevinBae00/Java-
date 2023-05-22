// 1) 클래스 작성(설계도)
// 2) 객체 생성(제품만들기)
// 3) 객체 사용(제품을 사용) - 객체가 가지고 있는 변수와 메서드를 이용한다.
public class Tv {
    // 속성(변수)
    String color; // 색상
    boolean power; // 전원
    int channel; // 채널

    // 기능(행위) : 메소드
    void power() {
        power = !power;
    }

    void channelUp() {
        channel++;
    }

    void channelDown() {
        channel--;
    }
}
