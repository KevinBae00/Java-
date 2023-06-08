package lamdaProject;

import java.util.function.Supplier;

public class LamdaSupplierTest {
    public static void main(String[] args) {
        Supplier<String> s1 = () -> {
            return "홍길동";
        };
        System.out.println(s1.get());
    }
}
