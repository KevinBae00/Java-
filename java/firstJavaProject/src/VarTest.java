public class VarTest {
    public static void main(String[] args) {
        System.out.println("Var.cv = " + Var.cv);
        Var.cv = 1000;
        System.out.println("Var.cv = " + Var.cv);

        Var v1 = new Var();

        System.out.println(v1.iv);
        System.out.println("v1.cv = " + v1.cv); // 1000

        v1.iv = 10;
        v1.cv = 20;

        System.out.println(v1.iv); // 10
        System.out.println("v1.cv = " + v1.cv); // 20
        v1.add();

        System.out.println("===========");

        Var v2 = new Var();

        System.out.println(v2.iv); // 0
        System.out.println(v2.cv); // 20

        v2.cv = 30;

        System.out.println(v1.cv);
        System.out.println(v2.cv);
    }
}
