-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2021 lúc 04:34 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlybansach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `maSach` varchar(15) NOT NULL,
  `soHD` varchar(15) NOT NULL,
  `soLuongBan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`maSach`, `soHD`, `soLuongBan`) VALUES
('Sa0123', 'HD665', 23),
('Sa1445', 'HD322', 17),
('Sa4899', 'HD149', 44);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `maSach` varchar(15) NOT NULL,
  `soPN` varchar(15) NOT NULL,
  `soLuongNhap` int(11) NOT NULL,
  `giaNhap` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`maSach`, `soPN`, `soLuongNhap`, `giaNhap`) VALUES
('Sa0123', 'PN76', 275, '1200000'),
('Sa1445', 'PN20', 311, '5000000'),
('Sa4899', 'PN20', 420, '3000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `maDM` varchar(15) NOT NULL,
  `tenDM` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `delected` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`maDM`, `tenDM`, `delected`) VALUES
('DM125', 'Tiểu thuyết', NULL),
('DM321', 'Sách bán chạy', NULL),
('DM499', 'Sách mới ra mắt', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanh`
--

CREATE TABLE `hinhanh` (
  `maHA` varchar(15) NOT NULL,
  `maSach` varchar(15) NOT NULL,
  `hinhAnh` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `soHD` varchar(15) NOT NULL,
  `maKH` varchar(15) NOT NULL,
  `userName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngayBan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`soHD`, `maKH`, `userName`, `ngayBan`) VALUES
('HD149', 'KH0001', 'Elon', '12/05/2021'),
('HD322', 'KH0012', 'Gates', '11/03/2021'),
('HD665', 'KH1189', 'Jeff', '22/09/2021');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `maKH` varchar(15) NOT NULL,
  `tenKH` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diaChiKH` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dienThoai` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `soDuTaiKhoan` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`maKH`, `tenKH`, `diaChiKH`, `dienThoai`, `email`, `soDuTaiKhoan`) VALUES
('KH0001', 'Bùi Văn Sỹ', 'K20/10 Quảng Trị', '0287535777', 'buisy@gmail.com', '50000'),
('KH0012', 'Phạm Thiên', '22 Quảng Nam', '0901784439', 'thienpham@gmail.com', '220333'),
('KH1189', 'Nguyễn Quang Huy', 'K78 KomTum', '0222156842', 'huynguyen@gmail.com', '1500000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `userName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenNV` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `matKhau` varchar(100) NOT NULL,
  `dienThoai` varchar(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `gioiTinh` varchar(5) NOT NULL,
  `DoB` varchar(15) NOT NULL,
  `chucVu` varchar(30) NOT NULL,
  `soDuTaiKhoan` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`userName`, `tenNV`, `matKhau`, `dienThoai`, `Email`, `gioiTinh`, `DoB`, `chucVu`, `soDuTaiKhoan`) VALUES
('Elon', 'Elon Musk', 'musk123', '0951789222', 'elon123@gmail.com', 'Nam ', '28/6/1971', 'CEO Tesla và SpaceX', '9999999999'),
('Gates', 'Bill Gates', 'gates123', '0987999787', 'bill123@gmail.com', 'Nam', '28/10/1955 ', 'chủ tịch tập đoàn Microsoft', '9999999999'),
('Jeff', 'Jeff Bezos', 'bezos123', '0342156647', 'jeff123@gmail.com', 'Nam', '12/1/1964', 'chủ tịch của công ty công nghệ', '9999999999');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `maNXB` varchar(15) NOT NULL,
  `tenNXB` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diaChiNXB` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dienThoai` varchar(11) NOT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`maNXB`, `tenNXB`, `diaChiNXB`, `dienThoai`, `deleted`) VALUES
('NXB01', 'Reed Elsevier', '50 phố Hà Lan', '0987535168', NULL),
('NXB02', 'Pearson', 'Trụ sở: Anh', '0941789639', NULL),
('NXB03', 'ThomsonReuters', 'Trụ sở: Mỹ', '0192156777', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `soPN` varchar(15) NOT NULL,
  `ngayNhap` varchar(50) NOT NULL,
  `maNXB` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`soPN`, `ngayNhap`, `maNXB`) VALUES
('PN12', '11/07/2021', 'NXB01'),
('PN20', '07/02/2021', 'NXB03'),
('PN76', '01/01/2021', 'NXB02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `maSach` varchar(15) NOT NULL,
  `tenSach` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soLuongTon` int(11) NOT NULL,
  `maDM` varchar(15) NOT NULL,
  `maTG` varchar(15) NOT NULL,
  `giaBan` decimal(10,0) NOT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`maSach`, `tenSach`, `soLuongTon`, `maDM`, `maTG`, `giaBan`, `deleted`) VALUES
