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
public class Nguoi_An {

    private String Thang;
    private int SHQD;
    private String Ho_va_ten;
    private String Cap_bac;
    private String Don_vi;
    private int Ngay_an;
    private int Muc_tien;
    private int Ngay_le;

    public Nguoi_An() {
    }

    public Nguoi_An(String Thang, int SHQD, String Ho_va_ten, String Cap_bac, String Don_vi, int Ngay_an, int Muc_tien, int Ngay_le) {
        this.Thang = Thang;
        this.SHQD = SHQD;
        this.Ho_va_ten = Ho_va_ten;
        this.Cap_bac = Cap_bac;
        this.Don_vi = Don_vi;
        this.Ngay_an = Ngay_an;
        this.Muc_tien = Muc_tien;
        this.Ngay_le = Ngay_le;
    }

    public String getThang() {
        return Thang;
    }

    public void setThang(String Thang) {
        this.Thang = Thang;
    }

    public int getSHQD() {
        return SHQD;
    }

    public void setSHQD(int SHQD) {
        this.SHQD = SHQD;
    }

    public String getHo_va_ten() {
        return Ho_va_ten;
    }

    public void setHo_va_ten(String Ho_va_ten) {
        this.Ho_va_ten = Ho_va_ten;
    }

    public String getCap_bac() {
        return Cap_bac;
    }

    public void setCap_bac(String Cap_bac) {
        this.Cap_bac = Cap_bac;
    }

    public String getDon_vi() {
        return Don_vi;
    }

    public void setDon_vi(String Don_vi) {
        this.Don_vi = Don_vi;
    }

    public int getNgay_an() {
        return Ngay_an;
    }

    public void setNgay_an(int Ngay_an) {
        this.Ngay_an = Ngay_an;
    }

    public int getMuc_tien() {
        return Muc_tien;
    }

    public void setMuc_tien(int Muc_tien) {
        this.Muc_tien = Muc_tien;
    }

    public int getNgay_le() {
        return Ngay_le;
    }

    public void setNgay_le(int Ngay_le) {
        this.Ngay_le = Ngay_le;
    }


    
    

}