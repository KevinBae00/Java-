public class GenericTest1 {
    public static void main(String[] args) {
        Generic<String> g1 = new Generic<String>();

        String[] name = {"hong", "kim"};
        g1.set(name);
        String[] v = g1.get();
        System.out.println(v[0]);

        Generic<Integer> g2 = new Generic<Integer>();
        Integer[] it = {1, 2, 3};
        g2.set(it);
    }
}
