package com.example.kiemThuThi.Service;

public class NhanVienService {

    private NhanVien nv;

    public NhanVien NhanVien(String maNv, String ten, Integer tuoi, Double luong, Integer soNamLamViec, String phongBan) {
        if (ten.isEmpty() || phongBan.isEmpty()) {
            throw new IllegalArgumentException("Các trường không được để trống");
        }

        nv.maNv = maNv;
        nv.ten = ten;
        nv.tuoi = tuoi;
        nv.luong = luong;
        nv.soNamLamViec = soNamLamViec;
        nv.phongBan = phongBan;
        return nv;
    }


}


