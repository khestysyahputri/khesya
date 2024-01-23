-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 23 Jan 2024 pada 06.49
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bakso_solo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dt_menu`
--

CREATE TABLE `dt_menu` (
  `id_menu` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_menu` enum('Makanan','Minuman') NOT NULL,
  `jumlah` int(19) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `menu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dt_menu`
--

INSERT INTO `dt_menu` (`id_menu`, `nama`, `jenis_menu`, `jumlah`, `harga`, `menu`) VALUES
(1, '<b>Bakso Kuah Biasa</b>', 'Minuman', 3, 'Rp. 35.000,-', '<center><img src=\"../img/ce1.png\" height=\"100px\" width=\"150px\"></center>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dt_order`
--

CREATE TABLE `dt_order` (
  `id_order` int(11) NOT NULL,
  `nama` enum('Bakso Kuah Biasa','Bakso Rusuk Jos','Bakso Kecil Biasa','Bakso Mie Pangsit','Bakso Tulang Iga','Bakso Beranak','Nasi Goreng Bakso','BakMie Kuah','Bakso Beranak + Telur Puyuh','Es Warna Warni','Markisa Juice','coffe Ice Milk','Boba Coffe Ice Milk','Lemon Ice Tea') NOT NULL,
  `jumlah` int(100) NOT NULL,
  `total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dt_order`
--

INSERT INTO `dt_order` (`id_order`, `nama`, `jumlah`, `total`) VALUES
(1, 'Bakso Kuah Biasa', 2, 'Rp. 70.000,-'),
(2, 'Markisa Juice', 1, 'Rp. 10.000,-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dt_pelanggan`
--

CREATE TABLE `dt_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(29) NOT NULL,
  `no_hp` varchar(29) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dt_pelanggan`
--

INSERT INTO `dt_pelanggan` (`id_pelanggan`, `nama`, `email`, `no_hp`, `alamat`) VALUES
(1, 'Khesty', 'Khesty@gmail.com', '083121221', 'jalan la'),
(3, 'Bakti Purnomo', 'baktip@gmail.com', '0899999', 'belgia selatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dt_saran`
--

CREATE TABLE `dt_saran` (
  `id_saran` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(29) NOT NULL,
  `kritik` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dt_saran`
--

INSERT INTO `dt_saran` (`id_saran`, `nama`, `email`, `kritik`) VALUES
(2, 'Khesty', 'Khesty@gmail.com', 'enak banget nget ngett');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_user` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_user`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(4, 'user', 'ee11cbb19052e40b07aac0ca060c23ee');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dt_menu`
--
ALTER TABLE `dt_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `dt_order`
--
ALTER TABLE `dt_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indeks untuk tabel `dt_pelanggan`
--
ALTER TABLE `dt_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `dt_saran`
--
ALTER TABLE `dt_saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dt_menu`
--
ALTER TABLE `dt_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `dt_order`
--
ALTER TABLE `dt_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `dt_pelanggan`
--
ALTER TABLE `dt_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `dt_saran`
--
ALTER TABLE `dt_saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
