package utils;

import javax.servlet.jsp.JspWriter;
import java.io.IOException;

public class JSFunction {
    //    메세지 알림창을 띄운 후 명시한 URL로 이동합니다.
    public static void alertLocation(String msg, String url, JspWriter out) {
        String script = "<script>"
                + "alert('" + msg + "');"
                + "location.href = '" + url + "';"
                + "</script>";
        try {
            out.print(script);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    //    메세지 알림창을 띄운 후 이전 페이지로 돌아갑니다.
    public static void alertBack(String msg, JspWriter out) {
        String script = "<script>"
                + "alert('" + msg + "');"
                + "history.back()"
                + "</script>";
        try {
            out.print(script);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
