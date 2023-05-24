package com.javacho.circle;

public class Circle {

    double rad;
    final double PI = 3.14; // 상수(이름은 대문자)

    public Circle(double rad) {
        this.rad = rad;
    }

    public void circleArea() {
        double area = rad * rad * PI;
        System.out.println(area);
    }
}
