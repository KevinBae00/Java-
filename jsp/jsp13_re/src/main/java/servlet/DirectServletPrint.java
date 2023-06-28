package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/13Servlet/DirectServletPrint.do")
public class DirectServletPrint extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DirectServletPrint() {
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>Post Servlet</head>");
		writer.println("<body>");
		writer.println("<h2>서블릿요청에 의해 실행된 화면</h2>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
		
	}

}
