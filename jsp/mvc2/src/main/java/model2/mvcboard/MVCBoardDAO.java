package model2.mvcboard;

import common.DBConnPool;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class MVCBoardDAO extends DBConnPool {
    public MVCBoardDAO() {
    }

    // 검색 조건에 맞는 게시물의 개수를 반환합니다.
    public int selectCount(Map<String, Object> map) {
        int totalCount = 0;
        String query = "select count(*) from mvcboard";
        if (map.get("searchWord") != null) {
            query += " where " + map.get("searchField") + " Like '%" + map.get("searchWord") + "%'";
        }
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            rs.next();
            totalCount = rs.getInt(1);
        } catch (SQLException e) {
            System.out.println("게시물 카운트 중 예외 발생");
            throw new RuntimeException(e);
        }
        return totalCount;
    }

    // 검색 조건에 맞는 게시물 목록을 반환합니다(페이징 기능 지원).
    public List<MVCBoardDTO> selectListPage(Map<String, Object> map) {
        List<MVCBoardDTO> board = new ArrayList<MVCBoardDTO>();

        String query = " "
                + "SELECT * FROM ( "
                + "    SELECT Tb.*, ROWNUM rNum FROM ( "
                + "        SELECT * FROM mvcboard ";

        if (map.get("searchWord") != null) {
            query += " WHERE " + map.get("searchField")
                    + " LIKE '%" + map.get("searchWord") + "%' ";
        }

        query += "        ORDER BY idx DESC "
                + "    ) Tb "
                + " ) "
                + " WHERE rNum BETWEEN ? AND ?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, map.get("start").toString());
            psmt.setString(2, map.get("end").toString());
            rs = psmt.executeQuery();

            while (rs.next()) {
                MVCBoardDTO dto = new MVCBoardDTO();

                dto.setIdx(rs.getString(1));
                dto.setName(rs.getString(2));
                dto.setTitle(rs.getString(3));
                dto.setContent(rs.getString(4));
                dto.setPostdate(rs.getDate(5));
                dto.setOfile(rs.getString(6));
                dto.setSfile(rs.getString(7));
                dto.setDowncount(rs.getInt(8));
                dto.setPass(rs.getString(9));
                dto.setVisitcount(rs.getInt(10));

                board.add(dto);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return board;
    }

    // 게시글 데이터를 받아 DB에 추가합니다(파일 업로드 지원).

    // 주어진 일련번호에 해당하는 게시물을 DTO에 담아 반환합니다.

    // 주어진 일련번호에 해당하는 게시물의 조회수를 1 증가시킵니다.

    // 다운로드 횟수를 1 증가시킵니다.

    // 입력한 비밀번호가 지정한 일련번호의 게시물의 비밀번호와 일치하는지 확인합니다.

    // 지정한 일련번호의 게시물을 삭제합니다.

    // 게시글 데이터를 받아 DB에 저장되어 있던 내용을 갱신합니다(파일 업로드 지원).
}
