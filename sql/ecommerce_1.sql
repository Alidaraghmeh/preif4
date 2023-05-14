-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 01:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_categories`
--

CREATE TABLE `tb_categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_categories`
--

INSERT INTO `tb_categories` (`cat_id`, `cat_name`) VALUES
(1, 'Laptop'),
(2, 'Smartphone'),
(3, 'camera'),
(4, 'Accessories'),
(5, 'software'),
(6, 'Printers & Scanners');

-- --------------------------------------------------------

--
-- Table structure for table `tb_orders`
--

CREATE TABLE `tb_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prd_id` int(11) NOT NULL,
  `prd_price` float NOT NULL,
  `num_items` int(11) NOT NULL,
  `total_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_products`
--

CREATE TABLE `tb_products` (
  `prd_id` int(11) NOT NULL,
  `prd_name` varchar(255) NOT NULL,
  `prd_img` varchar(255) NOT NULL,
  `prd_price` float NOT NULL,
  `prd_categories` int(11) NOT NULL,
  `prd_description` text NOT NULL,
  `prd_status` varchar(255) NOT NULL,
  `prd_brand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_products`
--

INSERT INTO `tb_products`
(`prd_id`, `prd_name`, `prd_img`, `prd_price`, `prd_categories`, `prd_description`, `prd_status`, `prd_brand`) VALUES
(4, 'laptops DELL G15 5511', 'DELL G15 5511.jpg', 1199, 1, 'G15 5511-210-AZGS-I7-3/DELL G15 5511-210-AZGS-I7-3050|15.6INCH FHD|CORE I7-11800H|16GB|512GB SSD|4GB RTX 3050 TI|WIN 10', '', 'DELL'),
(5, 'LENOVO TB 14s Yoga', 'LENOVO TB 14s Yoga.jpg', 999, 1, '/LENOVO TB 14s Yoga|i5-1135G7|8GB Base DDR4|512GB SSD M.2 2242|Integrated|14.0\"\" FHD WVA MultiTouch|Win 10 Pro 64|Wi-fi AX 2x2 + BT|Y-FPR|720p HD Cam|4 Cell 60Whr|65W USB-C UK|Active Pen|KYB BL Arabic|Mineral Grey', '', 'LENOVO'),
(6, 'LENOVO LEGION 3 I7', 'LENOVO LEGION 3 I7.jpg', 985, 1, 'Operating System: Windows 10 | Card Reader (Y/N): NO | Speakers: Built in | Optical Drive: N/A | WIFI: 802.11ax | Bluetooth: Bluetooth 5.1 | Screen Size (inch): 15.6 Inch | Network Card: N/A | Built-in Webcam: Yes | Series Name: LEGION 5 | Battery Type: lithium | Color: Black | Warranty: 1YW', '', 'LENOVO '),
(7, 'iPhone 14 Pro Max', 'iphone-14-pro-max-128gb-gold-5g.jpg', 1040, 2, 'Memory Storage Capacity 128 GB , Cellular Technology 5G,Screen Size 6.7 Inches\r\n', '', 'Apple'),
(8, 'iPhone 13 Pro Max ', 'iPhone-13-Pro_max.jpg', 850, 2, 'Memory Storage Capacity 128 GB , Cellular Technology 5G,\r\nScreen Size	6.1 Inches\r\n', '', 'Apple'),
(9, 'samsung Galaxy S23+ 5G', 'samsung-galaxy-s23-5g.jpg', 799, 2, '[Pre-Order] Galaxy S23+ 5G | RAM: 8GB | Memory (internal): 256GB | Color: Black', '', 'samsung'),
(10, 'Canon SX620 Camera', 'Canon SX620 Camera.jpg', 185, 3, 'Optical 25X/Zoomplus 50X/Digital Approx. 4.0X (With Digital Tele-Converter Approx. 1.6X Or 2.0X)/Combined Approx. 100X ¹', '', 'Canon'),
(11, ' Camera CS-CV248/EZVIZ ', 'cs.jpg', 150, 3, 'CS-CV248/EZVIZ Mini 360 Plus IP Camera +sd 16g free', '', 'EZVIZ'),
(12, 'Canon 2000D Camera 18-55mm', 'canon 2000D.jpg', 355, 3, 'CANON EOS 2000D Easy and intuitive, the ideal first DSLR for making and sharing memories with beautiful background blur, AUTO(100-6400), 100-6400 in 1-stop increments ISO can be expanded to H: 12800 1', '', 'canon'),
(13, 'OnePlus Buds Pro', 'OnePlus buds pro.jpg', 116, 4, 'Connectivity : Bluetooth 5.2\r\nBattery Capacity (Earbud) : 40 mAh/per earbud\r\n', '', 'OnePlus'),
(14, 'Xaiomi 10000mAh Redmi Power Bank', 'Xaiomi 10000mAh Redmi Power Bank.jpg', 19, 4, 'Battery power : 37 wh, 3.7 v, 10,000 mah\r\nOutput ports : 2 × usb-a\r\n', '', 'Xiaomi'),
(15, 'Xiaomi Redmi Buds 4 Pro', 'Xiaomi Redmi Buds 4 Pro.jpg', 69, 4, 'Earbud input parameters : 5.25v ⎓ 160ma max（single earbud）', '', 'Xiaomi'),
(16, 'Microsoft Office Home & Business 2021', 'Microsoft Office Home & Business 2021.jpg', 231, 5, 'One-time purchase for 1 PC or Mac\r\nClassic 2021 versions of Word, Excel, PowerPoint, and Outlook\r\n', '', 'Microsoft Office'),
(17, 'Webroot Antivirus Software 2023', 'Webroot Antivirus Software 2023.jpg', 54, 5, 'Webroot Antivirus Software 2023 | 3 Device | 1 Year Keycard Delivery for PC/Mac', '', 'Microsoft Office'),
(18, 'Norton 360 Premium 2023, Antivirus', 'Norton 360 Premium 2023, Antivirus_.jpg', 30, 5, 'Norton 360 Premium 2023, Antivirus software for 10 Devices with Auto Renewal - Includes VPN, PC Cloud Backup & Dark Web Monitoring\r\n\r\n', '', 'Microsoft Office'),
(19, 'Epson EcoTank Pro ET-16650', 'Epson EcoTank Pro ET-16650.jpg', 225, 6, 'Epson EcoTank Pro ET-16650 Wireless Wide-Format Color All-in-One Supertank Printer with Scanner, Copier, Fax and Ethernet\r\n\r\n', '', 'Epson'),
(20, 'Fujitsu fi-8170 ', 'Fujitsu fi-8170 .jpg', 875, 6, 'Fujitsu fi-8170 Professional High Speed Color Duplex Document Scanner - Network Enabled,Black/Beige', '', 'Fujitsu'),
(21, 'HP DeskJet 2742e ', 'HP DeskJet 2742e .jpg', 150, 6, 'HP DeskJet 2742e Series Inkjet Color All-in-One Printer I Print Copy Scan I Wireless USB Connectivity I Mobile Printing I Up to 4800 x 1200 DPI I Print Up to 7.5 PPM + Printer Cable', '', 'HP'),
(22, 'Laptop HP 2021 Stream 14', 'Laptop HP 2021 Stream 14.jpg', 289, 1, 'HD SVA Laptop Computer, Intel Celeron N4000 Processor, 4GB RAM, 64GB eMMC Flash Memory, Webcam, 1-Year Office, Intel UHD Graphics 600, Win 10S, Rose Pink, 32GB SnowBell USB Card\r\n\r\n', '', 'HP'),
(23, 'Laptop HP 2023 14\" FHD IPS Laptop,', 'Laptop HP 2023.jpg', 250, 1, 'Windows 11, Ryzen 3 Processor Up to 3.50GHz, 8GB Ram, 128GB SSD, Super-Fast WiFi, HDMI, Dale Silver\r\n\r\n', '', 'HP'),
(24, 'Laptop SAMSUNG 2022 14” FHD', 'Laptop SAMSUNG 2022 .jpg', 220, 1, 'Windows 11 OS, Qualcomm Octa Core Snapdragon Processor 2.55GHz, 4GB LPDDR4x, 64GB SSD ', '', 'SAMSUNG '),
(25, 'SAMSUNG Galaxy A53 5G', 'SAMSUNG Galaxy A53 5G_.jpg', 350, 2, 'A Series Cell Phone, Factory Unlocked Android Smartphone, 128GB, 6.5” FHD Super AMOLED Screen, Long Battery Life, US Version, Black\r\n\r\n', '', 'SAMSUNG'),
(26, 'Samsung Galaxy A32', 'SAMSUNG Galaxy A53 5G.jpg', 445, 2, 'Samsung Galaxy A32 (5G) 64GB A326U (T-Mobile/Sprint Unlocked) 6.5\" Display Quad Camera Long Lasting Battery Smartphone - Black\r\n\r\n', '', 'Samsung '),
(27, 'Apple iPhone 12', 'Apple iPhone 12.jpg', 580, 2, 'Memory Storage Capacity 256 GB,\r\nScreen size 6.1 Inches ,color Red\r\n', '', 'Apple '),
(28, 'SAMSUNG Galaxy Z Flip 4 Cell Phone', 'SAMSUNG Galaxy Z Flip 4 Cell Phone.jpg', 1059, 2, 'SAMSUNG Galaxy Z Flip 4 Cell Phone, Factory Unlocked Android Smartphone, 256GB, Flex Mode, Hands Free Camera, Compact, Foldable Design, Informative Cover Screen, US Version, Bora Purple', '', 'SAMSUNG '),
(29, 'Miracase Cup Holder Phone Mount for Car\r\n\r\n', 'Miracase Cup Holder Phone Mount for Car.jpg', 20, 4, 'Miracase cup holder phone mount base can be adjusted from Min.2.3\" to Max.4.2\", and Can be Extendable to 9\" Length, fits most car cup holder', '', 'Miracase'),
(30, 'Phone Headsets for Office Phones,', 'Phone Headsets for Office Phones,.jpg', 30, 4, 'Wired 3.5mm Computer Headphone with Microphone,for iPhone Samsung PC Business Skype Softphone Call Center Office, Clear Chat, Ultra Comfort', '', 'Miracase'),
(31, 'iPhone Fast Charger 10 FT', 'iPhone Fast Charger 10 FT.jpg', 16, 4, '[Apple MFi Certified] 2 Pack PD 20W USB C Charger Block with 10FT Long Type C Lightning Cable for iPhone 14 13 12 11 XS XR X 8 iPad,White', '', 'Apple'),
(32, 'kimire Video Camera Camcorder Digital Camera', 'kimire Video Camera Camcorder Digital Camera.jpg', 65, 3, 'Recorder Full HD 1080P 15FPS 24MP 3.0 Inch 270 Degree Rotation LCD 16X Digital Zoom Camcorder Camera with 2 Batteries(Black)', '', 'kimire'),
(33, 'Digital Camera, FHD 1080P', 'Digital Camera, FHD 1080P.jpg', 50, 3, 'Digital Camera, FHD 1080P Digital Point and Shoot Camera for Kids 44MP Vlogging Camera with Anti Shake 16X Zoom, Compact Kids Camera Small Camera for Boys Girls Teens Students Seniors- Pink', '', 'kimire'),
(34, 'Digital Cameras for Photography,', 'Digital Cameras for Photography.jpg', 111, 3, 'Digital Cameras for Photography, 4K 48MP Vlogging Camera 16X Digital Zoom Manual Focus Rechargeable Students Compact Camera with 52mm Wide-Angle Lens & Macro Lens, 32G Micro Card and 2 Batteries', '', 'WIKICO'),
(35, 'NordVPN Standard ', 'NordVPN Standard _.jpg', 75, 5, 'NordVPN Standard - 18-Month VPN & Cybersecurity Software Subscription For 6 Devices - Block Malware, Malicious Links & Ads, Protect Personal Information', '', 'Microsoft Office'),
(36, 'Microsoft 365 Bible', 'Microsoft 365 Bible.jpg', 25, 5, 'The #1 Beginners to Advance Guide to Master Like a Pro Excel, PowerPoint, Word, Access, Outlook, Publisher, One Note, Teams and One Drive\r\n\r\n', '', 'Microsoft Office'),
(37, 'Malwarebytes Premium 4.5 Antivirus Software ', 'Malwarebytes Premium 4.5 Latest Version 2022 Antivirus Software .jpg', 45, 5, 'Malwarebytes Premium 4.5 Latest Version 2022 Antivirus Software | 5 Device 1 Year (PC, Mac, Android) [software_key_card]', '', 'Microsoft Office'),
(38, 'HEE7640 Envy Wireless 7640', 'HEE7640 Envy Wireless 7640.jpg', 494, 6, 'HEE7640 Envy Wireless 7640 e-All-in-One Photo Copier, Scanner, Fax and Printer with Mobile Printing, Duplex, Up to 22 ppm, Up to 4800 x 1200 dpi', '', 'HP'),
(39, 'Canon G3260', 'Canon G3260.jpg', 365, 6, 'Canon G3260 All-in-One Printer | Wireless Supertank (Megatank) Printer | Copier | Scan, with Mobile Printing, Black, one Size (4468C002)\r\n\r\n', '', 'Canon'),
(40, 'Canon Office and Business', 'Canon Office and Business_.jpg', 526, 6, 'Canon Office and Business MB5120 All-in-One Printer, Scanner, Copier and Fax, with Mobile and Duplex Printing, Model:0960C002\r\n\r\n', '', 'Canon'),
(41, 'HP OfficeJet Pro 8028e', 'HP OfficeJet Pro 8028e.jpg', 135, 6, 'HP OfficeJet Pro 8028e All-in-One Wireless Color Inkjet Printer, Print Copy Scan Fax, 20 ppm, Auto Duplex, 2.7\" Color TS, Comes with 6 Months of Free Ink & 2 Years Extended HP Warranty\r\n\r\n', '', 'HP'),
(42, 'HP Color LaserJet\r\n\r\n', 'HP Color LaserJet.jpg', 419, 6, 'HP Color LaserJet Pro Multifunction M479fdw Wireless Laser Printer with One-Year, Next-Business Day, Onsite Warranty (W1A80A), White\r\n\r\n', '', 'HP'),
(43, 'Canon TS5320', 'Canon TS5320.jpg', 163, 6, 'Canon TS5320 All in One Wireless Printer, Scanner, Copier with AirPrint, Black, Amazon Dash Replenishment Ready', '', 'Canon'),
(44, 'HEE7640 Envy Wireless 7640', 'HEE7640 Envy Wireless 7640.jpg', 494, 6, 'HEE7640 Envy Wireless 7640 e-All-in-One Photo Copier, Scanner, Fax and Printer with Mobile Printing, Duplex, Up to 22 ppm, Up to 4800 x 1200 dpi\r\n\r\n', '', 'HP'),
(47, 'Trend Micro Maximum Security 2023', 'Trend Micro Maximum Security 2023.jpg', 50, 5, 'Trend Micro Maximum Security 2023 version 17.7 5 devices 3 years multi-language for PC, Mac, Android and iOS Product key card Windows 8.1 and 10, 11\r\n\r\n', '', 'Microsoft Office'),
(48, 'Apple iPhone 11', 'Apple iPhone 11,_.jpg', 445, 2, 'Memory Storage Capacity 64 GB,\r\nScreen size 6.1 Inches ,color purple\r\n', '', 'Apple'),
(49, 'Apple iPhone SE ', 'Apple iPhone SE .jpg', 150, 2, 'Apple iPhone SE 2nd Generation, US Version, 64GB, Black - Unlocked\r\n\r\n', '', 'Apple'),
(50, 'SAMSUNG Galaxy S23 Ultra', 'SAMSUNG Galaxy S23 Ultra.jpg', 1120, 2, 'Factory Unlocked Android Smartphone, 256GB Storage, 200MP Camera, Night Mode, Long Battery Life, S Pen, US Version, 2023, Green', '', 'Samsung '),
(51, 'Samsung Galaxy S21', 'Samsung Galaxy S21.jpg', 246, 2, 'Samsung Galaxy S21 5G, US Version, 128GB, Phantom Gray - Unlocked', '', 'Samsung'),
(52, 'Laptop SAMSUNG 15.6” Galaxy Book3 ', 'Laptop SAMSUNG 15.6” Galaxy Book3 .jpg', 1199, 1, 'Laptop Computer, 13th Gen Intel Core i7-1360P Processor/16 GB/512GB, Thin and Light, FHD Screen, Fingerprint Reader, HD Webcam, ARC A350M, 2023 Model, NP750XFH-XB1US, Silver', '', 'SAMSUNG '),
(53, 'Laptop Dell Newest Inspiron', 'Laptop Dell Latitude 12_.jpg', 625, 1, ' 15.6\" FHD Touchscreen, Intel Core i5-1035G1, 32GB RAM, 1TB PCIe NVMe M.2 SSD, SD Card Reader, Webcam, HDMI, WiFi, Windows 11 Home, Black', '', 'Dell '),
(54, 'Laptop  HP 2022 ', 'Laptop  HP 2022 _.jpg', 920, 1, 'HP 2022 High Performance Business Laptop - 17.3\" HD+ Touchscreen - 10-Core 12th Intel i7-1255U Iris Xe Graphics - 32GB DDR4-1TB SSD - WiFi 6 Bluetooth - Backlit Keyboard - Win 11 Pro w/ 32GB USB', '', 'HP'),
(55, 'HP 2023 15.6\" FHD Laptop,', 'HP 2023.jpg', 619, 1, 'HP 2023 15.6\" FHD Laptop, AMD Ryzen 5-5500U Processor, 32GB RAM, 1TB PCIe SSD, AMD Radeon Graphics, HD Webcam, Bluetooth, Wi-fi, Windows 11, Blue, 32GB SnowBell USB Card', '', 'HP '),
(56, 'Laptop  Samsung Chromebook 3', 'Laptop  Samsung Chromebook 3_.jpg', 175, 1, 'Samsung Chromebook 3, 11.6\", 4GB RAM, 16GB eMMC, Chromebook (XE500C13)', '', 'Samsung'),
(57, 'Samsung Galaxy Chromebook 2', 'Samsung Galaxy Chromebook 2.jpg', 352, 1, 'Samsung Galaxy Chromebook 2, 13.3\" Intel Celeron Processor, 64GB, 4GB RAM, Mercury Grey (2021 Model) - XE530QDA-KB2US', '', 'Samsung'),
(58, 'Dell XPS 13 Plus Business Laptop,', 'Dell XPS 13 Plus Business Laptop.jpg', 1799, 1, 'Dell XPS 13 Plus Business Laptop, 13.4\" 4K UHD OLED Touchscreen, Intel Core i7-1260P, Zero-Lattice Backlit Keyboard, Fingerprint Reader, Killer Wi-Fi 6E, Windows 11 (16GB DDR5, 1TB PCIe SSD)', '', 'Dell'),
(59, 'Sony Alpha 7 IV Full-frame', 'Sony Alpha 7 IV Full-frame_.jpg', 1250, 3, 'Sony Alpha 7 IV Full-frame Mirrorless Interchangeable Lens Camera with 28-70mm Zoom Lens Kit', '', 'Sony '),
(60, 'Digital Cameras KOMERY for Photography1', 'Digital Cameras for Photography1.jpg', 120, 3, 'Digital Cameras for Photography 4K 48MP Vlogging Camera Autofocus Digital Camera with 18X Digital Zoom Point and Shoot Digital Cameras with 32GB Card\r\n\r\n', '', 'KOMERY '),
(61, 'blurams Security Camera,', 'blurams Security Camera,_.jpg', 50, 3, 'blurams Security Camera, 2K Indoor Camera 360-degree Pet Camera for Home Security w/Motion Tracking, Phone App, 2-Way Audio, IR Night Vision, Siren, Works with Alexa & Google Assistant\r\n\r\n', '', 'sony'),
(62, 'WiFi Wireless Camera Mini', 'WiFi Wireless Camera Mini.jpg', 30, 3, 'WiFi Wireless Camera Mini Hidden Spy Home Security Camera Small Cam,Home Camera for Pet/Baby,Outdoor/Indoor Camera Wireless,for Mobile Phone Applications in Real Time\r\n\r\n', '', 'sony'),
(63, 'USB C Docking Station', 'USB C Docking Station.jpg', 66, 4, 'USB C Docking Station Dual Monitor for Dell/HP/Lenovo/Surface Laptop, 12 in 1 Triple Display USB C Hub Multiport Adapter, USB C Dongle with 8K HDMI+120HZ DP+USB+100W PD Charing+Ethernet+SD+Audio Ports', '', 'SSK'),
(64, 'GVM Great Video Maker LED', 'GVM Great Video Maker LED.jpg', 65, 4, 'Ring Light 5600K Selfie Light, Smartphone Video Rig & Phone Video Stabilizer for Camera, Smartphone, Makeup, YouTube Setup, Self-Portrait Shooting with Bluetooth', '', 'ssk'),
(65, 'BESIGN LSX6N Laptop Stand', 'BESIGN LSX6N Laptop Stand.jpg', 25, 4, 'BESIGN LSX6N Laptop Stand, Ergonomic Adjustable Notebook Stand, Riser Holder Computer Stand Compatible with Air, Pro, Dell, HP, Lenovo More 10-15.6\" Laptops, Black', '', 'sony'),
(66, 'memzuoix 2.4G Wireless Mouse', 'memzuoix 2.4G Wireless Mouse.jpg', 30, 4, ' 1200 DPI Mobile Optical Cordless Mouse with USB Receiver, Portable Computer Mice Wireless Mouse for Laptop, PC, Desktop, MacBook, 5 Buttons, Red', '', 'sony'),
(67, 'Wireless Mouse Cute Sport Car', 'Wireless Mouse Cute Sport Car.jpg', 12, 4, 'Shape Mouse Optical Ergonomic Gaming Mice Mini Small Office Mouse Gift for Boy Girl Men Women Kids Mom Dad with USB Receiver for PC Laptop Computer Mac,1600DPI 3 Buttons', '', 'sony'),
(68, 'Trend Micro Maximum Security 2023', 'Trend Micro Maximum Security 2023.jpg', 50, 5, 'Trend Micro Maximum Security 2023 version 17.7 5 devices 3 years multi-language for PC, Mac, Android and iOS Product key card Windows 8.1 and 10, 11', '', 'Microsoft'),
(69, 'Microsoft 365 Personal', 'Microsoft 365 Personal.jpg', 70, 5, '12-Month Subscription, 1 person | Word, Excel, PowerPoint | 1TB OneDrive cloud storage | PC/Mac Instant Download | Activation Required', '', 'Microsoft '),
(70, 'Microsoft OEM System Builder', 'Microsoft OEM System Builder.jpg', 60, 5, 'Windоws 11 Pro | Intended use for new systems | Authorized by Microsoft', '', 'Microsoft '),
(71, 'Microsoft 365 Family ', 'Microsoft 365 Family .jpg', 148, 5, 'Microsoft 365 Family 12 month subscription with auto-renewal for digital download', '', 'Microsoft');

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

CREATE TABLE `tb_role` (
  `role_id` int(11) NOT NULL,
  `role_permission` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_role`
