-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Des 2023 pada 13.20
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agama`
--

CREATE TABLE `agama` (
  `kd_agama` int(2) NOT NULL,
  `nama_agama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `agama`
--

INSERT INTO `agama` (`kd_agama`, `nama_agama`) VALUES
(1, 'ISLAM'),
(2, 'KRISTEN/ PROTESTAN'),
(3, 'KATHOLIK'),
(4, 'HINDU'),
(5, 'BUDHA'),
(6, 'KHONG HU CHU'),
(99, 'LAIN LAIN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nuptk` varchar(11) NOT NULL,
  `nama_guru` varchar(40) NOT NULL,
  `kd_mapel` varchar(255) NOT NULL,
  `gender` enum('P','W') NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nuptk`, `nama_guru`, `kd_mapel`, `gender`, `username`, `password`) VALUES
(2, '00000000002', 'Teuku Tommy Yanuar Satria, S.Pd.I', 'BIO2', 'P', '', '76682f743ae018364a082b2e87f2d2f5'),
(3, '00000000003', 'Mariyadi, A.Md', 'BIO1', 'P', '', '5a8dccb220de5c6775c873ead6ff2e43'),
(4, '123', '123', '', 'P', '123', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `kd_jurusan` varchar(5) NOT NULL,
  `kd_tingkatan` varchar(5) NOT NULL,
  `kd_kelas` varchar(5) NOT NULL,
  `kd_mapel` varchar(5) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `jam` varchar(30) NOT NULL,
  `kd_ruangan` varchar(10) NOT NULL,
  `hari` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_tahun_akademik`, `semester`, `kd_jurusan`, `kd_tingkatan`, `kd_kelas`, `kd_mapel`, `id_guru`, `jam`, `kd_ruangan`, `hari`) VALUES
