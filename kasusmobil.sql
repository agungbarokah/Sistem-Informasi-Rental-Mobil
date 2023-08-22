-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Agu 2023 pada 08.32
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasusmobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(255) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_username`, `admin_password`) VALUES
(1, 'Agung Barokah', 'admin', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kostumer`
--

CREATE TABLE `kostumer` (
  `kostumer_id` int(11) NOT NULL,
  `kostumer_nama` varchar(255) NOT NULL,
  `kostumer_alamat` text NOT NULL,
  `kostumer_jk` varchar(10) NOT NULL,
  `kostumer_hp` varchar(20) NOT NULL,
  `kostumer_ktp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kostumer`
--

INSERT INTO `kostumer` (`kostumer_id`, `kostumer_nama`, `kostumer_alamat`, `kostumer_jk`, `kostumer_hp`, `kostumer_ktp`) VALUES
(5, 'Agung Barokah', 'Jl. Teluk Angsan 17', 'L', '089506939968', '6180183830186621'),
(6, 'Galan Abdillah Zahran', 'Jl. Perum Pelni', 'L', '087668916531', '61801838301813221');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `mobil_id` int(11) NOT NULL,
  `mobil_merk` varchar(30) NOT NULL,
  `mobil_plat` varchar(20) NOT NULL,
  `mobil_warna` varchar(30) NOT NULL,
  `mobil_tahun` int(11) NOT NULL,
  `mobil_status` int(11) NOT NULL COMMENT '1=tersedia, 2=di pinjam'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`mobil_id`, `mobil_merk`, `mobil_plat`, `mobil_warna`, `mobil_tahun`, `mobil_status`) VALUES
(1, 'Honda Jazz', 'B 4217 HHH', 'Hitam', 2010, 1),
(12, 'Honda Brio', 'B 4770 HHI', 'Putih', 2011, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_karyawan` int(11) NOT NULL,
  `transaksi_kostumer` int(11) NOT NULL,
  `transaksi_mobil` int(11) NOT NULL,
  `transaksi_tgl_pinjam` date NOT NULL,
  `transaksi_tgl_kembali` date NOT NULL,
  `transaksi_hargaperhari` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL,
  `transaksi_denda` int(11) NOT NULL,
  `transaksi_tgl` date NOT NULL,
  `transaksi_totaldenda` int(11) NOT NULL,
  `transaksi_status` int(11) NOT NULL,
  `transaksi_tgldikembalikan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_karyawan`, `transaksi_kostumer`, `transaksi_mobil`, `transaksi_tgl_pinjam`, `transaksi_tgl_kembali`, `transaksi_hargaperhari`, `transaksi_harga`, `transaksi_denda`, `transaksi_tgl`, `transaksi_totaldenda`, `transaksi_status`, `transaksi_tgldikembalikan`) VALUES
(19, 1, 6, 1, '2022-06-18', '2022-06-20', 100000, 200000, 50000, '2022-06-18', 0, 1, '2022-06-20'),
(20, 1, 5, 12, '2022-06-20', '2022-06-25', 100000, 500000, 50000, '2022-06-18', 250000, 1, '2022-06-30'),
(22, 1, 5, 1, '2022-06-21', '2022-06-22', 1000, 1000, 500, '2022-06-18', 500, 1, '2022-06-23'),
(23, 1, 6, 12, '2022-06-20', '2022-06-25', 50000, 250000, 10000, '2022-06-18', 0, 0, '0000-00-00'),
(24, 1, 5, 1, '2022-06-01', '2022-06-30', 100000, 2900000, 50000, '2022-06-23', 0, 1, '2022-06-30');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `kostumer`
--
ALTER TABLE `kostumer`
  ADD PRIMARY KEY (`kostumer_id`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`mobil_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kostumer`
--
ALTER TABLE `kostumer`
  MODIFY `kostumer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `mobil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
