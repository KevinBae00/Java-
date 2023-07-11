package com.example.biz.board.impl;

import com.example.biz.board.BoardService;
import com.example.biz.board.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
    @Autowired
    private BoardDAOSpring boardDAO;
//    private LogAdvice log;

    public BoardServiceImpl() {
//        log = new LogAdvice();
    }

    @Override
    public void insertBoard(BoardVO vo) {
//        log.printLog();
        boardDAO.insertBoard(vo);
    }

    @Override
    public void updateBoard(BoardVO vo) {
//        log.printLog();
        boardDAO.updateBoard(vo);
    }

    @Override
    public void deleteBoard(BoardVO vo) {
//        log.printLog();
        boardDAO.deleteBoard(vo);
    }

    @Override
    public BoardVO getBoard(BoardVO vo) {
//        log.printLog();
        return boardDAO.getBoard(vo);
    }

    @Override
    public List<BoardVO> getBoardList(BoardVO vo) {
//        log.printLog();
        return boardDAO.getBoardList(vo);
    }
}
