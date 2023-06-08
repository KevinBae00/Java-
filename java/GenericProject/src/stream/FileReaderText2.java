package stream;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class FileReaderText2 {
    public static void main(String[] args) {
        FileReader fr = null;
        BufferedReader br = null;

        try {
            fr = new FileReader("src/stream/FileReaderText.java");
            br = new BufferedReader(fr);

            String txt = null;
            while ((txt = br.readLine()) != null) {
                System.out.println(txt);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                fr.close();
                br.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
