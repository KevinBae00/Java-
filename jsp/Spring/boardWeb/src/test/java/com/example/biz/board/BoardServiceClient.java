package com.example.biz.board;

import com.example.biz.board.impl.BoardDAO;

public class BoardServiceClient {
    public static void main(String[] args) {
        BoardDAO boardDAO = new BoardDAO();
        BoardVO vo = new BoardVO();

        vo.setTitle("myBatis제목");
        vo.setWriter("홍길동");
        vo.setContent("myBatis내용");

        boardDAO.insertBoard(vo);
    }
}
