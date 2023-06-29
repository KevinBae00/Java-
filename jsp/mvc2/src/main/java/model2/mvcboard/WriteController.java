package model2.mvcboard;

import com.oreilly.servlet.MultipartRequest;
import fileupload.FileUtil;
import utils.JSFunction;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@WebServlet("/mvcboard/write.do")
public class WriteController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public WriteController() {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/14MVCBoard/Write.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String saveDirectory = req.getServletContext().getRealPath("/Uploads");
        File dir = new File(saveDirectory);
        if (!dir.exists()) dir.mkdirs();

        ServletContext application = getServletContext();
        int maxPostSize = Integer.parseInt(application.getInitParameter("maxPostSize"));

        MultipartRequest mr = FileUtil.uploadFile(req, saveDirectory, maxPostSize);

        if (mr == null) {
            JSFunction.alertLocation(resp, "첨부 파일이 제한 용량을 초과했습니다.", "../mvcboard/write.do");

            return;
        }
    }
}
