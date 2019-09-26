-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26 Sep 2019 pada 02.27
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendaftaran`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'Ken', 'sanjaya21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_pendaftaran`
--

CREATE TABLE `form_pendaftaran` (
  `id_formulir` int(10) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `gender_siswa` enum('Laki-Laki','Perempuan') NOT NULL,
  `t_bdn_siswa` varchar(10) NOT NULL,
  `b_bdn_siswa` varchar(10) NOT NULL,
  `ttl_siswa` varchar(50) NOT NULL,
  `warga_siswa` varchar(20) NOT NULL,
  `agama_siswa` enum('Islam','Kristen','Hindu','Buddha','Katolik','Konghucu') NOT NULL,
  `saudara_siswa` varchar(10) NOT NULL,
  `alamat_siswa` varchar(200) NOT NULL,
  `hp_siswa` varchar(14) NOT NULL,
  `tinggal_siswa` enum('Orangtua','Saudara','Asrama','Kost') NOT NULL,
  `asal_sklh_siswa` varchar(50) NOT NULL,
  `alamat_sklh_siswa` varchar(100) NOT NULL,
  `tanggal_no_ijasah` varchar(50) NOT NULL,
  `nama_sklh_pindahan` varchar(50) NOT NULL,
  `alasan_sklh_pindahan` varchar(200) NOT NULL,
  `diterima_dikls` varchar(6) NOT NULL,
  `jurusan_siswa` enum('TKJ','RPL','MM') NOT NULL,
  `diterima_tgl` varchar(50) NOT NULL,
  `nama_ayh` varchar(20) NOT NULL,
  `ttl_ayah` varchar(50) NOT NULL,
  `warga_ayah` varchar(20) NOT NULL,
  `agama_ayah` enum('-','Islam','Kristen','Katolik','Hindu','Buddha','Konghucu') NOT NULL,
  `pendidikan_ayh` varchar(50) NOT NULL,
  `pekerjaan_ayh` varchar(50) NOT NULL,
  `gaji_ayh` varchar(20) NOT NULL,
  `hp_ayh` varchar(14) NOT NULL,
  `alamat_ayh` varchar(200) NOT NULL,
  `nama_ibu` varchar(20) NOT NULL,
  `ttl_ibu` varchar(50) NOT NULL,
  `warga_ibu` varchar(20) NOT NULL,
  `agama_ibu` enum('-','Islam','Kristen','Katolik','Hindu','Buddha','Konghucu') NOT NULL,
  `pendidikan_ibu` varchar(20) NOT NULL,
  `pekerjaan_ibu` varchar(200) NOT NULL,
  `gaji_ibu` varchar(20) NOT NULL,
  `hp_ibu` varchar(14) NOT NULL,
  `alamat_ibu` varchar(200) NOT NULL,
  `nama_wali` varchar(20) NOT NULL,
  `ttl_wali` varchar(50) NOT NULL,
  `warga_wali` varchar(20) NOT NULL,
  `agama_wali` enum('-','Islam','Kristen','Katolik','Hindu','Buddha','Konghucu') NOT NULL,
  `pendidikan_wali` varchar(20) NOT NULL,
  `pekerjaan_wali` varchar(50) NOT NULL,
  `gaji_wali` varchar(20) NOT NULL,
  `hp_wali` varchar(14) NOT NULL,
  `alamat_wali` varchar(200) NOT NULL,
  `cover` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `form_pendaftaran`
--

INSERT INTO `form_pendaftaran` (`id_formulir`, `nama_siswa`, `gender_siswa`, `t_bdn_siswa`, `b_bdn_siswa`, `ttl_siswa`, `warga_siswa`, `agama_siswa`, `saudara_siswa`, `alamat_siswa`, `hp_siswa`, `tinggal_siswa`, `asal_sklh_siswa`, `alamat_sklh_siswa`, `tanggal_no_ijasah`, `nama_sklh_pindahan`, `alasan_sklh_pindahan`, `diterima_dikls`, `jurusan_siswa`, `diterima_tgl`, `nama_ayh`, `ttl_ayah`, `warga_ayah`, `agama_ayah`, `pendidikan_ayh`, `pekerjaan_ayh`, `gaji_ayh`, `hp_ayh`, `alamat_ayh`, `nama_ibu`, `ttl_ibu`, `warga_ibu`, `agama_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `gaji_ibu`, `hp_ibu`, `alamat_ibu`, `nama_wali`, `ttl_wali`, `warga_wali`, `agama_wali`, `pendidikan_wali`, `pekerjaan_wali`, `gaji_wali`, `hp_wali`, `alamat_wali`, `cover`) VALUES
(1, 'Airi', 'Perempuan', '125', '60', 'Kediri 21 Juli 2002', 'Indonesia', 'Hindu', '2', 'Kediri', '081232393974', 'Orangtua', 'SMP Ngadiluwih', 'Kediri', '-', '-', '-', '-', 'TKJ', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', 'fr-02.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `semua_siswa`
--

CREATE TABLE `semua_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `jurusan` enum('RPL','TKJ','MM') NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `semua_siswa`
--

INSERT INTO `semua_siswa` (`id_siswa`, `nama`, `gender`, `kelas`, `jurusan`, `foto`) VALUES
(1, 'Amir', 'Laki-Laki', 'XI', 'RPL', 'fr-05.jpg'),
(2, 'Diana', 'Perempuan', 'XI', 'TKJ', 'fr-10.jpg'),
(3, 'Dewi', 'Perempuan', 'XI', 'MM', 'fr-07.jpg'),
(4, 'Namira', 'Perempuan', 'XII', 'RPL', 'fr-04.jpg'),
(5, 'Dani', 'Laki-Laki', 'XII', 'TKJ', 'fr-01.jpg'),
(6, 'Risal', 'Laki-Laki', 'XII', 'MM', 'fr-03.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `form_pendaftaran`
--
ALTER TABLE `form_pendaftaran`
  ADD PRIMARY KEY (`id_formulir`);

--
-- Indexes for table `semua_siswa`
--
ALTER TABLE `semua_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `form_pendaftaran`
--
ALTER TABLE `form_pendaftaran`
  MODIFY `id_formulir` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `semua_siswa`
--
ALTER TABLE `semua_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
