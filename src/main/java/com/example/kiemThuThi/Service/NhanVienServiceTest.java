package com.example.kiemThuThi.Service;

public class NhanVienServiceTest {
    void testSuaSinhVien() {
        NhanVien sv = new NhanVien("NV01", "An", 20, 8.5f, 2, "PHC");
        NhanVienService service = new NhanVienService();

        NhanVien updated = service.suaNhanVien(nv, "NV003", "Hung", 21, 9.0f, 3, "PNV");

    }


    void testSua() {
        NhanVien sv = new NhanVien("NV02", "Minh", 22, 7.5f, 4, "PTC");
        NhanVienService service = new NhanVienService();


    }
}
