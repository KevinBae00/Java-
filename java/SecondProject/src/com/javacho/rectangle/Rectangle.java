package com.javacho.rectangle;

public class Rectangle {

    int width;
    int height;

    public Rectangle(int width, int height) {
        this.width = width;
        this.height = height;
    }

    public void rectArea() {
        int area = width * height;
        System.out.println(area);
    }
}

