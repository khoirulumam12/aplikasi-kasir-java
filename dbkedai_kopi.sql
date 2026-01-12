-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2025 pada 06.45
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkedai_kopi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dataitem`
--

CREATE TABLE `tbl_dataitem` (
  `no` int(20) NOT NULL,
  `nama_item` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_dataitem`
--

INSERT INTO `tbl_dataitem` (`no`, `nama_item`, `kategori`, `harga`) VALUES
(1, 'Cappucino', 'Minuman', '15000'),
(4, 'Nasi Goreng Selimut', 'Makanan', '22000'),
(5, 'Kopi Tubruk', 'Minuman', '5000'),
(6, 'Chocolate', 'Minuman', '18000'),
(8, 'Nasi Ayam Bakar', 'Makanan', '20000'),
(9, 'Nasi Ayam Goreng', 'Makanan', '20000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_deposit`
--

CREATE TABLE `tbl_deposit` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengeluaran`
--

CREATE TABLE `tbl_pengeluaran` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_pengeluaran`
--

INSERT INTO `tbl_pengeluaran` (`id`, `tanggal`, `keterangan`, `jumlah`) VALUES
(1, '2025-12-17', 'Ayam 10 Kg', 350000),
(2, '2025-12-17', 'Beras', 200000),
(3, '2025-12-17', 'Kopi Tubruk', 100000),
(4, '2025-12-17', 'Cappucino', 100000),
(5, '2025-12-17', 'Chocolate', 150000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penjualan`
--

CREATE TABLE `tbl_penjualan` (
  `no_faktur` varchar(20) NOT NULL,
  `tanggal` varchar(12) NOT NULL,
  `item` varchar(70) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `jumlah` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_penjualan`
--

INSERT INTO `tbl_penjualan` (`no_faktur`, `tanggal`, `item`, `qty`, `harga`, `jumlah`) VALUES
('INV00001', '16-12-2025', 'Cappucino', '4', '25.000', '100.000'),
('INV00001', '16-12-2025', 'Nasi Goreng', '4', '25.000', '100.000'),
('INV00001', '16-12-2025', 'Chocolate', '4', '18.000', '72.000'),
('INV00001', '16-12-2025', 'Ayam Bakar', '4', '19.000', '76.000'),
('INV00002', '16-12-2025', 'Chocolate', '3', '18.000', '54.000'),
('INV00002', '16-12-2025', 'Ayam Bakar', '3', '19.000', '57.000'),
('INV00002', '16-12-2025', 'Nasi Goreng', '3', '25.000', '75.000'),
('INV00003', '16-12-2025', 'Chocolate', '2', '18.000', '36.000'),
('INV00003', '16-12-2025', 'Ayam Bakar', '2', '19.000', '38.000'),
('INV00003', '16-12-2025', 'Kopi Tubruk', '2', '7.000', '14.000'),
('INV00004', '17-12-2025', 'Nasi Goreng', '5', '25.000', '125.000'),
('INV00005', '17-12-2025', 'Cappucino', '5', '25.000', '125.000'),
('INV00006', '20-12-2025', 'Cappucino', '5', '15.000', '75.000'),
('INV00007', '20-12-2025', 'Kopi Tubruk', '1', '5.000', '5.000'),
('INV00007', '20-12-2025', 'Chocolate', '1', '18.000', '18.000'),
('INV00008', '20-12-2025', 'Nasi Goreng Selimut', '1', '22.000', '22.000'),
('INV00008', '20-12-2025', 'Kopi Tubruk', '1', '5.000', '5.000'),
('INV00008', '20-12-2025', 'Chocolate', '1', '18.000', '18.000'),
('INV00009', '20-12-2025', 'Kopi Tubruk', '1', '5.000', '5.000'),
('INV00009', '20-12-2025', 'Nasi Goreng Selimut', '1', '22.000', '22.000'),
('INV00009', '20-12-2025', 'Nasi Ayam Bakar', '1', '20.000', '20.000'),
('INV00010', '20-12-2025', 'Cappucino', '1', '15.000', '15.000'),
('INV00010', '20-12-2025', 'Kopi Tubruk', '1', '5.000', '5.000'),
('INV00010', '20-12-2025', 'Nasi Ayam Goreng', '1', '20.000', '20.000'),
('INV00011', '20-12-2025', 'Cappucino', '1', '15.000', '15.000'),
('INV00011', '20-12-2025', 'Nasi Goreng Selimut', '1', '22.000', '22.000'),
('INV00011', '20-12-2025', 'Kopi Tubruk', '1', '5.000', '5.000'),
('INV00012', '20-12-2025', 'Nasi Goreng Selimut', '1', '22.000', '22.000'),
('INV00012', '20-12-2025', 'Kopi Tubruk', '1', '5.000', '5.000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_dataitem`
--
ALTER TABLE `tbl_dataitem`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `tbl_deposit`
--
ALTER TABLE `tbl_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_pengeluaran`
--
ALTER TABLE `tbl_pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_dataitem`
--
ALTER TABLE `tbl_dataitem`
  MODIFY `no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_deposit`
--
ALTER TABLE `tbl_deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengeluaran`
--
ALTER TABLE `tbl_pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