('Sa0123', 'Chúa tể những chiếc nhẫn', 110, 'DM125', 'TG122', '150', NULL),
('Sa1445', 'Án mạng trên chuyến tàu tốc hành Phương Đông', 85, 'DM321', 'TG489', '200', NULL),
('Sa4899', 'Sherlock Holmes', 97, 'DM499', 'TG489', '320', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

CREATE TABLE `tacgia` (
  `maTG` varchar(15) NOT NULL,
  `tenTG` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lienLac` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`maTG`, `tenTG`, `lienLac`, `deleted`) VALUES
('TG014', 'Agatha Christie', 'Torquay, Vương Quốc Anh', NULL),
('TG122', 'Arthur Conan Doyle', ' Edinburgh, Vương Quốc Anh', NULL),
('TG489', 'John Ronald Reuel Tolkien', ' Bournemouth, Vương Quốc Anh', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`maSach`,`soHD`),
  ADD KEY `tbl_CTHD_soHD` (`soHD`);

--
-- Chỉ mục cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`maSach`,`soPN`),
  ADD KEY `tbl_CTPN_soPN` (`soPN`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`maDM`);

--
-- Chỉ mục cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`maHA`,`maSach`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`soHD`),
  ADD KEY `tbl_hoadon_maKH` (`maKH`),
  ADD KEY `tbl_hoadon_userName` (`userName`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`maKH`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`userName`);

--
-- Chỉ mục cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`maNXB`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`soPN`),
  ADD KEY `tbl_phieunhap_maNXB` (`maNXB`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`maSach`),
  ADD KEY `tbl_sach_maDM` (`maDM`),
  ADD KEY `tbl_sach_maTG` (`maTG`);

--
-- Chỉ mục cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`maTG`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `tbl_CTHD_maSach` FOREIGN KEY (`maSach`) REFERENCES `sach` (`maSach`),
  ADD CONSTRAINT `tbl_CTHD_soHD` FOREIGN KEY (`soHD`) REFERENCES `hoadon` (`soHD`);

--
-- Các ràng buộc cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `tbl_CTPN_maSach` FOREIGN KEY (`maSach`) REFERENCES `sach` (`maSach`),
  ADD CONSTRAINT `tbl_CTPN_soPN` FOREIGN KEY (`soPN`) REFERENCES `phieunhap` (`soPN`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `tbl_hoadon_maKH` FOREIGN KEY (`maKH`) REFERENCES `khachhang` (`maKH`),
  ADD CONSTRAINT `tbl_hoadon_userName` FOREIGN KEY (`userName`) REFERENCES `nhanvien` (`userName`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `tbl_phieunhap_maNXB` FOREIGN KEY (`maNXB`) REFERENCES `nhaxuatban` (`maNXB`);

--
-- Các ràng buộc cho bảng `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `tbl_sach_maDM` FOREIGN KEY (`maDM`) REFERENCES `danhmuc` (`maDM`),
  ADD CONSTRAINT `tbl_sach_maTG` FOREIGN KEY (`maTG`) REFERENCES `tacgia` (`maTG`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
