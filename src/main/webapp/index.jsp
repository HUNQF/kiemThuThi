<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>


















hiệu số chẵn

public static int calculateEvenDifference(int[] numbers) {
if (numbers == null || numbers.length == 0)
throw new IllegalArgumentException("Mảng không hợp lệ");

Integer minEven = null, maxEven = null;

for (int num : numbers) {
if (num % 2 == 0) { // Chỉ xét số chẵn
if (minEven == null || num < minEven) {
minEven = num;
}
if (maxEven == null || num > maxEven) {
maxEven = num;
}

return maxEven - minEven;
}



//---------------------------------------------------//

tổng số chẵn
public static int sumNumbers(int[] numbers) {
if (numbers == null || numbers.length == 0) {
return 0;
}

int sum = 0;
for (int num : numbers) {
if (num % 2 == 0) {
sum += num;
}
}
return sum;
}


//---------------------------------------------------//
hiệu số nguyên
public static int calculateDifference(int[] numbers) {
if (numbers == null || numbers.length == 0)
throw new IllegalArgumentException("Mảng không hợp lệ");

int min = numbers[0], max = numbers[0];
for (int num : numbers) {
min = Math.min(min, num);
max = Math.max(max, num);
}
return max - min;
}


//---------------------------------------------------//
tổng số nguyên

public static int sum(int[] arr) {
int sum = 0;
for (int num : arr) {
sum += num;
}
return sum;
}
}

//-----------//


class SinhVien {
String maSV;
String ten;
int tuoi;
float diemTrungBinh;
int kyHoc;
String chuyenNganh;

public SinhVien(String maSV, String ten, int tuoi, float diemTrungBinh, int kyHoc, String chuyenNganh) {
this.maSV = maSV;
this.ten = ten;
this.tuoi = tuoi;
this.diemTrungBinh = diemTrungBinh;
this.kyHoc = kyHoc;
this.chuyenNganh = chuyenNganh;
}
}

class SinhVienService {
public SinhVien suaSinhVien(SinhVien sv, String ten, int tuoi, float diemTrungBinh, int kyHoc, String chuyenNganh) {
if (ten.isEmpty() || chuyenNganh.isEmpty()) {
throw new IllegalArgumentException("Các trường không được để trống");
}
sv.ten = ten;
sv.tuoi = tuoi;
sv.diemTrungBinh = diemTrungBinh;
sv.kyHoc = kyHoc;
sv.chuyenNganh = chuyenNganh;
return sv;
}
}

class SinhVienServiceTest {
@Test
void testSuaSinhVien() {
SinhVien sv = new SinhVien("SV001", "An", 20, 8.5f, 2, "CNTT");
SinhVienService service = new SinhVienService();

SinhVien updatedSV = service.suaSinhVien(sv, "Binh", 21, 9.0f, 3, "KTPM");

}

@Test
void testSuaSinhVienValidation() {
SinhVien sv = new SinhVien("SV002", "Minh", 22, 7.5f, 4, "HTTT");
SinhVienService service = new SinhVienService();

assertThrows(IllegalArgumentException.class, () -> service.suaSinhVien(sv, "", 22, 7.5f, 4, "HTTT"));
}
}


//-----------//

thêm



class SinhVien {
private String maSV;
private String ten;
private int tuoi;
private float diemTrungBinh;
private int kyHoc;
private String chuyenNganh;

public SinhVien(String maSV, String ten, int tuoi, float diemTrungBinh, int kyHoc, String chuyenNganh) {
if (maSV == null || maSV.isEmpty() || ten == null || ten.isEmpty()) {
throw new IllegalArgumentException("Mã SV và Tên không được để trống");
}
if (tuoi < 18 || tuoi > 30) {
throw new IllegalArgumentException("Tuổi phải từ 18 đến 30");
}
if (diemTrungBinh < 0 || diemTrungBinh > 10) {
throw new IllegalArgumentException("Điểm trung bình phải từ 0 đến 10");
}
this.maSV = maSV;
this.ten = ten;
this.tuoi = tuoi;
this.diemTrungBinh = diemTrungBinh;
this.kyHoc = kyHoc;
this.chuyenNganh = chuyenNganh;
}

public String getMaSV() {
return maSV;
}
}

// ✅ Lớp SinhVienService - Quản lý danh sách sinh viên
class SinhVienService {
private List<SinhVien> danhSachSinhVien;

public SinhVienService() {
this.danhSachSinhVien = new ArrayList<>();
}

public void themSinhVien(SinhVien sv) {
danhSachSinhVien.add(sv);
}

public List<SinhVien> getDanhSachSinhVien() {
return danhSachSinhVien;
}
}

// ✅ JUnit Test kiểm thử chức năng thêm sinh viên
public class SinhVienServiceTest {
private SinhVienService sinhVienService;

@BeforeEach
void setUp() {
sinhVienService = new SinhVienService();
}

@Test
void testThemSinhVien_ThanhCong() {
SinhVien sv = new SinhVien("SV001", "Nguyen Van A", 20, 8.5f, 3, "CNTT");
sinhVienService.themSinhVien(sv);
assertEquals(1, sinhVienService.getDanhSachSinhVien().size(), "Thêm thành công, danh sách phải có 1 sinh viên");
}
}


//--------//

xóa


// Lớp SinhVien đại diện cho thông tin của một sinh viên
class SinhVien {
private String maSV;
private String ten;
private int tuoi;
private float diemTrungBinh;
private int kyHoc;
private String chuyenNganh;

public SinhVien(String maSV, String ten, int tuoi, float diemTrungBinh, int kyHoc, String chuyenNganh) {
this.maSV = maSV;
this.ten = ten;
this.tuoi = tuoi;
this.diemTrungBinh = diemTrungBinh;
this.kyHoc = kyHoc;
this.chuyenNganh = chuyenNganh;
}

public String getMaSV() {
return maSV;
}

public void setTen(String ten) {
this.ten = ten;
}

public void setTuoi(int tuoi) {
this.tuoi = tuoi;
}

public void setDiemTrungBinh(float diemTrungBinh) {
this.diemTrungBinh = diemTrungBinh;
}

public void setKyHoc(int kyHoc) {
this.kyHoc = kyHoc;
}

public void setChuyenNganh(String chuyenNganh) {
this.chuyenNganh = chuyenNganh;
}
}

// Lớp SinhVienService để quản lý danh sách sinh viên
class SinhVienService {
private List<SinhVien> danhSachSinhVien;

public SinhVienService() {
this.danhSachSinhVien = new ArrayList<>();
}

// Thêm sinh viên vào danh sách
public void themSinhVien(SinhVien sv) {
danhSachSinhVien.add(sv);
}

// Xóa sinh viên khỏi danh sách
public boolean xoaSinhVien(String maSV) {
return danhSachSinhVien.removeIf(sv -> sv.getMaSV().equals(maSV));
}

public List<SinhVien> getDanhSachSinhVien() {
return danhSachSinhVien;
}
}

// Class kiểm thử chức năng xóa sinh viên bằng JUnit 5
public class SinhVienServiceTest {
private SinhVienService sinhVienService;

@BeforeEach
void setUp() {
sinhVienService = new SinhVienService();
sinhVienService.themSinhVien(new SinhVien("SV001", "Nguyen Van A", 20, 8.5f, 3, "CNTT"));
sinhVienService.themSinhVien(new SinhVien("SV002", "Tran Thi B", 21, 7.8f, 4, "Kinh tế"));
}

@Test
void testXoaSinhVien_ThanhCong() {
boolean ketQua = sinhVienService.xoaSinhVien("SV001");
assertTrue(ketQua, "Xóa sinh viên SV001 phải thành công");
}








