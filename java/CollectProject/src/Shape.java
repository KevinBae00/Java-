import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
public abstract class Shape {
    int x, y;

    abstract double area();

    public String getLocation() {
        return "x : " + ", y : " + y;
    }
}
