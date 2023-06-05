import java.util.*;

public class MapTest {
    public static void main(String[] args) {
        Map map = new HashMap();
        map.put("kkk", "1111");
        map.put("aaa", "2222");
        map.put("ddd", "3333");
        map.put("kkk", "6666");

        System.out.println(map);

        String key = (String) map.get("kkk");
        System.out.println(key);

        Set keys = map.keySet();
        System.out.println(keys);

        Iterator itKey = keys.iterator();
        while (itKey.hasNext()) {
            String k = (String) itKey.next();
            System.out.println(k);
        }

        Collection values = map.values();
        Iterator itVal = values.iterator();
        while (itVal.hasNext()) {
            String v = (String) itVal.next();
            System.out.println(v);
        }

        Set maps = map.entrySet();
        Iterator itMap = maps.iterator();
        while (itMap.hasNext()) {
            Map.Entry entry = (Map.Entry) itMap.next();
            String k = (String) entry.getKey();
            String v = (String) entry.getValue();
            System.out.println(k + " , " + v);
        }
    }
}
