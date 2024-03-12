package model;

public class BanDoc {		/* sua khong con email */
	private String MaBanDoc ="" ;
	private String Ten  ="";
	private String DiaChi="";
	private String Cccd="";
	private String Sdt="";
	private String ChucVu="";
	public BanDoc(String maBanDoc, String ten, String diaChi, String cccd, String sdt, String chucVu) {
		super();
		MaBanDoc = maBanDoc;
		Ten = ten;
		DiaChi = diaChi;
		Cccd = cccd;
		Sdt = sdt;
		ChucVu = chucVu;
	}
	public BanDoc() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * @return the maBanDoc
	 */
	public String getMaBanDoc() {
		return MaBanDoc;
	}
	/**
	 * @param maBanDoc the maBanDoc to set
	 */
	public void setMaBanDoc(String maBanDoc) {
		MaBanDoc = maBanDoc;
	}
	/**
	 * @return the ten
	 */
	public String getTen() {
		return Ten;
	}
	/**
	 * @param ten the ten to set
	 */
	public void setTen(String ten) {
		Ten = ten;
	}
	/**
	 * @return the diaChi
	 */
	public String getDiaChi() {
		return DiaChi;
	}
	/**
	 * @param diaChi the diaChi to set
	 */
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	/**
	 * @return the cccd
	 */
	public String getCccd() {
		return Cccd;
	}
	/**
	 * @param cccd the cccd to set
	 */
	public void setCccd(String cccd) {
		Cccd = cccd;
	}
	/**
	 * @return the sdt
	 */
	public String getSdt() {
		return Sdt;
	}
	/**
	 * @param sdt the sdt to set
	 */
	public void setSdt(String sdt) {
		Sdt = sdt;
	}
	/**
	 * @return the chucVu
	 */
	public String getChucVu() {
		return ChucVu;
	}
	/**
	 * @param chucVu the chucVu to set
	 */
	public void setChucVu(String chucVu) {
		ChucVu = chucVu;
	}
	@Override
	public String toString() {
		return "BanDoc [MaBanDoc=" + MaBanDoc + ", Ten=" + Ten + ", DiaChi=" + DiaChi + ", Cccd=" + Cccd + ", Sdt="
				+ Sdt + ", ChucVu=" + ChucVu + "]";
	}
	
	
	
}