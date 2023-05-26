package com.javacho.p3;

import com.javacho.p1.A;

public class ProductTest {
    public static void main(String[] args) {
        Tv t = new Tv();
        Audio a = new Audio();
        Computer c = new Computer();

        Buyer b = new Buyer();

        b.buy(t);
//        b.buy(a);
//        b.buy(c);

    }
}
