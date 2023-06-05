import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@AllArgsConstructor
@ToString
@EqualsAndHashCode
public class Member implements Comparable {
    String name;
    int age;

    // equals()
    // hashcode()

    @Override
    public int compareTo(Object o) {
        Member other = (Member) o;
        return this.name.compareTo(other.name);
//        if (o instanceof Member) {
//            Member other = (Member) o;
//            //        this 앞에 있으면 오름차순
////        음수, 0, 앵수
////        return this.age - other.age; // this 앞에 있으면 오름차순
//            return other.age - this.age; // this 뒤에 있으면 내림차순
//        }
//        return 0;
    }

}
