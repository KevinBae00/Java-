package com.example.biz.board.impl;

import com.example.biz.board.BoardVO;
import com.example.biz.util.SqlSessionFactoryBean;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class BoardDAO {
    private SqlSession mybatis;

    public BoardDAO() {
        mybatis = SqlSessionFactoryBean.getSessionFactory();
    }

    public void insertBoard(BoardVO vo) {
        mybatis.insert("BoardDAO.insertBoard", vo);
        mybatis.commit();
    }

    public void updateBoard(BoardVO vo) {
        mybatis.update("BoardDAO.updateBoard", vo);
        mybatis.commit();
    }

    public void deleteBoard(BoardVO vo) {
        mybatis.update("BoardDAO.deleteBoard", vo);
        mybatis.commit();
    }

    public BoardVO getBoard(BoardVO vo) {
        return mybatis.selectOne("BoardDAO.getBoard", vo);
    }

    public List<BoardVO> getBoardList(BoardVO vo) {
        return mybatis.selectList("BoardDAO.getBoardList", vo);
    }

}


//import com.example.biz.board.BoardVO;
//import com.example.biz.common.JDBCUtil;
//import org.springframework.stereotype.Repository;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
//@Repository("boardDAO")
//public class BoardDAO {
//
//    private Connection conn = null;
//    private PreparedStatement stmt = null;
//    private ResultSet rs = null;
//
//    private final String BOARD_INSERT = "insert into board(seq, title, writer, content) "
//            + "values((select nvl(max(seq), 0)+1 from board),?,?,?)";
//    private final String BOARD_UPDATE = "update board set title=?, content=? where seq=?";
//    private final String BOARD_DELETE = "delete board where seq=?";
//    private final String BOARD_GET = "select * from board where seq=?";
//    private final String BOARD_LIST = "select * from board order by seq desc";
//    private final String BOARD_LIST_T = "select * from board where title like '%'||?||'%' order by seq desc";
//    private final String BOARD_LIST_C = "select * from board where content like '%'||?||'%' order by seq desc";
//
//    // 글 등록
//    public void insertBoard(BoardVO vo) {
//        System.out.println("===> JDBC로 insertBoard() 기능 처리");
//
//        try {
//            conn = JDBCUtil.getConnection();
//            stmt = conn.prepareStatement(BOARD_INSERT);
//            stmt.setString(1, vo.getTitle());
//            stmt.setString(2, vo.getWriter());
//            stmt.setString(3, vo.getContent());
//            stmt.executeUpdate();
//        } catch (SQLException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        } finally {
//            JDBCUtil.close(stmt, conn);
//        }
//
//    }
//
//    // 글 수정
//    public void updateBoard(BoardVO vo) {
//        System.out.println("===> JDBC로 updateBoard() 기능 처리");
//        try {
//            conn = JDBCUtil.getConnection();
//            stmt = conn.prepareStatement(BOARD_UPDATE);
//            stmt.setString(1, vo.getTitle());
//            stmt.setString(2, vo.getContent());
//            stmt.setInt(3, vo.getSeq());
//            stmt.executeUpdate();
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            JDBCUtil.close(stmt, conn);
//        }
//    }
//
//    // 글 삭제
//    public void deleteBoard(BoardVO vo) {
//        System.out.println("===> JDBC로 deleteBoard() 기능 처리");
//        try {
//            conn = JDBCUtil.getConnection();
//            stmt = conn.prepareStatement(BOARD_DELETE);
//            stmt.setInt(1, vo.getSeq());
//            stmt.executeUpdate();
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            JDBCUtil.close(stmt, conn);
//        }
//    }
//
//    // 글 상세 조회
//    public BoardVO getBoard(BoardVO vo) {
//        System.out.println("===> JDBC로 getBoard() 기능 처리");
//        BoardVO board = null;
//        try {
//            conn = JDBCUtil.getConnection();
//            stmt = conn.prepareStatement(BOARD_GET);
//            stmt.setInt(1, vo.getSeq());
//            rs = stmt.executeQuery();
//
//            if (rs.next()) {
//                board = new BoardVO();
//                board.setSeq(rs.getInt("SEQ"));
//                board.setTitle(rs.getString("TITLE"));
//                board.setWriter(rs.getString("WRITER"));
//                board.setContent(rs.getString("CONTENT"));
//                board.setRegDate(rs.getDate("REGDATE"));
//                board.setCnt(rs.getInt("CNT"));
//            }
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            JDBCUtil.close(rs, stmt, conn);
//        }
//
//        return board;
//    }
//
//    // 글 목록 조회
//    public List<BoardVO> getBoardList(BoardVO vo) {
//        System.out.println("===> JDBC로 getBoardList() 기능 처리");
//
//        List<BoardVO> boardList = new ArrayList<BoardVO>();
//        BoardVO board = null;
//        try {
//            conn = JDBCUtil.getConnection();
//            if (vo.getSearchCondition().equals("TITLE")) {
//                stmt = conn.prepareStatement(BOARD_LIST_T);
//            } else if (vo.getSearchCondition().equals("CONTENT")) {
//                stmt = conn.prepareStatement(BOARD_LIST_C);
//            }
//            stmt.setString(1, vo.getSearchKeyword());
//            rs = stmt.executeQuery();
//
//            while (rs.next()) {
//                board = new BoardVO();
//                board.setSeq(rs.getInt("SEQ"));
//                board.setTitle(rs.getString("TITLE"));
//                board.setWriter(rs.getString("WRITER"));
//                board.setContent(rs.getString("CONTENT"));
//                board.setRegDate(rs.getDate("REGDATE"));
//                board.setCnt(rs.getInt("CNT"));
//                boardList.add(board);
//            }
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            JDBCUtil.close(rs, stmt, conn);
//        }
//        return boardList;
//    }
//}