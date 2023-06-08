package stream;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class FileReaderText {
    public static void main(String[] args) {
        FileReader fr = null;

        try {
            fr = new FileReader("src/stream/FileReaderText.java");
            int data = 0;
            while ((data = fr.read()) != -1) {
                System.out.print((char) data);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                fr.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
