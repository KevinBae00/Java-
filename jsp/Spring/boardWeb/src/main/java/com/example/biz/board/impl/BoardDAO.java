package com.example.biz.board.impl;

import com.example.biz.board.BoardVO;
import com.example.biz.common.JDBCUtil;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository("boardDAO")
public class BoardDAO {

    private Connection conn = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;

    private final String BOARD_INSERT = "insert into  BOARD(seq, title, writer, content)\n" +
            "values ((select nvl(max(seq),0)+1 from BOARD),?,?,?)";
    private final String BOARD_UPDATE = "update BOARD set TITLE=?, CONTENT=? where SEQ = ?";
    private final String BOARD_DELETE = "delete BOARD where SEQ=?";
    private final String BOARD_GET = "select * from BOARD where SEQ=?";
    private final String BOARD_LIST = "select * from BOARD order by SEQ desc";

    //    글 등록
    public void insertBoard(BoardVO vo) {
        System.out.println("===> JDBC로 insertBoard() 기능 처리");

        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_INSERT);
            stmt.setString(1, vo.getTitle());
            stmt.setString(2, vo.getWriter());
            stmt.setString(3, vo.getContent());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtil.close(stmt, conn);
        }
    }

    //    글 수정
    public void updateBoard(BoardVO vo) {
        System.out.println("===> JDBC로 updateBoard() 기능 처리");

        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_UPDATE);
            stmt.setString(1, vo.getTitle());
            stmt.setString(2, vo.getContent());
            stmt.setInt(3, vo.getSeq());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtil.close(stmt, conn);
        }
    }

    //    글 삭제
    public void deleteBoard(BoardVO vo) {
        System.out.println("===> JDBC로 deleteBoard() 기능 처리");

        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_DELETE);
            stmt.setInt(1, vo.getSeq());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtil.close(stmt, conn);
        }
    }

    //    글 상세 조회
    public BoardVO getBoard(BoardVO vo) {
        System.out.println("===> JDBC로 getBoard() 기능 처리");

        BoardVO boardVO = null;
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_GET);
            stmt.setInt(1, vo.getSeq());
            rs = stmt.executeQuery();

            if (rs.next()) {
                boardVO = new BoardVO();
                boardVO.setTitle(rs.getString("title"));
                boardVO.setWriter(rs.getString("writer"));
                boardVO.setContent(rs.getString("content"));
                boardVO.setRegDate(rs.getDate("regdate"));
                boardVO.setCnt(rs.getInt("cnt"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtil.close(rs, stmt, conn);
        }
        return boardVO;
    }

    //    글 목록 조회
    public List<BoardVO> getBoardList(BoardVO vo) {
        System.out.println("===> JDBC로 getBoardList() 기능 처리");

        List<BoardVO> boardVOList = new ArrayList<BoardVO>();
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_LIST);
            rs = stmt.executeQuery();

            while (rs.next()) {
                BoardVO boardVO = new BoardVO();
                boardVO.setTitle(rs.getString("title"));
                boardVO.setWriter(rs.getString("writer"));
                boardVO.setContent(rs.getString("content"));
                boardVO.setRegDate(rs.getDate("regdate"));
                boardVO.setCnt(rs.getInt("cnt"));
                boardVOList.add(boardVO);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtil.close(rs, stmt, conn);
        }
        return boardVOList;
    }
}
