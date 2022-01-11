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
 * @author admi
 */
public class PhieuNhapModify {

    /**
     *
     * @return
     */
    public static List<Phieu_Nhap> findAll() {
        
           List<Phieu_Nhap> phieuNhapList = new ArrayList<>();
        Connection connection = null;
        Statement statement = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/quan_li_nha_an", "root", "Canhdinh1802");
            String sql = "SELECT * FROM quan_li_nha_an.vat_tu_nhap inner JOIN quan_li_nha_an.chi_tiet_phieu_nhap ON chi_tiet_phieu_nhap.ten_vat_tu = vat_tu_nhap.ten_vat_tu inner JOIN quan_li_nha_an.phieu_nhap_kho ON chi_tiet_phieu_nhap.ngay = phieu_nhap_kho.ngay LEFT JOIN quan_li_nha_an.nguoi_tiep_nhan ON phieu_nhap_kho.ten_dong_chi_nhan = nguoi_tiep_nhan.ten_dong_chi_nhan";
            statement = connection.createStatement();
            ResultSet resultset = statement.executeQuery(sql);
            while (resultset.next()) {
              Phieu_Nhap pn = new Phieu_Nhap(resultset.getDate("ngay").toString(), resultset.getString("don_vi_quan_ly"), resultset.getString("khu_bep"), resultset.getString("ten_dong_chi_nhan"),  resultset.getString("don_vi_cong_tac"), resultset.getString("kho_nhan_hang"),resultset.getString("ten_vat_tu"), resultset.getString("don_vi"),resultset.getInt("don_gia"), resultset.getFloat("so_luong_phai_nhap"), resultset.getFloat("so_luong_thuc_nhap"));
             
              phieuNhapList.add(pn);
            }
            
            return phieuNhapList;
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
        return phieuNhapList;
    }   
    public static List<Nguoi_tiep_nhan> Ten_dong_chi_nhan() {
        
           List<Nguoi_tiep_nhan> ntnList = new ArrayList<>();
        Connection connection = null;
        Statement statement = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/quan_li_nha_an", "root", "Canhdinh1802");
            String sql = "SELECT * FROM quan_li_nha_an.nguoi_tiep_nhan";
            statement = connection.createStatement();
            ResultSet resultset = statement.executeQuery(sql);
            while (resultset.next()) {
              Nguoi_tiep_nhan ntn = new Nguoi_tiep_nhan(resultset.getString("ten_dong_chi_nhan"), resultset.getString("don_vi_cong_tac"));
             ntnList.add(ntn);
            }
            
            return ntnList;
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
        return ntnList;
    }   
   

    public static void insert(Phieu_Nhap pn) {
         Connection connection = null;
       PreparedStatement statement = null;
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/quan_li_nha_an", "root", "Canhdinh1802");
       
         String  sql = "insert into chi_tiet_phieu_nhap(ngay,ten_vat_tu,so_luong_phai_nhap,so_luong_thuc_nhap,don_gia) values (?,?,?,?,?)";
         statement = connection.prepareCall(sql);
         statement.setString(1, pn.getNgay());
         statement.setString(2, pn.getTen_vat_tu());
         statement.setFloat(3, pn.getPhai_nhap());
         statement.setFloat(4, pn.getThuc_nhap());
         statement.setInt(5, pn.getDon_gia());
         statement.execute();
        } catch (SQLException ex) {
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
        
    }
    
}
