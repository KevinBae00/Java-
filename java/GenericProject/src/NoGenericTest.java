public class NoGenericTest {
    public static void main(String[] args) {
        NoGeneric noGeneric = new NoGeneric();
        String[] name = {"Hong", "Kim"};

        noGeneric.set(name);

        Object[] v = noGeneric.get();
        String[] ss = (String[]) v;

        System.out.println(ss[0]);
        System.out.println(ss[1]);

        Integer[] integers = {1, 2};
        noGeneric.set(integers);

        Object[] v2 = noGeneric.get();
        Integer[] ii = (Integer[]) v2;
        System.err.println(ii[0]);
        System.err.println(ii[1]);
    }
}
