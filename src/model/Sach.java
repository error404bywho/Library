package model;

public class Sach {
	private String MaSachChung;
	private String MaSach;
	private String TenSach;
	private String TheLoai;
	private String TacGia;
	private String TrangThai ;
	public Sach() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Sach(String maSachChung, String maSach, String tenSach, String theLoai, String tacGia, String trangThai) {
		super();
		MaSachChung = maSachChung;
		MaSach = maSach;
		TenSach = tenSach;
		TheLoai = theLoai;
		TacGia = tacGia;
		TrangThai = trangThai;
	}
	public String getMaSachChung() {
		return MaSachChung;
	}
	public void setMaSachChung(String maSachChung) {
		MaSachChung = maSachChung;
	}
	public String getMaSach() {
		return MaSach;
	}
	public void setMaSach(String maSach) {
		MaSach = maSach;
	}
	public String getTenSach() {
		return TenSach;
	}
	public void setTenSach(String tenSach) {
		TenSach = tenSach;
	}
	public String getTheLoai() {
		return TheLoai;
	}
	public void setTheLoai(String theLoai) {
		TheLoai = theLoai;
	}
	public String getTacGia() {
		return TacGia;
	}
	public void setTacGia(String tacGia) {
		TacGia = tacGia;
	}
	public String getTrangThai() {
		return TrangThai;
	}
	public void setTrangThai(String trangThai) {
		TrangThai = trangThai;
	}
	@Override
	public String toString() {
		return "Sach [MaSachChung=" + MaSachChung + ", MaSach=" + MaSach + ", TenSach=" + TenSach + ", TheLoai="
				+ TheLoai + ", TacGia=" + TacGia + ", TrangThai=" + TrangThai + "]";
	}
}