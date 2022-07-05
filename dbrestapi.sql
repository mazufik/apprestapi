-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: localhost    Database: dbrestapi
-- ------------------------------------------------------
-- Server version	5.7.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `akses_token`
--

DROP TABLE IF EXISTS `akses_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `akses_token` (
  `id_akses_token` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `access_token` text,
  `ip_address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_akses_token`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `akses_token_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akses_token`
--

LOCK TABLES `akses_token` WRITE;
/*!40000 ALTER TABLE `akses_token` DISABLE KEYS */;
INSERT INTO `akses_token` VALUES (1,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MSwidXNlcm5hbWUiOiJ1c2VyIiwiZW1haWwiOiJ1c2VyQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiNmFkMTRiYTk5ODZlMzYxNTQyM2RmY2EyNTZkMDRlM2YiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjItMDctMDNUMTU6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjU2OTkzNzI4LCJleHAiOjE2NTY5OTUxNjh9.X-wDqrBgQ5qncB0YxmV7OcvTBVnvkf9Hc7a0mIn6Tqc','192.168.43.48'),(2,2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MiwidXNlcm5hbWUiOiJpcGluIiwiZW1haWwiOiJpcGluQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiYTE2MzA0YzgzZWQyNjM2Yjc5ZTZhYTgyMTQ3MTlhM2IiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjItMDctMDRUMTU6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjU2OTk1OTI5LCJleHAiOjE2NTY5OTczNjl9.ngALrvTjSeuUKWo0NyA88epDN-L-EieDzWkAIU34JQc','192.168.43.48'),(3,2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MiwidXNlcm5hbWUiOiJpcGluIiwiZW1haWwiOiJpcGluQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiYTE2MzA0YzgzZWQyNjM2Yjc5ZTZhYTgyMTQ3MTlhM2IiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjItMDctMDRUMTU6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjU2OTk2NDgyLCJleHAiOjE2NTY5OTc5MjJ9.acjTdV0ALPscFbS_CQZkh8u8jojvPVOEgl6SA24A6OY','192.168.43.48'),(4,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MSwidXNlcm5hbWUiOiJ1c2VyIiwiZW1haWwiOiJ1c2VyQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiNmFkMTRiYTk5ODZlMzYxNTQyM2RmY2EyNTZkMDRlM2YiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjItMDctMDNUMTU6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjU2OTk2NTkwLCJleHAiOjE2NTY5OTgwMzB9.0ikR0rLLTsx0_2OZpM1Rn5E9IfXgigCTNXdmdBCZ92s','192.168.43.48'),(5,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MSwidXNlcm5hbWUiOiJ1c2VyIiwiZW1haWwiOiJ1c2VyQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiNmFkMTRiYTk5ODZlMzYxNTQyM2RmY2EyNTZkMDRlM2YiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjItMDctMDNUMTU6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjU2OTk2OTQwLCJleHAiOjE2NTY5OTgzODB9.4udAFmnU7q8JWMna3jP4T7KGskdc1k8mQwqaXkszTXc','127.0.0.1'),(6,3,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywidXNlcm5hbWUiOiJzYXRvIiwiZW1haWwiOiJzYXRvQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiOTI1Zjg5NDMyYTZhZmNkYTU4YTUyODkxNzQ4OTM0MjEiLCJyb2xlIjozLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjItMDctMDRUMTU6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjU2OTk3MDYyLCJleHAiOjE2NTY5OTg1MDJ9.DnJCiPsLSERh6TrMkT-IpswcHXyOk6N_4do8gbB5_-o','127.0.0.1'),(7,2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MiwidXNlcm5hbWUiOiJpcGluIiwiZW1haWwiOiJpcGluQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiYTE2MzA0YzgzZWQyNjM2Yjc5ZTZhYTgyMTQ3MTlhM2IiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjItMDctMDRUMTU6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjU2OTk3MzYxLCJleHAiOjE2NTY5OTg4MDF9.g4-tPe6KsRuDHUhXby9N_DAe_BzgEVqljDU67LSaAIc','127.0.0.1'),(8,3,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywidXNlcm5hbWUiOiJzYXRvIiwiZW1haWwiOiJzYXRvQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiOTI1Zjg5NDMyYTZhZmNkYTU4YTUyODkxNzQ4OTM0MjEiLCJyb2xlIjozLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjItMDctMDRUMTU6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjU2OTk3NDc1LCJleHAiOjE2NTY5OTg5MTV9.fG4YKOwuwVx68OLeY0_5S_zBzjKce8VIIBWmu7_dF78','127.0.0.1');
/*!40000 ALTER TABLE `akses_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krs`
--

DROP TABLE IF EXISTS `krs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal_krs` date DEFAULT NULL,
  `id_matakuliah` int(11) DEFAULT NULL,
  `id_mahasiswa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_krs`),
  KEY `id_matakuliah` (`id_matakuliah`),
  KEY `id_mahasiswa` (`id_mahasiswa`),
  CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krs`
--

LOCK TABLES `krs` WRITE;
/*!40000 ALTER TABLE `krs` DISABLE KEYS */;
INSERT INTO `krs` VALUES (1,'2022-07-03',1,3),(2,'2022-07-03',2,3),(3,'2022-07-03',3,3),(4,'2022-07-03',4,3),(5,'2022-07-03',3,1),(6,'2022-07-03',5,1);
/*!40000 ALTER TABLE `krs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT,
  `nim` int(20) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mahasiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES (1,1907048022,'Michael Kurniawan','Teknik Informatika'),(2,1907048016,'Ahmad Nugrahantoro','Sistem Informasi'),(3,1907048017,'Muhammad Ananda','Teknik Informatika');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matakuliah`
--

DROP TABLE IF EXISTS `matakuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matakuliah` (
  `id_matakuliah` int(11) NOT NULL AUTO_INCREMENT,
  `matakuliah` varchar(50) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_matakuliah`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matakuliah`
--

LOCK TABLES `matakuliah` WRITE;
/*!40000 ALTER TABLE `matakuliah` DISABLE KEYS */;
INSERT INTO `matakuliah` VALUES (1,'Algoritma Dasar',3),(2,'Proyek Perangkat Lunak',3),(3,'Pemrograman Website',3),(4,'Manajemen Proyek',3),(5,'Basis Data',3),(6,'Sistem Operasi',3);
/*!40000 ALTER TABLE `matakuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `tanggal_daftar` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user','user@gmail.com','6ad14ba9986e3615423dfca256d04e3f',2,'2022-07-04'),(2,'ipin','ipin@gmail.com','a16304c83ed2636b79e6aa8214719a3b',2,'2022-07-05'),(3,'sato','sato@gmail.com','925f89432a6afcda58a5289174893421',3,'2022-07-05');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-05 14:46:24
