import com.javacho.circle.Circle;
import com.javacho.rectangle.Rectangle;

public class AreaTest {
    public static void main(String[] args) {
        Circle c = new Circle(5.0);
        c.circleArea();

        Rectangle rt = new Rectangle(10, 10);
        rt.rectArea();
        System.out.println();
    }
}
