public class Point3D extends Point {
    int x = 100;
    int y = 200;
//    int z;

    public Point3D() {
        super();
    }

    // 메서드 오버라이딩

//    @Override
//    void showInfo() {
//        System.out.println(x + "," + y + "," + z);
//    }

    void valPrint() {
        System.out.println(x);
        System.out.println(y);
        System.out.println(super.x);
        System.out.println(super.y);
    }
}
