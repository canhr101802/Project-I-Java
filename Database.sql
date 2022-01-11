-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: quan_li_nha_an
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chi_tiet_danh_sach`
--

DROP TABLE IF EXISTS `chi_tiet_danh_sach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_danh_sach` (
  `SHQD` varchar(100) NOT NULL,
  `thang_nam` varchar(100) NOT NULL,
  `ngay_an` int DEFAULT NULL,
  `muc_an` int DEFAULT NULL,
  `ngay_le` int DEFAULT NULL,
  PRIMARY KEY (`SHQD`,`thang_nam`),
  CONSTRAINT `chi_tiet_danh_sach_ibfk_1` FOREIGN KEY (`SHQD`) REFERENCES `nguoi_khong_an` (`SHQD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_danh_sach`
--

LOCK TABLES `chi_tiet_danh_sach` WRITE;
/*!40000 ALTER TABLE `chi_tiet_danh_sach` DISABLE KEYS */;
INSERT INTO `chi_tiet_danh_sach` VALUES ('20182534','2020-10',14,86000,90000),('20182626','2020-10',16,86000,90000);
/*!40000 ALTER TABLE `chi_tiet_danh_sach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chi_tiet_phieu_nhap`
--

DROP TABLE IF EXISTS `chi_tiet_phieu_nhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_phieu_nhap` (
  `ngay` date NOT NULL,
  `ten_vat_tu` varchar(100) NOT NULL,
  `so_luong_phai_nhap` float NOT NULL,
  `so_luong_thuc_nhap` float NOT NULL,
  `don_gia` float NOT NULL,
  PRIMARY KEY (`ngay`,`ten_vat_tu`),
  KEY `ten_vat_tu` (`ten_vat_tu`),
  CONSTRAINT `chi_tiet_phieu_nhap_ibfk_1` FOREIGN KEY (`ngay`) REFERENCES `phieu_nhap_kho` (`ngay`),
  CONSTRAINT `chi_tiet_phieu_nhap_ibfk_2` FOREIGN KEY (`ten_vat_tu`) REFERENCES `vat_tu_nhap` (`ten_vat_tu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_phieu_nhap`
--

LOCK TABLES `chi_tiet_phieu_nhap` WRITE;
/*!40000 ALTER TABLE `chi_tiet_phieu_nhap` DISABLE KEYS */;
INSERT INTO `chi_tiet_phieu_nhap` VALUES ('2020-10-01',' Cà chua',6,6,22000),('2020-10-01',' Cá rô phi',40,40,40000),('2020-10-01',' Chả lợn',13,13,130000),('2020-10-01',' Cuangao',20,20,15000),('2020-10-01',' Đậu phụ',24,24,13000),('2020-10-01',' Dưa chua',5,5,15000),('2020-10-01',' Dưa hấu',36,36,14000),('2020-10-01',' Giò nạc',13,13,130000),('2020-10-01',' Gừng',0.7,0.7,70000),('2020-10-01',' Hành khô',0.5,0.5,25000),('2020-10-01',' Hành lá',1.5,1.5,23000),('2020-10-01',' Khay xốp dùng 1 lần',60,60,4800),('2020-10-01',' Me chua',3,3,15000),('2020-10-01',' Mướp đắng',8,8,15000),('2020-10-01',' Ổi',43,43,12000),('2020-10-01',' Ớt tươi',1,1,37000),('2020-10-01',' Rau mùng tơi',12,12,5000),('2020-10-01',' Rau muống',90,90,4500),('2020-10-01',' Sữa tươi 180mmml',208,208,6500),('2020-10-01',' Thịt bê',9.4,9.4,270000),('2020-10-01',' Thịt bò',11.5,11.5,270000),('2020-10-01',' Thịt gà loại 1',32,32,110000),('2020-10-01',' Thịt lợn nạc',15.3,15.3,126000),('2020-10-01',' Tiêu bắc',0.1,0.1,250000),('2020-10-01',' Tôm đầm',14,14,135000),('2020-10-01',' Trứng vịt',16,16,46000),('2020-10-01',' Trứng vịt lộn',178,178,3500),('2020-10-02',' Bắp cải',90,90,6000),('2020-10-02',' Cá chim',38,38,40000),('2020-10-02',' Cà chua',6,6,22000),('2020-10-02',' Chả lợn',12.8,12.8,130000),('2020-10-02',' Chuối',36,36,14000),('2020-10-02',' Cuangao',20,20,25000),('2020-10-02',' Đậu phụ',24,24,13000),('2020-10-02',' Dầu rửa DCCD',40,40,20000),('2020-10-02',' Dầu, mỡ ăn',40,40,25000),('2020-10-02',' Đường trắng',1,1,15000),('2020-10-02',' Gạo tẻ',3500,3500,12900),('2020-10-02',' Gừng',1,1,70000),('2020-10-02',' Hành khô',0.5,0.5,25000),('2020-10-02',' Hành lá',1.5,1.5,23000),('2020-10-02',' Khay xốp dùng 1 lần',61,61,4800),('2020-10-02',' Mực tươi',16,16,150000),('2020-10-02',' Mướp đắng',8,8,14000),('2020-10-02',' Nước mắm loại 1',300,300,16000),('2020-10-02',' Ổi',42,42,12000),('2020-10-02',' Ớt tươi',1,1,37000),('2020-10-02',' Rau mùng tơi',10,10,7000),('2020-10-02',' Sữa tươi 180mmml',211,211,6500),('2020-10-02',' Thịt bò',11.5,11.5,270000),('2020-10-02',' Thịt bò loại 2',8,8,180000),('2020-10-02',' Thịt lợn ba chi',11,11,108000),('2020-10-02',' Thịt lợn mông',11,11,108000),('2020-10-02',' Thịt lợn vai',11,11,108000),('2020-10-02',' Thịt vịt',36,36,75000),('2020-10-02',' Tỏi',0.5,0.5,25000),('2020-10-02',' Tôm đầm',14,14,135000),('2020-10-02',' Trứng vịt',23,23,46000),('2020-10-02',' Vừng, lạc',40,40,55000),('2020-10-03',' Bắp cải',85,85,6000),('2020-10-03',' Cá chép',16.6,16.6,65000),('2020-10-03',' Cà chua',6,6,27000),('2020-10-03',' Cá rô phi',38,38,40000),('2020-10-03',' Chả lợn',12.5,12.5,133000),('2020-10-03',' Chuối',36,36,14000),('2020-10-03',' Cuangao',20,20,25000),('2020-10-03',' Đậu phụ',23,23,13000),('2020-10-03',' Đỗ cô ve',8,8,7000),('2020-10-03',' Dưa chua',5,5,15000),('2020-10-03',' Dưa hấu',36,36,14000),('2020-10-03',' Giò nạc',12.5,12.5,133000),('2020-10-03',' Gừng',1,1,70000),('2020-10-03',' Hành khô',0.5,0.5,23000),('2020-10-03',' Hành lá',1.5,1.5,20000),('2020-10-03',' Khay xốp dùng 1 lần',62,62,4800),('2020-10-03',' Me chua',2,2,15000),('2020-10-03',' Rau ngót',10,10,6000),('2020-10-03',' Sữa tươi 180mmml',215,215,6500),('2020-10-03',' Thịt bò',11.5,11.5,270000),('2020-10-03',' Thịt gà loại 1',50,50,108000),('2020-10-03',' Tim lợn',7,7,300000),('2020-10-03',' Tỏi',0.5,0.5,23000),('2020-10-03',' Tôm đầm',14,14,135000),('2020-10-03',' Trứng vịt',15,15,46000),('2020-10-04',' Cá biển',15,15,40000),('2020-10-04',' Cà chua',5,5,27000),('2020-10-04',' Cá mè',36,36,33000),('2020-10-04',' Cuangao',18,18,25000),('2020-10-04',' Đa nem',2.5,2.5,40000),('2020-10-04',' Đậu phụ',23,23,13000),('2020-10-04',' Dưa chua',3,3,15000),('2020-10-04',' Dưa hấu',37,37,14000),('2020-10-04',' Giò nạc',16.5,16.5,133000),('2020-10-04',' Gừng',1,1,70000),('2020-10-04',' Hành khô',0.5,0.5,23000),('2020-10-04',' Hành lá',1.5,1.5,20000),('2020-10-04',' Khay xốp dùng 1 lần',63,63,4800),('2020-10-04',' Me chua',3,3,15000),('2020-10-04',' Miến',1,1,40000),('2020-10-04',' Mộc nhĩ',0.3,0.3,100000),('2020-10-04',' Mực tươi',8.2,8.2,150000),('2020-10-04',' Ổi',43,43,12000),('2020-10-04',' Ớt tươi',1,1,32000),('2020-10-04',' Rau muống',94,94,4500),('2020-10-04',' Rau ngót',8,8,6000),('2020-10-04',' Riềng',1,1,15000),('2020-10-04',' Sữa tươi 180mmml',218,218,6500),('2020-10-04',' Thịt bò loại 2',10,10,180000),('2020-10-04',' Thịt gà loại 1',32,32,108000),('2020-10-04',' Thịt lợn ba chi',11,11,114000),('2020-10-04',' Thịt lợn mông',11,11,114000),('2020-10-04',' Thịt lợn nạc',15,15,133000),('2020-10-04',' Thịt lợn vai',11,11,114000),('2020-10-04',' Thịt vịt',36,36,78000),('2020-10-04',' Tỏi',0.5,0.5,23000),('2020-10-04',' Trứng vịt',16,16,46000),('2020-10-05',' Cà chua',5,5,27000),('2020-10-05',' Cá rô phi',39,39,40000),('2020-10-05',' Chả lợn',13,13,133000),('2020-10-05',' Cuangao',20,20,25000),('2020-10-05',' Đậu phụ',23,23,13000),('2020-10-05',' Dưa chua',5,5,15000),('2020-10-05',' Dưa hấu',37,37,14000),('2020-10-05',' Giò nạc',13,13,133000),('2020-10-05',' Gừng',0.7,0.7,70000),('2020-10-05',' Hành khô',0.5,0.5,23000),('2020-10-05',' Hành lá',1.5,1.5,20000),('2020-10-05',' Khay xốp dùng 1 lần',62,62,4800),('2020-10-05',' Me chua',2,2,15000),('2020-10-05',' Ổi',43,43,12000),('2020-10-05',' Ớt tươi',1,1,32000),('2020-10-05',' Rau mùng tơi',13,13,5000),('2020-10-05',' Rau muống',90,90,4500),('2020-10-05',' Sữa tươi 180mmml',215,215,6500),('2020-10-05',' Thịt bê',9.8,9.8,270000),('2020-10-05',' Thịt gà loại 1',32,32,108000),('2020-10-05',' Thịt lợn nạc',15.5,15.5,133000),('2020-10-05',' Thịt vịt',36,36,78000),('2020-10-05',' Tỏi',0.7,0.7,23000),('2020-10-05',' Tôm đầm',14.2,14.2,135000),('2020-10-05',' Trứng vịt',31,31,46000),('2020-10-05',' Trứng vịt lộn',184,184,3500),('2020-10-06',' Bắp cải',95,95,6000),('2020-10-06',' Cà chua',5,5,27000),('2020-10-06',' Cá mè',36,36,33000),('2020-10-06',' Chả lợn',13,13,133000),('2020-10-06',' Cuangao',20,20,25000),('2020-10-06',' Đậu phụ',24,24,13000),('2020-10-06',' Dưa chua',3,3,15000),('2020-10-06',' Dưa hấu',37,37,14000),('2020-10-06',' Gạo tẻ',2000,2000,12900),('2020-10-06',' Gừng',1,1,70000),('2020-10-06',' Hành khô',0.5,0.5,23000),('2020-10-06',' Hành lá',1.5,1.5,20000),('2020-10-06',' Khay xốp dùng 1 lần',62,62,4800),('2020-10-06',' Me chua',2,2,15000),('2020-10-06',' Ổi',43,43,12000),('2020-10-06',' Ớt tươi',1,1,32000),('2020-10-06',' Rau mùng tơi',10,10,6000),('2020-10-06',' Riềng',1,1,10000),('2020-10-06',' Sữa tươi 180mmml',216,216,6500),('2020-10-06',' Thịt bò',12,12,270000),('2020-10-06',' Thịt bò loại 2',10,10,180000),('2020-10-06',' Thịt lợn ba chi',12,12,114000),('2020-10-06',' Thịt lợn mông',12,12,114000),('2020-10-06',' Thịt lợn vai',12,12,114000),('2020-10-06',' Thịt vịt',36,36,78000),('2020-10-06',' Tim lợn',7,7,300000),('2020-10-06',' Tỏi',0.5,0.5,23000),('2020-10-06',' Tôm đầm',14.5,14.5,135000),('2020-10-06',' Trứng vịt',16,16,46000);
/*!40000 ALTER TABLE `chi_tiet_phieu_nhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chi_tiet_phieu_xuat`
--

DROP TABLE IF EXISTS `chi_tiet_phieu_xuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_phieu_xuat` (
  `ngay` date NOT NULL,
  `ten_vat_tu` varchar(100) NOT NULL,
  `so_luong_nhap_sang` float DEFAULT NULL,
  `so_luong_nhap_trua` float DEFAULT NULL,
  `so_luong_nhap_chieu` float DEFAULT NULL,
  `don_gia` int NOT NULL,
  PRIMARY KEY (`ngay`,`ten_vat_tu`),
  KEY `ten_vat_tu` (`ten_vat_tu`),
  CONSTRAINT `chi_tiet_phieu_xuat_ibfk_1` FOREIGN KEY (`ngay`) REFERENCES `phieu_xuat_kho` (`ngay`),
  CONSTRAINT `chi_tiet_phieu_xuat_ibfk_2` FOREIGN KEY (`ten_vat_tu`) REFERENCES `vat_tu_xuat` (`ten_vat_tu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_phieu_xuat`
--

LOCK TABLES `chi_tiet_phieu_xuat` WRITE;
/*!40000 ALTER TABLE `chi_tiet_phieu_xuat` DISABLE KEYS */;
INSERT INTO `chi_tiet_phieu_xuat` VALUES ('2020-10-01','Cà chua',6,0,0,22000),('2020-10-01','Cá rô phi',0,0,40,40000),('2020-10-01','Chả lợn',0,13,0,130000),('2020-10-01','Cuangao',0,20,0,15000),('2020-10-01','Dầu di eren',8,11,11,12500),('2020-10-01','Dầu mỡ ăn',1,2,2,25000),('2020-10-01','Đậu phụ',0,24,0,13000),('2020-10-01','Dầu rửa DCCD',0.8,1.5,1.5,20000),('2020-10-01','Dưa chua',0,0,5,15000),('2020-10-01','Dưa hấu',0,36,0,14000),('2020-10-01','Gạo tẻ',35.7,68.9,68.9,12850),('2020-10-01','Giò nạc',0,0,13,130000),('2020-10-01','Gừng',0.7,0,0,70000),('2020-10-01','Hành khô',0.5,0,0,25000),('2020-10-01','Hành lá',1.5,0,0,23000),('2020-10-01','Khay xốp dùng 1 lần',60,0,0,4800),('2020-10-01','Me chua',1,0,2,15000),('2020-10-01','Mì chính',0.2,0.5,0.5,55000),('2020-10-01','Muối Iot',1,2,2,4000),('2020-10-01','Mướp đắng',0,8,0,15000),('2020-10-01','Nước mắm loại 1',2,4,4,16000),('2020-10-01','Ổi',0,0,43,12000),('2020-10-01','Ớt tươi',1,0,0,37000),('2020-10-01','Rau mùng tơi',0,12,0,5000),('2020-10-01','Rau muống',18,37,35,4500),('2020-10-01','Sữa tươi 180mmml',88,60,60,6500),('2020-10-01','Thịt bê',0,9.4,0,270000),('2020-10-01','Thịt bò',0,11.5,0,270000),('2020-10-01','Thịt gà loại 1',0,0,32,110000),('2020-10-01','Thịt lợn nạc',15.3,0,0,126000),('2020-10-01','Tiêu bắc',0.1,0,0,250000),('2020-10-01','Tôm đầm',0,14,0,135000),('2020-10-01','Trứng vịt',0,0,16,46000),('2020-10-01','Trứng vịt lộn',0,0,178,3500),('2020-10-01','Vừng lạc',8,1,1,55000),('2020-10-02','Bắp cải',18,36,36,6000),('2020-10-02','Cá chim',0,0,38,40000),('2020-10-02','Cà chua',6,0,0,22000),('2020-10-02','Chả lợn',0,12.8,0,130000),('2020-10-02','Chuối',0,36,0,14000),('2020-10-02','Cuangao',0,20,0,25000),('2020-10-02','Dầu di eren',8,11,11,12500),('2020-10-02','Dầu mỡ ăn',1,2,2,25000),('2020-10-02','Đậu phụ',0,24,0,13000),('2020-10-02','Dầu rửa DCCD',0.8,1.5,1.5,20000),('2020-10-02','Đường trắng',0,1,0,15000),('2020-10-02','Gạo tẻ',35.4,68.3,68.3,12850),('2020-10-02','Gừng',1,0,0,70000),('2020-10-02','Hành khô',0.5,0,0,25000),('2020-10-02','Hành lá',1.5,0,0,23000),('2020-10-02','Khay xốp dùng 1 lần',61,0,0,4800),('2020-10-02','Mì chính',0.2,0.5,0.5,55000),('2020-10-02','Mực tươi',0,0,16,150000),('2020-10-02','Muối Iot',1,2,2,4000),('2020-10-02','Mướp đắng',0,8,0,14000),('2020-10-02','Nước mắm loại 1',2,4,4,16000),('2020-10-02','Ổi',0,0,42,12000),('2020-10-02','Ớt tươi',1,0,0,37000),('2020-10-02','Rau mùng tơi',0,10,0,7000),('2020-10-02','Sữa tươi 180mmml',89,61,61,6500),('2020-10-02','Thịt bò',0,11.5,0,270000),('2020-10-02','Thịt bò loại 2',0,8,0,180000),('2020-10-02','Thịt lợn ba chi',5.5,0,5.5,108000),('2020-10-02','Thịt lợn mông',5.5,0,5.5,108000),('2020-10-02','Thịt lợn vai',5.5,0,5.5,108000),('2020-10-02','Thịt vịt',0,0,36,75000),('2020-10-02','Tỏi',0.5,0,0,25000),('2020-10-02','Tôm đầm',0,14,0,135000),('2020-10-02','Trứng vịt',8,0,15,46000),('2020-10-02','Vừng lạc',2.7,0,0,55000),('2020-10-03','Bắp cải',17,35,33,6000),('2020-10-03','Cá chép',0,16.6,0,65000),('2020-10-03','Cà chua',6,0,0,27000),('2020-10-03','Cá rô phi',0,0,38,40000),('2020-10-03','Chả lợn',0,0,12.5,133000),('2020-10-03','Chuối',0,36,0,14000),('2020-10-03','Cuangao',0,20,0,25000),('2020-10-03','Dầu di eren',8,11,11,12500),('2020-10-03','Dầu mỡ ăn',1,2,2,25000),('2020-10-03','Đậu phụ',0,23,0,13000),('2020-10-03','Dầu rửa DCCD',0.7,1.5,1.5,20000),('2020-10-03','Đỗ cô ve',0,8,0,7000),('2020-10-03','Dưa chua',0,0,5,15000),('2020-10-03','Dưa hấu',0,0,36,14000),('2020-10-03','Gạo tẻ',0,0,37.5,12900),('2020-10-03','Giò nạc',0,12.5,0,133000),('2020-10-03','Gừng',1,0,0,70000),('2020-10-03','Hành khô',0.5,0,0,23000),('2020-10-03','Hành lá',1.5,0,0,20000),('2020-10-03','Khay xốp dùng 1 lần',62,0,0,4800),('2020-10-03','Me chua',0,0,2,15000),('2020-10-03','Muối Iot',1,2,2,4000),('2020-10-03','Nước mắm loại 1',2,4,4,16000),('2020-10-03','Rau ngót',0,10,0,6000),('2020-10-03','Sữa tươi 180mmml',91,62,62,6500),('2020-10-03','Thịt bò',0,11.5,0,270000),('2020-10-03','Thịt gà loại 1',18,0,32,108000),('2020-10-03','Tim lợn',0,0,7,300000),('2020-10-03','Tỏi',0.5,0,0,23000),('2020-10-03','Tôm đầm',0,14,0,135000),('2020-10-03','Trứng vịt',0,0,15,46000),('2020-10-03','Vừng lạc',8,1,1,55000),('2020-10-04','Cá biển',15,0,0,40000),('2020-10-04','Cà chua',5,0,0,27000),('2020-10-04','Cá mè',0,0,36,33000),('2020-10-04','Cuangao',0,18,0,25000),('2020-10-04','Đa nem',0,0,2.5,40000),('2020-10-04','Dầu di eren',8,11,11,12500),('2020-10-04','Dầu mỡ ăn',1,2,2,25000),('2020-10-04','Đậu phụ',0,23,0,13000),('2020-10-04','Dầu rửa DCCD',0.8,1.5,1.5,20000),('2020-10-04','Dưa chua',0,0,3,15000),('2020-10-04','Dưa hấu',0,37,0,14000),('2020-10-04','Gạo tẻ',36,69.4,69.4,12900),('2020-10-04','Giò nạc',0,16.5,0,133000),('2020-10-04','Gừng',1,0,0,70000),('2020-10-04','Hành khô',0.5,0,0,23000),('2020-10-04','Hành lá',1.5,0,0,20000),('2020-10-04','Khay xốp dùng 1 lần',63,0,0,4800),('2020-10-04','Me chua',1,0,2,15000),('2020-10-04','Mì chính',0.2,0.5,0.5,55000),('2020-10-04','Miến',0,0,1,40000),('2020-10-04','Mộc nhĩ',0,0,0.3,100000),('2020-10-04','Mực tươi',0,8.2,0,150000),('2020-10-04','Muối Iot',1,2,2,4000),('2020-10-04','Nước mắm loại 1',2,4,4,16000),('2020-10-04','Ổi',0,0,43,12000),('2020-10-04','Ớt tươi',1,0,0,32000),('2020-10-04','Rau muống',19,40,35,4500),('2020-10-04','Rau ngót',0,8,0,6000),('2020-10-04','Riềng',0,0,1,15000),('2020-10-04','Sữa tươi 180mmml',92,63,63,6500),('2020-10-04','Thịt bò loại 2',0,0,10,180000),('2020-10-04','Thịt gà loại 1',0,0,32,108000),('2020-10-04','Thịt lợn ba chi',5.5,0,5.5,114000),('2020-10-04','Thịt lợn mông',5.5,0,5.5,114000),('2020-10-04','Thịt lợn nạc',0,0,15,133000),('2020-10-04','Thịt lợn vai',5.5,0,5.5,114000),('2020-10-04','Thịt vịt',0,36,0,78000),('2020-10-04','Tỏi',0.5,0,0,23000),('2020-10-04','Trứng vịt',0,16,0,46000),('2020-10-04','Vừng lạc',2.5,0,0,55000),('2020-10-05','Cà chua',5,0,0,27000),('2020-10-05','Cá rô phi',0,0,39,40000),('2020-10-05','Chả lợn',0,0,13,133000),('2020-10-05','Cuangao',0,20,0,25000),('2020-10-05','Dầu di eren',8,11,11,12500),('2020-10-05','Dầu mỡ ăn',1,2.5,2,25000),('2020-10-05','Đậu phụ',0,23,0,13000),('2020-10-05','Dầu rửa DCCD',0.8,1.5,1.5,20000),('2020-10-05','Dưa chua',0,0,5,15000),('2020-10-05','Dưa hấu',0,37,0,14000),('2020-10-05','Gạo tẻ',36.1,69.7,69.7,12900),('2020-10-05','Giò nạc',0,13,0,133000),('2020-10-05','Gừng',0.7,0,0,70000),('2020-10-05','Hành khô',0.5,0,0,23000),('2020-10-05','Hành lá',1.5,0,0,20000),('2020-10-05','Khay xốp dùng 1 lần',62,0,0,4800),('2020-10-05','Me chua',1,0,1,15000),('2020-10-05','Mì chính',0.2,0.5,0.5,55000),('2020-10-05','Muối Iot',1,2,2,4000),('2020-10-05','Nước mắm loại 1',2,5,4,16000),('2020-10-05','Ổi',0,0,43,12000),('2020-10-05','Ớt tươi',1,0,0,32000),('2020-10-05','Rau mùng tơi',0,13,0,5000),('2020-10-05','Rau muống',18,37,35,4500),('2020-10-05','Sữa tươi 180mmml',91,62,62,6500),('2020-10-05','Thịt bê',0,9.8,0,270000),('2020-10-05','Thịt gà loại 1',0,0,32,108000),('2020-10-05','Thịt lợn nạc',15.5,0,0,133000),('2020-10-05','Thịt vịt',0,36,0,78000),('2020-10-05','Tỏi',0.7,0,0,23000),('2020-10-05','Tôm đầm',0,14.2,0,135000),('2020-10-05','Trứng vịt',15,0,16,46000),('2020-10-05','Trứng vịt lộn',0,0,184,3500),('2020-10-05','Vừng lạc',2.5,0,0,55000),('2020-10-06','Bắp cải',19,38,38,6000),('2020-10-06','Cà chua',5,0,0,27000),('2020-10-06','Cá mè',0,0,36,33000),('2020-10-06','Chả lợn',0,13,0,133000),('2020-10-06','Cuangao',0,20,0,25000),('2020-10-06','Dầu di eren',8,11,11,12500),('2020-10-06','Dầu mỡ ăn',1,2.5,2,25000),('2020-10-06','Đậu phụ',0,24,0,13000),('2020-10-06','Dầu rửa DCCD',0.8,1.5,1.5,20000),('2020-10-06','Dưa chua',0,0,3,15000),('2020-10-06','Dưa hấu',0,37,0,14000),('2020-10-06','Gạo tẻ',36.5,70.5,70.5,12900),('2020-10-06','Gừng',1,0,0,70000),('2020-10-06','Hành khô',0.5,0,0,23000),('2020-10-06','Hành lá',1.5,0,0,20000),('2020-10-06','Khay xốp dùng 1 lần',62,0,0,4800),('2020-10-06','Me chua',1,0,1,15000),('2020-10-06','Mì chính',0.2,0.5,0.5,55000),('2020-10-06','Muối Iot',1,2,2,4000),('2020-10-06','Nước mắm loại 1',2,4,4,16000),('2020-10-06','Ổi',0,0,43,12000),('2020-10-06','Ớt tươi',1,0,0,32000),('2020-10-06','Rau mùng tơi',0,10,0,6000),('2020-10-06','Riềng',0,0,1,10000),('2020-10-06','Sữa tươi 180mmml',92,62,62,6500),('2020-10-06','Thịt bò',0,12,0,270000),('2020-10-06','Thịt bò loại 2',0,10,0,180000),('2020-10-06','Thịt lợn ba chi',6,6,0,114000),('2020-10-06','Thịt lợn mông',6,6,0,114000),('2020-10-06','Thịt lợn vai',6,6,0,114000),('2020-10-06','Thịt vịt',0,0,36,78000),('2020-10-06','Tim lợn',0,0,7,300000),('2020-10-06','Tỏi',0.5,0,0,23000),('2020-10-06','Tôm đầm',0,0,14.5,135000),('2020-10-06','Trứng vịt',0,0,16,46000),('2020-10-06','Vừng lạc',8,1,1,55000);
/*!40000 ALTER TABLE `chi_tiet_phieu_xuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_so_vat_chat`
--

DROP TABLE IF EXISTS `co_so_vat_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_so_vat_chat` (
  `matHang` varchar(100) NOT NULL,
  `donVi` varchar(50) DEFAULT NULL,
  `tong_thang_truoc` int DEFAULT NULL,
  `Tang` int DEFAULT NULL,
  `giam` int DEFAULT NULL,
  `ConLai` int DEFAULT NULL,
  `ChenhLech` int DEFAULT NULL,
  `Lydo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`matHang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_so_vat_chat`
