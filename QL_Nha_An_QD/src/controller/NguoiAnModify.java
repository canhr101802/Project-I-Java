/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import controller.Phieu_Nhap;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/**
 *
 * @author admin
 */
public class NguoiAnModify {
    public static List<Nguoi_An> findAll() {
        
           List<Nguoi_An> NguoiAnList = new ArrayList<>();
        Connection connection = null;
        Statement statement = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/quan_li_nha_an", "root", "Canhdinh1802");
            String sql = "SELECT * FROM quan_li_nha_an.chi_tiet_danh_sach left JOIN quan_li_nha_an.nguoi_khong_an ON chi_tiet_danh_sach.SHQD = nguoi_khong_an.SHQD";
            statement = connection.createStatement();
            ResultSet resultset = statement.executeQuery(sql);
            while (resultset.next()) {
              Nguoi_An nguoiAn = new Nguoi_An(resultset.getString("thang_nam"), resultset.getInt("SHQD"), resultset.getString("ho_ten"), resultset.getString("cap_bac"), resultset.getString("don_vi"), resultset.getInt("ngay_an"), resultset.getInt("muc_an"), resultset.getInt("ngay_le"));
             
              NguoiAnList.add(nguoiAn);
            }
            
            return NguoiAnList;
        } catch (SQLException ex) {
            Logger.getLogger(PhieuNhapModify.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(PhieuNhapModify.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                    Logger.getLogger(PhieuNhapModify.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(PhieuNhapModify.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return NguoiAnList;
    }   

    
}