--

INSERT INTO `tb_role` (`role_id`, `role_permission`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `user_fname` varchar(255) NOT NULL,
  `user_lname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` int(10) NOT NULL,
  `user_img` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`user_id`, `role_id`, `user_fname`, `user_lname`, `user_email`, `user_phone`, `user_img`, `user_password`) VALUES
(1, 1, '', '', 'majdouleen@admin.com', 0, '', 'Admin@123'),
(2, 1, '', '', 'salsabeel@admin.com', 0, '', 'Admin@123'),
(3, 1, '', '', 'lujain@admin.com', 0, '', 'Admin@123'),
(4, 1, '', '', 'mohammad@admin.com', 0, '', 'Admin@123'),
(5, 1, '', '', 'ali@admin.com', 0, '', 'Admin@123'),
(6, 1, '', '', 'laith@admin.com', 0, '', 'Admin@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_categories`
--
ALTER TABLE `tb_categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_id` (`user_id`,`prd_id`),
  ADD KEY `prd_id` (`prd_id`);

--
-- Indexes for table `tb_products`
--
ALTER TABLE `tb_products`
  ADD PRIMARY KEY (`prd_id`),
  ADD KEY `prd_id` (`prd_id`),
  ADD KEY `prd_categories` (`prd_categories`);

--
-- Indexes for table `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_categories`
--
ALTER TABLE `tb_categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_orders`
--
ALTER TABLE `tb_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_products`
--
ALTER TABLE `tb_products`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `tb_role`
--
ALTER TABLE `tb_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD CONSTRAINT `tb_orders_ibfk_1` FOREIGN KEY (`prd_id`) REFERENCES `tb_products` (`prd_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tb_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_products`
--
ALTER TABLE `tb_products`
  ADD CONSTRAINT `tb_products_ibfk_1` FOREIGN KEY (`prd_categories`) REFERENCES `tb_categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD CONSTRAINT `tb_users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
