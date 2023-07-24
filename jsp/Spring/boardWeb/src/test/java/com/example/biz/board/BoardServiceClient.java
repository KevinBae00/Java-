package com.example.biz.board;

import com.example.biz.board.impl.BoardDAO;

import java.util.List;

public class BoardServiceClient {
    public static void main(String[] args) {
        BoardDAO boardDAO = new BoardDAO();
        BoardVO vo = new BoardVO();

        vo.setTitle("myBatis제목");
        vo.setWriter("홍길동");
        vo.setContent("myBatis내용");

//        boardDAO.insertBoard(vo);

        vo.setSearchCondition("TITLE");
        vo.setSearchKeyword("");

        List<BoardVO> boardVOList = boardDAO.getBoardList(vo);

        for (BoardVO boardVO : boardVOList) {
            System.out.println(">>>>" + boardVO.toString());
        }

    }
}
