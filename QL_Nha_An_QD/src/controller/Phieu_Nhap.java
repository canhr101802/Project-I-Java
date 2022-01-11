/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.Date;

/**
 *
 * @author admin
 */
public class Phieu_Nhap {

    private String Ngay;
    private String don_vi_quan_li;
    private String khu_bep;
    private String ten_dong_chi_nhan;
    private String Don_vi_cong_tac;
    private String kho_nhan_hang;
    private String ten_vat_tu;
    private String Don_vi_tinh;
    
    private int don_gia;
    private float phai_nhap;
    private float thuc_nhap;
    

    public Phieu_Nhap() {
    }

    public Phieu_Nhap(String Ngay, String don_vi_quan_li, String khu_bep, String ten_dong_chi_nhan, String Don_vi_cong_tac, String kho_nhan_hang, String ten_vat_tu, String Don_vi_tinh, int don_gia, float phai_nhap, float thuc_nhap) {
        this.Ngay = Ngay;
        this.don_vi_quan_li = don_vi_quan_li;
        this.khu_bep = khu_bep;
        this.ten_dong_chi_nhan = ten_dong_chi_nhan;
        this.Don_vi_cong_tac = Don_vi_cong_tac;
        this.kho_nhan_hang = kho_nhan_hang;
        this.ten_vat_tu = ten_vat_tu;
        this.Don_vi_tinh = Don_vi_tinh;
        this.don_gia = don_gia;
        this.phai_nhap = phai_nhap;
        this.thuc_nhap = thuc_nhap;
    }

    public String getNgay() {
        return Ngay;
    }

    public void setNgay(String Ngay) {
        this.Ngay = Ngay;
    }

    public String getDon_vi_quan_li() {
        return don_vi_quan_li;
    }

    public void setDon_vi_quan_li(String don_vi_quan_li) {
        this.don_vi_quan_li = don_vi_quan_li;
    }

    public String getKhu_bep() {
        return khu_bep;
    }

    public void setKhu_bep(String khu_bep) {
        this.khu_bep = khu_bep;
    }

    public String getTen_dong_chi_nhan() {
        return ten_dong_chi_nhan;
    }

    public void setTen_dong_chi_nhan(String ten_dong_chi_nhan) {
        this.ten_dong_chi_nhan = ten_dong_chi_nhan;
    }

    public String getDon_vi_cong_tac() {
        return Don_vi_cong_tac;
    }

    public void setDon_vi_cong_tac(String Don_vi_cong_tac) {
        this.Don_vi_cong_tac = Don_vi_cong_tac;
    }

    public String getKho_nhan_hang() {
        return kho_nhan_hang;
    }

    public void setKho_nhan_hang(String kho_nhan_hang) {
        this.kho_nhan_hang = kho_nhan_hang;
    }

    public String getTen_vat_tu() {
        return ten_vat_tu;
    }

    public void setTen_vat_tu(String ten_vat_tu) {
        this.ten_vat_tu = ten_vat_tu;
    }

    public String getDon_vi_tinh() {
        return Don_vi_tinh;
    }

    public void setDon_vi_tinh(String Don_vi_tinh) {
        this.Don_vi_tinh = Don_vi_tinh;
    }

    public int getDon_gia() {
        return don_gia;
    }

    public void setDon_gia(int don_gia) {
        this.don_gia = don_gia;
    }

    public float getPhai_nhap() {
        return phai_nhap;
    }

    public void setPhai_nhap(float phai_nhap) {
        this.phai_nhap = phai_nhap;
    }

    public float getThuc_nhap() {
        return thuc_nhap;
    }

    public void setThuc_nhap(float thuc_nhap) {
        this.thuc_nhap = thuc_nhap;
    }


    
    
    
    
}
