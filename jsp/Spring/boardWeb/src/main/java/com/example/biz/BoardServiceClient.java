package com.example.biz;

import com.example.biz.board.BoardService;
import com.example.biz.board.BoardVO;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import java.util.List;

public class BoardServiceClient {
    public static void main(String[] args) {
        AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");

        BoardService boardService = (BoardService) container.getBean("boardService");

        BoardVO vo = new BoardVO();

//        글 등록 기능
        vo.setSeq(100);
        vo.setTitle("임시제목");
        vo.setWriter("홍길동");
        vo.setContent("임시내용..");
        boardService.insertBoard(vo);

//        글 목록 검색 기능
        List<BoardVO> boardVOList = boardService.getBoardList(vo);
        for (BoardVO board : boardVOList) {
            System.out.println("--->" + board.toString());
        }
    }
}
