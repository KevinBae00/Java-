package stream;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class FileWriterText2 {
    public static void main(String[] args) {
        FileWriter fw = null;
        BufferedWriter bw = null;
        try {
            fw = new FileWriter("text3.txt", true);
            bw = new BufferedWriter(fw);

            fw.write('A');

            char[] buf = {'B', 'C', 'D'};
            fw.write(buf);

            fw.write(buf, 1, 2);

            fw.write("홍길동 입니다");
        } catch (IOException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                fw.flush();
                fw.close();
                bw.flush();
                bw.close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
