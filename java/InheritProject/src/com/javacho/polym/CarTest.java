package com.javacho.polym;

// 객체 생성의 다형성
// 객체의 형변환
// 매개변수의 다형성
// 배열을 이용한 다형성
public class CarTest {
    public static void main(String[] args) {
//        FireEngine f = new FireEngine();
//        f.water();

//        Ambulance ab = new Ambulance();
//        ab.siren();

//        객체의 다형성
//        상속관계에서만 가능하다
//        캐스팅이 가능하다.
//        부모가 큰 타입, 자식이 작은 타입
//        자동형 반환(업캐스팅), 강제형 변환 (다운 캐스팅)

        Car c1 = new FireEngine();
        Car c2 = new Ambulance();

//        c1.water()
//        c2.siren()

//        c1.drive();
//        c2.stop();

        work(c1); // work(new FireEngine())
        work(c2); // work(new Ambulance())
    }

    public static void work(Car c) {
        // 매개변수의 다형성
        // instanceof
//        타입을 알고싶은 값 instanceof 클래스 이름

        if (c instanceof FireEngine) {
            FireEngine f = (FireEngine) c;
            f.water();
        } else if (c instanceof Ambulance) {
            Ambulance ab = (Ambulance) c;
            ab.siren();
        }
    }
}
