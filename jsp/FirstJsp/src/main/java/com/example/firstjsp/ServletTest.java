package com.example.firstjsp;

import com.sun.security.jgss.InquireType;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

public class ServletTest extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Calendar c = Calendar.getInstance();
        int hour = c.get(Calendar.HOUR);
        int minute = c.get(Calendar.MINUTE);
        int second = c.get(Calendar.SECOND);

        PrintWriter out = resp.getWriter();
        out.write("<html>");
        out.write("<head><title>ServletTest</title></head>");
        out.write("<body>");
        out.write("<h1>");
        out.write(Integer.toString(hour));
        out.write(":");
        out.write(Integer.toString(minute));
        out.write("</h1>");
        out.write("</body>");
        out.write("</html>");
    }
}
