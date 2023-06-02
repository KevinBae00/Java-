package com.javacho.p3;

public class Product {
    int price;
    int bonusPoint;

    public Product(int price) {
        super();
        this.price = price;
        bonusPoint = (int) (price * 0.1);
    }

    public Product() {

    }
}
