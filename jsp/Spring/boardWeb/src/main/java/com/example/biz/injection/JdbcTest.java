package com.example.biz.injection;

import com.example.biz.common.JDBCUtil;

import java.sql.Connection;

public class JdbcTest {
    public static void main(String[] args) {
        Connection con = JDBCUtil.getConnection();

        if (con != null) {
            System.out.println("연결성공");
        } else {
            System.out.println("연결실패");
        }
    }
}
