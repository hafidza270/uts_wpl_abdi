-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 06:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swu_student_sti202102499`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_mahasiswa`
--

CREATE TABLE `data_mahasiswa` (
  `id` varchar(64) NOT NULL,
  `nim` varchar(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_mahasiswa`
--

INSERT INTO `data_mahasiswa` (`id`, `nim`, `nama`, `alamat`, `email`, `tempat_lahir`, `tgl_lahir`, `agama`, `status`, `foto`) VALUES
('e2ff22ba-0157-11ef-8c91-3c970e37c790', '1234567890', 'Ahmad', 'Jl. Merdeka No. 10, Jakarta', 'ahmad@example.com', 'Jakarta', '2000-01-01', 'Islam', 'Aktif', 'default.jpg'),
('e30195bb-0157-11ef-8c91-3c970e37c790', '2345678901', 'Budi', 'Jl. Pahlawan No. 5, Surabaya', 'budi@example.com', 'Surabaya', '2000-02-02', 'Islam', 'Aktif', 'default.jpg'),
('e3019702-0157-11ef-8c91-3c970e37c790', '3456789012', 'Citra', 'Jl. Diponegoro No. 3, Yogyakarta', 'citra@example.com', 'Yogyakarta', '2000-03-03', 'Hindu', 'Aktif', 'default.jpg'),
('e30197ab-0157-11ef-8c91-3c970e37c790', '4567890123', 'Dewi', 'Jl. Thamrin No. 8, Bandung', 'dewi@example.com', 'Bandung', '2000-04-04', 'Buddha', 'Aktif', 'default.jpg'),
('e3019814-0157-11ef-8c91-3c970e37c790', '5678901234', 'Eko', 'Jl. Sudirman No. 15, Medan', 'eko@example.com', 'Medan', '2000-05-05', 'Kristen', 'Aktif', 'default.jpg'),
('e303210d-0157-11ef-8c91-3c970e37c790', '6789012345', 'Fani', 'Jl. Gatot Subroto No. 20, Semarang', 'fani@example.com', 'Semarang', '2000-06-06', 'Islam', 'Tidak Aktif', 'default.jpg'),
('e3032233-0157-11ef-8c91-3c970e37c790', '7890123456', 'Gita', 'Jl. Ahmad Yani No. 12, Makassar', 'gita@example.com', 'Makassar', '2000-07-07', 'Kristen', 'Tidak Aktif', 'default.jpg'),
('e30322a5-0157-11ef-8c91-3c970e37c790', '8901234567', 'Hadi', 'Jl. Diponegoro No. 25, Palembang', 'hadi@example.com', 'Palembang', '2000-08-08', 'Islam', 'Aktif', 'default.jpg'),
('e303230e-0157-11ef-8c91-3c970e37c790', '9012345678', 'Indah', 'Jl. Gajah Mada No. 30, Malang', 'indah@example.com', 'Malang', '2000-09-09', 'Islam', 'Tidak Aktif', 'default.jpg'),
('e3032372-0157-11ef-8c91-3c970e37c790', '0123456789', 'Joko', 'Jl. Jenderal Sudirman No. 35, Denpasar', 'joko@example.com', 'Denpasar', '2000-10-10', 'Hindu', 'Aktif', 'default.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
