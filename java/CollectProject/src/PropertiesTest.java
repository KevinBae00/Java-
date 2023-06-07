import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Properties;

public class PropertiesTest {
    public static void main(String[] args) {
//        Properties prop = new Properties();
//
//        prop.setProperty("timeout", "30");
//        prop.setProperty("language", "kr");
//        prop.setProperty("size", "10");
//        prop.setProperty("capacity", "10");
//
//        System.out.println(prop.getProperty("timeout"));
//
//        Enumeration e = prop.propertyNames(); // key 전체를 반환함
//
//        while (e.hasMoreElements()) {
//            String element = (String) e.nextElement();
//            System.out.println(element + "=" + prop.getProperty(element));
//        }

        // 파일로부터 데이터 읽어 오기
        Properties prop = new Properties();
        try {
            prop.load(new FileInputStream("src/info.properties"));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        String name = prop.getProperty("name");
        String data = prop.getProperty("data");
        String[] sdata = data.split(",");

        int max = 0;
        int min = 0;
        int sum = 0;

        for (int i = 0; i < sdata.length; i++) {
            int num = Integer.parseInt(sdata[i]);
            if (i == 0) max = min = num;
            if (max < num) max = num;
            else if (min > num) min = num;

            sum += num;
        }

        System.out.println(name);
        System.out.println(max);
        System.out.println(min);
        System.out.println(sum);
    }
}
