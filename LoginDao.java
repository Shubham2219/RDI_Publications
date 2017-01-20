/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.*;

/**
 *
 * @author Shubham
 */
public class LoginDao {
    public static boolean validate(String name, String pass) {        
        boolean status = true;
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        //String url = "jdbc:mysql://localhost:3306/";
        //String dbName = "rdi";
        //String driver = "com.mysql.jdbc.Driver";
        //String userName = "root";
        //String password = "root";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rdi", "root", "root");

            pst = conn.prepareStatement("select * from login where username=? and password=?");
            pst.setString(1, name);
            pst.setString(2, pass);
            System.out.println(name);
                        System.out.println(name);
            rs = pst.executeQuery();
            status = rs.next();

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pst != null) {
                try {
                    pst.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return status;
    } 
}
