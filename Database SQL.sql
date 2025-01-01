-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for sistempenjadwalankelas
CREATE DATABASE IF NOT EXISTS `sistempenjadwalankelas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sistempenjadwalankelas`;

-- Dumping structure for table sistempenjadwalankelas.auth_login
CREATE TABLE IF NOT EXISTS `auth_login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` enum('Guru','Siswa') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sistempenjadwalankelas.auth_login: ~23 rows (approximately)
INSERT INTO `auth_login` (`id`, `username`, `password`, `role`) VALUES
	(3, 'asep123', 'admin123', 'Guru'),
	(4, 'basep123', 'admin123', 'Guru'),
	(5, 'casep123', 'admin123', 'Guru'),
	(6, 'dasep123', 'admin123', 'Guru'),
	(7, 'easep123', 'admin123', 'Guru'),
	(8, 'fasep123', 'admin123', 'Guru'),
	(9, 'gasep123', 'admin123', 'Guru'),
	(10, 'hasep123', 'admin123', 'Guru'),
	(21, 'agus123', 'siswa123', 'Siswa'),
	(22, 'bagus123', 'siswa123', 'Siswa'),
	(23, 'cagus123', 'siswa123', 'Siswa'),
	(24, 'dagus123', 'siswa123', 'Siswa'),
	(25, 'eagus123', 'siswa123', 'Siswa'),
	(26, 'fagus123', 'siswa123', 'Siswa'),
	(27, 'gagus123', 'siswa123', 'Siswa'),
	(28, 'hagus123', 'siswa123', 'Siswa'),
	(29, 'iagus123', 'siswa123', 'Siswa'),
	(30, 'jagus123', 'siswa123', 'Siswa'),
	(31, 'kagus123', 'siswa123', 'Siswa'),
	(32, 'lagus123', 'siswa123', 'Siswa'),
	(33, 'magus123', 'siswa123', 'Siswa'),
	(34, 'nagus123', 'siswa123', 'Siswa'),
	(35, 'oagus123', 'siswa123', 'Siswa');

