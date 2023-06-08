package stream;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileOutputText {
    public static void main(String[] args) {
        try {
            FileOutputStream fo = new FileOutputStream("text.txt");
            fo.write(65);
            fo.write(66);
            fo.write(67);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
