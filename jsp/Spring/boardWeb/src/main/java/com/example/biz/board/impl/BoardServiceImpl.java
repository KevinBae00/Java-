package com.example.biz.board.impl;

import com.example.biz.board.BoardService;
import com.example.biz.board.BoardVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
    @Override
    public void insertBoard(BoardVO vo) {

    }

    @Override
    public void updateBoard(BoardVO vo) {

    }

    @Override
    public void deleteBoard(BoardVO vo) {

    }

    @Override
    public BoardVO getBoard(BoardVO vo) {
        return null;
    }

    @Override
    public List<BoardVO> getBoardList(BoardVO vo) {
        return null;
    }
}