--

LOCK TABLES `co_so_vat_chat` WRITE;
/*!40000 ALTER TABLE `co_so_vat_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_so_vat_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoi_khong_an`
--

DROP TABLE IF EXISTS `nguoi_khong_an`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoi_khong_an` (
  `SHQD` varchar(100) NOT NULL,
  `ho_ten` varchar(100) DEFAULT NULL,
  `cap_bac` varchar(100) DEFAULT NULL,
  `don_vi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SHQD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoi_khong_an`
--

LOCK TABLES `nguoi_khong_an` WRITE;
/*!40000 ALTER TABLE `nguoi_khong_an` DISABLE KEYS */;
INSERT INTO `nguoi_khong_an` VALUES ('20182534','PHẠM VĂN DƯƠNG','4//','Chỉ huy'),('20182626','PHẠM HUY TOÀN','4//','Chỉ huy');
/*!40000 ALTER TABLE `nguoi_khong_an` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoi_tiep_nhan`
--

DROP TABLE IF EXISTS `nguoi_tiep_nhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoi_tiep_nhan` (
  `ten_dong_chi_nhan` varchar(100) NOT NULL,
  `don_vi_cong_tac` varchar(100) NOT NULL,
  PRIMARY KEY (`ten_dong_chi_nhan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoi_tiep_nhan`
--

LOCK TABLES `nguoi_tiep_nhan` WRITE;
/*!40000 ALTER TABLE `nguoi_tiep_nhan` DISABLE KEYS */;
INSERT INTO `nguoi_tiep_nhan` VALUES ('Lý Minh Quân',''),('Nguyễn Bảy','Phòng Hậu Cần'),('Nguyễn Đình Lâm','Hậu cần'),('Nguyễn Đình Thủy','Hậu Cần'),('Nguyễn Đức Lâm','Hậu cần');
/*!40000 ALTER TABLE `nguoi_tiep_nhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoi_xuat_kho`
--

DROP TABLE IF EXISTS `nguoi_xuat_kho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoi_xuat_kho` (
  `ten_dong_chi_xuat` varchar(100) NOT NULL,
  `don_vi_cong_tac` varchar(100) NOT NULL,
  PRIMARY KEY (`ten_dong_chi_xuat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoi_xuat_kho`
--

LOCK TABLES `nguoi_xuat_kho` WRITE;
/*!40000 ALTER TABLE `nguoi_xuat_kho` DISABLE KEYS */;
INSERT INTO `nguoi_xuat_kho` VALUES ('Đào Anh Tuấn','Phòng Hậu Cần');
/*!40000 ALTER TABLE `nguoi_xuat_kho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_nhap_kho`
--

DROP TABLE IF EXISTS `phieu_nhap_kho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_nhap_kho` (
  `ngay` date NOT NULL,
  `don_vi_quan_ly` varchar(100) DEFAULT NULL,
  `khu_bep` varchar(100) NOT NULL,
  `kho_nhan_hang` varchar(100) NOT NULL,
  `ten_dong_chi_nhan` varchar(100) NOT NULL,
  PRIMARY KEY (`ngay`),
  KEY `ten_dong_chi_nhan` (`ten_dong_chi_nhan`),
  CONSTRAINT `phieu_nhap_kho_ibfk_1` FOREIGN KEY (`ten_dong_chi_nhan`) REFERENCES `nguoi_tiep_nhan` (`ten_dong_chi_nhan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_nhap_kho`
--

LOCK TABLES `phieu_nhap_kho` WRITE;
/*!40000 ALTER TABLE `phieu_nhap_kho` DISABLE KEYS */;
INSERT INTO `phieu_nhap_kho` VALUES ('2020-10-01','phòng tham mưu','khu bếp A','hậu cần','Nguyễn Bảy'),('2020-10-02','phòng tham mưu','khu bếp A','hậu cần','Nguyễn Bảy'),('2020-10-03','phòng tham mưu','khu bếp A','hậu cần','Nguyễn Bảy'),('2020-10-04','phòng tham mưu','khu bếp A','hậu cần','Nguyễn Bảy'),('2020-10-05','phòng tham mưu','khu bếp A','hậu cần','Nguyễn Bảy'),('2020-10-06','phòng tham mưu','khu bếp A','hậu cần','Nguyễn Bảy');
/*!40000 ALTER TABLE `phieu_nhap_kho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_xuat_kho`
--

DROP TABLE IF EXISTS `phieu_xuat_kho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_xuat_kho` (
  `ngay` date NOT NULL,
  `don_vi_quan_ly` varchar(100) DEFAULT NULL,
  `khu_bep` varchar(100) NOT NULL,
  `kho_nhan_hang` varchar(100) NOT NULL,
  `ten_dong_chi_xuat` varchar(100) NOT NULL,
  PRIMARY KEY (`ngay`),
  KEY `ten_dong_chi_xuat` (`ten_dong_chi_xuat`),
  CONSTRAINT `phieu_xuat_kho_ibfk_1` FOREIGN KEY (`ten_dong_chi_xuat`) REFERENCES `nguoi_xuat_kho` (`ten_dong_chi_xuat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_xuat_kho`
--

LOCK TABLES `phieu_xuat_kho` WRITE;
/*!40000 ALTER TABLE `phieu_xuat_kho` DISABLE KEYS */;
INSERT INTO `phieu_xuat_kho` VALUES ('2020-10-01','Phòng Tham Mưu','Bếp khu A','Hậu Cần','Đào Anh Tuấn'),('2020-10-02','Phòng Tham Mưu','Bếp khu A','Hậu Cần','Đào Anh Tuấn'),('2020-10-03','Phòng Tham Mưu','Bếp khu A','Hậu Cần','Đào Anh Tuấn'),('2020-10-04','Phòng Tham Mưu','Bếp khu A','Hậu Cần','Đào Anh Tuấn'),('2020-10-05','Phòng Tham Mưu','Bếp khu A','Hậu Cần','Đào Anh Tuấn'),('2020-10-06','Phòng Tham Mưu','Bếp khu A','Hậu Cần','Đào Anh Tuấn');
/*!40000 ALTER TABLE `phieu_xuat_kho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vat_tu_nhap`
--

DROP TABLE IF EXISTS `vat_tu_nhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vat_tu_nhap` (
  `ten_vat_tu` varchar(100) NOT NULL,
  `don_vi` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ten_vat_tu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vat_tu_nhap`
--

LOCK TABLES `vat_tu_nhap` WRITE;
/*!40000 ALTER TABLE `vat_tu_nhap` DISABLE KEYS */;
INSERT INTO `vat_tu_nhap` VALUES (' Bắp cải','kg'),(' Cá biển','kg'),(' Cá chép','kg'),(' Cá chim','kg'),(' Cà chua','kg'),(' Cá mè','kg'),(' Cá rô phi','kg'),(' Chả lợn','kg'),(' Chuối','kg'),(' Cuangao','kg'),(' Đa nem','kg'),(' Đậu phụ','Kg'),(' Dầu rửa DCCD','Lít'),(' Dầu, mỡ ăn','Lít'),(' Đỗ cô ve','kg'),(' Dưa chua','kg'),(' Dưa hấu','kg'),(' Đường trắng','kg'),(' Gạo tẻ','Kg'),(' Giò nạc','kg'),(' Gừng','kg'),(' Hành khô','kg'),(' Hành lá','kg'),(' Khay xốp dùng 1 lần','bộ'),(' Me chua','kg'),(' Miến','kg'),(' Mộc nhĩ','kg'),(' Mực tươi','kg'),(' Mướp đắng','kg'),(' Nước mắm loại 1','Lít'),(' Ổi','kg'),(' Ớt tươi','kg'),(' Rau mùng tơi','kg'),(' Rau muống','kg'),(' Rau ngót','kg'),(' Riềng','kg'),(' Sữa tươi 180mmml','Hộp'),(' Thịt bê','kg'),(' Thịt bò','Kg'),(' Thịt bò loại 2','kg'),(' Thịt gà loại 1','Kg'),(' Thịt lợn ba chi','kg'),(' Thịt lợn mông','kg'),(' Thịt lợn nạc','Kg'),(' Thịt lợn vai','kg'),(' Thịt vịt','kg'),(' Tiêu bắc','kg'),(' Tim lợn','kg'),(' Tỏi','kg'),(' Tôm đầm','kg'),(' Trứng vịt','Kg'),(' Trứng vịt lộn','Kg'),(' Vừng, lạc','Kg'),('phòng tham mưu','kg'),('Rau cải','kg'),('rau răm','kg');
/*!40000 ALTER TABLE `vat_tu_nhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vat_tu_xuat`
--

DROP TABLE IF EXISTS `vat_tu_xuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vat_tu_xuat` (
  `ten_vat_tu` varchar(100) NOT NULL,
  `don_vi` varchar(50) NOT NULL,
  PRIMARY KEY (`ten_vat_tu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vat_tu_xuat`
--

LOCK TABLES `vat_tu_xuat` WRITE;
/*!40000 ALTER TABLE `vat_tu_xuat` DISABLE KEYS */;
INSERT INTO `vat_tu_xuat` VALUES ('Bắp cải','kg'),('Cá biển','kg'),('Cá chép','kg'),('Cá chim','kg'),('Cà chua','kg'),('Cá mè','kg'),('Cá rô phi','kg'),('Chả lợn','kg'),('Chuối','kg'),('Cuangao','kg'),('Đa nem','kg'),('Dầu di eren','lit'),('Dầu mỡ ăn','Lít'),('Đậu phụ','Kg'),('Dầu rửa DCCD','Lít'),('Đỗ cô ve','kg'),('Dưa chua','kg'),('Dưa hấu','kg'),('Đường trắng','kg'),('Gạo tẻ','Kg'),('Giò nạc','kg'),('Gừng','kg'),('Hành khô','kg'),('Hành lá','kg'),('Khay xốp dùng 1 lần','bộ'),('Me chua','kg'),('Mì chính','Kg'),('Miến','kg'),('Mộc nhĩ','kg'),('Mực tươi','kg'),('Muối Iot','Kg'),('Mướp đắng','kg'),('Nước mắm loại 1','Lít'),('Ổi','kg'),('Ớt tươi','kg'),('Rau mùng tơi','kg'),('Rau muống','kg'),('Rau ngót','kg'),('Riềng','kg'),('Sữa tươi 180mmml','Hộp'),('Thịt bê','kg'),('Thịt bò','Kg'),('Thịt bò loại 2','kg'),('Thịt gà loại 1','Kg'),('Thịt lợn ba chi','kg'),('Thịt lợn mông','kg'),('Thịt lợn nạc','Kg'),('Thịt lợn vai','kg'),('Thịt vịt','kg'),('Tiêu bắc','kg'),('Tim lợn','kg'),('Tỏi','kg'),('Tôm đầm','kg'),('Trứng vịt','Kg'),('Trứng vịt lộn','Kg'),('Vừng lạc','Kg');
/*!40000 ALTER TABLE `vat_tu_xuat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-05 21:49:00
