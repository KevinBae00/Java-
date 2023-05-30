package abstractProject;

public abstract class NamuRecipe {
//    1. 물을 끓인다.
//    2. 스프를 먼저 넣는다.
//    3. 면을 넣는다.
//    4. 각종 토핑을 넣는다.
//    5. 먁을 익힌다.

    abstract void boil();

    abstract void soup();

    abstract void namu();

    abstract void topping();

    abstract void make();

    void cook() {
        boil();
        soup();
        namu();
        topping();
        make();
    }
}
