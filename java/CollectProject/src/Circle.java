public class Circle extends Shape {

    double r;

    public Circle(double r) {
        this.r = r;
    }


    @Override
    double area() {
        return r * r * Math.PI;
    }
}
