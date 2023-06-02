public class AnimalTest {
    public static void main(String[] args) {
        Tiger t = new Tiger();
        Eagle e = new Eagle();
        Whale w = new Whale();

        t.name = "호랑이";
        t.weight = 100;

        e.name = "독수리";
        e.weight = 50;

        w.name = "고래";
        w.weight = 1000;

        System.out.println(t.name);
        System.out.println(t.weight + "KG");
    }
}
