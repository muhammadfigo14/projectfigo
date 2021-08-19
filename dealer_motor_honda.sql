-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Agu 2021 pada 11.53
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dealer_motor_honda`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dealer motor honda`
--

CREATE TABLE `dealer motor honda` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dealer motor honda`
--

INSERT INTO `dealer motor honda` (`id_karyawan`, `nama_karyawan`) VALUES
(1, 'Figo'),
(2, 'Yosi'),
(3, 'Javin'),
(4, 'Rio'),
(5, 'Rizky'),
(6, 'Reza'),
(7, 'Gesang'),
(8, 'Didik'),
(9, 'Rian'),
(10, 'Rendi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `motor`
--

CREATE TABLE `motor` (
  `id_motor` int(11) NOT NULL,
  `nama_motor` varchar(50) NOT NULL,
  `harga_motor` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `motor`
--

INSERT INTO `motor` (`id_motor`, `nama_motor`, `harga_motor`) VALUES
(1, 'Beat cbs', 17030000),
(2, 'Beat cbs iss', 17700000),
(3, 'Beat deluxe cbs iss', 17800000),
(4, 'Vario 125 cbs', 20915000),
(5, 'Vario 125 cbs iss', 21675000),
(6, 'Scoopy sporty', 20470000),
(7, 'Scoopy Prestige', 21265000),
(8, 'Pcx cbs', 30865000),
(9, 'Pcx Abs', 34270000),
(10, 'Adv cbs', 35625000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_motor` int(11) NOT NULL,
  `total_harga` int(60) NOT NULL,
  `id_karyawan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_motor`, `total_harga`, `id_karyawan`) VALUES
(1, 1, 17030000, 1),
(2, 2, 17700000, 1),
(3, 4, 20915000, 1),
(4, 6, 20470000, 1),
(5, 8, 30865000, 1),
(6, 10, 35625000, 1),
(7, 3, 17800000, 1),
(8, 5, 21675000, 1),
(9, 7, 21265000, 1),
(10, 9, 34270000, 1),
(11, 2, 17700000, 2),
(12, 4, 20915000, 2),
(13, 6, 20470000, 2),
(14, 8, 30865000, 2),
(15, 10, 35625000, 2),
(16, 3, 17800000, 2),
(17, 5, 21675000, 2),
(18, 7, 21265000, 2),
(19, 9, 34270000, 2),
(20, 2, 17700000, 2),
(21, 5, 21675000, 3),
(22, 3, 17800000, 3),
(23, 1, 17030000, 3),
(24, 9, 34270000, 3),
(25, 7, 21265000, 3),
(26, 6, 20470000, 3),
(27, 4, 20915000, 3),
(28, 2, 17700000, 3),
(29, 8, 30865000, 3),
(30, 10, 35625000, 3),
(31, 5, 21675000, 4),
(32, 3, 17800000, 4),
(33, 1, 17030000, 4),
(34, 9, 34270000, 4),
(35, 7, 21265000, 4),
(36, 6, 20470000, 4),
(37, 4, 20915000, 4),
(38, 2, 17700000, 4),
(39, 8, 30865000, 4),
(40, 10, 35625000, 4),
(41, 5, 21675000, 5),
(42, 4, 17800000, 5),
(43, 1, 17030000, 5),
(44, 9, 34270000, 5),
(45, 7, 21265000, 5),
(46, 6, 20470000, 5),
(47, 4, 20915000, 5),
(48, 2, 17700000, 5),
(49, 8, 30865000, 5),
(50, 10, 35625000, 5),
(51, 5, 21675000, 6),
(52, 4, 17800000, 6),
(53, 1, 17030000, 6),
(54, 9, 34270000, 6),
(55, 7, 21265000, 6),
(56, 6, 20470000, 6),
(57, 4, 20915000, 6),
(58, 2, 17700000, 6),
(59, 8, 30865000, 6),
(60, 10, 35625000, 6),
(61, 5, 21675000, 7),
(62, 4, 17800000, 7),
(63, 1, 17030000, 7),
(64, 9, 34270000, 7),
(65, 7, 21265000, 7),
(66, 6, 20470000, 7),
(67, 4, 20915000, 7),
(68, 2, 17700000, 7),
(69, 8, 30865000, 7),
(70, 10, 35625000, 7),
(71, 5, 21675000, 8),
(72, 4, 17800000, 8),
(73, 1, 17030000, 8),
(74, 9, 34270000, 8),
(75, 7, 21265000, 8),
(76, 6, 20470000, 8),
(77, 4, 20915000, 8),
(78, 2, 17700000, 8),
(79, 8, 30865000, 8),
(80, 10, 35625000, 8),
(81, 5, 21675000, 9),
(82, 4, 17800000, 9),
(83, 1, 17030000, 9),
(84, 9, 34270000, 9),
(85, 7, 21265000, 9),
(86, 6, 20470000, 9),
(87, 4, 20915000, 9),
(88, 2, 17700000, 9),
(89, 8, 30865000, 9),
(90, 10, 35625000, 9),
(91, 5, 21675000, 10),
(92, 4, 17800000, 10),
(93, 1, 17030000, 10),
(94, 9, 34270000, 10),
(95, 7, 21265000, 10),
(96, 6, 20470000, 10),
(97, 4, 20915000, 10),
(98, 2, 17700000, 10),
(99, 8, 30865000, 10),
(100, 10, 35625000, 10);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dealer motor honda`
--
ALTER TABLE `dealer motor honda`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `motor`
--
ALTER TABLE `motor`
  ADD PRIMARY KEY (`id_motor`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dealer motor honda`
--
ALTER TABLE `dealer motor honda`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `motor`
--
ALTER TABLE `motor`
  MODIFY `id_motor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
