-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th2 08, 2022 lúc 11:09 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `spring_web_ban_hang_micro_menu_dong`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_menu_dong`
--

CREATE TABLE `tbl_menu_dong` (
  `menu_dong_id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_parent` tinyint(1) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) UNSIGNED NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_order` tinyint(1) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_menu_dong`
--

INSERT INTO `tbl_menu_dong` (`menu_dong_id`, `color`, `description`, `is_parent`, `is_visible`, `menu_link`, `menu_name`, `menu_order`, `parent_id`) VALUES
(1, '#0000ff', 'Xe đẹp 2021', 0, 1, 'ô-tô-kia', 'Ô Tô Kia', 0, 0),
(4, '#00ff00', 'Xe đẹp 2021', 0, 1, 'mecerdes', 'Mecerdes', 0, 0),
(6, '#00ff00', 'Xe đẹp 2021', 0, 1, 'Vinfast', 'Vinfast', 0, 0),
(13, '#00ff00', '', 0, 1, 'toyota', 'Toyota', 0, 0),
(31, '#000000', '', 0, 1, 'ô-tô-huyndai', 'Ô Tô Huyndai', 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_menu_dong`
--
ALTER TABLE `tbl_menu_dong`
  ADD PRIMARY KEY (`menu_dong_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_menu_dong`
--
ALTER TABLE `tbl_menu_dong`
  MODIFY `menu_dong_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
