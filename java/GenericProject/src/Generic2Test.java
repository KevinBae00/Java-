public class Generic2Test {
    public static void main(String[] args) {
        Generic2<String, Integer> g1 = new Generic2<String, Integer>();
        g1.set("Hong", 1111);

        System.out.println(g1.getName());
        System.out.println(g1.getId());
    }
}
