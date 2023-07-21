package com.example.view.user;

import com.example.biz.user.UserVO;
import com.example.biz.user.impl.UserDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @RequestMapping(value = "/login.do", method = RequestMethod.GET)
    public String loginView(UserVO vo) {
        vo.setId("test");
        vo.setPassword("test1234");
        return "login.jsp";
    }

    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public String login(UserVO vo, UserDAO userDAO, HttpSession session) {
        System.out.println("로그인 인증 처리...");

        UserVO userVO = userDAO.getUser(vo);

        if (userVO != null) {
            session.setAttribute("userName", userVO.getName());
            return "getBoardList.do";
        } else
            return "login.jsp";
    }
}
