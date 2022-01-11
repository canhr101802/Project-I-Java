/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author admin
 */
public class Nguoi_tiep_nhan {
    private String ten_dong_chi_nhan;
    private String don_vi_cong_tac;

    public Nguoi_tiep_nhan() {
    }

    public Nguoi_tiep_nhan(String ten_dong_chi_nhan, String don_vi_cong_tac) {
        this.ten_dong_chi_nhan = ten_dong_chi_nhan;
        this.don_vi_cong_tac = don_vi_cong_tac;
    }

    public String getTen_dong_chi_nhan() {
        return ten_dong_chi_nhan;
    }

    public void setTen_dong_chi_nhan(String ten_dong_chi_nhan) {
        this.ten_dong_chi_nhan = ten_dong_chi_nhan;
    }

    public String getDon_vi_cong_tac() {
        return don_vi_cong_tac;
    }

    public void setDon_vi_cong_tac(String don_vi_cong_tac) {
        this.don_vi_cong_tac = don_vi_cong_tac;
    }
    
}
