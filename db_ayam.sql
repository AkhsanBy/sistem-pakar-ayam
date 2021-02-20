-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2021 pada 04.47
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ayam`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_analisa_hasil`
--

CREATE TABLE `tbl_analisa_hasil` (
  `kd_analisa` int(11) NOT NULL,
  `kd_penyakit` varchar(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kd_sesi` int(11) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gejala`
--

CREATE TABLE `tbl_gejala` (
  `kd_gejala` varchar(11) NOT NULL,
  `nama_gejala` longtext DEFAULT NULL,
  `pertanyaan` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_gejala`
--

INSERT INTO `tbl_gejala` (`kd_gejala`, `nama_gejala`, `pertanyaan`) VALUES
('GJL01', 'Kesulitan bernapas', 'Apakah ayam mengalami kesulitan bernapas?'),
('GJL02', 'Ngorok', 'Apakah ayam ngorok saat tidur?'),
('GJL03', 'Lesu', 'Apakah ayam terlihat lesu?'),
('GJL04', 'Lemah', 'Apakah ayam telihat lemah?'),
('GJL05', 'Bulu Kusam', 'Apakah ayam memiliki bulu yang kusam?'),
('GJL06', 'Nafsu makan menurun', 'Apakah nafsu makan ayam menurun?'),
('GJL07', 'Ayam berputar-putar', 'Apakah ayam berputar-putar?'),
('GJL08', 'Jengger & pial kebiruan', 'Apakah jengger & pial pada ayam berwarna kebiruan?'),
('GJL09', 'Kurus & bobot menurun', 'Apakah ayam berbadan kurus & bobotnya menurun?'),
('GJL10', 'Berak bercampur darah', 'Apakah ayam mengeluarkan berak yang bercampur darah?'),
('GJL11', 'Mata berair', 'Apakah mata ayam berair?'),
('GJL12', 'Berak berwarna putih', 'Apakah ayam mengeluarkan berak berwarna putih?'),
('GJL13', 'Keluar cairan dari hidung', 'Apakah ayam mengeluarkan cairan dari hidung?'),
('GJL14', 'Pincang', 'Apakah kaki ayam pincang?'),
('GJL15', 'Kelumpuhan', 'Apakah ayam mengalami kelumpuhan?'),
('GJL16', 'Kelopak mata lengket', 'Apakah ayam memiliki kelopak mata yang lengket?'),
('GJL17', 'Ayam selalu gelisah', 'Apakah ayam selalu gelisah setiap saat?'),
('GJL18', 'Penurunan produksi telur', 'Apakah produksi telur ayam serasa menurun?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kaidah`
--

CREATE TABLE `tbl_kaidah` (
  `kd_penyakit` varchar(11) DEFAULT NULL,
  `kd_gejala` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kaidah`
--

INSERT INTO `tbl_kaidah` (`kd_penyakit`, `kd_gejala`) VALUES
('P1', 'GJL01'),
('P1', 'GJL02'),
('P1', 'GJL03'),
('P1', 'GJL04'),
('P1', 'GJL05'),
('P1', 'GJL06'),
('P1', 'GJL07'),
('P1', 'GJL08'),
('P2', 'GJL03'),
('P2', 'GJL04'),
('P2', 'GJL05'),
('P2', 'GJL06'),
('P2', 'GJL09'),
('P3', 'GJL03'),
('P3', 'GJL04'),
('P3', 'GJL05'),
('P3', 'GJL06'),
('P3', 'GJL09'),
('P3', 'GJL10'),
('P4', 'GJL03'),
('P4', 'GJL04'),
('P4', 'GJL05'),
('P4', 'GJL06'),
('P4', 'GJL11'),
('P5', 'GJL03'),
('P5', 'GJL04'),
('P5', 'GJL05'),
('P5', 'GJL06'),
('P5', 'GJL09'),
('P5', 'GJL12'),
('P5', 'GJL13'),
('P6', 'GJL06'),
('P6', 'GJL09'),
('P6', 'GJL14'),
('P6', 'GJL15'),
('P7', 'GJL06'),
('P7', 'GJL09'),
('P7', 'GJL13'),
('P7', 'GJL16'),
('P7', 'GJL17'),
('P7', 'GJL18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penyakit`
--

CREATE TABLE `tbl_penyakit` (
  `kd_penyakit` varchar(11) NOT NULL,
  `nama_penyakit` varchar(100) NOT NULL,
  `keterangan` longtext NOT NULL,
  `solusi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_penyakit`
--

INSERT INTO `tbl_penyakit` (`kd_penyakit`, `nama_penyakit`, `keterangan`, `solusi`) VALUES
('P1', 'Penyakit Tetelo (Newcastle Disease)', 'Disebabkan oleh virus dari golongan paramyxoviru', 'Sanitasi kandang, vaksinasi ND secara berkala'),
('P2', 'Penyakit Cacing', 'Disebabkan oleh cacing', 'Ayam diberi obat cacing dan lakukan sanitasi kandang'),
('P3', 'Penyakit Berak Darah (Coccsidiosis)', 'Disebabkan oleh koksidia (protozoa)', 'Menggunakan preparat sulfa dan koksidiostat dalam pakan dan air minum serta melakukan sanitasi kandang, jauhkan ayam yang sakit dengan kelompok yang sehat'),
('P4', 'Penyakit Mata (Oxypiurasis)', 'Disebabkan oleh koksidia (protozoa)', 'Menggunakan preparat antibiotic, lakukan sanitasi kandang, dan hindarikan kontak langsung dengan ayam yang sehat'),
('P5', 'Penyakit Berak putih (Pullorum)', 'Disebabkan oleh bakteri (Salmonella pullorum)', 'Menggunakan preparat antibiotic terramicyn, oksitetrasiklin dan pemberian vitamin, serta lakukan sanitasi kandang, jauhkan ayam yang sakit dengan ayam yang sehat'),
('P6', 'Penyakit Bengkak persendian tulang kaki', 'Disebabkan karena kekurangan kalsium dan vitamin B kompleks', 'Sanitasi kandang, memberikan suplemen kalsium dan pemberian vitamin B complex dalam pakan'),
('P7', 'Penyakit Pilek (Snot)', 'Disebabkan oleh bakteri Hemophillus gallinarum', 'Pemberian obat dari golongan sulfa dan antibiotika sesuai dosis, serta lakukan sanitasi kandang, jauhkan ayam yang terkena dengan ayam yang sehat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sesi`
--

CREATE TABLE `tbl_sesi` (
  `kd_sesi` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL DEFAULT '0',
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_analisa_hasil`
--
ALTER TABLE `tbl_analisa_hasil`
  ADD PRIMARY KEY (`kd_analisa`);

--
-- Indeks untuk tabel `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  ADD PRIMARY KEY (`kd_gejala`);

--
-- Indeks untuk tabel `tbl_penyakit`
--
ALTER TABLE `tbl_penyakit`
  ADD PRIMARY KEY (`kd_penyakit`);

--
-- Indeks untuk tabel `tbl_sesi`
--
ALTER TABLE `tbl_sesi`
  ADD PRIMARY KEY (`kd_sesi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_analisa_hasil`
--
ALTER TABLE `tbl_analisa_hasil`
  MODIFY `kd_analisa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_sesi`
--
ALTER TABLE `tbl_sesi`
  MODIFY `kd_sesi` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
