package com.example.view.board;

import com.example.biz.board.BoardVO;
import com.example.biz.board.impl.BoardDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GetBoardListController {

    @RequestMapping("/getBoardList.do")

    public ModelAndView getBoardList(BoardVO vo, BoardDAO dao, ModelAndView mav) {
        System.out.println("글 목록 검색 처리");
        mav.addObject("boardList", dao.getBoardList(vo));
        mav.setViewName("getBoardList.jsp");
        return mav;
    }


}
