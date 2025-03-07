package com.example.kiemThuThi.Service;

public class NhanVien {
    public String ten;
    private String maNv;
    private String ten;
    private Integer tuoi;
    private Double luong;
    private Integer soNamLamViec;
    private String phongBan;

    public NhanVien (String maNv, String ten, Integer tuoi, Double luong, Integer soNamLamViec, String phongBan){
        this.maNv = maNv;
        this.ten = ten;
        this.tuoi = tuoi;
        this.luong = luong;
        this.soNamLamViec = soNamLamViec;
        this.phongBan = phongBan;

    }

    public NhanVien(){

    }

}
