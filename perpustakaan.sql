-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 30, 2023 at 05:50 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `password`) VALUES
(1, 'Maulana', 'maul@gmail.com', '$2y$10$eCmqACOAwk3e14gnKKKAN.0jygizjGiJljMzgkKLxgx32WN.jfFpC'),
(2, 'Maulana', 'maul@gmail.com', '$2y$10$pUHayeDrfS4R2rkBB/NqzOtgWKL/YUelhOXx5O05C393EYejH6CPi');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `alamat`, `email`, `telepon`) VALUES
(1, 'Maya Yuliarti', 'Gg. Sentot Alibasa No. 296, Bitung 89524, Jambi', 'cahyo.puspasari@dongoran.in', '(+62) 823 260 772'),
(2, 'Paris Gasti Kusmawati', 'Jr. Sudirman No. 391, Bima 38904, Kaltara', 'ysiregar@situmorang.ac.id', '(+62) 27 0314 4390'),
(3, 'Zulfa Suryatmi S.E.I', 'Jln. Yohanes No. 941, Lubuklinggau 36481, Kalsel', 'safitri.sarah@gmail.co.id', '0669 2670 6133'),
(4, 'Jasmin Mandasari', 'Jr. Bakit  No. 417, Balikpapan 55938, DKI', 'kpertiwi@gmail.com', '0871 247 257'),
(5, 'Ibrani Joko Habibi S.Farm', 'Jln. Radio No. 295, Tangerang Selatan 60196, Sultra', 'vivi37@hutasoit.in', '(+62) 394 6399 070'),
(6, 'Elvina Umi Winarsih M.Pd', 'Dk. Peta No. 728, Jayapura 68001, Jambi', 'budi.tamba@hariyah.go.id', '0508 2333 988'),
(7, 'Kambali Lega Ramadan', 'Dk. Ciwastra No. 758, Surabaya 72261, Maluku', 'lukita02@usamah.mil.id', '(+62) 734 7379 2884'),
(8, 'Vera Suryatmi', 'Jln. Badak No. 56, Blitar 56347, Sumsel', 'narpati.artanto@yahoo.com', '(+62) 503 6602 5026'),
(9, 'Cici Wijayanti', 'Jr. HOS. Cjokroaminoto (Pasirkaliki) No. 450, Metro 55983, Kalteng', 'latif84@yahoo.co.id', '(+62) 667 5140 960'),
(10, 'Umi Wulandari', 'Ki. Basoka Raya No. 21, Tomohon 53304, DKI', 'maria74@yahoo.co.id', '(+62) 693 5763 6214'),
(11, 'Sidiq Tampubolon M.TI.', 'Psr. Babadan No. 690, Pagar Alam 87111, Bali', 'vanya70@gmail.com', '(+62) 883 0378 0086'),
(12, 'Malik Warji Suryono M.Kom.', 'Dk. Samanhudi No. 810, Bandung 41608, Bali', 'nurdiyanti.hairyanto@pratiwi.net', '0826 731 527'),
(13, 'Tugiman Anggriawan', 'Ki. Jakarta No. 403, Batam 63995, Kepri', 'saputra.silvia@gmail.com', '0231 0419 5112'),
(14, 'Dacin Natsir', 'Ki. Madrasah No. 677, Bau-Bau 92201, Riau', 'novitasari.paramita@mahendra.net', '0327 4478 6417'),
(15, 'Harjasa Rajata', 'Psr. Basoka No. 495, Dumai 66993, NTT', 'ohastuti@hasanah.mil.id', '(+62) 939 6413 200'),
(16, 'Laras Pratiwi S.E.I', 'Ki. Ekonomi No. 808, Pagar Alam 61817, Papua', 'hartana01@kusmawati.or.id', '028 8279 982'),
(17, 'Uli Widiastuti', 'Jln. Baranangsiang No. 900, Sawahlunto 79783, DKI', 'xandriani@gmail.co.id', '0682 2334 244'),
(18, 'Icha Ellis Suartini M.M.', 'Ds. Kebonjati No. 398, Tasikmalaya 60298, Riau', 'ganjaran.purnawati@gmail.co.id', '0611 2457 9293'),
(19, 'Bella Syahrini Mandasari S.Sos', 'Gg. Bass No. 443, Cirebon 74528, Sumbar', 'edi01@hakim.web.id', '(+62) 26 3274 0074'),
(20, 'Bella Syahrini Suryatmi', 'Ds. Baladewa No. 682, Kediri 79917, Sulut', 'yulianti.gadang@yahoo.com', '0863 6089 378'),
(21, 'Cengkir Halim', 'Psr. Kebangkitan Nasional No. 239, Banjarmasin 62454, Banten', 'cengkir99@sihotang.tv', '0551 9518 1244'),
(22, 'Rahmat Rajata', 'Gg. Baranang No. 919, Administrasi Jakarta Utara 37895, Gorontalo', 'handayani.keisha@pratama.name', '0904 0949 0702'),
(23, 'Faizah Kani Mandasari S.Pt', 'Jr. Karel S. Tubun No. 70, Administrasi Jakarta Selatan 37419, Sulteng', 'kanda.permata@laksmiwati.biz', '0711 4321 494'),
(24, 'Raditya Irawan', 'Psr. Ciwastra No. 207, Padang 48400, Kepri', 'putu23@yahoo.com', '0514 9523 3786'),
(25, 'Bambang Kurniawan', 'Jln. Ketandan No. 193, Tangerang 35488, Sulsel', 'rusada@laksmiwati.asia', '(+62) 358 0925 236'),
(26, 'Endah Rahmawati', 'Jln. Ekonomi No. 658, Ambon 79516, Jambi', 'muhammad78@yahoo.co.id', '(+62) 447 7204 726'),
(27, 'Ian Pradipta', 'Ki. Sugiono No. 53, Tegal 63872, Kaltara', 'nashiruddin.mila@astuti.co.id', '(+62) 393 8579 287'),
(28, 'Vanya Anggraini', 'Gg. Rajawali Barat No. 52, Manado 47950, Banten', 'nainggolan.ani@gmail.com', '(+62) 714 1989 9032'),
(29, 'Gina Suartini', 'Jr. Thamrin No. 182, Samarinda 65890, Bali', 'kani86@gmail.co.id', '(+62) 455 3377 4342'),
(30, 'Jayeng Thamrin', 'Ki. Dahlia No. 898, Tomohon 67203, Papua', 'yosef83@gmail.com', '(+62) 244 7408 3427'),
(31, 'Abyasa Budiman M.Farm', 'Kpg. Orang No. 868, Sawahlunto 63729, Sulut', 'karimah32@prasetyo.web.id', '(+62) 580 6443 771'),
(32, 'Paramita Siti Kuswandari', 'Kpg. Pasir Koja No. 743, Depok 87293, DKI', 'muhammad96@yahoo.co.id', '0430 5093 287'),
(33, 'Capa Manullang', 'Jln. Badak No. 102, Kendari 32250, Aceh', 'wardaya.ardianto@yahoo.co.id', '0613 0408 3287'),
(34, 'Ophelia Kuswandari', 'Dk. Yogyakarta No. 187, Palangka Raya 75537, Lampung', 'rachel.salahudin@gmail.co.id', '0845 1573 1526'),
(35, 'Vera Widiastuti', 'Gg. Madiun No. 137, Mojokerto 97262, Sumbar', 'pangeran75@gmail.co.id', '0496 7583 339'),
(36, 'Ika Suryatmi', 'Psr. Kyai Gede No. 607, Tomohon 62077, Jateng', 'citra.aryani@gmail.co.id', '0527 7661 6295'),
(37, 'Azalea Kasiyah Yuliarti S.E.I', 'Ki. Batako No. 342, Bogor 72923, Sumsel', 'hartana98@laksita.sch.id', '0966 1310 182'),
(38, 'Bella Yolanda', 'Ds. Mulyadi No. 828, Tanjungbalai 30064, Banten', 'tsimbolon@hartati.net', '(+62) 834 265 710'),
(39, 'Karsa Latupono S.Kom', 'Ki. Kebangkitan Nasional No. 731, Tanjung Pinang 47405, Bali', 'kasim69@yahoo.co.id', '(+62) 553 3477 531'),
(40, 'Kania Febi Zulaika', 'Ki. Siliwangi No. 666, Parepare 54981, Bali', 'prayogo30@riyanti.tv', '(+62) 358 9410 560'),
(41, 'Anastasia Rahayu S.E.I', 'Ki. Ikan No. 75, Bekasi 13746, Sulsel', 'ysinaga@yahoo.com', '(+62) 22 8345 1211'),
(42, 'Dalima Maya Namaga S.Sos', 'Ds. Rajawali Timur No. 472, Pontianak 15230, NTT', 'sirait.elvina@anggraini.com', '0311 6171 4407'),
(43, 'Lamar Firgantoro S.T.', 'Gg. Nanas No. 71, Payakumbuh 39582, Kaltara', 'wahyuni.bakianto@yahoo.co.id', '(+62) 713 3677 570'),
(44, 'Gatra Damanik', 'Kpg. Jend. A. Yani No. 358, Madiun 71414, Riau', 'sarah45@yahoo.com', '0430 1459 6394'),
(45, 'Jamalia Umi Kuswandari M.M.', 'Kpg. Baranangsiang No. 848, Jayapura 62270, Aceh', 'rajasa.cawisono@gmail.com', '(+62) 986 7958 601'),
(46, 'Warta Salahudin', 'Ds. Cikapayang No. 12, Pontianak 66403, Sumut', 'suartini.olga@firgantoro.sch.id', '(+62) 967 3265 629'),
(47, 'Kariman Gandi Ardianto', 'Jln. Abang No. 966, Kotamobagu 53873, Bengkulu', 'halima.wastuti@gmail.co.id', '(+62) 968 4241 9995'),
(48, 'Puti Mila Astuti M.M.', 'Ki. Bara Tambar No. 249, Jambi 24507, Bali', 'fmahendra@gmail.co.id', '(+62) 24 5957 4325'),
(49, 'Pranata Wahyudin', 'Gg. Cemara No. 999, Tanjungbalai 84734, Malut', 'jsimanjuntak@gmail.co.id', '0509 6985 223'),
(50, 'Nurul Anggraini S.Kom', 'Ds. Ujung No. 976, Palopo 72854, DKI', 'salwa24@gmail.co.id', '0655 1157 6814'),
(51, 'Samiah Hasanah S.T.', 'Dk. Baabur Royan No. 238, Yogyakarta 87953, Kalbar', 'dina.situmorang@yahoo.com', '(+62) 731 4861 774'),
(52, 'Emong Saefullah', 'Jr. Raya Setiabudhi No. 127, Yogyakarta 45181, Sulut', 'ifa.pudjiastuti@gmail.com', '(+62) 892 185 059'),
(53, 'Mahesa Nugroho', 'Jr. Bagas Pati No. 890, Bengkulu 60189, Banten', 'rina52@yahoo.com', '024 4183 195'),
(54, 'Umay Anggriawan S.E.', 'Ds. Kiaracondong No. 579, Langsa 54231, Kalsel', 'nainggolan.lala@yahoo.com', '(+62) 732 6411 710'),
(55, 'Jarwa Saptono M.Ak', 'Kpg. Sentot Alibasa No. 863, Pagar Alam 50250, Kalbar', 'astuti.warsa@yahoo.com', '(+62) 480 6910 306'),
(56, 'Widya Winarsih', 'Dk. Kebangkitan Nasional No. 56, Administrasi Jakarta Barat 12963, DKI', 'manullang.praba@yahoo.co.id', '(+62) 803 771 449'),
(57, 'Nasrullah Sinaga M.M.', 'Dk. Sadang Serang No. 68, Bogor 83840, Riau', 'ardianto.warta@damanik.org', '027 3339 3245'),
(58, 'Elisa Putri Novitasari S.E.I', 'Dk. Baya Kali Bungur No. 176, Administrasi Jakarta Utara 16953, Malut', 'wardaya.kusumo@palastri.asia', '0971 1241 922'),
(59, 'Gangsar Wibowo', 'Jr. Ir. H. Juanda No. 955, Mojokerto 76020, Gorontalo', 'gusada@permata.biz', '(+62) 899 459 704'),
(60, 'Slamet Mansur', 'Jr. Wahidin Sudirohusodo No. 5, Padangsidempuan 73616, Kalteng', 'hutasoit.genta@nababan.ac.id', '0688 1727 7485'),
(61, 'Salsabila Nadia Kuswandari S.T.', 'Dk. Laksamana No. 946, Binjai 91568, Jambi', 'ophelia.nainggolan@hartati.sch.id', '(+62) 987 8123 849'),
(62, 'Prabawa Ajimin Prayoga S.I.Kom', 'Jln. Kali No. 430, Surakarta 49744, NTB', 'llestari@nashiruddin.asia', '(+62) 551 4826 9644'),
(63, 'Amelia Putri Melani', 'Jr. Veteran No. 127, Mataram 55438, Aceh', 'nugroho.kiandra@marpaung.mil.id', '0811 3289 9539'),
(64, 'Jelita Fujiati', 'Dk. Basoka No. 85, Semarang 99886, Bengkulu', 'mila.nasyiah@gmail.co.id', '0208 2878 857'),
(65, 'Mursinin Waluyo', 'Dk. Wahidin Sudirohusodo No. 953, Yogyakarta 34496, Jatim', 'zulaika.jatmiko@gmail.co.id', '0337 0312 5569'),
(66, 'Rina Winarsih S.E.I', 'Ds. Yoga No. 426, Tangerang 70344, Sumbar', 'jelita.narpati@gmail.co.id', '(+62) 663 3722 391'),
(67, 'Dirja Mandala M.Pd', 'Gg. Tubagus Ismail No. 42, Bitung 77469, Sulteng', 'kuswandari.endra@yahoo.com', '022 2240 5522'),
(68, 'Sari Kuswandari', 'Gg. HOS. Cjokroaminoto (Pasirkaliki) No. 627, Bima 80316, NTT', 'oktaviani.gatra@gmail.com', '028 7237 099'),
(69, 'Lasmono Bakijan Rajata', 'Gg. Sumpah Pemuda No. 729, Makassar 34931, Sulbar', 'yusuf26@yahoo.com', '0744 9366 314'),
(70, 'Emong Gunawan', 'Kpg. Basudewo No. 581, Salatiga 90116, NTT', 'cager.saragih@purwanti.co', '0242 5951 2310'),
(71, 'Darijan Muni Nashiruddin S.I.Kom', 'Jln. Lembong No. 427, Lubuklinggau 70446, Malut', 'ifa49@wijayanti.co', '0371 8351 083'),
(72, 'Ikin Hutasoit', 'Jr. K.H. Maskur No. 576, Tangerang 82351, Sumut', 'vero.permadi@yahoo.com', '0479 6085 5149'),
(73, 'Jaeman Suwarno', 'Gg. Basmol Raya No. 697, Medan 63271, Kaltim', 'asmianto65@namaga.biz', '0526 3495 5063'),
(74, 'Kartika Rahmawati', 'Kpg. Halim No. 517, Bau-Bau 26477, Kalsel', 'uhakim@rajata.net', '0823 6924 499'),
(75, 'Himawan Thamrin', 'Ds. Babadan No. 754, Semarang 45083, Bengkulu', 'jputra@yahoo.co.id', '(+62) 446 3829 049'),
(76, 'Uchita Yolanda', 'Psr. Dr. Junjunan No. 523, Samarinda 68396, Jateng', 'lili.rahayu@gmail.co.id', '(+62) 464 7169 667'),
(77, 'Gabriella Oktaviani S.E.', 'Gg. Lembong No. 837, Parepare 32757, DKI', 'hafshah29@yahoo.co.id', '0658 1735 491'),
(78, 'Raisa Pertiwi', 'Jln. Urip Sumoharjo No. 206, Tangerang Selatan 62237, Sumut', 'simon80@yuniar.biz.id', '(+62) 28 7016 203'),
(79, 'Wawan Ardianto', 'Gg. Baranang Siang No. 162, Padangpanjang 83459, Kalteng', 'bwibisono@gmail.co.id', '0943 8574 9710'),
(80, 'Hasim Gamanto Budiman', 'Ds. Pasteur No. 861, Batu 51157, Pabar', 'haryanti.dipa@nurdiyanti.mil.id', '0634 8298 816'),
(81, 'Zulfa Sudiati', 'Jr. Rajawali Timur No. 874, Langsa 84755, Lampung', 'capa46@yahoo.co.id', '0278 9047 925'),
(82, 'Oliva Permata', 'Gg. Nanas No. 228, Tarakan 44772, Papua', 'ihsan89@oktaviani.biz', '0873 3004 0784'),
(83, 'Darman Utama Suwarno S.I.Kom', 'Gg. Baja No. 779, Sawahlunto 48390, NTT', 'byuniar@yahoo.com', '(+62) 24 6519 202'),
(84, 'Viman Erik Wahyudin M.Kom.', 'Ds. Laksamana No. 997, Administrasi Jakarta Barat 43889, Sulbar', 'tirtayasa.puspasari@yahoo.com', '(+62) 898 8356 7513'),
(85, 'Pia Eli Yolanda', 'Jr. Sudiarto No. 187, Tanjungbalai 61075, Jambi', 'tiswahyudi@gmail.com', '(+62) 568 3469 469'),
(86, 'Hendra Kurniawan S.E.I', 'Kpg. Ters. Kiaracondong No. 521, Sibolga 79653, Kepri', 'karma20@gmail.co.id', '(+62) 508 6018 786'),
(87, 'Balapati Dongoran', 'Kpg. Babakan No. 319, Salatiga 90572, Jabar', 'wlaksita@yahoo.co.id', '(+62) 24 5597 8025'),
(88, 'Farah Nasyiah', 'Dk. Kalimalang No. 598, Padangpanjang 85335, Gorontalo', 'wtampubolon@yahoo.co.id', '(+62) 764 4218 141'),
(89, 'Gilda Hassanah S.E.', 'Ds. HOS. Cjokroaminoto (Pasirkaliki) No. 758, Ternate 31214, Aceh', 'prasetya82@winarno.ac.id', '(+62) 27 8352 853'),
(90, 'Yahya Tarihoran', 'Ki. PHH. Mustofa No. 40, Palembang 12774, Gorontalo', 'olivia88@yahoo.co.id', '(+62) 342 9576 8406'),
(91, 'Eka Yulianti', 'Dk. Bagonwoto  No. 915, Banjarbaru 49039, Jambi', 'kambali26@yuliarti.mil.id', '(+62) 856 2619 9008'),
(92, 'Dadap Upik Rajasa', 'Ds. Bara No. 596, Palu 84222, Papua', 'rhidayat@winarsih.in', '(+62) 808 0055 709'),
(93, 'Hendra Natsir M.M.', 'Ds. Kyai Mojo No. 629, Bandar Lampung 79444, Banten', 'saefullah.lidya@maryadi.tv', '0247 8708 470'),
(94, 'Jasmin Iriana Puspasari S.IP', 'Ki. Lumban Tobing No. 314, Langsa 31905, DIY', 'nova87@kuswoyo.biz', '(+62) 982 2555 1556'),
(95, 'Ibrani Marbun S.H.', 'Jln. Pacuan Kuda No. 923, Subulussalam 88715, Kepri', 'wahyu.mayasari@gmail.co.id', '0350 3082 984'),
(96, 'Sadina Humaira Mandasari', 'Gg. Raden No. 899, Yogyakarta 55690, Pabar', 'rahmi.kurniawan@gmail.co.id', '021 6347 758'),
(97, 'Satya Gunarto', 'Jr. Yos No. 38, Sawahlunto 59018, DIY', 'aadriansyah@kuswoyo.info', '0820 506 303'),
(98, 'Amelia Pratiwi', 'Ds. Pacuan Kuda No. 143, Cimahi 92981, Bali', 'cahya.sitompul@maryati.sch.id', '0461 6668 972'),
(99, 'Setya Pranowo', 'Dk. Suryo No. 299, Samarinda 83414, Babel', 'palastri.jasmin@maryati.mil.id', '(+62) 244 3981 8564'),
(100, 'Elvina Halimah S.IP', 'Jr. Baja Raya No. 770, Ternate 42641, Sulut', 'lamar58@siregar.in', '(+62) 513 7089 4690'),
(101, 'Maulana', 'askoakos', 'maul@gmail.com', '085555555'),
(2147483647, 'Aurora Farhunnisa Susanti S.Ked', 'Dk. Mahakam No. 887, Gorontalo 41316, Sulbar', 'bagas83@yahoo.co.id', '(+62) 318 3482 376');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pengarang` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `penerbit` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tahun_terbit` int DEFAULT NULL,
  `jumlah_halaman` int DEFAULT NULL,
  `sinopsis` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `jumlah_halaman`, `sinopsis`) VALUES
