package com.example.view.user;

import com.example.biz.user.UserVO;
import com.example.biz.user.impl.UserDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
    @RequestMapping(value = "/login.do", method = RequestMethod.GET)
    public String loginView(UserVO vo) {
        vo.setId("test");
        vo.setPassword("test1234");
        return "login.jsp";
    }

    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public String login(UserVO vo, UserDAO userDAO) {
        System.out.println("로그인 인증 처리...");
        if (userDAO.getUser(vo) != null)
            return "getBoardList.do";
        else
            return "login.jsp";
    }
}
