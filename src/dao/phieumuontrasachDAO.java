package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.swing.JOptionPane;

import java.sql.Date;
import database.JDBCUtil;
import model.*;
import stuff.QLPhieuMuonTraSach_interface;

public class phieumuontrasachDAO {

	public ArrayList<PhieuMuonTraSach> pmtss ;
	private String SortCondition = "";
	private String State = " '' OR 1 = 1 ";
	public phieumuontrasachDAO() {
		
	}
	public phieumuontrasachDAO(String sortCondition,String state) {
		if(state != "Tất cả") {
			State = "";
			State += "'" + state + "'";
		}
		SortCondition = sortCondition;
	}


	public ArrayList<PhieuMuonTraSach> SelectAll() {
		
		pmtss = new ArrayList<PhieuMuonTraSach>();
		try {
			//b1: tao connection
			Connection conn = JDBCUtil.getConnection();
			
			//b2: statement
			Statement st = conn.createStatement();
			
			//b3: execute
			String s = "";
			switch(SortCondition) {
			
			case "Mã phiếu mượn":
				s = "MAPHIEUMUON";
				break;
		
			case "Ngày mượn":
				s = "NGAYMUON";
				break;
			case "Ngày trả":
				s = "NGAYTRA";
				break;
			case "Hạn trả":
				s = "HANTRA";
				break;
			default: 
				s = "MAPHIEUMUON";
				break;
}
			String sql = "SELECT * FROM phieumuontrasach WHERE (TINHTRANG = " + State + ") ORDER BY "  + s;
			System.out.println(sql);
			//b4: xu li
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {
				String MAPHIEUMUON  = rs.getString("MAPHIEUMUON");
				String MABANDOC		 = rs.getString("MABANDOC");
				String MASACH		 = rs.getString("MASACH");
				int    SOLUONG	 	= Integer.parseInt(rs.getString("SOLUONG"));
				Date NGAYMUON	 = rs.getDate("NGAYMUON");
				Date HANTRA		 = rs.getDate("HANTRA");
				Date NGAYTRA  = rs.getDate("NGAYTRA");
				String TINHTRANG	 = rs.getString("TINHTRANG");
				PhieuMuonTraSach phieumuontrasach = new PhieuMuonTraSach(MAPHIEUMUON, MABANDOC, MASACH, SOLUONG, NGAYMUON, HANTRA, NGAYTRA, TINHTRANG);
				pmtss.add(phieumuontrasach);
			}
			JDBCUtil.closeConnection(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pmtss;
	}

	 
	public void Them(PhieuMuonTraSach t) {
		
			try {
				// b1: tao connect
				Connection conn = JDBCUtil.getConnection();

				// b2: tao doi tuong statement
				Statement st = conn.createStatement();
				
				// b3: execute query
				if(Check(t.getMaBanDoc(),t.getMaSach()) == false ){
					System.out.println("KHONG TON TAI MA SACH  HOAC MA BAN DOC");
					//JOptionPane.showMessageDialog(null, "Mã Sách Không Tồn Tại " , "ERROR EXIST", JOptionPane.YES_OPTION);
				}
				
				else {
					System.out.println("no hien ra o day");
				String sql = "INSERT INTO phieumuontrasach (MAPHIEUMUON,MABANDOC,MASACH,SOLUONG,NGAYMUON,HANTRA)"
						+ " VALUES (" + "'" + t.getMaPhieuMuon() + "'" + "," + "'" + t.getMaBanDoc() + "'" + "," + "'"
						+ t.getMaSach() + "'" + "," + "'" + t.getSoLuong() + "'" + "," + "'" + t.getNgayMuon() + "'" + ","
						+ "'" + t.getHanTra() + "'" + ")";
				// b4: execute
				System.out.println("ban da thuc thi  cau lenh: " + sql);
				int ketQua = st.executeUpdate(sql);

				if (ketQua > 0) {
					System.out.println("THEM ma phieu muon: " + t.getMaPhieuMuon() + " THANH CONG !");
					JOptionPane.showMessageDialog(null, "Thêm phiếu mượn thành công", "PHIẾU MƯỢN", JOptionPane.INFORMATION_MESSAGE);

				} else {
					System.out.println("THEM ma phieu muon" + t.getMaPhieuMuon() + " that bai");
				}
				
				}
				// b5: ngat ket noi
			} catch (SQLException e) {
				/***********/
				e.printStackTrace();
				int ErrorCode = e.getErrorCode();
				String ErrorMessage = e.getMessage();
				// Xây dựng thông điệp lỗi
				if(ErrorCode == 1062){
					ErrorMessage = " Tồn tại phiếu mượn";
				}
				else if(ErrorCode == 1406) {
					ErrorMessage = " Mã Bạn Đọc Hoặc Mã Sách Quá Dài";
				}
	            String errorMessage = "" + ErrorMessage + "        " ;//+  e.getErrorCode() 
	                                  
//	                                  +"\nError code: " + ErrorCode;

	            // Hiển thị thông điệp lỗi bằng JOptionPane
	            JOptionPane.showMessageDialog(null, errorMessage, "Lỗi Dữ Liệu", JOptionPane.ERROR_MESSAGE);
	            /***********/
			}


	}

	public void Luu(PhieuMuonTraSach t, String MPM) {
		try {
			//b1: tao connect
			Connection conn = JDBCUtil.getConnection();
			
			//b2: tao doi tuong statement
			if(Check(t.getMaBanDoc(),t.getMaSach()) == false ){
				System.out.println("KHONG TON TAI MA SACH  HOAC MA BAN DOC");
				//JOptionPane.showMessageDialog(null, "Mã Sách Không Tồn Tại " , "ERROR EXIST", JOptionPane.YES_OPTION);
			}
			else {
				Statement st = conn.createStatement();

				String sql =  "UPDATE phieumuontrasach "
						+ "SET                   "
						+ "MAPHIEUMUON        = '" + t.getMaPhieuMuon()   + "', "
						+ "MABANDOC        = '" + t.getMaBanDoc()         + "', "
						+ "MASACH             = '" + t.getMaSach()        + "', " 
						+ "SOLUONG            = '" + t.getSoLuong()       + "', "
						+ "NGAYMUON           = '" + t.getNgayMuon()      + "', "
						+ "HANTRA		      = '" + t.getHanTra()        + "', "
						+ "NGAYTRA		      = '" + t.getNgayTra()       + "', "
						+ "TINHTRANG		  = '" + t.getTinhTrang()     + "'  "
						+ "WHERE MAPHIEUMUON  = '" + MPM                       + "'  ";
						
				//b4: execute
				System.out.println(t.toString()); 
				
							System.out.println(sql);
				int ketQua = st.executeUpdate(sql);
				  JOptionPane.showMessageDialog(null, "Cập nhật mã sách thành công", "Cập nhật thông tin", JOptionPane.PLAIN_MESSAGE);
						if (ketQua == 0) {
				System.out.println("update CO ma phieu muon: " + t.getMaPhieuMuon() + " THANH CONG !");
						} else {
				//System.out.println("update CO ma phieu muon: " + t.getMaPhieuMuon() + " that bai");
	}
			}
		
			// b5: ngat ket noi

			JDBCUtil.closeConnection(conn);
		} catch (SQLException e) {
			e.printStackTrace();
          

			/***********
			
			int ErrorCode = e.getErrorCode();
			String ErrorMessage = e.getMessage();
			// Xây dựng thông điệp lỗi
			if(ErrorCode == 1062){
				ErrorMessage = " trùng lặp giá trị Mã Sách Chung ";
			}
            String errorMessage = " Error: " + ErrorMessage +
                                  
                                  "\nError code: " + ErrorCode;

            // Hiển thị thông điệp lỗi bằng JOptionPane
            JOptionPane.showMessageDialog(null, errorMessage, "Lỗi Dữ Liệu", JOptionPane.ERROR_MESSAGE);
            ***********/
		}
		
		
	}
	 
	public void Xoa(String t) {
		try {
			//b1: tao bien connection
			Connection conn = JDBCUtil.getConnection();
			//b2: tao bien statement
			Statement st = conn.createStatement();
			//b3: truy van
			String sql = "DELETE FROM `thuvien`.`phieumuontrasach` WHERE  `maphieumuon` = " + "'" + t + "'";
			//b4: thuc hien lenh
			System.out.println("ban da thuc thi  cau lenh: " + sql);
			int ketQua = st.executeUpdate(sql);
			if(ketQua > 0)
			System.out.println("xoa phieu muon thanh cong");
			else {
				System.out.println("that bai");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
public ArrayList<PhieuMuonTraSach> SelectResult(String t) {
		
		pmtss = new ArrayList<PhieuMuonTraSach>();
		try {
			//b1: tao connection
			Connection conn = JDBCUtil.getConnection();
			
			//b2: statement
			Statement st = conn.createStatement();
			
			//b3: execute
			String s = "";
			switch(SortCondition) {
			
			case "Mã phiếu mượn":
				s = "MAPHIEUMUON";
				break;
		
			case "Ngày mượn":
				s = "NGAYMUON";
				break;
			case "Ngày trả":
				s = "NGAYTRA";
				break;
			case "Hạn trả":
				s = "HANTRA";
				break;

			default: 
				s = "MAPHIEUMUON";
				break;
}
			String sql = "SELECT * FROM phieumuontrasach"
					+ " WHERE "
					+ "CONCAT_WS(' ', MAPHIEUMUON,MABANDOC,MASACH,SOLUONG,NGAYMUON,HANTRA,NGAYTRA,TINHTRANG) LIKE '%"+ t +"%'"
					+ "ORDER BY " + s;
					
			System.out.println(sql);
			//b4: xu li
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {
				String MAPHIEUMUON  = rs.getString("MAPHIEUMUON");
				String MABANDOC		 = rs.getString("MABANDOC");
				String MASACH		 = rs.getString("MASACH");
				int    SOLUONG	 	= Integer.parseInt(rs.getString("SOLUONG"));
				Date NGAYMUON	 = rs.getDate("NGAYMUON");
				Date HANTRA		 = rs.getDate("HANTRA");
				Date NGAYTRA  = rs.getDate("NGAYTRA");
				String TINHTRANG	 = rs.getString("TINHTRANG");
				PhieuMuonTraSach phieumuontrasach = new PhieuMuonTraSach(MAPHIEUMUON, MABANDOC, MASACH, SOLUONG, NGAYMUON, HANTRA, NGAYTRA, TINHTRANG);
				pmtss.add(phieumuontrasach);
			}
			JDBCUtil.closeConnection(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pmtss;
	}

	public boolean Check(String mbd,String ms) {
		try {
			//b1: tao connection
			Connection conn = JDBCUtil.getConnection();
			
			//b2: statement
			Statement st1 = conn.createStatement();
			Statement st2 = conn.createStatement();
			//b3: execute
			String sql1 = "SELECT * FROM bandoc WHERE MABANDOC = '" + mbd + "'";
			String sql2 = "SELECT * FROM sach WHERE MASACH = '" + ms    + "'";
			System.out.println(sql1);
			System.out.println(sql2);
			//b4: xu li
			ResultSet rs1 = st1.executeQuery(sql1);
			ResultSet rs2 = st2.executeQuery(sql2);
			String MABANDOC = "";
			while(rs1.next())
			 MABANDOC  = rs1.getString("MABANDOC");
			String MASACH = "";
			while(rs2.next())
			 MASACH  = rs2.getString("MASACH");
			if(MABANDOC.equals("")) {
				JOptionPane.showMessageDialog(null, "Không tồn tại Mã Bạn Đọc", "INVALID", JOptionPane.YES_OPTION);
				return false;
			}
			if(MASACH.equals("")) {
				JOptionPane.showMessageDialog(null, "Không tồn tại Mã Sách", "INVALID", JOptionPane.YES_OPTION);
				return false;
			}
			
			
			
			JDBCUtil.closeConnection(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return true;
	}

	 
	public void Clear(PhieuMuonTraSach t) {
		// TODO Auto-generated method stub

	}

	 
	public void Save(PhieuMuonTraSach t) {
		// TODO Auto-generated method stub

	}
}