-- Dumping structure for table sistempenjadwalankelas.guru
CREATE TABLE IF NOT EXISTS `guru` (
  `NIP` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TanggalLahir` date DEFAULT NULL,
  `Alamat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NIP`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  CONSTRAINT `FK_guru_auth_login` FOREIGN KEY (`username`) REFERENCES `auth_login` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sistempenjadwalankelas.guru: ~8 rows (approximately)
INSERT INTO `guru` (`NIP`, `username`, `Nama`, `TanggalLahir`, `Alamat`, `Email`, `Foto`) VALUES
	('2023101001', 'asep123', 'Asep', '2024-10-21', 'PAA', 'asep@gmail.com', 'guru.png'),
	('2023101002', 'basep123', 'Basep', '2024-10-20', 'PBB', 'basep@gmail.com', 'guru.png'),
	('2023101003', 'casep123', 'Casep', '2024-10-19', 'PCC', 'casep@gmail.com', 'guru.png'),
	('2023101004', 'dasep123', 'Dasep', '2024-11-05', 'PDD', 'dasep@gmail.com', 'guru.png'),
	('2023101005', 'easep123', 'Easep', '2024-11-06', 'PEE', 'easep@gmail.com', 'guru.png'),
	('2023101006', 'fasep123', 'Fasep', '2024-11-07', 'PFF', 'fasep@gmail.com', 'guru.png'),
	('2023101007', 'gasep123', 'Gasep', '2024-11-08', 'PGG', 'gasep@gmail.com', 'guru.png'),
	('2023101008', 'hasep123', 'Hasep', '2024-11-09', 'PHH', 'hasep@gmail.com', 'guru.png');

-- Dumping structure for table sistempenjadwalankelas.hari
CREATE TABLE IF NOT EXISTS `hari` (
  `IDHari` int NOT NULL,
  `Hari` varchar(10) NOT NULL,
  PRIMARY KEY (`IDHari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sistempenjadwalankelas.hari: ~7 rows (approximately)
INSERT INTO `hari` (`IDHari`, `Hari`) VALUES
	(1, 'Senin'),
	(2, 'Selasa'),
	(3, 'Rabu'),
	(4, 'Kamis'),
	(5, 'Jumat'),
	(6, 'Sabtu'),
	(7, 'Minggu');

-- Dumping structure for table sistempenjadwalankelas.jadwal
CREATE TABLE IF NOT EXISTS `jadwal` (
  `IDMataPelajaran` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IDHari` int DEFAULT NULL,
  `IDRuangan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Waktu` time DEFAULT NULL,
  KEY `FK_jadwal_hari` (`IDHari`),
  KEY `FK_jadwal_matapelajaran` (`IDMataPelajaran`),
  KEY `FK_jadwal_ruangan` (`IDRuangan`),
  CONSTRAINT `FK_jadwal_hari` FOREIGN KEY (`IDHari`) REFERENCES `hari` (`IDHari`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_jadwal_matapelajaran` FOREIGN KEY (`IDMataPelajaran`) REFERENCES `matapelajaran` (`IDMataPelajaran`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_jadwal_ruangan` FOREIGN KEY (`IDRuangan`) REFERENCES `ruangan` (`IDRuangan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sistempenjadwalankelas.jadwal: ~19 rows (approximately)
INSERT INTO `jadwal` (`IDMataPelajaran`, `IDHari`, `IDRuangan`, `Waktu`) VALUES
	('1001', 3, '02202', '07:00:00'),
	('1101', 1, '02202', '10:00:00'),
	('1201', 1, '02203', '10:00:00'),
	('1002', 3, '02201', '10:00:00'),
	('1102', 3, '02202', '10:00:00'),
	('1202', 3, '02203', '10:00:00'),
	('1003', 2, '02204', '23:59:00'),
	('1103', 5, '02202', '10:00:00'),
	('1203', 5, '02203', '10:00:00'),
	('1004', 2, '02204', '10:00:00'),
	('1104', 2, '02205', '10:00:00'),
	('1204', 2, '02206', '10:00:00'),
	('1006', 2, '02207', '10:00:00'),
	('1106', 4, '02209', '10:00:00'),
	('1206', 4, '02208', '10:00:00'),
	('1007', 4, '02210', '10:00:00'),
	('1005', 6, '02205', '10:00:00'),
	('1105', 6, '02204', '10:00:00'),
	('1205', 6, '02207', '10:00:00');

-- Dumping structure for table sistempenjadwalankelas.kehadiran
CREATE TABLE IF NOT EXISTS `kehadiran` (
  `IDKehadiran` int NOT NULL AUTO_INCREMENT,
  `IDMataPelajaran` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Waktu` time DEFAULT NULL,
  `NIS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IDKehadiran`),
  KEY `FK_kehadiran_matapelajaran` (`IDMataPelajaran`),
  KEY `FK_kehadiran_siswa` (`NIS`),
  CONSTRAINT `FK_kehadiran_matapelajaran` FOREIGN KEY (`IDMataPelajaran`) REFERENCES `matapelajaran` (`IDMataPelajaran`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_kehadiran_siswa` FOREIGN KEY (`NIS`) REFERENCES `siswa` (`NIS`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sistempenjadwalankelas.kehadiran: ~17 rows (approximately)
INSERT INTO `kehadiran` (`IDKehadiran`, `IDMataPelajaran`, `Tanggal`, `Waktu`, `NIS`) VALUES
	(3, '1001', '2024-11-07', '11:26:47', '082023002'),
	(4, '1002', '2024-11-07', '11:41:30', '082023002'),
	(5, '1001', '2024-11-11', '11:58:29', '082023001'),
	(6, '1005', '2024-11-11', '11:59:48', '082023001'),
	(7, '1006', '2024-11-11', '12:02:05', '082023001'),
	(8, '1005', '2024-11-11', '12:02:29', '082023001'),
	(9, '1007', '2024-11-11', '19:07:09', '082023001'),
	(10, '1003', '2024-11-11', '12:12:21', '082023001'),
	(11, '1004', '2024-11-11', '19:14:06', '082023001'),
	(12, '1004', '2024-11-13', '09:27:47', '082023001'),
	(13, '1004', '2024-11-13', '13:01:50', '082023001'),
	(16, '1001', '2024-11-14', '06:25:25', '082023003'),
	(17, '1002', '2024-11-14', '06:30:13', '082023003'),
	(18, '1004', '2024-11-14', '07:24:43', '082023001'),
	(19, '1001', '2024-11-14', '07:28:48', '082023003'),
	(20, '1005', '2024-11-14', '08:11:10', '082023001'),
	(21, '1003', '2024-11-14', '08:14:06', '082023001');

-- Dumping structure for table sistempenjadwalankelas.matapelajaran
CREATE TABLE IF NOT EXISTS `matapelajaran` (
  `IDMataPelajaran` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NIP` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`IDMataPelajaran`),
  KEY `FK_matapelajaran_guru` (`NIP`),
  CONSTRAINT `FK_matapelajaran_guru` FOREIGN KEY (`NIP`) REFERENCES `guru` (`NIP`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sistempenjadwalankelas.matapelajaran: ~19 rows (approximately)
INSERT INTO `matapelajaran` (`IDMataPelajaran`, `NIP`, `Nama`) VALUES
	('1001', '2023101001', 'Dasar-dasar Teknik Komputer dan Jaringan'),
	('1002', '2023101001', 'Komputer dan Jaringan Dasar'),
	('1003', '2023101001', 'Simulasi dan Komunikasi Digital'),
	('1004', '2023101002', 'Sistem Operasi Jaringan'),
	('1005', '2023101002', 'Pemrograman Dasar'),
	('1006', '2023101002', 'Teknik Instalasi Jaringan Komputer'),
	('1007', '2023101003', 'Produk Kreatif dan Kewirausahaan'),
	('1101', '2023101003', 'Administrasi Infrastruktur Jaringan'),
	('1102', '2023101003', 'Administrasi Sistem Jaringan'),
	('1103', '2023101004', 'Teknologi Layanan Jaringan'),
	('1104', '2023101004', 'Sistem Operasi Jaringan Lanjut'),
	('1105', '2023101005', 'Rancang Bangun Jaringan'),
	('1106', '2023101005', 'Pemrograman Dasar Lanjut'),
	('1201', '2023101006', 'Administrasi Jaringan Lanjut'),
	('1202', '2023101006', 'Jaringan Nirkabel dan Komunikasi Data'),
	('1203', '2023101007', 'Keamanan Jaringan'),
	('1204', '2023101007', 'Proyek Akhir'),
	('1205', '2023101008', 'Pemeliharaan Jaringan dan Troubleshooting'),
	('1206', '2023101008', 'Produk Kreatif dan Kewirausahaan Lanjut');

-- Dumping structure for table sistempenjadwalankelas.ruangan
CREATE TABLE IF NOT EXISTS `ruangan` (
  `IDRuangan` varchar(10) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDRuangan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sistempenjadwalankelas.ruangan: ~10 rows (approximately)
INSERT INTO `ruangan` (`IDRuangan`, `Nama`) VALUES
	('02201', 'Anggrek'),
	('02202', 'Melati'),
	('02203', 'Mawar'),
	('02204', 'Lily'),
	('02205', 'Tulip'),
	('02206', 'Kamboja'),
	('02207', 'Sakura'),
	('02208', 'Dahlia'),
	('02209', 'Lavender'),
	('02210', 'Teratai');

-- Dumping structure for table sistempenjadwalankelas.siswa
CREATE TABLE IF NOT EXISTS `siswa` (
  `NIS` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `TanggalLahir` date DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NIS`),
  UNIQUE KEY `username` (`username`),
  CONSTRAINT `FK_siswa_auth_login` FOREIGN KEY (`username`) REFERENCES `auth_login` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sistempenjadwalankelas.siswa: ~15 rows (approximately)
INSERT INTO `siswa` (`NIS`, `username`, `Nama`, `TanggalLahir`, `Alamat`, `Email`, `Foto`) VALUES
	('082023001', 'agus12', 'Agusss', '2024-10-01', 'PHH', 'agus@gmail.com', 'siswa.png'),
	('082023002', 'bagus123', 'Bagus', '2024-10-20', 'PGG', 'bagus@gmail.com', 'siswa.png'),
	('082023003', 'cagus123', 'Cagus', '2024-10-19', 'PKK', 'cagus@gmail..com', 'siswa.png'),
	('082023004', 'dagus123', 'Dagus', '2024-10-23', 'PJJ', 'dagus@gmail.com', 'siswa.png'),
	('082023005', 'eagus123', 'Eagus', '2024-11-05', 'PLL', 'eagus@gmail.com', 'siswa.png'),
	('082023006', 'fagus123', 'Fagus', '2024-11-06', 'PMM', 'fagus@gmail.com', 'siswa.png'),
	('082023007', 'gagus123', 'Gagus', '2024-11-07', 'PNN', 'gagus@gmai.com', 'siswa.png'),
	('082023008', 'hagus123', 'Hagus', '2024-11-08', 'POO', 'hagus@gmail.com', 'siswa.png'),
	('082023009', 'iagus123', 'Iagus', '2024-11-09', 'PPP', 'iagus@gmail.com', 'siswa.png'),
	('082023010', 'jagus123', 'Jagus', '2024-11-10', 'PQQ', 'jagus@gmail.com', 'siswa.png'),
	('082023011', 'kagus123', 'Kagus', '2024-11-11', 'PRR', 'kagus@gmail.com', 'siswa.png'),
	('082023012', 'lagus123', 'Lagus', '2024-11-12', 'PSS', 'lagus@gmail.com', 'siswa.png'),
	('082023013', 'magus123', 'Magus', '2024-11-13', 'PTT', 'magus@gmail.com', 'siswa.png'),
	('082023014', 'nagus123', 'Nagus', '2024-11-14', 'PUU', 'nagus@gmail.com', 'siswa.png'),
	('082023015', 'oagus123', 'Oagus', '2024-11-15', 'PVV', 'oagus@gmail.com', 'siswa.png');

-- Dumping structure for table sistempenjadwalankelas.siswamatapelajaran
CREATE TABLE IF NOT EXISTS `siswamatapelajaran` (
  `IDMataPelajaran` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NIS` varchar(10) DEFAULT NULL,
  KEY `FK_siswamatapelajaran_matapelajaran` (`IDMataPelajaran`),
  KEY `FK_siswamatapelajaran_siswa` (`NIS`),
  CONSTRAINT `FK_siswamatapelajaran_matapelajaran` FOREIGN KEY (`IDMataPelajaran`) REFERENCES `matapelajaran` (`IDMataPelajaran`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_siswamatapelajaran_siswa` FOREIGN KEY (`NIS`) REFERENCES `siswa` (`NIS`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sistempenjadwalankelas.siswamatapelajaran: ~95 rows (approximately)
INSERT INTO `siswamatapelajaran` (`IDMataPelajaran`, `NIS`) VALUES
	('1001', '082023002'),
	('1002', '082023001'),
	('1003', '082023001'),
	('1004', '082023001'),
	('1005', '082023001'),
	('1006', '082023001'),
	('1007', '082023001'),
	('1001', '082023001'),
	('1002', '082023002'),
	('1003', '082023002'),
	('1004', '082023002'),
	('1005', '082023003'),
	('1006', '082023002'),
	('1007', '082023002'),
	('1001', '082023003'),
	('1002', '082023003'),
	('1003', '082023003'),
	('1004', '082023003'),
	('1005', '082023002'),
	('1006', '082023003'),
	('1007', '082023003'),
	('1001', '082023004'),
	('1002', '082023004'),
	('1003', '082023004'),
	('1004', '082023004'),
	('1005', '082023004'),
	('1006', '082023004'),
	('1007', '082023004'),
	('1001', '082023005'),
	('1002', '082023005'),
	('1003', '082023005'),
	('1004', '082023005'),
	('1005', '082023005'),
	('1006', '082023005'),
	('1007', '082023005'),
	('1101', '082023006'),
	('1102', '082023006'),
	('1104', '082023006'),
	('1103', '082023006'),
	('1105', '082023006'),
	('1106', '082023006'),
	('1101', '082023007'),
	('1102', '082023007'),
	('1104', '082023007'),
	('1103', '082023007'),
	('1105', '082023007'),
	('1106', '082023007'),
	('1101', '082023008'),
	('1102', '082023008'),
	('1103', '082023008'),
	('1104', '082023008'),
	('1105', '082023008'),
	('1106', '082023008'),
	('1101', '082023009'),
	('1102', '082023009'),
	('1103', '082023009'),
	('1104', '082023009'),
	('1105', '082023009'),
	('1106', '082023009'),
	('1102', '082023010'),
	('1103', '082023010'),
	('1104', '082023010'),
	('1105', '082023010'),
	('1106', '082023010'),
	('1101', '082023010'),
	('1202', '082023011'),
	('1203', '082023011'),
	('1204', '082023011'),
	('1205', '082023011'),
	('1206', '082023011'),
	('1201', '082023012'),
	('1202', '082023012'),
	('1203', '082023012'),
	('1204', '082023012'),
	('1205', '082023012'),
	('1206', '082023012'),
	('1201', '082023013'),
	('1203', '082023013'),
	('1204', '082023013'),
	('1205', '082023013'),
	('1206', '082023013'),
	('1201', '082023014'),
	('1202', '082023014'),
	('1203', '082023014'),
	('1204', '082023014'),
	('1206', '082023014'),
	('1205', '082023014'),
	('1201', '082023015'),
	('1202', '082023015'),
	('1203', '082023015'),
	('1204', '082023015'),
	('1206', '082023015'),
	('1205', '082023015'),
	('1201', '082023011'),
	('1202', '082023013');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