(101, 'Est sint exercitationem.', 'Cecep Naradi Kuswoyo S.H.', 'Teguh Luthfi Pangestu M.Farm', 1977, 452, 'Corporis itaque et non natus. Fuga maxime error rerum similique. Nostrum odit tempora nihil voluptate enim. Voluptas ducimus officiis ut commodi veniam. Consequatur rerum non et debitis.'),
(102, 'Commodi delectus consectetur fugiat nisi.', 'Puput Wirda Lestari M.M.', 'Prakosa Budiyanto', 1989, 218, 'Ratione mollitia ratione voluptates eligendi temporibus qui. Qui molestiae praesentium aut ex qui.'),
(103, 'Cupiditate rerum sed ea.', 'Jagaraga Sihotang S.Farm', 'Ian Iswahyudi', 1981, 303, 'Accusantium corrupti consequatur consequatur aspernatur deserunt dolores ipsum molestiae. Veritatis magnam quis dolores nemo.'),
(104, 'Incidunt explicabo dolorem.', 'Bakidin Nyoman Winarno', 'Erik Ozy Nainggolan S.H.', 1970, 534, 'Veritatis rerum blanditiis vitae velit accusamus. Repellat harum eius fuga ut. Aut dolorem voluptatem sint ratione ab magnam. Quam natus et ad beatae illo et iure. Accusantium quos enim consequatur.'),
(105, 'Distinctio nulla laborum voluptatem autem.', 'Hesti Gilda Nurdiyanti S.T.', 'Heryanto Maheswara', 2012, 648, 'Rerum repellendus a rerum assumenda tempore. Illo commodi molestiae nulla soluta ab optio. Consectetur nemo consectetur atque rerum qui tempore et qui.'),
(106, 'Ipsa cupiditate nisi fuga.', 'Cinthia Pudjiastuti', 'Irma Rahmawati', 2012, 840, 'Est temporibus quaerat culpa non omnis. Dolores eos iusto amet rem consequatur possimus error sapiente. Mollitia sit deleniti sequi est dolorum necessitatibus et natus.'),
(107, 'Accusantium ad repudiandae quas.', 'Daliman Prasetya S.Pt', 'Kuncara Sitorus M.Pd', 1977, 883, 'Quidem natus omnis hic officia consequatur velit id tenetur. Minus delectus ut quod sunt nostrum id quisquam. Saepe optio et aut molestiae consequatur quo voluptas. Vitae voluptas et ut labore quis.'),
(108, 'Et officia sit et.', 'Kiandra Vanesa Rahmawati', 'Titin Rina Winarsih S.I.Kom', 2020, 648, 'Quos qui inventore id quas aspernatur aut repellat ab. Praesentium consequatur aut dolorem adipisci et blanditiis ad. Animi inventore fugit cum voluptas recusandae hic.'),
(109, 'Voluptates repellendus ut quae.', 'Kambali Catur Siregar S.Gz', 'Najib Danuja Pradipta', 2013, 380, 'Eum dolores ipsum veritatis. Aut quam repudiandae dicta maxime ut deserunt. Officia sed et excepturi veniam quia dolorem vel. Autem repellat et rerum ut odit voluptatibus voluptate sit.'),
(110, 'Consequatur illo corrupti laudantium.', 'Kambali Putra', 'Dadi Abyasa Rajata S.Kom', 1985, 888, 'Consectetur qui aut omnis vel et. Possimus neque occaecati sequi asperiores. Et nesciunt itaque repellat non.'),
(111, 'Et suscipit.', 'Maria Wijayanti', 'Icha Padmasari', 1996, 359, 'Mollitia nisi assumenda recusandae quaerat officiis. Deleniti perspiciatis et sed aliquid. Eum dolores nihil sit est nihil. Qui quasi fugit explicabo sit ea dolores.'),
(112, 'Voluptate dicta amet.', 'Sarah Yuliarti', 'Hamima Rini Puspita M.Ak', 1989, 839, 'Ad id et ut eaque quae consequatur eligendi. Eveniet possimus omnis nisi rerum ut magni accusantium. Reiciendis id quis adipisci adipisci ut.'),
(113, 'Similique aut repellat perspiciatis.', 'Intan Nuraini S.H.', 'Jumari Bagiya Marbun', 2023, 882, 'Quo nisi rerum qui corporis et recusandae et. Eum excepturi aut cumque ut autem animi. Ipsa nemo ut qui. Explicabo tempora qui exercitationem ut. Eaque facilis nihil enim aperiam soluta ab.'),
(114, 'Odit atque qui ipsam.', 'Vino Permadi', 'Lintang Wijayanti S.Ked', 1983, 242, 'Omnis illum aut harum ducimus dignissimos. Velit rerum deserunt molestiae non aperiam. Nobis consequuntur qui vero alias atque temporibus. Hic consequatur sunt qui qui.'),
(115, 'Ipsam qui et quis.', 'Satya Banara Sihotang', 'Adhiarja Dabukke S.IP', 2002, 772, 'Consequatur corrupti nemo odit quisquam aut quas soluta occaecati. A quaerat fugiat incidunt atque aliquam aspernatur. Rerum et dolorem iste ea deserunt temporibus.'),
(116, 'Consequatur praesentium consequatur.', 'Yuliana Wahyuni', 'Okta Latupono M.M.', 1971, 674, 'Iure dicta non voluptatem suscipit. Exercitationem et officia accusamus aut. Fuga quia et cumque perspiciatis omnis. Quia veniam amet consequatur.'),
(117, 'Nemo et voluptas.', 'Ratna Puti Yuliarti', 'Ega Saputra S.Pd', 2021, 838, 'Magni error impedit laborum dolore in nisi inventore. Excepturi consequatur voluptatibus ratione doloremque repudiandae. Aut voluptates ipsa ab laudantium reiciendis atque.'),
(118, 'Perspiciatis neque placeat.', 'Ikhsan Mangunsong', 'Zelaya Julia Mulyani', 2008, 314, 'Atque qui ullam aut est est. Placeat quaerat magni nam modi. Ab animi eveniet aperiam consectetur. Facilis ullam maiores culpa maxime.'),
(119, 'Aut adipisci voluptates doloremque.', 'Vanya Wahyuni S.Ked', 'Warji Muhammad Prayoga', 1978, 464, 'Quidem numquam omnis est vel ea debitis. Autem voluptatem dolores aut earum. Eum qui autem ut facilis.'),
(120, 'Unde asperiores quibusdam et.', 'Rafi Manullang M.Ak', 'Zahra Kuswandari', 1990, 736, 'Incidunt odit voluptatum qui. Quia voluptatum sit in quo quod molestiae. Qui vel doloribus quia error.'),
(121, 'Rerum velit ut consequatur.', 'Kasiyah Hastuti', 'Ifa Hassanah S.H.', 2005, 810, 'Ut autem error labore qui corporis. Nobis tenetur minus earum dolorum. Aliquid voluptas voluptatibus suscipit culpa earum.'),
(122, 'Omnis provident perferendis repudiandae.', 'Kanda Firmansyah', 'Kartika Suryatmi S.Ked', 1970, 837, 'Ut fugit asperiores quia blanditiis. Ut ab ratione incidunt. Labore maxime adipisci quo quia sequi aut. Ex eos impedit et doloremque saepe molestias officiis.'),
(123, 'Accusamus dignissimos et provident.', 'Dono Waskita', 'Jasmin Yunita Suartini S.E.', 1989, 338, 'Est omnis labore voluptatem cum qui sint fuga sapiente. Accusamus labore error ut in dolore aliquid est. Quia qui et impedit quia et. Minima eius blanditiis impedit et mollitia iusto deserunt.'),
(124, 'Sint recusandae ipsam vitae.', 'Daru Zulkarnain', 'Vicky Puspita', 1988, 744, 'Ut id beatae maiores qui velit vel. Cupiditate quisquam deserunt iure ut ipsa amet. Eveniet ut sapiente eius non harum vel.'),
(125, 'Dignissimos deleniti quos et.', 'Unjani Susanti S.Ked', 'Lanang Mandala', 2004, 765, 'Animi qui excepturi velit quidem omnis aspernatur. Ratione sed aut autem. Ut reprehenderit veniam asperiores ut harum quia. Aut est commodi omnis et voluptas.'),
(126, 'Ab ex esse laboriosam commodi.', 'Dasa Kamidin Pratama', 'Artawan Emin Setiawan', 1981, 484, 'Harum perferendis delectus molestias autem ut nostrum tenetur. Qui rem numquam officiis. Ut iure adipisci voluptatem dolorem cumque et consequuntur. Optio labore maiores facere quaerat.'),
(127, 'Aut qui voluptatem voluptas.', 'Jamil Cayadi Mustofa S.H.', 'Karma Simanjuntak', 2023, 801, 'Qui voluptates animi facilis doloribus. Corrupti debitis incidunt velit ut. Sunt neque dolore non velit hic nam est. Nihil accusamus et repudiandae accusamus voluptatem.'),
(128, 'Qui quos qui quo.', 'Indah Gina Palastri S.Farm', 'Jelita Lidya Namaga', 2015, 849, 'Delectus sit quis ut nam minus adipisci. Laborum illum rerum voluptates. Veniam laboriosam ipsam earum excepturi at dignissimos. Qui delectus voluptas quia perferendis voluptatem illo.'),
(129, 'Ut qui corporis rerum.', 'Luwes Anggabaya Iswahyudi S.E.I', 'Adika Jarwadi Waskita S.E.', 2005, 485, 'Facere sunt quas nihil sint. At rerum corporis quia quia qui. Voluptas voluptates possimus voluptatum et quis. Consequuntur et sequi voluptatum delectus aut sed sunt.'),
(130, 'Magnam iusto amet sit.', 'Dewi Suartini', 'Endra Habibi', 2007, 891, 'Repellat quia natus sed pariatur dicta inventore. Exercitationem optio ut similique et distinctio et molestiae. Facilis aspernatur fuga ut voluptatem reprehenderit quia.'),
(131, 'Rerum aut nesciunt sit.', 'Jatmiko Hardiansyah S.T.', 'Laila Purnawati', 1991, 256, 'Quasi officia eveniet eveniet voluptates aliquam ab pariatur. Nihil temporibus sapiente velit dicta id est rem.'),
(132, 'Sapiente sed.', 'Yusuf Bakianto Situmorang M.Farm', 'Darmanto Viman Wibisono M.Ak', 1984, 216, 'Laudantium molestiae harum animi eveniet sunt in sunt sint. Laudantium sunt nam aliquam itaque soluta repudiandae repellat. Omnis voluptates et et mollitia.'),
(133, 'Et quis soluta ratione.', 'Balamantri Maryadi', 'Karen Kusmawati', 1977, 596, 'Aut excepturi corporis nulla quis ab. In id impedit hic facere distinctio. Nihil ut modi eum aut ut temporibus aliquam. Tempore hic cum eligendi deleniti odio.'),
(134, 'Eos dolore possimus.', 'Najib Gunawan', 'Hendri Samosir M.Pd', 1988, 884, 'Et voluptatem voluptatem qui quisquam sunt eum sapiente. Doloremque aspernatur eos dolorem adipisci dolore. Consequatur ab incidunt perspiciatis doloribus. Et et porro quia quia qui odio aut.'),
(135, 'Est vel saepe ipsam.', 'Bagas Latupono', 'Abyasa Mangunsong', 1971, 520, 'Natus aut ut ducimus mollitia perferendis. Quia doloremque autem tenetur asperiores eum. Optio officia cumque nobis repellendus. Nulla velit illo in quae. Modi deserunt in explicabo numquam ut qui.'),
(136, 'Nam molestiae provident.', 'Purwa Saragih', 'Endah Yunita Haryanti S.E.', 1983, 348, 'Nihil quo porro qui. Sed non molestias nisi hic et qui. Maiores voluptatum dolorem omnis rem. Nulla incidunt at id porro.'),
(137, 'Iusto nihil delectus nam.', 'Belinda Ida Sudiati S.Ked', 'Mutia Laksmiwati S.E.I', 2012, 464, 'Ducimus aut dolor id nobis totam. Sapiente quod odio animi laboriosam quia. Hic voluptas eius ut consectetur ad fuga distinctio. Voluptatem tempora tempora fugit debitis.'),
(138, 'Dicta veniam sed.', 'Silvia Yolanda M.Kom.', 'Salimah Uyainah', 1989, 186, 'Autem culpa quasi recusandae dolores voluptatem vel inventore. Nisi omnis adipisci numquam sapiente. Dicta corrupti fugit sit modi ipsum quam. Ut qui sed sapiente est laudantium est voluptas.'),
(139, 'Ratione cum quidem aut.', 'Dimaz Wibisono S.Kom', 'Indah Wulandari', 1992, 748, 'Ab tempore suscipit molestias rerum sunt qui. Voluptas iusto pariatur porro ut suscipit nihil veniam non. Laborum odio et magni consequatur. Quisquam error ut iusto.'),
(140, 'Excepturi in qui id.', 'Hadi Prayoga', 'Kardi Akarsana Ardianto', 2019, 941, 'Perferendis dolorem unde asperiores qui eius tempora voluptatem. Magni dicta voluptate temporibus. Quia velit nemo quia saepe repudiandae. In dolores architecto explicabo ad.'),
(141, 'Odit qui non.', 'Lidya Juli Purwanti', 'Cawisono Eman Marpaung', 1987, 471, 'Nam incidunt corrupti quos. Quibusdam autem ducimus dolorem dolor sit libero. Mollitia sapiente sit odit esse deleniti. Tempore quisquam et quae animi animi. Itaque repellat quia consequatur nisi.'),
(142, 'Accusamus aliquid aut eveniet.', 'Yuni Juli Aryani', 'Icha Zelaya Fujiati', 2007, 509, 'Eius omnis libero quia consequuntur sint qui similique unde. Qui numquam est ullam cum. Voluptas ea illum voluptatem eum quibusdam voluptatem voluptas modi. Voluptas et quis rem.'),
(143, 'Ea id quaerat nihil tenetur.', 'Gantar Hutapea', 'Harimurti Permadi', 1985, 371, 'Quae ut nulla eum explicabo minus facilis. Maiores corrupti fuga sint cum quae cupiditate deleniti.'),
(144, 'Minus iure repellat consequuntur.', 'Violet Sudiati', 'Bagus Budiman', 1978, 486, 'Voluptatibus non adipisci expedita dolorem. Optio sint sunt nostrum. Consequuntur dolor tempore consequatur quaerat qui.'),
(145, 'Totam voluptatem in qui.', 'Lasmono Wakiman Rajata', 'Farah Palastri', 1979, 807, 'Rerum enim ut eos iusto in voluptatem nihil numquam. Earum optio eligendi dolores dolor atque. Veniam voluptatem qui mollitia vel at optio. Ad voluptates et rerum quis.'),
(146, 'Magni inventore eum cumque.', 'Jumadi Ramadan', 'Saadat Sihombing', 2020, 446, 'Eligendi eos ducimus et et incidunt ullam velit. Cupiditate non sequi perferendis assumenda delectus qui quod. Error neque reprehenderit similique id occaecati vel ab. Placeat ut sed repudiandae.'),
(147, 'Ut qui quis ut.', 'Salman Karsana Saptono S.Sos', 'Digdaya Dongoran', 1989, 657, 'Sint molestiae quae tempora aut similique fugit quo. Et nobis nobis qui qui est hic. Dolore ea similique aut qui unde. Eum ipsa dolores consequatur corrupti sunt fugit autem.'),
(148, 'Quo labore sapiente.', 'Dewi Suartini', 'Ghaliyati Rahmi Hartati', 2002, 522, 'Suscipit nulla nostrum minima id non repudiandae temporibus. Eum provident illum fuga voluptate recusandae quia. Quisquam ut quaerat earum dolorum eos est voluptas.'),
(149, 'Quis et id.', 'Dalima Hariyah', 'Elvina Pertiwi', 1999, 738, 'Et et in fuga maxime. Voluptate rerum cupiditate qui labore iusto quo. Consequatur quisquam voluptatem accusantium sint vero.'),
(150, 'Et voluptatem laborum eos error.', 'Fitria Handayani', 'Gadang Wibowo', 1997, 686, 'A atque fuga dolores iure excepturi ab recusandae. Velit dolorem ipsa eaque eum est et. Et harum ab sint impedit temporibus.'),
(151, 'Ut numquam commodi sed.', 'Dacin Prasetya M.TI.', 'Anggabaya Situmorang', 2023, 999, 'Eum id sit enim aliquid sapiente debitis fuga. Et veritatis aliquid corrupti eaque omnis quia error. Necessitatibus commodi eum voluptatem. Harum qui aliquam praesentium consequatur.'),
(152, 'Id eos quo qui facilis.', 'Cici Maryati', 'Rina Elisa Widiastuti S.H.', 1997, 964, 'Eveniet temporibus aut eius tempore eligendi sunt. Consequuntur enim non voluptate beatae nesciunt qui. Reiciendis temporibus modi maxime libero quibusdam et porro.'),
(153, 'Accusamus facilis deleniti.', 'Garan Saputra', 'Kala Pranowo', 2011, 279, 'Nam sunt reiciendis sint consequuntur dolorem. Qui doloremque ea perferendis.'),
(154, 'Accusamus consequatur et.', 'Febi Susanti', 'Hardi Harjaya Budiyanto S.Ked', 1986, 471, 'Non harum enim illum sequi. Rerum beatae qui dolorum error. Eveniet tenetur sapiente praesentium qui ut. Ducimus vel odit ut esse fuga voluptatem.'),
(155, 'Voluptatem voluptas et earum.', 'Ellis Hastuti', 'Cahya Dipa Wasita', 2007, 644, 'Porro soluta sequi est nobis eos. Illo voluptatibus praesentium odio minus sint ut modi molestiae. Est aut fugiat velit ut unde temporibus aspernatur asperiores.'),
(156, 'Autem aut debitis aut sit.', 'Yulia Aryani', 'Hamima Wastuti', 1983, 842, 'Ducimus omnis nihil laboriosam nisi. Distinctio unde sequi sed eum. Error placeat sapiente aliquid qui sint. Qui aspernatur adipisci omnis et possimus. Voluptas aut quia beatae qui.'),
(157, 'Non ut soluta.', 'Artawan Napitupulu S.IP', 'Suci Lailasari S.Pt', 2015, 172, 'Qui inventore quos voluptatem ab. Deserunt repellat impedit minima repellendus aut nulla assumenda. Est delectus debitis ab error. Qui eum nisi rerum eum.'),
(158, 'Sed amet dolor.', 'Luhung Haryanto', 'Wani Maya Pratiwi', 1997, 776, 'Fugit quisquam ad ut atque. Vel nihil nulla voluptatem. Ut sequi veritatis fugiat quia.'),
(159, 'Qui maxime error accusantium.', 'Jasmin Ida Halimah M.Farm', 'Yessi Sabrina Nuraini', 2021, 159, 'Eaque tempora sed sed dolor maiores corporis. Fuga nihil at alias qui. Vitae perspiciatis quidem soluta incidunt eius aspernatur.'),
(160, 'Ut quia libero.', 'Prasetyo Ajimin Gunarto', 'Raditya Margana Dabukke', 2000, 991, 'Totam aut quasi adipisci blanditiis quia distinctio. Odit nobis et sunt occaecati quasi saepe. Numquam quidem dolore vero sint. Fugit voluptatem aperiam voluptas a rem unde exercitationem.'),
(161, 'Voluptatem quos dignissimos sed.', 'Arta Mangunsong', 'Balangga Pranowo', 1989, 244, 'Facere perspiciatis qui facilis sed sint sed. Sed amet dolor itaque odio ut quia nostrum aut. Consequatur tempore aliquam et qui atque aut.'),
(162, 'Incidunt veniam itaque aut.', 'Fitriani Handayani', 'Wulan Hasanah', 2018, 140, 'Dolor quo officiis quia alias illum. Cum sed et necessitatibus. Qui eos non occaecati magni. Adipisci nihil tempore et aut et perferendis illo officia.'),
(163, 'Fugiat consectetur occaecati.', 'Ika Sabrina Utami', 'Ajiono Widodo S.IP', 2009, 997, 'A ad ut non. Dolorem rem non atque. Est quaerat in quos sit aspernatur accusamus.'),
(164, 'Enim cumque autem.', 'Safina Namaga', 'Carla Mardhiyah S.T.', 2008, 510, 'Sunt facere nostrum tenetur. Fugit dolores exercitationem nam id. Rem vel vel necessitatibus sapiente consequatur.'),
(165, 'Laboriosam at.', 'Gading Permadi', 'Lulut Maryadi S.E.I', 1998, 195, 'Eaque doloremque et aut provident omnis veritatis. Iure dolorem culpa quia nisi. A omnis iste in dolores. Est dolores iste omnis.'),
(166, 'Sed fugit eligendi expedita.', 'Dono Budiyanto', 'Jono Mustofa', 2004, 792, 'Adipisci dolores ut et non totam. Aut ratione illo natus architecto porro tenetur. Quis culpa in rem quaerat et enim ab.'),
(167, 'Tenetur neque sunt.', 'Nabila Almira Kusmawati S.Gz', 'Gawati Usamah', 1973, 805, 'Molestiae laudantium unde aut sunt beatae rerum. Aspernatur voluptatum non non rerum omnis. Consequuntur impedit corporis dolores. Architecto ut numquam quos dolor ut ut neque.'),
(168, 'Reiciendis aspernatur ab quod impedit.', 'Erik Kala Irawan', 'Jinawi Tampubolon', 1983, 278, 'Commodi sit quaerat quo. Modi excepturi at incidunt quidem alias rerum nobis. Nihil molestiae ad non beatae possimus corrupti voluptates. Nulla nihil sint harum quidem.'),
(169, 'Et nisi delectus reprehenderit.', 'Prayoga Gunawan', 'Shania Hastuti M.Kom.', 1983, 823, 'Et autem molestiae sint esse quos. Alias facilis et omnis voluptatibus dicta sunt molestiae. Aut dolorem aut cumque dignissimos cumque ut magni.'),
(170, 'Sunt accusantium sunt nisi sed.', 'Zulaikha Gasti Fujiati', 'Intan Laras Pratiwi M.Ak', 2004, 756, 'Tenetur quia qui ut expedita autem adipisci. Tenetur aut repellat corporis pariatur. Dolorem perspiciatis assumenda atque error mollitia eaque corporis aut.'),
(171, 'Quo est asperiores quos.', 'Yuni Puspita', 'Sakura Permata S.Ked', 1972, 607, 'Perspiciatis sed est omnis repellendus. Nihil sed officia sed. Eligendi assumenda nesciunt similique provident.'),
(172, 'Rerum esse quibusdam ut.', 'Siska Cinthia Nuraini S.Pt', 'Praba Kenes Narpati', 2016, 533, 'Culpa praesentium vero veniam fugiat vitae et ipsa. Est dolorem maxime quis porro consectetur laudantium. Iusto sunt beatae laudantium alias.'),
(173, 'Et omnis aut.', 'Jail Estiono Pangestu S.Kom', 'Taufan Firgantoro', 1977, 862, 'Qui explicabo rerum aut omnis molestiae non. Tempora et ipsum et asperiores magnam recusandae similique. Voluptas voluptatibus quisquam aut perferendis ipsum rem.'),
(174, 'Delectus molestiae porro repudiandae.', 'Eman Maulana', 'Novi Palastri', 2022, 206, 'Magni exercitationem aut nemo id corrupti fugit ut. Ea ipsum eum in est non fugiat officia sequi. Deleniti nihil alias nobis.'),
(175, 'Et ut quia sit.', 'Iriana Susanti S.Pt', 'Mustofa Hadi Utama S.Sos', 2022, 547, 'Iusto voluptas omnis maxime dolorem recusandae cum. Exercitationem sequi in rerum architecto est est.'),
(176, 'Vel similique.', 'Tasdik Manullang', 'Silvia Yolanda', 2004, 781, 'Quas eos velit sint id dolores omnis iste. Est cumque dicta non magni voluptas fuga et. Unde odit inventore qui fuga nesciunt enim. Ut eos magnam molestias et enim omnis libero.'),
(177, 'Sunt est molestias molestias.', 'Adhiarja Okto Mandala', 'Mila Nasyiah', 2006, 100, 'Doloremque non et aliquam laboriosam aut in animi. Quam eveniet perspiciatis eius eius. Quia possimus ad nemo. Enim quod odit eum officia.'),
(178, 'Sequi veritatis id.', 'Rosman Raden Ramadan', 'Candrakanta Muni Lazuardi M.TI.', 1987, 941, 'A ipsam voluptatum facilis eos officiis nihil. Possimus laudantium nisi veniam. Culpa minus excepturi est adipisci maiores aut eligendi.'),
(179, 'Et quo iste.', 'Ana Violet Andriani S.T.', 'Jarwa Saefullah', 2010, 162, 'Perferendis distinctio laboriosam accusamus quo autem. Amet aut tempore natus rerum. Aut pariatur itaque quas.'),
(180, 'Architecto impedit dolorum.', 'Yuliana Hastuti', 'Unjani Ajeng Yuniar', 1987, 782, 'Quod quaerat voluptatem dolores. Necessitatibus ut enim autem autem dolorem quas suscipit dolores. Minus blanditiis inventore omnis autem facere. Aliquam modi eligendi perferendis.'),
(181, 'Ipsa ducimus.', 'Victoria Nasyiah', 'Bella Melani', 1999, 368, 'Eum fugit et laudantium deleniti eum nesciunt. Quo ipsa nulla ducimus veritatis facilis. Autem voluptatibus est sit reiciendis neque molestiae.'),
(182, 'In ipsum sed.', 'Mursita Iswahyudi', 'Cinta Hastuti', 2018, 533, 'Et laboriosam non nihil qui sint et. Explicabo quisquam ullam veniam deserunt et iste. Corporis modi sunt corporis et recusandae quae. Accusamus sit saepe quasi et sint explicabo.'),
(183, 'Nemo quaerat nostrum eos.', 'Wawan Hakim', 'Oskar Pratama S.H.', 1975, 264, 'Voluptas velit sit optio velit nemo cum suscipit. Esse nihil sunt pariatur veritatis molestiae sint iusto. Eligendi illo eligendi amet. Repellat ducimus omnis ipsam voluptatem consectetur ea.'),
(184, 'Sit pariatur quo.', 'Viktor Wahyu Siregar S.I.Kom', 'Karen Mayasari', 2020, 551, 'Maxime reprehenderit aut fugit nulla fugiat. Voluptatem repudiandae maxime quia. Accusamus porro omnis consequatur rerum repellendus unde.'),
(185, 'Tenetur ut magni quas.', 'Virman Omar Maryadi', 'Usyi Astuti', 2012, 462, 'Velit est et voluptas perferendis. Quibusdam aperiam vel et. Et aperiam velit minus quia. Veritatis explicabo fugiat quam quam voluptates.'),
(186, 'Sint voluptatem qui et.', 'Ivan Pranawa Thamrin', 'Padmi Pertiwi S.I.Kom', 2006, 523, 'Ut nulla sed occaecati eligendi nulla modi. Laborum illo dolor qui qui. Consequatur aut molestiae blanditiis a.'),
(187, 'Unde molestias ad.', 'Banawi Simbolon', 'Makuta Permadi', 2016, 634, 'Non odit quis eum possimus magni et. Dolorem totam et cum nulla et porro. Dolores qui nisi quod quidem vel sequi reprehenderit fuga. Iste sed illo neque saepe.'),
(188, 'Omnis hic deserunt ut officiis.', 'Wisnu Thamrin M.TI.', 'Ilsa Yessi Mardhiyah', 1975, 878, 'Doloribus dolor et officia. Rerum modi ab sapiente dolores cupiditate voluptatem et. Consectetur placeat ipsa quibusdam est. Quae facilis vel est fugiat.'),
(189, 'Eaque consequatur id.', 'Ratna Mulyani', 'Prabowo Nainggolan S.Pd', 1996, 498, 'Rerum perspiciatis quidem ex. Quod rerum optio odio harum. Eos deserunt veritatis aut quas. Placeat fugiat amet culpa atque natus voluptas totam.'),
(190, 'Praesentium neque sint eos.', 'Jelita Nasyiah', 'Tami Lintang Lestari', 1972, 971, 'Vel omnis aliquam iusto vitae veritatis. Sed aut id quia dolorem non necessitatibus veniam consequatur. Ut accusamus omnis doloremque molestiae iusto totam.'),
(191, 'Sequi culpa quia totam.', 'Ade Maida Yolanda', 'Heru Nashiruddin', 2001, 160, 'Deleniti voluptates facere possimus voluptas voluptatem. Perferendis nulla est commodi expedita rem quam voluptas. Blanditiis a recusandae vero.'),
(192, 'Maiores blanditiis rem.', 'Makara Lazuardi', 'Galiono Heru Pradipta', 1976, 507, 'A voluptatum est explicabo dolores nam quae. Vero et molestiae et et accusantium. Ut voluptatibus quam id rerum incidunt quas.'),
(193, 'Impedit temporibus sint facilis.', 'Salwa Kusmawati', 'Yance Maryati', 1985, 348, 'Sint perferendis excepturi nobis perspiciatis voluptas magnam. Est aut sapiente officiis impedit qui molestias aliquam et. Nisi consectetur consequuntur cupiditate et.'),
(194, 'Aut minima ut.', 'Janet Shania Rahimah S.I.Kom', 'Arta Karman Suwarno S.Farm', 1974, 801, 'Repellendus dolorum dolores ut sint asperiores iure. Rerum error doloremque dolores omnis. Voluptatem dolor corporis amet voluptatibus odio cupiditate voluptates.'),
(195, 'Voluptatem voluptate aliquid.', 'Rusman Nainggolan M.Ak', 'Paulin Dewi Hartati S.T.', 1990, 918, 'Ea voluptas qui maxime ipsa ut inventore nulla. Impedit corrupti iure eos aliquid provident. Nihil quidem dolore voluptatem. Nemo neque fugiat nisi et numquam corrupti corporis.'),
(196, 'Vel vel est vel deserunt.', 'Kamidin Olga Napitupulu M.Kom.', 'Violet Utami S.E.I', 1982, 800, 'Officia ad autem eos aspernatur in et vel. Magni vero natus praesentium cupiditate. Eos sunt officia excepturi quasi aut.'),
(197, 'Veritatis beatae doloribus aut.', 'Rafid Pratama', 'Kamidin Hutagalung', 1977, 706, 'Et vel ducimus dignissimos tenetur est rerum suscipit. Ab sunt ut repellendus expedita repellat sequi. Vitae pariatur quibusdam illo.'),
(198, 'Quisquam sapiente soluta iste.', 'Hasim Damanik S.Kom', 'Johan Nugroho S.E.I', 2021, 836, 'Qui distinctio porro est esse iure quibusdam quia. Architecto tempore tenetur ut aut quos inventore. Quo temporibus vitae in. Dolores ut culpa temporibus nam omnis est.'),
(199, 'Omnis sed provident porro.', 'Gaman Makara Anggriawan M.Farm', 'Cinta Nuraini', 2023, 896, 'Mollitia repudiandae ducimus temporibus dolor qui dignissimos ducimus facilis. At placeat libero in. Cupiditate dolorem dolor dolor. Blanditiis incidunt corrupti placeat molestiae saepe dolorum nam.'),
(200, 'Reprehenderit et doloribus.', 'Kania Winarsih', 'Nurul Cindy Wastuti M.Pd', 1999, 330, 'Quas mollitia qui ut ex ex. In cum nesciunt deleniti consequatur beatae sit eum.'),
(201, 'Memulai Pemrograman Dengan CI 4', 'Rozak', 'Rozak Media', 2020, 200, 'Seperti biasa');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi_kategori` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int NOT NULL,
  `id_anggota` int DEFAULT NULL,
  `id_buku` int DEFAULT NULL,
  `tanggal_peminjaman` date DEFAULT NULL,
  `tanggal_pengembalian` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `id_anggota`, `id_buku`, `tanggal_peminjaman`, `tanggal_pengembalian`) VALUES
(3, 42, 102, '2023-06-30', '2023-07-04'),
(4, 2, 102, '2023-06-08', '2023-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id` int NOT NULL,
  `id_peminjaman` int DEFAULT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `denda` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id`, `id_peminjaman`, `tanggal_pengembalian`, `denda`) VALUES
(1, 4, '2023-07-08', 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_peminjaman` (`id_peminjaman`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
