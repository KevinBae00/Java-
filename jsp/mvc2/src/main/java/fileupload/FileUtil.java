package fileupload;

import com.oreilly.servlet.MultipartRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class FileUtil {
    public static MultipartRequest uploadFile(HttpServletRequest req, String saveDirectory, int maxPostSize) {

        try {
            return new MultipartRequest(req, saveDirectory, maxPostSize, "UTF-8");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
