import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class IterratorTest {
    public static void main(String[] args) {
        ArrayList list = new ArrayList();
        Set set = new HashSet();

        for (int i = 0; i < 5; i++) {
            list.add(i);
            set.add(i + 5);
        }

        System.out.println(list);
        System.out.println(set);

//        iterator 반복자 패턴

        // 1
        Iterator it = list.iterator();

        // 2
//        System.out.println(it);

        while (it.hasNext()) {
            int num = (Integer) it.next();
            System.out.println(num);
        }

        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            int num = (Integer) it2.next();
            System.out.println(num);
        }
    }
}
