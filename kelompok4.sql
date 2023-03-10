-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221026.4ba2a88e73
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Des 2022 pada 15.01
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelompok4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_dosen`
--

CREATE TABLE `tb_dosen` (
  `nidn` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_dosen`
--

INSERT INTO `tb_dosen` (`nidn`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`) VALUES
('0109303', 'Siti Puspita Hidasakti MZ, M.Cs', 'P', 'Kopang', '1988-12-10', 'Jl. Merdeka Barat No. 21 Kota Praya'),
('2002419', 'M. Khaerul Faridi, M.Kom', 'L', 'Praya', '1990-09-09', 'Jl. Merdeka No. 10 Kota Praya\r\n'),
('2002420', 'MUHAMMAD AZMI,M.Kom', 'L', 'Sepit', '1993-02-02', 'jl.L Mustiadi no.32 Sepit.Keruak'),
('2002421', 'AHMAD HARMAIN,M.Kom', 'L', 'Kalijaga', '1993-02-02', 'jl. labuan lombok no.32 kalijaga'),
('2002422', 'FITRIANI,S.Kom', 'P', 'Masbagik', '1993-02-02', 'jl.L masbagik no.32 masbagik'),
('2002423', 'ZULKARNAEN,M.Kom', 'L', 'Sukamulia', '1993-02-02', 'jl. selong no.32 selong'),
('2002424', 'NUKMAN,M.Kom', 'L', 'kalijaga', '1993-02-02', 'jl.L kalijaga no.32 kalijaga'),
('2002425', 'SRI HARDIANA DH,M.Kom', 'P', 'Selong', '1993-02-02', 'jl. selong no.32 selong'),
('2002426', 'M.ALFAN HABIB,M.Cs', 'L', 'labuan hajji', '1993-02-02', 'jl.L hajji no.32 labuan hajji'),
('2002427', 'DEDY EFENDI, S.Ag.,S.H.,M.Pd', 'L', 'Anjani', '1993-02-02', 'jl. suralaga no.32 suralaga'),
('2009408', 'IRWAN,M.Pd', 'L', 'ANJANI', '2022-12-28', 'ANJNI'),
('2009409', 'L. Puji Indra Karisma, M.Cs', 'L', 'Selong', '1987-02-12', 'KOPANG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `kode_jurusan` varchar(7) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  `kaprodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`kode_jurusan`, `nama_jurusan`, `kaprodi`) VALUES
('55', 'Teknik Informatika', 'LL. Puji Indra Karisma, M.Cs'),
('57', 'Sistem Informasi ', 'Siti Puspita Hidasakti MZ, M.Cs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `nim` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kode_jurusan` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`nim`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `kode_jurusan`) VALUES
('204855001', 'AHMAD ALIFIAN', 'L', 'KALIJAGA', '2001-11-07', 'KALIJAGA', '55'),
('204855020', 'TAUFIK HIDAYAT', 'L', 'SAKRA', '2001-11-07', 'SAKRA', '55'),
('204855026', 'FIZURROHIM', 'L', 'LOMBOK', '2001-11-07', 'KALIJAGA', '55'),
('204855108', 'TARUNA AMANDA', 'L', 'CEPAK DAYA', '2001-11-07', 'CEPAK DAYA', '55'),
('204855114', 'ZULHULIMI', 'L', 'BIMA', '2001-11-07', 'BIMA', '55'),
('204855997', 'AJI BAYU SAMUDRA ALIM', 'L', 'MATARAM', '2001-11-07', 'MATARAM', '55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_matakuliah`
--

CREATE TABLE `tb_matakuliah` (
  `kode_mk` varchar(7) NOT NULL,
  `nidn` varchar(10) NOT NULL,
  `nama_mk` varchar(50) DEFAULT NULL,
  `sks` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_matakuliah`
--

INSERT INTO `tb_matakuliah` (`kode_mk`, `nidn`, `nama_mk`, `sks`) VALUES
('MK5579', '2009408', 'MATRIK AL-JABAR LINEAR', 3),
('MK6671', '2002420', 'JARINGAN KOMPUTETR', 3),
('MK6672', '2002421', 'PEMROGRAMAN ', 3),
('MK6673', '2002422', 'PENGOLHAN CITRA', 3),
('MK6674', '2002423', 'ANALISIS SISTEM', 3),
('MK6675', '2002424', 'DESAIN WEB', 3),
('MK6676', '2002425', 'PENGAMANAN DATA', 3),
('MK6677', '2002426', 'REKAYASA PERANGKAT LUNAK', 3),
('MK6678', '2002427', 'SEMINAR', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `id_nilai` int(10) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `kode_mk` varchar(7) NOT NULL,
  `absen` decimal(10,0) NOT NULL,
  `tugas` decimal(10,0) NOT NULL,
  `uts` decimal(10,0) NOT NULL,
  `uas` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_nilai`
--

INSERT INTO `tb_nilai` (`id_nilai`, `nim`, `kode_mk`, `absen`, `tugas`, `uts`, `uas`) VALUES
(60, '204855001', 'MK6671', 90, 90, 90, 90),
(61, '204855001', 'MK6672', 90, 80, 70, 95),
(62, '204855001', 'MK6673', 80, 90, 95, 95),
(63, '204855001', 'MK6674', 90, 90, 85, 75),
(64, '204855001', 'MK6675', 90, 90, 95, 70),
(65, '204855001', 'MK6676', 90, 80, 70, 85),
(66, '204855001', 'MK6677', 90, 80, 95, 75),
(67, '204855001', 'MK6678', 70, 80, 97, 90),
(70, '204855001', 'MK6679', 90, 91, 95, 95),
(82, '204855020', 'MK6671', 90, 80, 90, 95),
(83, '204855020', 'MK6671', 90, 80, 90, 95),
(84, '204855020', 'MK6673', 80, 90, 95, 95),
(85, '204855020', 'MK6674', 70, 70, 85, 75),
(86, '204855020', 'MK6675', 90, 80, 95, 90),
(87, '204855020', 'MK6676', 70, 80, 98, 85),
(88, '204855020', 'MK6677', 90, 80, 95, 75),
(89, '204855020', 'MK6678', 70, 95, 97, 90),
(90, '204855020', 'MK6679', 90, 90, 95, 75),
(91, '204855026', 'MK6672', 80, 90, 75, 85),
(92, '204855026', 'MK6671', 90, 80, 90, 95),
(93, '204855026', 'MK6673', 80, 90, 95, 95),
(94, '204855026', 'MK6674', 70, 70, 85, 75),
(95, '204855026', 'MK6675', 90, 80, 95, 90),
(96, '204855026', 'MK6676', 70, 80, 98, 85),
(97, '204855026', 'MK6677', 90, 80, 95, 75),
(98, '204855026', 'MK6678', 70, 95, 97, 90),
(99, '204855026', 'MK6679', 90, 90, 95, 75),
(100, '204855108', 'MK6672', 80, 90, 75, 85),
(101, '204855108', 'MK6671', 90, 80, 90, 95),
(102, '204855108', 'MK6673', 80, 90, 95, 95),
(103, '204855108', 'MK6674', 70, 70, 85, 75),
(104, '204855108', 'MK6675', 90, 80, 95, 90),
(105, '204855108', 'MK6676', 70, 80, 98, 85),
(106, '204855108', 'MK6677', 90, 80, 95, 75),
(107, '204855108', 'MK6678', 70, 95, 97, 90),
(108, '204855108', 'MK6679', 90, 90, 95, 75),
(109, '204855114', 'MK6672', 80, 70, 75, 85),
(110, '204855114', 'MK6671', 70, 80, 90, 95),
(111, '204855114', 'MK6673', 80, 90, 70, 95),
(112, '204855114', 'MK6674', 70, 70, 85, 75),
(113, '204855114', 'MK6675', 90, 80, 95, 70),
(114, '204855114', 'MK6676', 70, 80, 70, 85),
(115, '204855114', 'MK6677', 90, 80, 95, 75),
(116, '204855114', 'MK6678', 70, 95, 97, 90),
(117, '204855114', 'MK6679', 90, 90, 95, 75),
(131, '204855997', 'MK6671', 90, 90, 90, 95),
(132, '204855997', 'MK6672', 90, 90, 75, 85),
(133, '204855997', 'MK6673', 80, 90, 95, 95),
(134, '204855997', 'MK6674', 90, 70, 85, 75),
(135, '204855997', 'MK6675', 90, 90, 95, 90),
(136, '204855997', 'MK6676', 90, 80, 98, 85),
(137, '204855997', 'MK6677', 90, 80, 95, 75),
(138, '204855997', 'MK6678', 70, 90, 97, 90),
(139, '204855997', 'MK6679', 90, 90, 95, 95);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indeks untuk tabel `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indeks untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `kode_jurusan` (`kode_jurusan`);

--
-- Indeks untuk tabel `tb_matakuliah`
--
ALTER TABLE `tb_matakuliah`
  ADD PRIMARY KEY (`kode_mk`),
  ADD KEY `nidn` (`nidn`);

--
-- Indeks untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `nim` (`nim`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `id_nilai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD CONSTRAINT `tb_mahasiswa_ibfk_1` FOREIGN KEY (`kode_jurusan`) REFERENCES `tb_jurusan` (`kode_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_matakuliah`
--
ALTER TABLE `tb_matakuliah`
  ADD CONSTRAINT `tb_matakuliah_ibfk_1` FOREIGN KEY (`nidn`) REFERENCES `tb_dosen` (`nidn`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
