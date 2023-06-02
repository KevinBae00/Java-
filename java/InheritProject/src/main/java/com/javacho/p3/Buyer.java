package com.javacho.p3;

public class Buyer {
    int money = 1000;
    Product[] pro = new Product[10];
    int idx = 0;

    void buy(Product p) {
        if (money < p.price) {
            System.out.println("잔액이 부족합니다.");
            return;
        }

        pro[idx++] = p;

        money -= p.price;
//        System.out.println(p + " 구매완료" + " 포인트는 " + p.bonusPoint);
    }

    void summary() {
        for (Product pp : pro) {
            if (pp != null) {
                System.out.println(pp + " 구매완료" + " 포인트는 " + pp.bonusPoint);
            }
        }
    }

}