(245, 5, 'ganjil', 'IPA', '7', '7-A1', 'BID1', 0, '', '000', ''),
(246, 5, 'ganjil', 'IPA', '7', '7-B1', 'BID1', 0, '', '000', ''),
(247, 5, 'ganjil', 'IPA', '8', '8-A1', 'BID2', 0, '', '000', ''),
(248, 5, 'ganjil', 'IPA', '8', '8-B1', 'BID2', 0, '', '000', ''),
(249, 5, 'ganjil', 'IPA', '9', '9-A1', 'BID3', 0, '', '000', ''),
(250, 5, 'ganjil', 'IPA', '9', '9-B1', 'BID3', 0, '', '000', ''),
(252, 5, 'ganjil', 'IPA', '7', '7-B1', 'BIO1', 3, '', '000', ''),
(253, 5, 'ganjil', 'IPA', '8', '8-A1', 'BIO2', 2, '', '000', ''),
(254, 5, 'ganjil', 'IPA', '8', '8-B1', 'BIO2', 2, '', '000', ''),
(255, 5, 'ganjil', 'IPA', '9', '9-A1', 'BIO3', 0, '', '000', ''),
(256, 5, 'ganjil', 'IPA', '9', '9-B1', 'BIO3', 0, '', '000', ''),
(257, 5, 'ganjil', 'IPA', '7', '7-A1', 'BID1', 0, '', '000', ''),
(258, 5, 'ganjil', 'IPA', '7', '7-B1', 'BID1', 0, '', '000', ''),
(259, 5, 'ganjil', 'IPA', '8', '8-A1', 'BID2', 0, '', '000', ''),
(260, 5, 'ganjil', 'IPA', '8', '8-B1', 'BID2', 0, '', '000', ''),
(261, 5, 'ganjil', 'IPA', '9', '9-A1', 'BID3', 0, '', '000', ''),
(262, 5, 'ganjil', 'IPA', '9', '9-B1', 'BID3', 0, '', '000', ''),
(264, 5, 'ganjil', 'IPA', '7', '7-B1', 'BIO1', 3, '', '000', ''),
(265, 5, 'ganjil', 'IPA', '8', '8-A1', 'BIO2', 2, '', '000', ''),
(266, 5, 'ganjil', 'IPA', '8', '8-B1', 'BIO2', 2, '', '000', ''),
(267, 5, 'ganjil', 'IPA', '9', '9-A1', 'BIO3', 0, '', '000', ''),
(268, 5, 'ganjil', 'IPA', '9', '9-B1', 'BIO3', 0, '', '000', ''),
(269, 5, 'ganjil', 'IPA', '7', '7-A1', 'BID1', 0, '', '000', ''),
(270, 5, 'ganjil', 'IPA', '7', '7-B1', 'BID1', 0, '', '000', ''),
(271, 5, 'ganjil', 'IPA', '8', '8-A1', 'BID2', 0, '', '000', ''),
(272, 5, 'ganjil', 'IPA', '8', '8-B1', 'BID2', 0, '', '000', ''),
(273, 5, 'ganjil', 'IPA', '9', '9-A1', 'BID3', 0, '', '000', ''),
(274, 5, 'ganjil', 'IPA', '9', '9-B1', 'BID3', 0, '', '000', ''),
(276, 5, 'ganjil', 'IPA', '7', '7-B1', 'BIO1', 3, '', '000', ''),
(277, 5, 'ganjil', 'IPA', '8', '8-A1', 'BIO2', 2, '', '000', ''),
(278, 5, 'ganjil', 'IPA', '8', '8-B1', 'BIO2', 2, '', '000', ''),
(279, 5, 'ganjil', 'IPA', '9', '9-A1', 'BIO3', 0, '', '000', ''),
(280, 5, 'ganjil', 'IPA', '9', '9-B1', 'BIO3', 0, '', '000', ''),
(281, 5, 'ganjil', 'IPA', '7', '7-A1', 'BID1', 0, '', '000', ''),
(282, 5, 'ganjil', 'IPA', '7', '7-B1', 'BID1', 0, '', '000', ''),
(283, 5, 'ganjil', 'IPA', '8', '8-A1', 'BID2', 0, '', '000', ''),
(284, 5, 'ganjil', 'IPA', '8', '8-B1', 'BID2', 0, '', '000', ''),
(285, 5, 'ganjil', 'IPA', '9', '9-A1', 'BID3', 0, '', '000', ''),
(286, 5, 'ganjil', 'IPA', '9', '9-B1', 'BID3', 0, '', '000', ''),
(288, 5, 'ganjil', 'IPA', '7', '7-B1', 'BIO1', 3, '', '000', ''),
(289, 5, 'ganjil', 'IPA', '8', '8-A1', 'BIO2', 2, '', '000', ''),
(290, 5, 'ganjil', 'IPA', '8', '8-B1', 'BIO2', 2, '', '000', ''),
(291, 5, 'ganjil', 'IPA', '9', '9-A1', 'BIO3', 0, '', '000', ''),
(292, 5, 'ganjil', 'IPA', '9', '9-B1', 'BIO3', 0, '', '000', ''),
(293, 5, 'ganjil', 'IPA', '7', '7-A1', 'BID1', 0, '', '000', ''),
(294, 5, 'ganjil', 'IPA', '7', '7-B1', 'BID1', 0, '', '000', ''),
(295, 5, 'ganjil', 'IPA', '8', '8-A1', 'BID2', 0, '', '000', ''),
(296, 5, 'ganjil', 'IPA', '8', '8-B1', 'BID2', 0, '', '000', ''),
(297, 5, 'ganjil', 'IPA', '9', '9-A1', 'BID3', 0, '', '000', ''),
(298, 5, 'ganjil', 'IPA', '9', '9-B1', 'BID3', 0, '', '000', ''),
(299, 5, 'ganjil', 'IPA', '7', '7-A1', 'BIO1', 3, '13.00 - 13.30', '000', 'Rabu'),
(300, 5, 'ganjil', 'IPA', '7', '7-B1', 'BIO1', 3, '', '000', ''),
(301, 5, 'ganjil', 'IPA', '8', '8-A1', 'BIO2', 2, '', '000', ''),
(302, 5, 'ganjil', 'IPA', '8', '8-B1', 'BIO2', 2, '', '000', ''),
(303, 5, 'ganjil', 'IPA', '9', '9-A1', 'BIO3', 0, '', '000', ''),
(304, 5, 'ganjil', 'IPA', '9', '9-B1', 'BIO3', 0, '', '000', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `kd_jurusan` varchar(5) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`kd_jurusan`, `nama_jurusan`) VALUES
('IPA', 'IPA'),
('IPS', 'IPS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `kd_kelas` varchar(5) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `kd_tingkatan` varchar(5) NOT NULL,
  `kd_jurusan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`kd_kelas`, `nama_kelas`, `kd_tingkatan`, `kd_jurusan`) VALUES
('7-A1', 'Kelas 7-A IPA', '7', 'IPA'),
('7-A2', 'Kelas 7-A IPS', '7', 'IPS'),
('7-B1', 'Kelas 7-B IPA', '7', 'IPA'),
('7-B2', 'Kelas 7-B IPS', '7', 'IPS'),
('8-A1', 'Kelas 8-A IPA', '8', 'IPA'),
('8-A2', 'Kelas 8-A IPS', '8', 'IPS'),
('8-B1', 'Kelas 8-B IPA', '8', 'IPA'),
('8-B2', 'Kelas 8-B IPS', '8', 'IPS'),
('9-A1', 'Kelas 9-A IPA', '9', 'IPA'),
('9-A2', 'Kelas 9-A IPS', '9', 'IPS'),
('9-B1', 'Kelas 9-B IPA', '9', 'IPA'),
('9-B2', 'Kelas 9-B IPS', '9', 'IPS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id_kurikulum` int(11) NOT NULL,
  `nama_kurikulum` varchar(30) NOT NULL,
  `is_aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kurikulum`
--

INSERT INTO `kurikulum` (`id_kurikulum`, `nama_kurikulum`, `is_aktif`) VALUES
(1, 'Kurikulum 2013 (K13)', 'Y'),
(2, 'Kurikulum 2006 (KTSP)', 'N'),
(3, 'Kurikulum 2004 (KBK)', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurikulum_detail`
--

CREATE TABLE `kurikulum_detail` (
  `id_kurikulum_detail` int(11) NOT NULL,
  `id_kurikulum` int(11) NOT NULL,
  `kd_mapel` varchar(5) NOT NULL,
  `kd_jurusan` varchar(5) NOT NULL,
  `kd_tingkatan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kurikulum_detail`
--

INSERT INTO `kurikulum_detail` (`id_kurikulum_detail`, `id_kurikulum`, `kd_mapel`, `kd_jurusan`, `kd_tingkatan`) VALUES
(1, 1, 'BID1', 'IPA', '7'),
(2, 1, 'BID2', 'IPA', '8'),
(3, 1, 'BID3', 'IPA', '9'),
(4, 1, 'BIO1', 'IPA', '7'),
(5, 1, 'BIO2', 'IPA', '8'),
(6, 1, 'BIO3', 'IPA', '9');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level_user`
--

CREATE TABLE `level_user` (
  `id_level_user` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `level_user`
--

INSERT INTO `level_user` (`id_level_user`, `nama_level`) VALUES
(1, 'Admin'),
(2, 'Walikelas'),
(3, 'Guru'),
(4, 'Keuangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `kd_mapel` varchar(5) NOT NULL,
  `nama_mapel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`kd_mapel`, `nama_mapel`) VALUES
('BID1', 'Bahasa Indonesia 1'),
('BID2', 'Bahasa Indonesia 2'),
('BID3', 'Bahasa Indonesia 3'),
('BIO1', 'Biologi 1'),
('BIO2', 'Biologi 2'),
('BIO3', 'Biologi 3'),
('MTK1', 'Matematika 1'),
('MTK2', 'Matematika 2'),
('MTK3', 'Matematika 3'),
('PAI1', 'Pendidikan Agama Islam 1'),
('PAI2', 'Pendidikan Agama Islam 2'),
('PAI3', 'Pendidikan Agama Islam 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `nim` varchar(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_jadwal`, `nim`, `nilai`) VALUES
(1, 1, '18SI1000', 100),
(2, 1, '18SI1001', 80),
(3, 1, '18SI1002', 75),
(4, 1, '18SI1003', 85),
(5, 1, '18TI2000', 90),
(6, 1, '18TI2001', 100),
(7, 1, '18TI2002', 99),
(8, 1, '18TI2003', 99);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_kelas`
--

CREATE TABLE `riwayat_kelas` (
  `id_riwayat` int(11) NOT NULL,
  `kd_kelas` varchar(5) NOT NULL,
  `nim` varchar(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `riwayat_kelas`
--

INSERT INTO `riwayat_kelas` (`id_riwayat`, `kd_kelas`, `nim`, `id_tahun_akademik`) VALUES
(1, '7-A1', '18SI1000', 1),
(2, '7-A1', '18SI1001', 1),
(3, '7-A1', '18SI1002', 1),
(4, '7-A1', '18SI1003', 1),
(5, '7-A1', '18TI2000', 1),
(6, '7-A1', '18TI2001', 1),
(7, '7-A1', '18TI2002', 1),
(8, '7-A1', '18TI2003', 1),
(9, '7-A1', '', 1),
(10, '8-A1', '14.12.8199', 1),
(11, '8-B1', '14.12.8198', 1),
(12, '7-A1', 'test', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE `ruangan` (
  `kd_ruangan` varchar(10) NOT NULL,
  `nama_ruangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`kd_ruangan`, `nama_ruangan`) VALUES
('000', 'Default'),
('VIIA1', 'Ruangan Kelas VII-A IPA'),
('VIIA2', 'Ruangan Kelas VII-A IPS'),
('VIIB1', 'Ruangan Kelas VII-B IPA'),
('VIIB2', 'Ruangan Kelas VII-B IPS'),
('VIIIA1', 'Ruangan Kelas VIII-A IPA'),
('VIIIA2', 'Ruangan Kelas VIII-A IPS'),
('VIIIB1', 'Ruangan Kelas VIII-B IPA'),
('VIIIB2', 'Ruangan Kelas VIII-B IPS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nim` varchar(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `kd_agama` int(2) NOT NULL,
  `foto` text NOT NULL,
  `kd_kelas` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nim`, `nama`, `gender`, `tanggal_lahir`, `tempat_lahir`, `kd_agama`, `foto`, `kd_kelas`) VALUES
('18SI1003', 'Ovillia Dyah Charisma', 'P', '1996-01-18', 'Semarang', 1, 'user-siluet3.jpg', '7-A1'),
('18TI2000', 'Hadi Luthfi Firdaus', 'L', '1996-01-30', 'Pekanbaru', 1, 'user-siluet4.jpg', '7-A1'),
('18TI2001', 'Muhammad Fajar', 'L', '1995-01-14', 'Yogyakarta', 1, 'user-siluet5.jpg', '7-A1'),
('18TI2002', 'Bagus Widiatmono', 'L', '1996-01-09', 'Purworejo', 1, 'user-siluet6.jpg', '7-A1'),
('18TI2003', 'Aris Harwanto', 'L', '1996-01-13', 'Klaten', 1, 'user-siluet7.jpg', '7-A1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_menu`
--

CREATE TABLE `tabel_menu` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `icon` varchar(25) NOT NULL,
  `is_main_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tabel_menu`
--

INSERT INTO `tabel_menu` (`id`, `nama_menu`, `link`, `icon`, `is_main_menu`) VALUES
(1, 'Data Siswa', 'siswa', 'fa fa-users', 0),
(2, 'Data Guru', 'guru', 'fa fa-user-circle', 0),
(3, 'Data Master', '#', 'fa fa-bars', 0),
(4, 'Mata Pelajaran', 'mapel', 'fa fa-book', 3),
(5, 'Ruangan Kelas', 'ruangan', 'fa fa-building', 3),
(6, 'Tingkatan Kelas', 'tingkatan', 'fa fa-sitemap', 3),
(7, 'Jurusan', 'jurusan', 'fa fa-th-large', 3),
(8, 'Tahun Akademik', 'tahunakademik', 'fa fa-calendar-check-o', 3),
(9, 'Kelas', 'kelas', 'fa fa-cubes', 3),
(10, 'Kurikulum', 'kurikulum', 'fa fa-list', 3),
(11, 'Jadwal Pelajaran', 'jadwal', 'fa fa-calendar-plus-o', 0),
(12, 'Peserta Didik', 'siswa/siswa_aktif', 'fa fa-users', 0),
(13, 'Walikelas', 'walikelas', 'fa fa-user-plus', 0),
(14, 'Pengguna Sistem', 'user', 'fa fa-id-badge', 0),
(15, 'Menu', 'menu', 'fa fa-list', 0),
(16, 'Form Pembayaran', 'pembayaran', 'fa fa-dollar', 0),
(17, 'Nilai', 'nilai', 'fa fa-archive', 0),
(18, 'Laporan Nilai', 'laporan_nilai', 'fa fa-file-pdf-o', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_akademik`
--

CREATE TABLE `tahun_akademik` (
  `id_tahun_akademik` int(11) NOT NULL,
  `tahun_akademik` varchar(10) NOT NULL,
  `is_aktif` enum('Y','N') NOT NULL,
  `semester` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tahun_akademik`
--

INSERT INTO `tahun_akademik` (`id_tahun_akademik`, `tahun_akademik`, `is_aktif`, `semester`) VALUES
(1, '2018/2019', 'N', 'ganjil'),
(2, '2017/2018', 'N', 'genap'),
(5, '2019/2020', 'Y', 'genap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tingkatan_kelas`
--

CREATE TABLE `tingkatan_kelas` (
  `kd_tingkatan` varchar(5) NOT NULL,
  `nama_tingkatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tingkatan_kelas`
--

INSERT INTO `tingkatan_kelas` (`kd_tingkatan`, `nama_tingkatan`) VALUES
('7', 'Tingkat Kelas 7 (VII)'),
('8', 'Tingkat Kelas 8 (VIII)'),
('9', 'Tingkat Kelas 9 (IX)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `id_level_user` int(11) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_level_user`, `foto`) VALUES
(1, 'Admin', 'admin', '202cb962ac59075b964b07152d234b70', 1, 'Untitled.png'),
(2, 'Afif', 'afif', '202cb962ac59075b964b07152d234b70', 1, 'user-siluet1.jpg'),
(3, 'Danang', 'danang', '202cb962ac59075b964b07152d234b70', 4, 'user-siluet3.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_rule`
--

CREATE TABLE `user_rule` (
  `id_rule` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_level_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user_rule`
--

INSERT INTO `user_rule` (`id_rule`, `id_menu`, `id_level_user`) VALUES
(1, 16, 4),
(2, 1, 1),
(3, 2, 1),
(4, 3, 1),
(5, 4, 1),
(6, 5, 1),
(7, 7, 1),
(8, 8, 1),
(9, 11, 1),
(10, 6, 1),
(11, 14, 1),
(12, 15, 1),
(13, 13, 1),
(14, 12, 1),
(15, 10, 1),
(16, 9, 1),
(17, 11, 3),
(19, 17, 3),
(20, 18, 3),
(21, 12, 3);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_kelas`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_kelas` (
`kd_kelas` varchar(5)
,`nama_kelas` varchar(30)
,`kd_tingkatan` varchar(5)
,`kd_jurusan` varchar(5)
,`nama_tingkatan` varchar(30)
,`nama_jurusan` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_user`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_user` (
`id_user` int(11)
,`nama_lengkap` varchar(40)
,`username` varchar(30)
,`password` varchar(40)
,`id_level_user` int(11)
,`foto` text
,`nama_level` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_walikelas`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_walikelas` (
`nama_guru` varchar(40)
,`nama_kelas` varchar(30)
,`id_walikelas` int(11)
,`id_tahun_akademik` int(11)
,`nama_jurusan` varchar(30)
,`nama_tingkatan` varchar(30)
,`tahun_akademik` varchar(10)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `walikelas`
--

CREATE TABLE `walikelas` (
  `id_walikelas` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL,
  `kd_kelas` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `walikelas`
--

INSERT INTO `walikelas` (`id_walikelas`, `id_guru`, `id_tahun_akademik`, `kd_kelas`) VALUES
(1, 1, 1, '7-A1'),
(2, 0, 1, '7-A2'),
(3, 0, 1, '7-B1'),
(4, 0, 1, '7-B2'),
(5, 0, 1, '8-A1'),
(6, 0, 1, '8-A2'),
(7, 0, 1, '8-B1'),
(8, 0, 1, '8-B2'),
(9, 0, 1, '9-A1'),
(10, 0, 1, '9-A2'),
(11, 0, 1, '9-B1'),
(12, 0, 1, '9-B2');

-- --------------------------------------------------------

--
-- Struktur untuk view `view_kelas`
--
DROP TABLE IF EXISTS `view_kelas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_kelas`  AS SELECT `tk`.`kd_kelas` AS `kd_kelas`, `tk`.`nama_kelas` AS `nama_kelas`, `tk`.`kd_tingkatan` AS `kd_tingkatan`, `tk`.`kd_jurusan` AS `kd_jurusan`, `ttk`.`nama_tingkatan` AS `nama_tingkatan`, `tj`.`nama_jurusan` AS `nama_jurusan` FROM ((`kelas` `tk` join `tingkatan_kelas` `ttk`) join `jurusan` `tj`) WHERE `tk`.`kd_tingkatan` = `ttk`.`kd_tingkatan` AND `tk`.`kd_jurusan` = `tj`.`kd_jurusan` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_user`
--
DROP TABLE IF EXISTS `view_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_user`  AS SELECT `tu`.`id_user` AS `id_user`, `tu`.`nama_lengkap` AS `nama_lengkap`, `tu`.`username` AS `username`, `tu`.`password` AS `password`, `tu`.`id_level_user` AS `id_level_user`, `tu`.`foto` AS `foto`, `tlu`.`nama_level` AS `nama_level` FROM (`user` `tu` join `level_user` `tlu`) WHERE `tu`.`id_level_user` = `tlu`.`id_level_user` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_walikelas`
--
DROP TABLE IF EXISTS `view_walikelas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_walikelas`  AS SELECT `tg`.`nama_guru` AS `nama_guru`, `tk`.`nama_kelas` AS `nama_kelas`, `tw`.`id_walikelas` AS `id_walikelas`, `tw`.`id_tahun_akademik` AS `id_tahun_akademik`, `tj`.`nama_jurusan` AS `nama_jurusan`, `ttk`.`nama_tingkatan` AS `nama_tingkatan`, `tta`.`tahun_akademik` AS `tahun_akademik` FROM (((((`walikelas` `tw` join `kelas` `tk`) join `guru` `tg`) join `jurusan` `tj`) join `tingkatan_kelas` `ttk`) join `tahun_akademik` `tta`) WHERE `tw`.`kd_kelas` = `tk`.`kd_kelas` AND `tw`.`id_guru` = `tg`.`id_guru` AND `tk`.`kd_jurusan` = `tj`.`kd_jurusan` AND `tk`.`kd_tingkatan` = `ttk`.`kd_tingkatan` AND `tw`.`id_tahun_akademik` = `tta`.`id_tahun_akademik` ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`kd_agama`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kd_kelas`);

--
-- Indeks untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`);

--
-- Indeks untuk tabel `kurikulum_detail`
--
ALTER TABLE `kurikulum_detail`
  ADD PRIMARY KEY (`id_kurikulum_detail`);

--
-- Indeks untuk tabel `level_user`
--
ALTER TABLE `level_user`
  ADD PRIMARY KEY (`id_level_user`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`kd_mapel`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `riwayat_kelas`
--
ALTER TABLE `riwayat_kelas`
  ADD PRIMARY KEY (`id_riwayat`);

--
-- Indeks untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`kd_ruangan`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `tabel_menu`
--
ALTER TABLE `tabel_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  ADD PRIMARY KEY (`id_tahun_akademik`);

--
-- Indeks untuk tabel `tingkatan_kelas`
--
ALTER TABLE `tingkatan_kelas`
  ADD PRIMARY KEY (`kd_tingkatan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `user_rule`
--
ALTER TABLE `user_rule`
  ADD PRIMARY KEY (`id_rule`);

--
-- Indeks untuk tabel `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`id_walikelas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `id_kurikulum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kurikulum_detail`
--
ALTER TABLE `kurikulum_detail`
  MODIFY `id_kurikulum_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `level_user`
--
ALTER TABLE `level_user`
  MODIFY `id_level_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `riwayat_kelas`
--
ALTER TABLE `riwayat_kelas`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tabel_menu`
--
ALTER TABLE `tabel_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  MODIFY `id_tahun_akademik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_rule`
--
ALTER TABLE `user_rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `walikelas`
--
ALTER TABLE `walikelas`
  MODIFY `id_walikelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
