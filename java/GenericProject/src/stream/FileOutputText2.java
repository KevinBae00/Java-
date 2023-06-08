package stream;

import java.io.IOException;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

public class FileOutputText2 {
    public static void main(String[] args) {
        FileOutputStream fo = null;
        try {
            fo = new FileOutputStream("text.txt", true);
            byte[] b = new byte[26];
            byte data = 65;
            for (int i = 0; i < b.length; i++) {
                b[i] = data;
                data++;
            }
            fo.write(b);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                fo.close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
