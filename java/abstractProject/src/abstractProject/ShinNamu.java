package abstractProject;

public class ShinNamu extends NamuRecipe {
    @Override
    void boil() {
        System.out.println("물을 100도에서 3분 끓이기");
    }

    @Override
    void soup() {
        System.out.println("면보다 스프를 먼저  넣는다");
    }


    @Override
    void namu() {
        System.out.println("스프를 넣은 후에 넣는다");
    }

    @Override
    void topping() {
        System.out.println("토핑은 마지막에 넣어준다");
    }

    @Override
    void make() {
        System.out.println("5분 동안 중불에 익힌다");
    }

    void eat() {
        cook();
        System.out.println("냠냠 아 배부르다");
    }
}
