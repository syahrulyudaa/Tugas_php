-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 10:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(10) NOT NULL,
  `username_admin` varchar(30) NOT NULL,
  `password_admin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username_admin`, `password_admin`) VALUES
('A01', 'aku@gmail.com', 12345),
('A02', 'kamu@gmail.com', 67890),
('A03', 'dia@gmail.com', 9876),
('A04', 'mereka@gmail.com', 987654);

-- --------------------------------------------------------

--
-- Table structure for table `detail_admin`
--

CREATE TABLE `detail_admin` (
  `id_detail` int(100) NOT NULL,
  `id_admin` varchar(10) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `alamat_admin` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(2) NOT NULL,
  `no_tlp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_admin`
--

INSERT INTO `detail_admin` (`id_detail`, `id_admin`, `nama_admin`, `alamat_admin`, `jenis_kelamin`, `no_tlp`) VALUES
(1, 'A01', 'aku', 'jakarta', 'P', '087123456789'),
(2, 'A02', 'kamu', 'bandung', 'L', '087987654321'),
(3, 'A04', 'mereka', 'bekasi', 'L', '098765');

-- --------------------------------------------------------

--
-- Table structure for table `kostumer`
--

CREATE TABLE `kostumer` (
  `id_kostumer` varchar(10) NOT NULL,
  `nama_kostumer` varchar(30) NOT NULL,
  `alamat_kostumer` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kostumer`
--

INSERT INTO `kostumer` (`id_kostumer`, `nama_kostumer`, `alamat_kostumer`) VALUES
('K01', 'syahrul', 'bandung'),
('K02', 'agung', 'jakarta'),
('K03', 'dendeng', 'bogor'),
('K04', 'bagus', 'madiun'),
('K05', 'beni', 'jayapura'),
('K06', 'yusuf', 'sulawesi');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` varchar(10) NOT NULL,
  `merk_mobil` varchar(30) NOT NULL,
  `mobi_plat` varchar(12) NOT NULL,
  `harga` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `merk_mobil`, `mobi_plat`, `harga`) VALUES
('M01', 'xenia', 'BD0988', '50000'),
('M02', 'avanza', 'BC09876', '100000'),
('M03', 'toyota', 'BC0675', '40000'),
('M04', 'honda', 'MN0765', '600000'),
('M05', 'xenia', 'BD98765', '30000'),
('M06', 'honda', 'MN0765', '90999'),
('M07', 'suzuki', 'BD09876', '700000'),
('M08', 'suzuki', 'BD98765', '550000');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(10) NOT NULL,
  `id_mobil` varchar(10) NOT NULL,
  `id_kostumer` varchar(10) NOT NULL,
  `id_admin` varchar(10) NOT NULL,
  `tanggal_sewa` datetime NOT NULL,
  `tanggal_kembali` datetime NOT NULL,
  `denda` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_mobil`, `id_kostumer`, `id_admin`, `tanggal_sewa`, `tanggal_kembali`, `denda`) VALUES
(1, 'M01', 'K01', 'A01', '2023-03-29 18:48:59', '2023-04-06 23:48:59', '200000'),
(2, 'M02', 'K01', 'A02', '2023-03-29 18:48:59', '2023-03-30 23:48:59', '70000'),
(4, 'M03', 'K04', 'A03', '2023-04-03 17:23:11', '2023-05-03 17:23:11', '500000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `detail_admin`
--
ALTER TABLE `detail_admin`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `kostumer`
--
ALTER TABLE `kostumer`
  ADD PRIMARY KEY (`id_kostumer`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_kostumer` (`id_kostumer`),
  ADD KEY `id_mobil` (`id_mobil`),
  ADD KEY `admin_id` (`id_admin`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_admin`
--
ALTER TABLE `detail_admin`
  ADD CONSTRAINT `detail_admin_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_kostumer`) REFERENCES `kostumer` (`id_kostumer`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id_mobil`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
