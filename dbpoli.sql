-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Bulan Mei 2021 pada 03.24
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpoli`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bmi_pasien`
--

CREATE TABLE `bmi_pasien` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT current_timestamp(),
  `berat` double DEFAULT NULL,
  `tinggi` double DEFAULT NULL,
  `bmi` double DEFAULT NULL,
  `status_bmi` varchar(45) DEFAULT NULL,
  `catatan` varchar(100) DEFAULT NULL,
  `pasien_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bmi_pasien`
--

INSERT INTO `bmi_pasien` (`id`, `tanggal`, `berat`, `tinggi`, `bmi`, `status_bmi`, `catatan`, `pasien_id`) VALUES
(6, '2020-10-01', 64, 165, 22, 'Normal', 'Tetap Jaga Kesehatan', 1),
(8, '2020-10-01', 64, 175, 22, 'Normal', 'Tetap Jaga Kesehatan', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `kode` varchar(6) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `tmp_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id`, `kode`, `nama`, `gender`, `tmp_lahir`, `tgl_lahir`, `email`) VALUES
(1, 'P00001', 'Dewi Gita', 'P', 'Jakarta', '2000-04-03', 'dewi.gita@gmail.com'),
(2, 'P00003', 'Armand Maulana', 'L', 'Jakarta', '1976-11-03', 'armina@gmail.com'),
(3, 'P00004', 'Sabiq Muhammad', 'L', 'Jakarta', '2002-10-30', 'sabiqmuhammad98@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bmi_pasien`
--
ALTER TABLE `bmi_pasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasien_id` (`pasien_id`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bmi_pasien`
--
ALTER TABLE `bmi_pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bmi_pasien`
--
ALTER TABLE `bmi_pasien`
  ADD CONSTRAINT `bmi_pasien_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
