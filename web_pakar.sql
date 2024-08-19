-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Agu 2024 pada 12.29
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_pakar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `level` enum('Admin','superadmin','User') NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `alamat`, `username`, `password`, `level`, `gambar`) VALUES
(1, 'Admin', 'bintaro', 'admin', '123', 'Admin', 'gambar_admin/NicePng_car-wash-bubbles-png_7805650.png'),
(2, 'farhan', 'ciputat', 'farhan', '1000', 'Admin', 'gambar_admin/NicePng_gray-circle-png_1366211.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bayes_aturan`
--

CREATE TABLE `bayes_aturan` (
  `id_aturan` int(11) NOT NULL,
  `kode_penyakit` varchar(16) NOT NULL,
  `kode_gejala` varchar(16) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bayes_aturan`
--

INSERT INTO `bayes_aturan` (`id_aturan`, `kode_penyakit`, `kode_gejala`, `nilai`) VALUES
(272, 'P01', 'G03', 0.67),
(273, 'P01', 'G04', 1),
(274, 'P01', 'G06', 1),
(275, 'P01', 'G07', 0.67),
(276, 'P01', 'G11', 0.67),
(277, 'P01', 'G14', 0.67),
(278, 'P01', 'G17', 1),
(279, 'P01', 'G20', 0.67),
(280, 'P02', 'G02', 1),
(281, 'P02', 'G03', 0.5),
(282, 'P02', 'G04', 0.5),
(283, 'P02', 'G01', 0.5),
(284, 'P02', 'G06', 1),
(285, 'P03', 'G03', 0.67),
(286, 'P03', 'G05', 0.67),
(287, 'P03', 'G06', 0.67),
(288, 'P03', 'G12', 0.67),
(289, 'P03', 'G13', 1),
(290, 'P03', 'G15', 0.33),
(291, 'P04', 'G06', 1),
(292, 'P04', 'G27', 1),
(293, 'P04', 'G30', 1),
(294, 'P04', 'G33', 0.5),
(295, 'P04', 'G34', 1),
(296, 'P04', 'G34', 1),
(297, 'P04', 'G36', 1),
(298, 'P04', 'G37', 1),
(299, 'P04', 'G38', 1),
(300, 'P04', 'G39', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bayes_gejala`
--

CREATE TABLE `bayes_gejala` (
  `kode_gejala` varchar(10) NOT NULL,
  `nama_gejala` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bayes_gejala`
--

INSERT INTO `bayes_gejala` (`kode_gejala`, `nama_gejala`) VALUES
('G01', 'sedih terus menerus			'),
('G02', 'merasa jauh lebih gembira dibandingkan biasanya			'),
('G03', 'memiliki rasa takut yang berlebihan			'),
('G04', 'merasa khawatir sepanjang waktu		'),
('G05', 'suka menyendiri			'),
('G06', 'gangguan tidur (sulit memulai tidur)		'),
('G07', 'gangguan makan (nafsu makan bertambah/berkurang da'),
('G08', 'lebih mudah kesal		'),
('G09', 'merasa tidak berdaya	'),
('G10', 'kepercayaan dirinya berkurang		'),
('G11', 'takut melakukan kesalahan	'),
('G12', 'sulit berkonsentrasi		'),
('G13', 'kehilangan minat pada sesuatu yang biasa dilakukan'),
('G14', 'keringat dingin	'),
('G15', 'perut terasa sakit		'),
('G16', 'kepala pusing tiba-tiba'),
('G17', 'mata berkunang-kunang'),
('G18', 'merasa mual		'),
('G19', 'muntah		'),
('G20', 'jantung berdebar-debar, gemetar	'),
('G21', 'mudah menangis	'),
('G22', 'merasa putus asa			'),
('G23', 'terus berpikir mengenai kematian		'),
('G24', 'melukai/membahayakan diri sendiri dan orang lain	'),
('G25', 'mudah letih'),
('G26', 'perubahan berat badan	'),
('G27', 'sering melamun	'),
('G28', 'memiliki energi yang jauh lebih meningkat dibandin'),
('G29', 'memiliki ide lebih banyak dibandingkan biasanya		'),
('G30', 'kebutuhan tidur berkurang	'),
('G31', 'lebih banyak bicara dari biasanya'),
('G32', 'meningkatnya pikiran atau keinginan seksual		'),
('G33', 'sulit mengontrol diri'),
('G34', 'memiliki perilaku kacau'),
('G35', 'waham (memiliki keyakinan yang salah)'),
('G36', 'halusinasi (melihat/mendengar tanpa sumber)'),
('G37', 'pembicaraan yang sulit'),
('G38', 'muncul kedala pada fungsi sosial, sekolah atau pek'),
('G39', 'merasa curiga dan terancam, yakni bahwa dirinya  a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bayes_penyakit`
--

CREATE TABLE `bayes_penyakit` (
  `kode_penyakit` varchar(10) NOT NULL,
  `nama_penyakit` varchar(255) NOT NULL,
  `bobot` double NOT NULL,
  `keterangan` text NOT NULL,
  `solusi` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bayes_penyakit`
--

INSERT INTO `bayes_penyakit` (`kode_penyakit`, `nama_penyakit`, `bobot`, `keterangan`, `solusi`, `gambar`) VALUES
('P01', 'gangguan kecemasan	', 0.3, 'gangguan kecemasan umum atau anxiety adalah perasaan khawatir atau cemas yang tidak terkendali dan berlebihan akan banyak hal.', 'Tenangkan diri sebaik mungkin, serta mencoba berkomunikasi kepada kerabat keluarga, atau saudara yang anda percaya, Tetap kontrol diri anda untuk tidak melakukan hal-hal buruk, Melakukan teknik relaksasi diri seperti pejamkan mata lalu tarik nafas perlahan lalu hembuskan melalui mulut, lakukan minimal 3x, Jika gangguan tersebut masih sangat mengganggu cobalah memberanikan diri untuk pergi meminta bantuan kepada seseorang pakar seperti dokter spesialis jiwa, psikolog atau psikiater.', 'gambar_penyakit/gangguan kecemasan.jpeg'),
('P02', 'bipolar', 0.2, 'bipolar adalah masalah kesehatan mental yang menyebabkan perubahan suasana hati, energi, tingkat aktivitas, konsentrasi, dan kemampuan untuk melakukan kegiatan sehari-hari.', 'Lakukanlah kegiatan yang positif yang dapat membuat anda senang dan atur pola makan yang sehat, Sering-seringlah berolahraga, Mencoba untuk mengelola stress dengan baik, Jika hal-hal tersebut masih saja menggangu kenyamanan aktivitas anda maka segera melakukan penanganan lebih lanjut kepada seorang pakar seperti dokter spesialis jiwa, psikolog atau psikiater.\r\n', 'gambar_penyakit/bipolar.jpg'),
('P03', 'depresi', 0.3, 'depresi adalah gangguan kesehatan mental yang mempengaruhi perasaan, cara berpikir dan cara bertindak seseorang.', 'Pilihlah lingkungan yang baik dan sehat sehingga anda mungkin dapat menceritakan hal-hal yang anda rasakan, Istirahat yang cukup, Lakukan pola hidup dan pola makan dengan baik, rajin-rajinlah berolahraga dan jauhkan diri anda dari makanan / minuman yang dapat membuat anda stress, Jika hal tersebut masih sangat mengganggu cobalah memberanikan diri untuk pergi meminta bantuan kepada seseorang pakar seperti dokter spesialis jiwa, psikolog atau psikiater.\r\n ', 'gambar_penyakit/depresi.png'),
('P04', 'skizofrenia', 0.2, 'skizofrenia adalah gangguan kejiwaan kronis ketika pengidapnya mengalami halusinasi, delusi, kekacauan dalam berpikir, dan perubahan sikap.', 'Jika anda mengalami gejala pada gangguan ini, maka segera kunjungi seorang pakar seperti dokter spesialis jiwa, psikiater atau psikolog karena gangguan ini merupakan gangguan yang sudah seharusnya mendapatan penanganan lebih lanjut, Anda juga bisa meminum obat-obatan yang telah diresepkan oleh seorang pakar.', 'gambar_penyakit/skizofrenia.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_latih`
--

CREATE TABLE `data_latih` (
  `id_latih` int(11) NOT NULL,
  `kode_penyakit` varchar(16) DEFAULT NULL,
  `aturan` text DEFAULT NULL,
  `tgl_create` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_latih`
--

INSERT INTO `data_latih` (`id_latih`, `kode_penyakit`, `aturan`, `tgl_create`) VALUES
(2, 'P01', '[\"G03\",\"G04\",\"G06\",\"G07\",\"G11\",\"G14\",\"G17\",\"G20\"]', '2022-09-22 01:06:24'),
(3, 'P01', '[\"G01\",\"G03\",\"G04\",\"G06\",\"G15\",\"G16\",\"G17\",\"G21\",\"G37\"]', '2022-09-22 01:06:41'),
(4, 'P01', '[\"G04\",\"G06\",\"G07\",\"G11\",\"G12\",\"G14\",\"G15\",\"G16\",\"G17\",\"G18\",\"G19\",\"G20\",\"G38\"]', '2022-09-22 01:07:27'),
(5, 'P02', '[\"G02\",\"G03\",\"G04\",\"G01\",\"G06\"]', '2022-09-22 01:07:50'),
(6, 'P02', '[\"G02\",\"G06\",\"G08\",\"G30\",\"G31\",\"G32\",\"G38\"]', '2022-09-22 01:08:07'),
(7, 'P03', '[\"G03\",\"G05\",\"G06\",\"G12\",\"G13\",\"G15\"]', '2022-09-22 01:08:27'),
(8, 'P03', '[\"G02\",\"G03\",\"G01\",\"G07\",\"G08\",\"G10\",\"G13\",\"G14\"]', '2022-09-22 01:08:55'),
(9, 'P03', '[\"G01\",\"G05\",\"G06\",\"G09\",\"G10\",\"G12\",\"G13\",\"G21\",\"G22\",\"G25\",\"G38\"]', '2022-09-22 01:09:48'),
(10, 'P04', '[\"G06\",\"G27\",\"G30\",\"G33\",\"G34\",\"G35\",\"G36\",\"G37\",\"G38\",\"G39\"]', '2022-09-22 01:10:08'),
(11, 'P04', '[\"G03\",\"G06\",\"G27\",\"G28\",\"G30\",\"G34\",\"G35\",\"G36\",\"G37\",\"G38\",\"G39\"]', '2022-09-22 01:10:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_lap` int(10) NOT NULL,
  `Nama_user` varchar(50) NOT NULL,
  `tgl_diagnosa` date NOT NULL,
  `penyakit` varchar(50) NOT NULL,
  `presentase` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_lap`, `Nama_user`, `tgl_diagnosa`, `penyakit`, `presentase`) VALUES
(265, 'pepi123', '2024-06-25', 'bipolar', '95.2'),
(266, 'putra', '2024-07-15', 'gangguan kecemasan	', '84.56'),
(267, 'afif', '2024-07-16', 'depresi', '90.27'),
(268, 'krisno', '2024-08-06', 'skizofrenia', '100'),
(269, 'farhan', '2024-08-06', 'depresi', '56.98');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(10) NOT NULL,
  `Nama_user` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `alamat` varchar(50) NOT NULL,
  `usia` int(10) NOT NULL,
  `user_role` varchar(20) DEFAULT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `Nama_user`, `jenis_kelamin`, `username`, `password`, `alamat`, `usia`, `user_role`, `gambar`) VALUES
(1, 'Krisno Ade Saputra', 'Laki-Laki', 'krisno', '123', 'BTP', 22, 'User', 'img/avatar.jpg'),
(2, 'pepi', 'Laki-Laki', 'pepi123', '123', 'blok m', 18, 'User', 'img/avatar.jpg'),
(3, 'farhan', 'Laki-Laki', 'farhan', '1000', 'ciledug', 17, 'User', 'img/avatar.jpg'),
(4, 'putra', 'Laki-Laki', 'putra', '2000', 'monas', 20, 'User', 'img/avatar.jpg'),
(5, 'afif', 'Laki-Laki', 'afif', '123', 'bintaro', 20, 'User', 'img/avatar.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `bayes_aturan`
--
ALTER TABLE `bayes_aturan`
  ADD PRIMARY KEY (`id_aturan`);

--
-- Indeks untuk tabel `bayes_gejala`
--
ALTER TABLE `bayes_gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indeks untuk tabel `bayes_penyakit`
--
ALTER TABLE `bayes_penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indeks untuk tabel `data_latih`
--
ALTER TABLE `data_latih`
  ADD PRIMARY KEY (`id_latih`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_lap`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `bayes_aturan`
--
ALTER TABLE `bayes_aturan`
  MODIFY `id_aturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT untuk tabel `data_latih`
--
ALTER TABLE `data_latih`
  MODIFY `id_latih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_lap` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
