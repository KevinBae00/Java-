package com.algoda.Word.model;

import com.algoda.common.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class Wordadao {

    private Connection conn = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;

    private final String WORDA_INSERT = "insert into  Worda(" +
            "word, MEANINGA, MEANINGB, MEANINGC, SIMILIAR_WORDA, SIMILIAR_WORDB, SIMILIAR_WORDC, day)\n" +
            "values (?,?,?,?,?,?,?,?)";
    private final String WORDA_UPDATE = "update Worda " +
            "set  MEANINGA=?, MEANINGB=?, MEANINGC=?, " +
            "SIMILIAR_WORDA=?, SIMILIAR_WORDB=?, SIMILIAR_WORDC=?, day=? " +
            "where word = ?";
    private final String WORDA_DELETE = "delete Worda where word=?";
    private final String WORDA_GET = "select * from Worda where word=?";
    private final String WORDA_LIST = "select * from Worda where day=?";

    //    글 등록
    public void insertWordA(Worddto dto) {
        System.out.println("===> JDBC로 insertWordA() 기능 처리");

        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(WORDA_INSERT);
            stmt.setString(1, dto.getWord());
            stmt.setString(2, dto.getMeaninga());
            stmt.setString(3, dto.getMeaningb());
            stmt.setString(4, dto.getMeaningc());
            stmt.setString(5, dto.getSimilar_worda());
            stmt.setString(6, dto.getSimilar_wordb());
            stmt.setString(7, dto.getSimilar_wordc());
            stmt.setInt(8, dto.getDay());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtil.close(stmt, conn);
        }
    }

    //    글 수정
    public void updateWordA(Worddto dto) {
        System.out.println("===> JDBC로 updateWordA() 기능 처리");

        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(WORDA_UPDATE);
            stmt.setString(1, dto.getMeaninga());
            stmt.setString(2, dto.getMeaningb());
            stmt.setString(3, dto.getMeaningc());
            stmt.setString(4, dto.getSimilar_worda());
            stmt.setString(5, dto.getSimilar_wordb());
            stmt.setString(6, dto.getSimilar_wordc());
            stmt.setInt(7, dto.getDay());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtil.close(stmt, conn);
        }
    }

    //    글 삭제
    public void deleteWordA(Worddto dto) {
        System.out.println("===> JDBC로 deleteWordA() 기능 처리");

        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(WORDA_DELETE);
            stmt.setString(1, dto.getWord());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtil.close(stmt, conn);
        }
    }

    //    글 상세 조회
    public Worddto getWordA(Worddto dto) {
        System.out.println("===> JDBC로 getWordA() 기능 처리");

        Worddto worddto = null;
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(WORDA_GET);
            stmt.setString(1, dto.getWord());
            rs = stmt.executeQuery();

            if (rs.next()) {
                worddto = new Worddto();
                worddto.setWord(rs.getString("word"));
                worddto.setMeaninga(rs.getString("MEANINGA"));
                worddto.setMeaningb(rs.getString("MEANINGB"));
                worddto.setMeaningc(rs.getString("MEANINGC"));
                worddto.setSimilar_worda(rs.getString("SIMILAR_WORDA"));
                worddto.setMeaningb(rs.getString("SIMILAR_WORDB"));
                worddto.setMeaningc(rs.getString("SIMILAR_WORDC"));
                worddto.setDay(rs.getInt("day"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtil.close(rs, stmt, conn);
        }
        return worddto;
    }

    //    글 목록 조회
    public List<Worddto> getWordAList(Worddto dto) {
        System.out.println("===> JDBC로 getWordAList() 기능 처리");

        List<Worddto> WordAList = new ArrayList<Worddto>();
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(WORDA_LIST);
            stmt.setInt(1, dto.getDay());
            rs = stmt.executeQuery();

            while (rs.next()) {
                Worddto worddto = new Worddto();
                worddto.setWord(rs.getString("word"));
                worddto.setMeaninga(rs.getString("MEANINGA"));
                worddto.setMeaningb(rs.getString("MEANINGB"));
                worddto.setMeaningc(rs.getString("MEANINGC"));
                worddto.setSimilar_worda(rs.getString("SIMILAR_WORDA"));
                worddto.setSimilar_wordb(rs.getString("SIMILAR_WORDB"));
                worddto.setSimilar_wordc(rs.getString("SIMILAR_WORDC"));
                worddto.setDay(rs.getInt("day"));
                WordAList.add(worddto);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtil.close(rs, stmt, conn);
        }
        return WordAList;
    }
}