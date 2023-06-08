package stream;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class FileInputText {
    public static void main(String[] args) {
        // 한국어 입니다.
        FileInputStream fis = null;
        try {
            fis = new FileInputStream("src/stream/FileInputText.java");
            int data = 0;
            byte[] buf = new byte[fis.available()];
            while ((data = fis.read(buf, 0, fis.available())) != -1) {
                System.out.print(new String(buf, 0, data));
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                fis.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
