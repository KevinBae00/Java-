package com.example.view.user;

import com.example.biz.user.UserVO;
import com.example.biz.user.impl.UserDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
    @RequestMapping("/login.do")
    public String login(UserVO vo, UserDAO userDAO) {
        if (userDAO.getUser(vo) != null)
            return "getBoardList.do";
        else
            return "login.jsp";
    }
}
