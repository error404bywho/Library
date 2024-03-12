-- --------------------------------------------------------
-- Máy chủ:                      127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Phiên bản:           12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for thuvien
CREATE DATABASE IF NOT EXISTS `thuvien` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `thuvien`;

-- Dumping structure for table thuvien.bandoc
CREATE TABLE IF NOT EXISTS `bandoc` (
  `MABANDOC` varchar(10) NOT NULL,
  `TEN` varchar(122) NOT NULL,
  `DIACHI` varchar(122) NOT NULL,
  `CCCD` varchar(12) NOT NULL,
  `SDT` varchar(122) DEFAULT NULL,
  `CHUCVU` varchar(50) NOT NULL,
  PRIMARY KEY (`MABANDOC`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table thuvien.bandoc: ~32 rows (approximately)
REPLACE INTO `bandoc` (`MABANDOC`, `TEN`, `DIACHI`, `CCCD`, `SDT`, `CHUCVU`) VALUES
	('23GV01', 'Bạch Thị Đào', '55 Đường Lê Lợi, Quận Gò Vấp, Thành phố Hồ Chí Minh', '112028723581', '0500541065', 'Giảng viên'),
	('23GV02', 'Lý Văn Quang', '34 Đường Hoàng Diệu, Quận Phú Nhuận, Thành phố Hồ Chí Minh', '224559751447', '0326285316', 'Giảng viên'),
	('23GV03', 'Dương Thị Hoa', '89 Đường Bạch Đằng, Quận Tân Bình, Thành phố Hồ Chí Minh', '121270874664', '0701715437', 'Giảng viên'),
	('23GV04', 'Tạ Văn Toàn', '150 Đường Trần Duy Hưng, Quận Cầu Giấy, Hà Nội', '108756808688', '0373562207', 'Giảng viên'),
	('23GV05', 'Lương Thị Lan', '98 Đường Xuân Thủy, Quận Cầu Giấy, Hà Nội', '146176670718', '0824941686', 'Giảng viên'),
	('23GV06', 'Trịnh Thị Nga', '45 Đường Chùa Bộc, Quận Đống Đa, Hà Nội', '264757259115', '0396548340', 'Giảng viên'),
	('23GV07', 'Lê Thị Tuyết', '56 Đường Lạch Tray, Quận Ngô Quyền, Hải Phòng', '935360306985', '0966176591', 'Giảng viên'),
	('23GV08', 'Phan Văn Thắng', '66 Đường Lê Lợi, Quận Thanh Khê, Đà Nẵng', '414527937428', '0918168446', 'Giảng viên'),
	('23GV09', 'Bùi Thị Hoa', '39 Đường Nguyễn Văn Linh, Quận Hải Châu, Đà Nẵng', '138613619560', '9095589855', 'Giảng viên'),
	('23GV10', 'Đinh Văn Phú', '17 Đường Tô Hiến Thành, Quận 10, Thành phố Hồ Chí Minh', '826246121908', '0031721175', 'Giảng viên'),
	('23SV001', 'Võ Viết Huy', 'Lô CC1, Đường Nguyễn Văn Linh, xã An Phú Tây, Huyện Bình Chánh TP. Hồ Chí Minh Việt Nam', '043212238502', '0905123784', 'Sinh viên'),
	('23SV002', 'Đinh Văn Thành', 'Lô CC1, Đường Nguyễn Văn Linh, xã An Phú Tây, Huyện Bình Chánh TP. Hồ Chí Minh Việt Nam', '043212238501', '0905123567', 'Sinh viên'),
	('23SV003', 'Lê Văn Luyện', 'đường số 9A, Khu dân cư Trung Sơn, ấp 4B, xã Bình Hưng, huyện Bình Chánh, TP. Hồ Chí Minh Việt Nam', '043444438501', '0912723567', 'Sinh viên'),
	('23SV004', 'Đoàn Xuân Việt', 'KDC Trung Sơn, ấp 4B, xã Bình Hưng, Huyện Bình Chánh, TP. Hồ Chí Minh Việt Nam', '043212238515', '0905123897', 'Sinh viên'),
	('23SV005', 'Nguyễn Văn Long', 'số 8, KDC Trung Sơn, ấp 4B, 70 Đường số 8, KDC Trung Sơn, ấp 4B, Xã Bình Hưng, H. Bình Chánh, TP. Hồ Chí Minh Việt Nam', '043219238599', '0905123653', 'Sinh viên'),
	('23SV006', 'Trần Văn Minh', '70 Đường Hùng Vương, Quận Thủy Biều, Huế', '121270874664', '0994759334', 'Sinh viên'),
	('23SV007', 'Phạm Văn Châu', '30 Đường Lê Duẩn, Quận Hải Châu, Đà Nẵng', '108756808688', '0994759334', 'Sinh viên'),
	('23SV008', 'Lê Thị Thuỷ', '20 Đường Lý Thường Kiệt, Quận 11, Thành phố Hồ Chí Minh', '112028723581', '0994759334', 'Sinh viên'),
	('23SV009', 'Vũ Thị Xuyến', '90 Đường Trần Văn Khéo, Quận Cái Răng, Cần Thơ', '112028723581', '0558700871', 'Sinh viên'),
	('23SV010', 'Đỗ Thị Yến', '55 Đường Trần Hưng Đạo, Quận 3, Thành phố Hồ Chí Minh', '569321453683', '0358667452', 'Sinh viên'),
	('23SV011', 'Đỗ Thị Linh', '12 Đường Nguyễn Du, Quận Thạc Gián, Đà Nẵng', '243721139963', '0394956042', 'Sinh viên'),
	('23SV012', 'Lê Văn Thanh', '56 Đường Ngô Quyền, Quận Sơn Trà, Đà Nẵng', '503168992111', '0346586203', 'Sinh viên'),
	('23SV013', 'Đỗ Thị Linh', '88 Đường Giải Phóng, Quận Hoàng Mai, Hà Nội', '478847663905', '0394956042', 'Sinh viên'),
	('23SV014', 'Ngô Văn Huy', '22 Đường Lê Hồng Phong, Quận Ngô Quyền, Hải Phòng', '108756808688', '0961853641', 'Sinh viên'),
	('23SV015', 'Phạm Văn Hải', '55 Đường Lê Lợi, Quận Gò Vấp, Thành phố Hồ Chí Minh', '224559751447', '0941791845', 'Sinh viên'),
	('23SV016', 'Ngô Văn Tùng', '45 Đường Chùa Bộc, Quận Đống Đa, Hà Nội', '108756808688', '0546611766', 'Sinh viên'),
	('23SV017', 'Tạ Văn Toàn', '17 Đường Tô Hiến Thành, Quận 10, Thành phố Hồ Chí Minh', '121270874664', '0373562209', 'Sinh viên'),
	('23SV018', 'Bùi Thị Hoa', '22 Đường Điện Biên Phủ, Quận 3, Thành phố Hồ Chí Minh', '965579386557', '0955898551', 'Sinh viên'),
	('23SV019', 'Vũ Văn Sơn', '22 Đường Điện Biên Phủ, Quận 3, Thành phố Hồ Chí Minh', '537082487534', '0815077191', 'Sinh viên'),
	('23SV020', 'Đặng Thị Tâm', '76 Đường Điện Biên Phủ, Quận Bình Thạnh, Thành phố Hồ Chí Minh', '116902913795', '0906121854', 'Sinh viên'),
	('23SV021', 'Mai Thị Thanh', '76 Đường Điện Biên Phủ, Quận Bình Thạnh, Thành phố Hồ Chí Minh', '116902913795', '0857678046', 'Sinh viên'),
	('zxczxc', '123', '1323', '1323123', '123123', 'Giảng viên');

-- Dumping structure for table thuvien.login
CREATE TABLE IF NOT EXISTS `login` (
  `USER` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table thuvien.login: ~2 rows (approximately)
REPLACE INTO `login` (`USER`, `PASSWORD`) VALUES
	('admin', 'admin123'),
	('admin2', 'admin123');

-- Dumping structure for table thuvien.masachchung
CREATE TABLE IF NOT EXISTS `masachchung` (
  `MASACHCHUNG` varchar(5) NOT NULL,
  `TENSACH` varchar(50) NOT NULL,
  `SOLUONG` int(2) unsigned zerofill NOT NULL DEFAULT 00,
  `THELOAI` varchar(50) NOT NULL DEFAULT '',
  `TACGIA` varchar(50) NOT NULL DEFAULT '',
  `NHAXUATBAN` varchar(122) NOT NULL,
  `NAMXUATBAN` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`MASACHCHUNG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table thuvien.masachchung: ~2 rows (approximately)
REPLACE INTO `masachchung` (`MASACHCHUNG`, `TENSACH`, `SOLUONG`, `THELOAI`, `TACGIA`, `NHAXUATBAN`, `NAMXUATBAN`) VALUES
	('123', 'Mã Sách Chung', 01, 'Thiếu nhi', '1', '1', '2024'),
	('69', '69', 69, 'Thiếu nhi', '69', '69', '2024');

-- Dumping structure for table thuvien.phieumuontrasach
CREATE TABLE IF NOT EXISTS `phieumuontrasach` (
  `MAPHIEUMUON` varchar(10) NOT NULL,
  `MABANDOC` varchar(10) NOT NULL,
  `MASACH` varchar(5) NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `NGAYMUON` date NOT NULL,
  `HANTRA` date NOT NULL,
  `NGAYTRA` date DEFAULT NULL,
  `TINHTRANG` varchar(50) DEFAULT 'Chưa trả',
  PRIMARY KEY (`MAPHIEUMUON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table thuvien.phieumuontrasach: ~33 rows (approximately)
REPLACE INTO `phieumuontrasach` (`MAPHIEUMUON`, `MABANDOC`, `MASACH`, `SOLUONG`, `NGAYMUON`, `HANTRA`, `NGAYTRA`, `TINHTRANG`) VALUES
	('PM001', '23SV001', 'DBS01', 1, '2023-11-01', '2024-01-01', '2024-01-23', 'Đã trả'),
	('PM002', '23SV002', 'DBS02', 1, '2023-11-02', '2024-01-02', '2024-01-24', 'Chưa trả'),
	('PM003', '23SV003', 'DBS03', 1, '2023-11-01', '2024-01-03', '2024-01-24', 'Chưa trả'),
	('PM004', '23SV004', 'DBS04', 1, '2023-11-01', '2024-01-04', '2024-01-24', 'Chưa trả'),
	('PM005', '23SV005', 'DBS05', 1, '2023-11-01', '2024-01-05', '2024-01-24', 'Chưa trả'),
	('PM006', '23SV006', 'DBS06', 1, '2023-11-01', '2024-01-06', '2024-01-23', 'Đã trả'),
	('PM007', '23SV007', 'DBS07', 1, '2023-11-01', '2024-01-07', NULL, 'Chưa trả'),
	('PM008', '23SV008', 'DBS08', 1, '2023-11-01', '2024-01-08', '2024-01-24', 'Đã trả'),
	('PM010', '23SV008', 'DBS08', 1, '2023-11-01', '2024-01-09', NULL, 'Chưa trả'),
	('PM011', '23SV011', 'NRT01', 1, '2023-11-01', '2024-01-10', '2024-01-23', 'Đã trả'),
	('PM012', '23SV012', 'NRT02', 1, '2023-11-01', '2024-01-01', '2024-01-23', 'Đã trả'),
	('PM013', '23SV013', 'NRT03', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM014', '23SV014', 'NRT04', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM015', '23SV015', 'NRT05', 1, '2023-11-01', '2024-01-01', '2024-01-23', 'Đã trả'),
	('PM016', '23SV016', 'NRT06', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM017', '23SV017', 'NRT07', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM018', '23SV018', 'NRT08', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM019', '23SV019', 'NRT09', 1, '2023-11-01', '2024-01-01', '2024-01-23', 'Đã trả'),
	('PM020', '23SV020', 'HNB1', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM021', '23GV01', 'HNB2', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM022', '23GV01', 'HNB2', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM023', '23GV03', 'HNB2', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM024', '23GV04', 'HNB3', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM025', '23GV05', 'TN05', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM026', '23GV06', 'TN06', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM027', '23GV07', 'TN07', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM028', '23GV08', 'TN08', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM029', '23GV01', 'TCB1', 1, '2023-11-01', '2024-01-01', '2024-01-23', 'Đã trả'),
	('PM030', '23GV01', 'KST01', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM031', '23GV06', 'TN06', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM032', '23GV06', 'TN06', 1, '2023-11-01', '2024-01-01', NULL, 'Chưa trả'),
	('PM123', '23SV001', '123', 1, '2024-11-01', '2025-11-01', NULL, 'Chưa trả'),
	('PM13333', '23GV06', 'DBS03', 1, '2020-01-01', '2024-01-01', NULL, 'Chưa trả');

-- Dumping structure for table thuvien.sach
CREATE TABLE IF NOT EXISTS `sach` (
  `MASACHCHUNG` varchar(10) NOT NULL,
  `MASACH` varchar(10) NOT NULL,
  `TENSACH` varchar(50) NOT NULL,
  `THELOAI` varchar(50) NOT NULL,
  `TACGIA` varchar(50) NOT NULL,
  `TRANGTHAI` varchar(50) NOT NULL,
  PRIMARY KEY (`MASACH`),
  KEY `MASACHCHUNG` (`MASACHCHUNG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table thuvien.sach: ~37 rows (approximately)
REPLACE INTO `sach` (`MASACHCHUNG`, `MASACH`, `TENSACH`, `THELOAI`, `TACGIA`, `TRANGTHAI`) VALUES
	('123', '123', '123', 'Học thuật', '123', 'Còn'),
	('123123', '123123', '123', 'Thiếu nhi', '123', 'Còn'),
	('DBS123123', '123DBS06', 'Dragon Balls Tập 6', 'Light novel', 'Akira Toriyama', 'Còn'),
	('DBS', 'DBS01', 'Dragon Balls Tập 1', 'Light novel', 'Akira Toriyama', 'Còn'),
	('DBS', 'DBS02', 'Dragon Balls Tập 2', 'Light novel', 'Akira Toriyama', 'Còn'),
	('DBS', 'DBS03', 'Dragon Balls Tập 3', 'Light novel', 'Akira Toriyama', 'Còn'),
	('DBS', 'DBS04', 'Dragon Balls Tập 4', 'Light novel', 'Akira Toriyama', 'Còn'),
	('DBS', 'DBS05', 'Dragon Balls Tập 5', 'Light novel', 'Akira Toriyama', 'Còn'),
	('DBS', 'DBS06', 'Dragon Balls Tập 6', 'Light novel', 'Akira Toriyama', 'Còn'),
	('DBS', 'DBS07', 'Dragon Balls Tập 7', 'Light novel', 'Akira Toriyama', 'Còn'),
	('DBS', 'DBS08', 'Dragon Balls Tập 8', 'Light novel', 'Akira Toriyama', 'Còn'),
	('DBS', 'DBS09', 'Dragon Balls Tập 9', 'Light novel', 'Akira Toriyama', 'Còn'),
	('DBS', 'DBS10', 'Dragon Balls Tập 10', 'Light novel', 'Akira Toriyama', 'hết'),
	('HNB', 'HNB1', 'Hannibal', 'Trinh thám', 'Thomas Harris', 'Còn'),
	('HNB', 'HNB2', 'The Silience Of The Lamp', 'Trinh thám', 'Thomas Harris', 'Hết'),
	('HNB', 'HNB3', 'Red Dragon', 'Trinh thám', 'Thomas Harris', 'Còn'),
	('HNB', 'HNB4', 'Hannibal Rising', 'Trinh thám', 'Thomas Harris', 'Còn'),
	('KST', 'KST01', 'Kimi no Suizou wo Tabetai', 'Light novel', 'Yoru Sumino', 'Hết'),
	('NRT', 'NRT01', 'Naruto Tập 1', 'Light novel', 'Masashi Kishimoto', 'Còn'),
	('NRT', 'NRT02', 'Naruto Tập 2', 'Light novel', 'Masashi Kishimoto', 'Còn'),
	('NRT', 'NRT03', 'Naruto Tập 3', 'Light novel', 'Masashi Kishimoto', 'Còn'),
	('NRT', 'NRT04', 'Naruto Tập 4', 'Light novel', 'Masashi Kishimoto', 'Còn'),
	('NRT', 'NRT05', 'Naruto Tập 5', 'Light novel', 'Masashi Kishimoto', 'Còn'),
	('NRT', 'NRT06', 'Naruto Tập 6', 'Light novel', 'Masashi Kishimoto', 'Còn'),
	('NRT', 'NRT07', 'Naruto Tập 7', 'Light novel', 'Masashi Kishimoto', 'Còn'),
	('NRT', 'NRT08', 'Naruto Tập 8', 'Light novel', 'Masashi Kishimoto', 'Còn'),
	('NRT', 'NRT09', 'Naruto Tập 9', 'Light novel', 'Masashi Kishimoto', 'Còn'),
	('NRT', 'NRT10', 'Naruto Tập 10', 'Light novel', 'Masashi Kishimoto', 'Còn'),
	('TCB', 'TCB1', 'Thần Chết Làm Thêm 300 Yên/Giờ', 'Light novel', 'Hanamori Yuki ', 'Còn'),
	('TN', 'TN01', 'Sao sáng xứ Thanh', 'Thiếu nhi', 'Kim Khánh', 'Còn'),
	('TN', 'TN02', 'Đầu To Bằng Cái Bồ', 'Thiếu nhi', 'Kim Khánh', 'Còn'),
	('TN', 'TN03', 'Thừa Giấy Vẽ Voi', 'Thiếu nhi', 'Kim Khánh', 'Còn'),
	('TN', 'TN04', 'Đất Nứt Con Bọ Hung', 'Thiếu nhi', 'Kim Khánh', 'Còn'),
	('TN', 'TN05', 'Tráo Thư', 'Thiếu nhi', 'Kim Khánh', 'Còn'),
	('TN', 'TN06', 'Đơn Trình Bò Chết', 'Thiếu nhi', 'Kim Khánh', 'Còn'),
	('TN', 'TN07', 'Chôn Văn', 'Thiếu nhi', 'Kim Khánh', 'Còn'),
	('TN', 'TN08', 'Miệng Nhà Quan', 'Thiếu nhi', 'Kim Khánh', 'Còn');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
