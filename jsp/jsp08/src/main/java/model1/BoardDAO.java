package model1;

import common.JDBCConnect;

import javax.servlet.ServletContext;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class BoardDAO extends JDBCConnect {
    // 데이터베이스 연결 및 쿼리문 실행을 위한 메소드 작성

    public BoardDAO(ServletContext application) {
        super(application);
        // null exception이 뜰 경우 web.xml 문제일 수 있다. db관련 내용을 넣었는지 확인해라
    }

    //    겁색 조건에 맞는 게시물의 개수를 반환합니다.
    public int selectCount(Map<String, Object> map) {
        int totalCount = 0;
        String query = "select count(*) from board";
        if (map.get("searchWord") != null) {
            query += " where " + map.get("searchField") + " Like '%" + map.get("searchWord") + "%'";
        }
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            rs.next();
            totalCount = rs.getInt(1);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return totalCount;
    }
//    검색 조건에 맞는 게시물 목록을 반환합니다.

    public List<BoardDTO> selectList(Map<String, Object> map) {
        List<BoardDTO> bbs = new ArrayList<BoardDTO>();

        String query = "select * from board";
        if (map.get("searchWord") != null) {
            query += " where " + map.get("searchField") + " Like '%" + map.get("searchWord") + "%'";
        }
        query += " order by num desc";
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            while (rs.next()) {
                BoardDTO dto = new BoardDTO();
                dto.setNum(rs.getString("num"));
                dto.setTitle(rs.getString("title"));
                dto.setContent(rs.getString("content"));
                dto.setPostdate(rs.getDate("postdate"));
                dto.setId(rs.getString("id"));
                dto.setVisitcount(rs.getString("visitcount"));

                bbs.add(dto);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bbs;
    }

//    검색 조건에 맞는 게시물 목록을 반화합니다.(페이징 기능 지원).

//    게시글 데이터를 받아 DB에 추가합니다.

//    지정한 게시물을 찾아 내용을 반환합니다.

//    지정한 게시물의 조회수를 1 증가시킵니다.

//    지정한 게시물을 삭제합니다.

}
