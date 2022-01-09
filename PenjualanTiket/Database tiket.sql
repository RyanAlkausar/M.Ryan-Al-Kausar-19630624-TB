-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 08, 2022 at 01:08 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tiket`
--

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `Nama` varchar(20) NOT NULL,
  `Pesawat` varchar(30) NOT NULL,
  `Tujuan` varchar(50) NOT NULL,
  `Kelas` varchar(11) NOT NULL,
  `Tanggal` varchar(15) NOT NULL,
  `Jam` varchar(12) NOT NULL,
  `Harga` int(50) NOT NULL,
  `Jumlah_Tiket` int(15) NOT NULL,
  `Total` int(50) NOT NULL,
  PRIMARY KEY (`Nama`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`Nama`, `Pesawat`, `Tujuan`, `Kelas`, `Tanggal`, `Jam`, `Harga`, `Jumlah_Tiket`, `Total`) VALUES
('Ryan', 'Garuda', 'Banjarmasin - Jakarta', 'Vip', '01-01-2022', '12.00', 1000000, 1, 1000000),
('Salfan', 'Lion Air', 'Banjarmasin - Jakarta', 'Vip', '01-01-2-22', '11.00', 50000, 2, 100000),
('Candra', 'Sriwijaya', 'Banjarmasin - Jakarta', 'Vip', '01-01-2022', '12.00', 1000000, 1, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `penumpang`
--

CREATE TABLE IF NOT EXISTS `penumpang` (
  `Nama` varchar(20) NOT NULL,
  `Jenis_Kelamin` varchar(10) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No_Telp` int(12) NOT NULL,
  PRIMARY KEY (`Nama`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penumpang`
--

INSERT INTO `penumpang` (`Nama`, `Jenis_Kelamin`, `Alamat`, `No_Telp`) VALUES
('Ryan', 'Laki-Laki', 'Banjarmasin', 896915307);

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE IF NOT EXISTS `tiket` (
  `Nama` varchar(10) NOT NULL,
  `Pesawat` varchar(30) NOT NULL,
  `Tujuan` varchar(50) NOT NULL,
  `Waktu` varchar(12) NOT NULL,
  `Keterangan` varchar(100) NOT NULL,
  PRIMARY KEY (`Nama`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`Nama`, `Pesawat`, `Tujuan`, `Waktu`, `Keterangan`) VALUES
('Ryan', 'Garuda', 'Banjarmasin - Jakarta', 'Ditentukan', 'Berangkat'),
('Salfan', 'Lion Air', 'Banjarmasin - Bali', 'Ditentukan', 'Penundaan');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
