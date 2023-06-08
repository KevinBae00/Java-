package lamdaProject;

import java.util.function.BiConsumer;
import java.util.function.Consumer;

public class LamdaConsumerTest {
    public static void main(String[] args) {
        Consumer<String> c1 = (name) -> System.out.println(name);
        c1.accept("Hong");

        BiConsumer<String, String> c2 = (fname, lname) -> System.out.println(fname + lname);
        c2.accept("choi", "hong");
    }
}
