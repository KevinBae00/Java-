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
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/mvcboard/edit.do")
public class EditController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public EditController() {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idx = req.getParameter("idx");
        MVCBoardDAO dao = new MVCBoardDAO();
        MVCBoardDTO dto = dao.selectView(idx);
        req.setAttribute("dto", dto);
        req.getRequestDispatcher("/14MVCBoard/Edit.jsp").forward(req, resp);
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
            JSFunction.alertBack(resp, "첨부 파일이 제한 용량을 초과합니다.");

            return;
        }

        String idx = mr.getParameter("idx");
        String prevOfile = mr.getParameter("prevOfile");
        String prevSfile = mr.getParameter("prevSfile");

        String name = mr.getParameter("name");
        String title = mr.getParameter("title");
        String content = mr.getParameter("content");

        HttpSession session = req.getSession();
        String pass = (String) session.getAttribute("pass");

        MVCBoardDTO dto = new MVCBoardDTO();
        dto.setIdx(idx);
        dto.setName(name);
        dto.setTitle(title);
        dto.setContent(content);
        dto.setPass(pass);

        String fileName = mr.getFilesystemName("ofile");

        if (fileName != null) {
            String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
            String ext = fileName.substring(fileName.lastIndexOf("."));
            String newFileName = now + ext;

            // 파일명 변경
            File oldFile = new File(saveDirectory + File.separator + fileName);
            File newFile = new File(saveDirectory + File.separator + newFileName);
            oldFile.renameTo(newFile);

            dto.setOfile(fileName);  // 원래 파일 이름
            dto.setSfile(newFileName);  // 서버에 저장된 파일 이름

            FileUtil.deleteFile(req, "/Uploads", prevSfile);
        } else {
            dto.setOfile(prevOfile);
            dto.setSfile(prevSfile);
        }

        MVCBoardDAO dao = new MVCBoardDAO();
        int result = dao.updatePost(dto);

        if (result == 1) { // 수정 성공
            session.removeAttribute("pass");
            resp.sendRedirect("../mvcboard/view.do?idx=" + idx);
        } else {
            JSFunction.alertLocation(resp, "비밀번호 검증을 다시 진행해주세요.", "../mvcboard/view.do?idx=" + idx);
        }
    }
}
