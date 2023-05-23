public class Construct {
    //    변수
    int x;
    int y;
    static int cv;

    //    생성자
//    객체를 생성할때 사용(호출)
//    멤버변수를 초기화 한다(인스턴스 변수)
//    오버로딩이 가능하다.
//    클래스의 이름과 동일하게 작성한다.
//    매개변수를 가진다.
//    리턴타입이 없다.
//    기본생성자(생략가능)

    Construct() {
        x = 10;
        y = 20;
    }

    Construct(int x) {
        this.x = x;
    }

    Construct(int x, int y) {
        this.x = x;
        this.y = y;
    }

//    메소드

}
