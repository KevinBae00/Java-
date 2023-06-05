import java.util.ArrayList;
import java.util.List;

public class ShapeTest {
    public static void main(String[] args) {
        List list = new ArrayList();

        list.add(new Circle(3.0));
        list.add(new Rectangle(3, 4));
        list.add(new Circle(5));
        list.add(new Rectangle(5, 6));

        Shape sp1 = (Shape) list.get(0);
        Shape sp2 = (Shape) list.get(1);
        Shape sp3 = (Shape) list.get(2);
        Shape sp4 = (Shape) list.get(3);

        for (Object obj :
                list) {
            Shape shape = (Shape) obj;
            System.out.println(shape.area());
        }

//        System.out.println(sp1.area());
//        System.out.println(sp2.area());
//        System.out.println(sp3.area());
//        System.out.println(sp4.area());
    }
}
