public class ConstructTest {
    public static void main(String[] args) {
        Construct ct = new Construct();
        System.out.println(ct.x);
        System.out.println(ct.y);
        System.out.println(Construct.cv);

        Construct ct2 = new Construct(100);
        System.out.println(ct2.x);
    }
}
