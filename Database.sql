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
INSERT INTO `chi_tiet_phieu_nhap` VALUES ('2020-10-01',' C?? chua',6,6,22000),('2020-10-01',' C?? r?? phi',40,40,40000),('2020-10-01',' Ch??? l???n',13,13,130000),('2020-10-01',' Cuangao',20,20,15000),('2020-10-01',' ?????u ph???',24,24,13000),('2020-10-01',' D??a chua',5,5,15000),('2020-10-01',' D??a h???u',36,36,14000),('2020-10-01',' Gi?? n???c',13,13,130000),('2020-10-01',' G???ng',0.7,0.7,70000),('2020-10-01',' H??nh kh??',0.5,0.5,25000),('2020-10-01',' H??nh l??',1.5,1.5,23000),('2020-10-01',' Khay x???p d??ng 1 l???n',60,60,4800),('2020-10-01',' Me chua',3,3,15000),('2020-10-01',' M?????p ?????ng',8,8,15000),('2020-10-01',' ???i',43,43,12000),('2020-10-01',' ???t t????i',1,1,37000),('2020-10-01',' Rau m??ng t??i',12,12,5000),('2020-10-01',' Rau mu???ng',90,90,4500),('2020-10-01',' S???a t????i 180mmml',208,208,6500),('2020-10-01',' Th???t b??',9.4,9.4,270000),('2020-10-01',' Th???t b??',11.5,11.5,270000),('2020-10-01',' Th???t g?? lo???i 1',32,32,110000),('2020-10-01',' Th???t l???n n???c',15.3,15.3,126000),('2020-10-01',' Ti??u b???c',0.1,0.1,250000),('2020-10-01',' T??m ?????m',14,14,135000),('2020-10-01',' Tr???ng v???t',16,16,46000),('2020-10-01',' Tr???ng v???t l???n',178,178,3500),('2020-10-02',' B???p c???i',90,90,6000),('2020-10-02',' C?? chim',38,38,40000),('2020-10-02',' C?? chua',6,6,22000),('2020-10-02',' Ch??? l???n',12.8,12.8,130000),('2020-10-02',' Chu???i',36,36,14000),('2020-10-02',' Cuangao',20,20,25000),('2020-10-02',' ?????u ph???',24,24,13000),('2020-10-02',' D???u r???a DCCD',40,40,20000),('2020-10-02',' D???u, m??? ??n',40,40,25000),('2020-10-02',' ???????ng tr???ng',1,1,15000),('2020-10-02',' G???o t???',3500,3500,12900),('2020-10-02',' G???ng',1,1,70000),('2020-10-02',' H??nh kh??',0.5,0.5,25000),('2020-10-02',' H??nh l??',1.5,1.5,23000),('2020-10-02',' Khay x???p d??ng 1 l???n',61,61,4800),('2020-10-02',' M???c t????i',16,16,150000),('2020-10-02',' M?????p ?????ng',8,8,14000),('2020-10-02',' N?????c m???m lo???i 1',300,300,16000),('2020-10-02',' ???i',42,42,12000),('2020-10-02',' ???t t????i',1,1,37000),('2020-10-02',' Rau m??ng t??i',10,10,7000),('2020-10-02',' S???a t????i 180mmml',211,211,6500),('2020-10-02',' Th???t b??',11.5,11.5,270000),('2020-10-02',' Th???t b?? lo???i 2',8,8,180000),('2020-10-02',' Th???t l???n ba chi',11,11,108000),('2020-10-02',' Th???t l???n m??ng',11,11,108000),('2020-10-02',' Th???t l???n vai',11,11,108000),('2020-10-02',' Th???t v???t',36,36,75000),('2020-10-02',' T???i',0.5,0.5,25000),('2020-10-02',' T??m ?????m',14,14,135000),('2020-10-02',' Tr???ng v???t',23,23,46000),('2020-10-02',' V???ng, l???c',40,40,55000),('2020-10-03',' B???p c???i',85,85,6000),('2020-10-03',' C?? ch??p',16.6,16.6,65000),('2020-10-03',' C?? chua',6,6,27000),('2020-10-03',' C?? r?? phi',38,38,40000),('2020-10-03',' Ch??? l???n',12.5,12.5,133000),('2020-10-03',' Chu???i',36,36,14000),('2020-10-03',' Cuangao',20,20,25000),('2020-10-03',' ?????u ph???',23,23,13000),('2020-10-03',' ????? c?? ve',8,8,7000),('2020-10-03',' D??a chua',5,5,15000),('2020-10-03',' D??a h???u',36,36,14000),('2020-10-03',' Gi?? n???c',12.5,12.5,133000),('2020-10-03',' G???ng',1,1,70000),('2020-10-03',' H??nh kh??',0.5,0.5,23000),('2020-10-03',' H??nh l??',1.5,1.5,20000),('2020-10-03',' Khay x???p d??ng 1 l???n',62,62,4800),('2020-10-03',' Me chua',2,2,15000),('2020-10-03',' Rau ng??t',10,10,6000),('2020-10-03',' S???a t????i 180mmml',215,215,6500),('2020-10-03',' Th???t b??',11.5,11.5,270000),('2020-10-03',' Th???t g?? lo???i 1',50,50,108000),('2020-10-03',' Tim l???n',7,7,300000),('2020-10-03',' T???i',0.5,0.5,23000),('2020-10-03',' T??m ?????m',14,14,135000),('2020-10-03',' Tr???ng v???t',15,15,46000),('2020-10-04',' C?? bi???n',15,15,40000),('2020-10-04',' C?? chua',5,5,27000),('2020-10-04',' C?? m??',36,36,33000),('2020-10-04',' Cuangao',18,18,25000),('2020-10-04',' ??a nem',2.5,2.5,40000),('2020-10-04',' ?????u ph???',23,23,13000),('2020-10-04',' D??a chua',3,3,15000),('2020-10-04',' D??a h???u',37,37,14000),('2020-10-04',' Gi?? n???c',16.5,16.5,133000),('2020-10-04',' G???ng',1,1,70000),('2020-10-04',' H??nh kh??',0.5,0.5,23000),('2020-10-04',' H??nh l??',1.5,1.5,20000),('2020-10-04',' Khay x???p d??ng 1 l???n',63,63,4800),('2020-10-04',' Me chua',3,3,15000),('2020-10-04',' Mi???n',1,1,40000),('2020-10-04',' M???c nh??',0.3,0.3,100000),('2020-10-04',' M???c t????i',8.2,8.2,150000),('2020-10-04',' ???i',43,43,12000),('2020-10-04',' ???t t????i',1,1,32000),('2020-10-04',' Rau mu???ng',94,94,4500),('2020-10-04',' Rau ng??t',8,8,6000),('2020-10-04',' Ri???ng',1,1,15000),('2020-10-04',' S???a t????i 180mmml',218,218,6500),('2020-10-04',' Th???t b?? lo???i 2',10,10,180000),('2020-10-04',' Th???t g?? lo???i 1',32,32,108000),('2020-10-04',' Th???t l???n ba chi',11,11,114000),('2020-10-04',' Th???t l???n m??ng',11,11,114000),('2020-10-04',' Th???t l???n n???c',15,15,133000),('2020-10-04',' Th???t l???n vai',11,11,114000),('2020-10-04',' Th???t v???t',36,36,78000),('2020-10-04',' T???i',0.5,0.5,23000),('2020-10-04',' Tr???ng v???t',16,16,46000),('2020-10-05',' C?? chua',5,5,27000),('2020-10-05',' C?? r?? phi',39,39,40000),('2020-10-05',' Ch??? l???n',13,13,133000),('2020-10-05',' Cuangao',20,20,25000),('2020-10-05',' ?????u ph???',23,23,13000),('2020-10-05',' D??a chua',5,5,15000),('2020-10-05',' D??a h???u',37,37,14000),('2020-10-05',' Gi?? n???c',13,13,133000),('2020-10-05',' G???ng',0.7,0.7,70000),('2020-10-05',' H??nh kh??',0.5,0.5,23000),('2020-10-05',' H??nh l??',1.5,1.5,20000),('2020-10-05',' Khay x???p d??ng 1 l???n',62,62,4800),('2020-10-05',' Me chua',2,2,15000),('2020-10-05',' ???i',43,43,12000),('2020-10-05',' ???t t????i',1,1,32000),('2020-10-05',' Rau m??ng t??i',13,13,5000),('2020-10-05',' Rau mu???ng',90,90,4500),('2020-10-05',' S???a t????i 180mmml',215,215,6500),('2020-10-05',' Th???t b??',9.8,9.8,270000),('2020-10-05',' Th???t g?? lo???i 1',32,32,108000),('2020-10-05',' Th???t l???n n???c',15.5,15.5,133000),('2020-10-05',' Th???t v???t',36,36,78000),('2020-10-05',' T???i',0.7,0.7,23000),('2020-10-05',' T??m ?????m',14.2,14.2,135000),('2020-10-05',' Tr???ng v???t',31,31,46000),('2020-10-05',' Tr???ng v???t l???n',184,184,3500),('2020-10-06',' B???p c???i',95,95,6000),('2020-10-06',' C?? chua',5,5,27000),('2020-10-06',' C?? m??',36,36,33000),('2020-10-06',' Ch??? l???n',13,13,133000),('2020-10-06',' Cuangao',20,20,25000),('2020-10-06',' ?????u ph???',24,24,13000),('2020-10-06',' D??a chua',3,3,15000),('2020-10-06',' D??a h???u',37,37,14000),('2020-10-06',' G???o t???',2000,2000,12900),('2020-10-06',' G???ng',1,1,70000),('2020-10-06',' H??nh kh??',0.5,0.5,23000),('2020-10-06',' H??nh l??',1.5,1.5,20000),('2020-10-06',' Khay x???p d??ng 1 l???n',62,62,4800),('2020-10-06',' Me chua',2,2,15000),('2020-10-06',' ???i',43,43,12000),('2020-10-06',' ???t t????i',1,1,32000),('2020-10-06',' Rau m??ng t??i',10,10,6000),('2020-10-06',' Ri???ng',1,1,10000),('2020-10-06',' S???a t????i 180mmml',216,216,6500),('2020-10-06',' Th???t b??',12,12,270000),('2020-10-06',' Th???t b?? lo???i 2',10,10,180000),('2020-10-06',' Th???t l???n ba chi',12,12,114000),('2020-10-06',' Th???t l???n m??ng',12,12,114000),('2020-10-06',' Th???t l???n vai',12,12,114000),('2020-10-06',' Th???t v???t',36,36,78000),('2020-10-06',' Tim l???n',7,7,300000),('2020-10-06',' T???i',0.5,0.5,23000),('2020-10-06',' T??m ?????m',14.5,14.5,135000),('2020-10-06',' Tr???ng v???t',16,16,46000);
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
INSERT INTO `chi_tiet_phieu_xuat` VALUES ('2020-10-01','C?? chua',6,0,0,22000),('2020-10-01','C?? r?? phi',0,0,40,40000),('2020-10-01','Ch??? l???n',0,13,0,130000),('2020-10-01','Cuangao',0,20,0,15000),('2020-10-01','D???u di eren',8,11,11,12500),('2020-10-01','D???u m??? ??n',1,2,2,25000),('2020-10-01','?????u ph???',0,24,0,13000),('2020-10-01','D???u r???a DCCD',0.8,1.5,1.5,20000),('2020-10-01','D??a chua',0,0,5,15000),('2020-10-01','D??a h???u',0,36,0,14000),('2020-10-01','G???o t???',35.7,68.9,68.9,12850),('2020-10-01','Gi?? n???c',0,0,13,130000),('2020-10-01','G???ng',0.7,0,0,70000),('2020-10-01','H??nh kh??',0.5,0,0,25000),('2020-10-01','H??nh l??',1.5,0,0,23000),('2020-10-01','Khay x???p d??ng 1 l???n',60,0,0,4800),('2020-10-01','Me chua',1,0,2,15000),('2020-10-01','M?? ch??nh',0.2,0.5,0.5,55000),('2020-10-01','Mu???i Iot',1,2,2,4000),('2020-10-01','M?????p ?????ng',0,8,0,15000),('2020-10-01','N?????c m???m lo???i 1',2,4,4,16000),('2020-10-01','???i',0,0,43,12000),('2020-10-01','???t t????i',1,0,0,37000),('2020-10-01','Rau m??ng t??i',0,12,0,5000),('2020-10-01','Rau mu???ng',18,37,35,4500),('2020-10-01','S???a t????i 180mmml',88,60,60,6500),('2020-10-01','Th???t b??',0,9.4,0,270000),('2020-10-01','Th???t b??',0,11.5,0,270000),('2020-10-01','Th???t g?? lo???i 1',0,0,32,110000),('2020-10-01','Th???t l???n n???c',15.3,0,0,126000),('2020-10-01','Ti??u b???c',0.1,0,0,250000),('2020-10-01','T??m ?????m',0,14,0,135000),('2020-10-01','Tr???ng v???t',0,0,16,46000),('2020-10-01','Tr???ng v???t l???n',0,0,178,3500),('2020-10-01','V???ng l???c',8,1,1,55000),('2020-10-02','B???p c???i',18,36,36,6000),('2020-10-02','C?? chim',0,0,38,40000),('2020-10-02','C?? chua',6,0,0,22000),('2020-10-02','Ch??? l???n',0,12.8,0,130000),('2020-10-02','Chu???i',0,36,0,14000),('2020-10-02','Cuangao',0,20,0,25000),('2020-10-02','D???u di eren',8,11,11,12500),('2020-10-02','D???u m??? ??n',1,2,2,25000),('2020-10-02','?????u ph???',0,24,0,13000),('2020-10-02','D???u r???a DCCD',0.8,1.5,1.5,20000),('2020-10-02','???????ng tr???ng',0,1,0,15000),('2020-10-02','G???o t???',35.4,68.3,68.3,12850),('2020-10-02','G???ng',1,0,0,70000),('2020-10-02','H??nh kh??',0.5,0,0,25000),('2020-10-02','H??nh l??',1.5,0,0,23000),('2020-10-02','Khay x???p d??ng 1 l???n',61,0,0,4800),('2020-10-02','M?? ch??nh',0.2,0.5,0.5,55000),('2020-10-02','M???c t????i',0,0,16,150000),('2020-10-02','Mu???i Iot',1,2,2,4000),('2020-10-02','M?????p ?????ng',0,8,0,14000),('2020-10-02','N?????c m???m lo???i 1',2,4,4,16000),('2020-10-02','???i',0,0,42,12000),('2020-10-02','???t t????i',1,0,0,37000),('2020-10-02','Rau m??ng t??i',0,10,0,7000),('2020-10-02','S???a t????i 180mmml',89,61,61,6500),('2020-10-02','Th???t b??',0,11.5,0,270000),('2020-10-02','Th???t b?? lo???i 2',0,8,0,180000),('2020-10-02','Th???t l???n ba chi',5.5,0,5.5,108000),('2020-10-02','Th???t l???n m??ng',5.5,0,5.5,108000),('2020-10-02','Th???t l???n vai',5.5,0,5.5,108000),('2020-10-02','Th???t v???t',0,0,36,75000),('2020-10-02','T???i',0.5,0,0,25000),('2020-10-02','T??m ?????m',0,14,0,135000),('2020-10-02','Tr???ng v???t',8,0,15,46000),('2020-10-02','V???ng l???c',2.7,0,0,55000),('2020-10-03','B???p c???i',17,35,33,6000),('2020-10-03','C?? ch??p',0,16.6,0,65000),('2020-10-03','C?? chua',6,0,0,27000),('2020-10-03','C?? r?? phi',0,0,38,40000),('2020-10-03','Ch??? l???n',0,0,12.5,133000),('2020-10-03','Chu???i',0,36,0,14000),('2020-10-03','Cuangao',0,20,0,25000),('2020-10-03','D???u di eren',8,11,11,12500),('2020-10-03','D???u m??? ??n',1,2,2,25000),('2020-10-03','?????u ph???',0,23,0,13000),('2020-10-03','D???u r???a DCCD',0.7,1.5,1.5,20000),('2020-10-03','????? c?? ve',0,8,0,7000),('2020-10-03','D??a chua',0,0,5,15000),('2020-10-03','D??a h???u',0,0,36,14000),('2020-10-03','G???o t???',0,0,37.5,12900),('2020-10-03','Gi?? n???c',0,12.5,0,133000),('2020-10-03','G???ng',1,0,0,70000),('2020-10-03','H??nh kh??',0.5,0,0,23000),('2020-10-03','H??nh l??',1.5,0,0,20000),('2020-10-03','Khay x???p d??ng 1 l???n',62,0,0,4800),('2020-10-03','Me chua',0,0,2,15000),('2020-10-03','Mu???i Iot',1,2,2,4000),('2020-10-03','N?????c m???m lo???i 1',2,4,4,16000),('2020-10-03','Rau ng??t',0,10,0,6000),('2020-10-03','S???a t????i 180mmml',91,62,62,6500),('2020-10-03','Th???t b??',0,11.5,0,270000),('2020-10-03','Th???t g?? lo???i 1',18,0,32,108000),('2020-10-03','Tim l???n',0,0,7,300000),('2020-10-03','T???i',0.5,0,0,23000),('2020-10-03','T??m ?????m',0,14,0,135000),('2020-10-03','Tr???ng v???t',0,0,15,46000),('2020-10-03','V???ng l???c',8,1,1,55000),('2020-10-04','C?? bi???n',15,0,0,40000),('2020-10-04','C?? chua',5,0,0,27000),('2020-10-04','C?? m??',0,0,36,33000),('2020-10-04','Cuangao',0,18,0,25000),('2020-10-04','??a nem',0,0,2.5,40000),('2020-10-04','D???u di eren',8,11,11,12500),('2020-10-04','D???u m??? ??n',1,2,2,25000),('2020-10-04','?????u ph???',0,23,0,13000),('2020-10-04','D???u r???a DCCD',0.8,1.5,1.5,20000),('2020-10-04','D??a chua',0,0,3,15000),('2020-10-04','D??a h???u',0,37,0,14000),('2020-10-04','G???o t???',36,69.4,69.4,12900),('2020-10-04','Gi?? n???c',0,16.5,0,133000),('2020-10-04','G???ng',1,0,0,70000),('2020-10-04','H??nh kh??',0.5,0,0,23000),('2020-10-04','H??nh l??',1.5,0,0,20000),('2020-10-04','Khay x???p d??ng 1 l???n',63,0,0,4800),('2020-10-04','Me chua',1,0,2,15000),('2020-10-04','M?? ch??nh',0.2,0.5,0.5,55000),('2020-10-04','Mi???n',0,0,1,40000),('2020-10-04','M???c nh??',0,0,0.3,100000),('2020-10-04','M???c t????i',0,8.2,0,150000),('2020-10-04','Mu???i Iot',1,2,2,4000),('2020-10-04','N?????c m???m lo???i 1',2,4,4,16000),('2020-10-04','???i',0,0,43,12000),('2020-10-04','???t t????i',1,0,0,32000),('2020-10-04','Rau mu???ng',19,40,35,4500),('2020-10-04','Rau ng??t',0,8,0,6000),('2020-10-04','Ri???ng',0,0,1,15000),('2020-10-04','S???a t????i 180mmml',92,63,63,6500),('2020-10-04','Th???t b?? lo???i 2',0,0,10,180000),('2020-10-04','Th???t g?? lo???i 1',0,0,32,108000),('2020-10-04','Th???t l???n ba chi',5.5,0,5.5,114000),('2020-10-04','Th???t l???n m??ng',5.5,0,5.5,114000),('2020-10-04','Th???t l???n n???c',0,0,15,133000),('2020-10-04','Th???t l???n vai',5.5,0,5.5,114000),('2020-10-04','Th???t v???t',0,36,0,78000),('2020-10-04','T???i',0.5,0,0,23000),('2020-10-04','Tr???ng v???t',0,16,0,46000),('2020-10-04','V???ng l???c',2.5,0,0,55000),('2020-10-05','C?? chua',5,0,0,27000),('2020-10-05','C?? r?? phi',0,0,39,40000),('2020-10-05','Ch??? l???n',0,0,13,133000),('2020-10-05','Cuangao',0,20,0,25000),('2020-10-05','D???u di eren',8,11,11,12500),('2020-10-05','D???u m??? ??n',1,2.5,2,25000),('2020-10-05','?????u ph???',0,23,0,13000),('2020-10-05','D???u r???a DCCD',0.8,1.5,1.5,20000),('2020-10-05','D??a chua',0,0,5,15000),('2020-10-05','D??a h???u',0,37,0,14000),('2020-10-05','G???o t???',36.1,69.7,69.7,12900),('2020-10-05','Gi?? n???c',0,13,0,133000),('2020-10-05','G???ng',0.7,0,0,70000),('2020-10-05','H??nh kh??',0.5,0,0,23000),('2020-10-05','H??nh l??',1.5,0,0,20000),('2020-10-05','Khay x???p d??ng 1 l???n',62,0,0,4800),('2020-10-05','Me chua',1,0,1,15000),('2020-10-05','M?? ch??nh',0.2,0.5,0.5,55000),('2020-10-05','Mu???i Iot',1,2,2,4000),('2020-10-05','N?????c m???m lo???i 1',2,5,4,16000),('2020-10-05','???i',0,0,43,12000),('2020-10-05','???t t????i',1,0,0,32000),('2020-10-05','Rau m??ng t??i',0,13,0,5000),('2020-10-05','Rau mu???ng',18,37,35,4500),('2020-10-05','S???a t????i 180mmml',91,62,62,6500),('2020-10-05','Th???t b??',0,9.8,0,270000),('2020-10-05','Th???t g?? lo???i 1',0,0,32,108000),('2020-10-05','Th???t l???n n???c',15.5,0,0,133000),('2020-10-05','Th???t v???t',0,36,0,78000),('2020-10-05','T???i',0.7,0,0,23000),('2020-10-05','T??m ?????m',0,14.2,0,135000),('2020-10-05','Tr???ng v???t',15,0,16,46000),('2020-10-05','Tr???ng v???t l???n',0,0,184,3500),('2020-10-05','V???ng l???c',2.5,0,0,55000),('2020-10-06','B???p c???i',19,38,38,6000),('2020-10-06','C?? chua',5,0,0,27000),('2020-10-06','C?? m??',0,0,36,33000),('2020-10-06','Ch??? l???n',0,13,0,133000),('2020-10-06','Cuangao',0,20,0,25000),('2020-10-06','D???u di eren',8,11,11,12500),('2020-10-06','D???u m??? ??n',1,2.5,2,25000),('2020-10-06','?????u ph???',0,24,0,13000),('2020-10-06','D???u r???a DCCD',0.8,1.5,1.5,20000),('2020-10-06','D??a chua',0,0,3,15000),('2020-10-06','D??a h???u',0,37,0,14000),('2020-10-06','G???o t???',36.5,70.5,70.5,12900),('2020-10-06','G???ng',1,0,0,70000),('2020-10-06','H??nh kh??',0.5,0,0,23000),('2020-10-06','H??nh l??',1.5,0,0,20000),('2020-10-06','Khay x???p d??ng 1 l???n',62,0,0,4800),('2020-10-06','Me chua',1,0,1,15000),('2020-10-06','M?? ch??nh',0.2,0.5,0.5,55000),('2020-10-06','Mu???i Iot',1,2,2,4000),('2020-10-06','N?????c m???m lo???i 1',2,4,4,16000),('2020-10-06','???i',0,0,43,12000),('2020-10-06','???t t????i',1,0,0,32000),('2020-10-06','Rau m??ng t??i',0,10,0,6000),('2020-10-06','Ri???ng',0,0,1,10000),('2020-10-06','S???a t????i 180mmml',92,62,62,6500),('2020-10-06','Th???t b??',0,12,0,270000),('2020-10-06','Th???t b?? lo???i 2',0,10,0,180000),('2020-10-06','Th???t l???n ba chi',6,6,0,114000),('2020-10-06','Th???t l???n m??ng',6,6,0,114000),('2020-10-06','Th???t l???n vai',6,6,0,114000),('2020-10-06','Th???t v???t',0,0,36,78000),('2020-10-06','Tim l???n',0,0,7,300000),('2020-10-06','T???i',0.5,0,0,23000),('2020-10-06','T??m ?????m',0,0,14.5,135000),('2020-10-06','Tr???ng v???t',0,0,16,46000),('2020-10-06','V???ng l???c',8,1,1,55000);
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
INSERT INTO `nguoi_khong_an` VALUES ('20182534','PH???M V??N D????NG','4//','Ch??? huy'),('20182626','PH???M HUY TO??N','4//','Ch??? huy');
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
INSERT INTO `nguoi_tiep_nhan` VALUES ('L?? Minh Qu??n',''),('Nguy???n B???y','Ph??ng H???u C???n'),('Nguy???n ????nh L??m','H???u c???n'),('Nguy???n ????nh Th???y','H???u C???n'),('Nguy???n ?????c L??m','H???u c???n');
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
INSERT INTO `nguoi_xuat_kho` VALUES ('????o Anh Tu???n','Ph??ng H???u C???n');
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
INSERT INTO `phieu_nhap_kho` VALUES ('2020-10-01','ph??ng tham m??u','khu b???p A','h???u c???n','Nguy???n B???y'),('2020-10-02','ph??ng tham m??u','khu b???p A','h???u c???n','Nguy???n B???y'),('2020-10-03','ph??ng tham m??u','khu b???p A','h???u c???n','Nguy???n B???y'),('2020-10-04','ph??ng tham m??u','khu b???p A','h???u c???n','Nguy???n B???y'),('2020-10-05','ph??ng tham m??u','khu b???p A','h???u c???n','Nguy???n B???y'),('2020-10-06','ph??ng tham m??u','khu b???p A','h???u c???n','Nguy???n B???y');
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
INSERT INTO `phieu_xuat_kho` VALUES ('2020-10-01','Ph??ng Tham M??u','B???p khu A','H???u C???n','????o Anh Tu???n'),('2020-10-02','Ph??ng Tham M??u','B???p khu A','H???u C???n','????o Anh Tu???n'),('2020-10-03','Ph??ng Tham M??u','B???p khu A','H???u C???n','????o Anh Tu???n'),('2020-10-04','Ph??ng Tham M??u','B???p khu A','H???u C???n','????o Anh Tu???n'),('2020-10-05','Ph??ng Tham M??u','B???p khu A','H???u C???n','????o Anh Tu???n'),('2020-10-06','Ph??ng Tham M??u','B???p khu A','H???u C???n','????o Anh Tu???n');
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
INSERT INTO `vat_tu_nhap` VALUES (' B???p c???i','kg'),(' C?? bi???n','kg'),(' C?? ch??p','kg'),(' C?? chim','kg'),(' C?? chua','kg'),(' C?? m??','kg'),(' C?? r?? phi','kg'),(' Ch??? l???n','kg'),(' Chu???i','kg'),(' Cuangao','kg'),(' ??a nem','kg'),(' ?????u ph???','Kg'),(' D???u r???a DCCD','L??t'),(' D???u, m??? ??n','L??t'),(' ????? c?? ve','kg'),(' D??a chua','kg'),(' D??a h???u','kg'),(' ???????ng tr???ng','kg'),(' G???o t???','Kg'),(' Gi?? n???c','kg'),(' G???ng','kg'),(' H??nh kh??','kg'),(' H??nh l??','kg'),(' Khay x???p d??ng 1 l???n','b???'),(' Me chua','kg'),(' Mi???n','kg'),(' M???c nh??','kg'),(' M???c t????i','kg'),(' M?????p ?????ng','kg'),(' N?????c m???m lo???i 1','L??t'),(' ???i','kg'),(' ???t t????i','kg'),(' Rau m??ng t??i','kg'),(' Rau mu???ng','kg'),(' Rau ng??t','kg'),(' Ri???ng','kg'),(' S???a t????i 180mmml','H???p'),(' Th???t b??','kg'),(' Th???t b??','Kg'),(' Th???t b?? lo???i 2','kg'),(' Th???t g?? lo???i 1','Kg'),(' Th???t l???n ba chi','kg'),(' Th???t l???n m??ng','kg'),(' Th???t l???n n???c','Kg'),(' Th???t l???n vai','kg'),(' Th???t v???t','kg'),(' Ti??u b???c','kg'),(' Tim l???n','kg'),(' T???i','kg'),(' T??m ?????m','kg'),(' Tr???ng v???t','Kg'),(' Tr???ng v???t l???n','Kg'),(' V???ng, l???c','Kg'),('ph??ng tham m??u','kg'),('Rau c???i','kg'),('rau r??m','kg');
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
INSERT INTO `vat_tu_xuat` VALUES ('B???p c???i','kg'),('C?? bi???n','kg'),('C?? ch??p','kg'),('C?? chim','kg'),('C?? chua','kg'),('C?? m??','kg'),('C?? r?? phi','kg'),('Ch??? l???n','kg'),('Chu???i','kg'),('Cuangao','kg'),('??a nem','kg'),('D???u di eren','lit'),('D???u m??? ??n','L??t'),('?????u ph???','Kg'),('D???u r???a DCCD','L??t'),('????? c?? ve','kg'),('D??a chua','kg'),('D??a h???u','kg'),('???????ng tr???ng','kg'),('G???o t???','Kg'),('Gi?? n???c','kg'),('G???ng','kg'),('H??nh kh??','kg'),('H??nh l??','kg'),('Khay x???p d??ng 1 l???n','b???'),('Me chua','kg'),('M?? ch??nh','Kg'),('Mi???n','kg'),('M???c nh??','kg'),('M???c t????i','kg'),('Mu???i Iot','Kg'),('M?????p ?????ng','kg'),('N?????c m???m lo???i 1','L??t'),('???i','kg'),('???t t????i','kg'),('Rau m??ng t??i','kg'),('Rau mu???ng','kg'),('Rau ng??t','kg'),('Ri???ng','kg'),('S???a t????i 180mmml','H???p'),('Th???t b??','kg'),('Th???t b??','Kg'),('Th???t b?? lo???i 2','kg'),('Th???t g?? lo???i 1','Kg'),('Th???t l???n ba chi','kg'),('Th???t l???n m??ng','kg'),('Th???t l???n n???c','Kg'),('Th???t l???n vai','kg'),('Th???t v???t','kg'),('Ti??u b???c','kg'),('Tim l???n','kg'),('T???i','kg'),('T??m ?????m','kg'),('Tr???ng v???t','Kg'),('Tr???ng v???t l???n','Kg'),('V???ng l???c','Kg');
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
