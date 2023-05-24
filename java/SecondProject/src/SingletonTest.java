import com.javacho.p4.Singleton;

public class SingletonTest {
    public static void main(String[] args) {
        Singleton st1 = Singleton.getInstance();
        Singleton st2 = Singleton.getInstance();

        System.out.println(st1);
        System.out.println(st2);
    }
}
