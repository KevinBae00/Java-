package com.javacho.p4;

public class Singleton {
    // 싱글톤 클래스
    // 객체가 한번만 생성
    // 1. 생성자를 private하게 정의 한다.
    // 2. public static한 메소드 정의한다.
    // 3. private static Singleton 멤버 변수를 정의한다.

    private static Singleton singleton = new Singleton();

    private Singleton() {

    }

    public static Singleton getInstance() {
        return singleton;
    }
}
