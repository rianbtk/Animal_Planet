-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Okt 2021 pada 17.24
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_bank`
--

CREATE TABLE `shop_bank` (
  `id_bank` int(11) NOT NULL,
  `name_bank` varchar(100) NOT NULL,
  `logo_bank` varchar(40) NOT NULL,
  `state_bank` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `shop_bank`
--

INSERT INTO `shop_bank` (`id_bank`, `name_bank`, `logo_bank`, `state_bank`) VALUES
(1, 'Bank BCA', 'bca.png', 1),
(2, 'Bank BRI', 'bri.png', 1),
(3, 'Bank BNI', 'bni.png', 1),
(4, 'Bank Mandiri', 'mandiri.jpg', 1),
(5, 'Bank Mega', 'mega.png', 1),
(6, 'Bank Jatim', 'jatim.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_category`
--

CREATE TABLE `shop_category` (
  `id_category` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `state` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `shop_category`
--

INSERT INTO `shop_category` (`id_category`, `category`, `state`) VALUES
(1, 'Hewan Peliharaan', 1),
(8, 'Makanan Hewan', 1),
(6, 'Hewan Laga', 1),
(7, 'Kesehatan Hewan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_image_product`
--

CREATE TABLE `shop_image_product` (
  `id_image_product` int(11) NOT NULL,
  `id_product` int(11) NOT NULL DEFAULT 0,
  `image` varchar(100) NOT NULL DEFAULT '0',
  `token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_options`
--

CREATE TABLE `shop_options` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_provinsi` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `id_kab` int(11) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_page`
--

CREATE TABLE `shop_page` (
  `how_to_buy` text NOT NULL,
  `about_us` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `shop_page`
--

INSERT INTO `shop_page` (`how_to_buy`, `about_us`) VALUES
('<h3 style=\"text-align: center;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\"><strong>Beli Lewat Toko Online</strong></span></span></h3>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\">Pelanggan dapat melakukan pembelian dengan cara memilih produk lalu menambahkan kekeranjang. Setelah selesai pelanggan dapat melakukan pemesanan dengan cara memasukkan biodata diri pelanggan serta memilih kurir dan metode apa yang digunakan. Setelah selesai, pelanggan dapat melakukan pemesanan dengan klik tombol lakukan pemesanan. Setelah itu pelanggan akan mendapatkan kode pembelian anda melalui konfirmasi email. Anda dapat memantau pesanan anda di menu<strong> Cek Pesanan</strong>. Halaman ini juga digunakan untuk upload bukti transaksi yang dilakukan pelanggan (Bila melakukan pembayaran dari bank). Bila bukti transaksi bank telah benar maka pihak toko akan segera mengirim pesanan anda, anda dapat melihatnya melalui menu<strong> Cek Pesanan</strong>, setelah barang sampai pelanggan harus melakukan konfirmasi barang yang pihak toko kirim sudah sampai. Silahkan berbelanja.....</span></span></p>\r\n\r\n<h3 style=\"text-align: center;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\"><strong>Beli Lewat Kontak Tersedia</strong></span></span></h3>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\">Selain menggunakan toko online kami juga melayani pembelian melewati kontak. Pelanggan perlu menyebutkan produk apa saja yang mau di beli, keterngannya apa, jumlah berapa, pembayarannya lewat apa. Dan setelah pelanggan selesai. Pelanggan harus melakukan konfirmasi bukti transfer melalui kontak kami. Bila sudah fix maka pihak toko akan segera mengirim pesanan pelanggan. Namun segala &nbsp;transaksi ini tidak bisa pelanggan cek dari toko online kami. Karena toko online hanya khusus untuk pelanggan dengan cara pembelian ke toko online kami. Berbelanja yuk</span></span><span style=\"font-family: arial, helvetica, sans-serif;\">.....</span></p>\r\n', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_payment`
--

CREATE TABLE `shop_payment` (
  `id_payment` int(11) NOT NULL,
  `id_bank` int(11) NOT NULL,
  `number` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `shop_payment`
--

INSERT INTO `shop_payment` (`id_payment`, `id_bank`, `number`, `name`, `state`) VALUES
(1, 1, '11002299', 'ANGGIT AGUNG', 1),
(2, 2, '33774466', 'PANDU DWI LAKSONO', 1),
(3, 3, '22993366', 'FERRY JULYO', 1),
(4, 4, '55229966', 'AGUS SALIM H', 1),
(5, 6, '0887654776543', 'RIZAL ANHARI', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_product`
--

CREATE TABLE `shop_product` (
  `id_product` int(11) NOT NULL,
  `name_product` varchar(50) NOT NULL,
  `information_product` text NOT NULL,
  `price_product` int(11) NOT NULL,
  `discount_product` int(11) NOT NULL,
  `weight_product` int(11) NOT NULL,
  `category_product` int(11) NOT NULL,
  `stock_product` int(11) NOT NULL,
  `image_product` varchar(50) NOT NULL,
  `slug_product` text NOT NULL,
  `state_product` int(1) NOT NULL,
  `state_discount` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `shop_product`
--

INSERT INTO `shop_product` (`id_product`, `name_product`, `information_product`, `price_product`, `discount_product`, `weight_product`, `category_product`, `stock_product`, `image_product`, `slug_product`, `state_product`, `state_discount`) VALUES
(68, 'Kucing Anggura', 'Umur 7 bulan kawin silang jawa', 500000, 280000, 400, 1, 2, 'Produk2021-10-04-12-45-54.png', 'kucing', 1, 1),
(69, 'Burung Beo', 'Jantan umur 1 tahun, <br /><br /><br /><br />\r\nSuara dijamin mantap,<br /><br /><br /><br />\r\npemenang lomba kabupaten no 1', 1500000, 1250000, 400, 1, 4, 'Produk2021-10-10-20-31-53.png', 'burung_beo', 1, 1),
(70, 'Burung Kenari', 'Warna Orange,Merah,Biru,Ijo bisa request sesuai keinginan', 700000, 500000, 200, 1, 28, 'Produk2021-10-10-20-33-17.png', 'burung_kenari', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_session`
--

CREATE TABLE `shop_session` (
  `id` varchar(200) DEFAULT NULL,
  `ip_address` varchar(18) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `timestamp` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `shop_session`
--

INSERT INTO `shop_session` (`id`, `ip_address`, `data`, `timestamp`) VALUES
('hse9ppoj64825091t2a969i39q2jrd3c', '::1', '__ci_last_regenerate|i:1632405058;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTAshop|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1632405058'),
('gh47vejoibit3sgq68qnm3srceob50i8', '::1', '__ci_last_regenerate|i:1632405377;KCFINDER|a:0:{}CIPTAshop|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:2:\"10\";', '1632405377'),
('dh75bk72hc3b53gchvvs0kkqf5al2365', '::1', '__ci_last_regenerate|i:1632406452;KCFINDER|a:0:{}CIPTAshop|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:2:\"10\";', '1632406452'),
('vv6rn2c9bnclikhe25blvoicpc7av82j', '::1', '__ci_last_regenerate|i:1632406780;KCFINDER|a:0:{}CIPTAshop|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:1:\"2\";', '1632406780'),
('307n0g6qtevssmqfeoltq51dpo3n515r', '::1', '__ci_last_regenerate|i:1632406780;KCFINDER|a:0:{}CIPTAshop|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:1:\"2\";', '1632406873'),
('fmip1fqb69n7ojpm31cf4l02srj77d3p', '::1', '__ci_last_regenerate|i:1632454949;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTAshop|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1632455115'),
('7ohnca75ib4hr4gr52bh2reh8l8g0fkt', '::1', '__ci_last_regenerate|i:1632478282;KCFINDER|a:0:{}CIPTAshop|a:0:{}', '1632478561'),
('nr501l5pi91q6c6hfkirmvq5nm6n4lt3', '::1', '__ci_last_regenerate|i:1632545377;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTAshop|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1632545377'),
('h8c7hr93gn76ic2p446oo6ea1smhl318', '::1', '__ci_last_regenerate|i:1632545377;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTAshop|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1632545396'),
('1gp8sqtr3enupmd6n7c0oh5ptftub0gc', '::1', '__ci_last_regenerate|i:1632616223;error|s:53:\"Maaf Login Gagal Dilakukan Silahkan Cek Kembali admin\";__ci_vars|a:2:{s:5:\"error\";s:3:\"old\";s:7:\"success\";s:3:\"old\";}KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";myAqua|s:1:\"2\";', '1632616223'),
('uhbkphiebm3afn2v7554835v5ghbd4s2', '::1', '__ci_last_regenerate|i:1632618789;error|s:53:\"Maaf Login Gagal Dilakukan Silahkan Cek Kembali admin\";__ci_vars|a:2:{s:5:\"error\";s:3:\"old\";s:7:\"success\";s:3:\"old\";}KCFINDER|a:0:{}CIPTASHOP|a:0:{}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";', '1632618789'),
('ovnipspagadprnj169fo33msr7orjjgt', '::1', '__ci_last_regenerate|i:1632618789;error|s:53:\"Maaf Login Gagal Dilakukan Silahkan Cek Kembali admin\";__ci_vars|a:2:{s:5:\"error\";s:3:\"old\";s:7:\"success\";s:3:\"old\";}KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";myAqua|s:1:\"2\";', '1632619015'),
('5abebda94or5ai67k91fob91h61fuqpo', '::1', '__ci_last_regenerate|i:1632643574;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}', '1632643574'),
('2p22u6st9nfkrsiieji1u9ugftusbiug', '::1', '__ci_last_regenerate|i:1632643938;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:30:\"Data Toko Berhasil Di Perbarui\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}', '1632643938'),
('kjp290rcvpul2inm5ub83lfr7skd2rd7', '::1', '__ci_last_regenerate|i:1632644324;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:30:\"Data Toko Berhasil Di Perbarui\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}', '1632644324'),
('6df5e2tjn258m7crh9tpiess3bps3369', '::1', '__ci_last_regenerate|i:1632644324;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:30:\"Data Toko Berhasil Di Perbarui\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}', '1632644407'),
('0vor9koe0g14vgohpc1bcm15lhq3d34u', '::1', '__ci_last_regenerate|i:1632664641;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:39:\"Data Data Pembayaran Berhasil Di Simpan\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}', '1632664641'),
('s53plb8feoqn9fjd3mr50jromia7aa2i', '::1', '__ci_last_regenerate|i:1632665758;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:39:\"Data Data Pembayaran Berhasil Di Simpan\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}', '1632665758'),
('a2l0136ohf78kh4rq4fa6ndi19vd9puf', '::1', '__ci_last_regenerate|i:1632666276;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> AGUS </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}myAqua|s:2:\"13\";', '1632666276'),
('ebhumrlmrp1h0dcgci7vdu7l3u2cs8ob', '::1', '__ci_last_regenerate|i:1632666820;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}myAqua|s:1:\"2\";', '1632666820'),
('6e5vnaggl0jd5t2k49i27td8v0bh3uva', '::1', '__ci_last_regenerate|i:1632667123;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}myAqua|s:1:\"2\";', '1632667123'),
('2butk9e1oacn5vm126c7tvt2v4o6d91q', '::1', '__ci_last_regenerate|i:1632667506;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}myAqua|s:1:\"2\";', '1632667506'),
('3s9bp7pci2918ogr2qbuejd1cvl4qf40', '::1', '__ci_last_regenerate|i:1632667909;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}myAqua|s:1:\"2\";', '1632667909'),
('lubuli79a9pan4mngj2gtiogd40mbfg5', '::1', '__ci_last_regenerate|i:1632669847;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}myAqua|s:1:\"2\";', '1632669847'),
('ffc4aq8bc3sdfl72oq3jbj79g561hvtl', '::1', '__ci_last_regenerate|i:1632669847;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}myAqua|s:1:\"2\";', '1632669847'),
('1ie9m3q2q8po38l3k4e4tipgih2tm05p', '::1', '__ci_last_regenerate|i:1632682758;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1632682758'),
('uebdpqcfrsneu8pfg0m8d248dcdn5dqi', '::1', '__ci_last_regenerate|i:1632682758;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1632682794'),
('nlakgof1ak39ibn5lnse45c4h43e6mb1', '::1', '__ci_last_regenerate|i:1632711393;', '1632711461'),
('vi7222ob3qkg1lepvfrpdpe01jcdfiaa', '::1', '__ci_last_regenerate|i:1632762222;', '1632762226'),
('k568o26taqapn4ndkq983uoev46kg6v0', '::1', '__ci_last_regenerate|i:1632914885;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1632914885'),
('8lfjk7q4u4tj9fug8r2a311f6m9bo9na', '::1', '__ci_last_regenerate|i:1632914885;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:2:\"15\";', '1632915176'),
('stui959fh5p5irjjv1g9jqsfrp0h7hku', '::1', '__ci_last_regenerate|i:1632979042;', '1632979042'),
('qtes1qajdqgi2fk1q94pa3ekl6ihnu7u', '::1', '__ci_last_regenerate|i:1632979582;', '1632979582'),
('9opuvigqdi5rt4n7v2pamn12e484ikn4', '::1', '__ci_last_regenerate|i:1632980300;', '1632980300'),
('ef2j6fnk0cv5e86nd4ggeelm6dfs88fi', '::1', '__ci_last_regenerate|i:1632980693;', '1632980693'),
('45t9ii27u77c7rmauqs239bb6vlff7ns', '::1', '__ci_last_regenerate|i:1632980693;', '1632980716'),
('jn45tkk2vo36sfscrlvspfp07ckv6d80', '::1', '__ci_last_regenerate|i:1633016261;', '1633016261'),
('m0at12bioatu6uc1vjvv49dfa4km2vdh', '::1', '__ci_last_regenerate|i:1633016261;', '1633016399'),
('1knoqfesdmiuurja1et1a5314its53m2', '::1', '__ci_last_regenerate|i:1633069377;', '1633069387'),
('d7ri572q15cun03juoo0fe081r8s9kl3', '::1', '__ci_last_regenerate|i:1633082108;', '1633082108'),
('2l3qhb82e8vkn7cfeg5sr1idr99300t4', '::1', '__ci_last_regenerate|i:1633082108;', '1633082160'),
('2btm6qa6o7prr7o058hf4tgkdskln2o0', '::1', '__ci_last_regenerate|i:1633158731;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633158731'),
('riqmktg72pnon0chhmh42g20ahd79tir', '::1', '__ci_last_regenerate|i:1633159149;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:3200000;s:11:\"total_items\";d:2;s:32:\"e80ef414cb6f1a69e8f6002da33b1357\";a:11:{s:2:\"id\";s:14:\"20211002141250\";s:10:\"id_product\";s:2:\"67\";s:3:\"qty\";d:2;s:4:\"slug\";s:5:\"manuk\";s:5:\"price\";d:1600000;s:5:\"berat\";i:600;s:4:\"name\";s:5:\"Manuk\";s:11:\"information\";s:37:\"[Jumlah : 2] &rarr; <b>kontol</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-02-14-08-29.png\";s:5:\"rowid\";s:32:\"e80ef414cb6f1a69e8f6002da33b1357\";s:8:\"subtotal\";d:3200000;}}', '1633159149'),
('r65udq4jed65m703g6p9rlehqfajmivg', '::1', '__ci_last_regenerate|i:1633159457;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:3200000;s:11:\"total_items\";d:2;s:32:\"e80ef414cb6f1a69e8f6002da33b1357\";a:11:{s:2:\"id\";s:14:\"20211002141250\";s:10:\"id_product\";s:2:\"67\";s:3:\"qty\";d:2;s:4:\"slug\";s:5:\"manuk\";s:5:\"price\";d:1600000;s:5:\"berat\";i:600;s:4:\"name\";s:5:\"Manuk\";s:11:\"information\";s:37:\"[Jumlah : 2] &rarr; <b>kontol</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-02-14-08-29.png\";s:5:\"rowid\";s:32:\"e80ef414cb6f1a69e8f6002da33b1357\";s:8:\"subtotal\";d:3200000;}}', '1633159457'),
('72mg84bb4kfj2hcanj574kq09i2gednn', '::1', '__ci_last_regenerate|i:1633159938;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:3200000;s:11:\"total_items\";d:2;s:32:\"e80ef414cb6f1a69e8f6002da33b1357\";a:11:{s:2:\"id\";s:14:\"20211002141250\";s:10:\"id_product\";s:2:\"67\";s:3:\"qty\";d:2;s:4:\"slug\";s:5:\"manuk\";s:5:\"price\";d:1600000;s:5:\"berat\";i:600;s:4:\"name\";s:5:\"Manuk\";s:11:\"information\";s:37:\"[Jumlah : 2] &rarr; <b>kontol</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-02-14-08-29.png\";s:5:\"rowid\";s:32:\"e80ef414cb6f1a69e8f6002da33b1357\";s:8:\"subtotal\";d:3200000;}}', '1633159938'),
('6o91sofirgroi2dbckun1qhrhgacanqv', '::1', '__ci_last_regenerate|i:1633160521;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:3200000;s:11:\"total_items\";d:2;s:32:\"e80ef414cb6f1a69e8f6002da33b1357\";a:11:{s:2:\"id\";s:14:\"20211002141250\";s:10:\"id_product\";s:2:\"67\";s:3:\"qty\";d:2;s:4:\"slug\";s:5:\"manuk\";s:5:\"price\";d:1600000;s:5:\"berat\";i:600;s:4:\"name\";s:5:\"Manuk\";s:11:\"information\";s:37:\"[Jumlah : 2] &rarr; <b>kontol</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-02-14-08-29.png\";s:5:\"rowid\";s:32:\"e80ef414cb6f1a69e8f6002da33b1357\";s:8:\"subtotal\";d:3200000;}}', '1633160521'),
('gm4p7vfiqop1mc7io1b9orth245ce9sn', '::1', '__ci_last_regenerate|i:1633160521;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633160619'),
('8da8924bqbjh9trafsall00qq9d5k992', '::1', '__ci_last_regenerate|i:1633325836;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633325836'),
('6tn4s747aobrig4lhbua8scukk5kp68a', '::1', '__ci_last_regenerate|i:1633326304;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633326304'),
('s06a9i16su4kkr6i4dsqb8t6icgjvosa', '::1', '__ci_last_regenerate|i:1633326688;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"5d6c0153b2b77854be76e8d510770c40\";a:11:{s:2:\"id\";s:14:\"20211004124707\";s:10:\"id_product\";s:2:\"68\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:400;s:4:\"name\";s:6:\"kucing\";s:11:\"information\";s:33:\"[Jumlah : 1] &rarr; <b>A1</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-04-12-45-54.png\";s:5:\"rowid\";s:32:\"5d6c0153b2b77854be76e8d510770c40\";s:8:\"subtotal\";d:280000;}}', '1633326688'),
('al229v97d4qi9tu70ocvv62bcj6qlelh', '::1', '__ci_last_regenerate|i:1633326688;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"5d6c0153b2b77854be76e8d510770c40\";a:11:{s:2:\"id\";s:14:\"20211004124707\";s:10:\"id_product\";s:2:\"68\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:400;s:4:\"name\";s:6:\"kucing\";s:11:\"information\";s:33:\"[Jumlah : 1] &rarr; <b>A1</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-04-12-45-54.png\";s:5:\"rowid\";s:32:\"5d6c0153b2b77854be76e8d510770c40\";s:8:\"subtotal\";d:280000;}}', '1633326962'),
('56lejdduol0bhv2iht6nv0vs9a8ubt64', '::1', '__ci_last_regenerate|i:1633329542;', '1633329542'),
('o5fbmdphncepip997fd56n20h62jl1i5', '::1', '__ci_last_regenerate|i:1633330812;', '1633330812'),
('oj2n28872gsm3hkr2makiag0opcaa3df', '::1', '__ci_last_regenerate|i:1633334470;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633334470'),
('g4po64u3vf4n271fe64q7sfj72qj1pll', '::1', '__ci_last_regenerate|i:1633334805;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633334805'),
('parhdgcum67i1id381ne66vjsif7elf4', '::1', '__ci_last_regenerate|i:1633337665;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633337665'),
('0rkurp639jqhcadi1fj3km1db4rjkv9g', '::1', '__ci_last_regenerate|i:1633337665;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633337673'),
('qi3c0snpbn6paq0t7ltfjo6nlf9c9ec6', '::1', '__ci_last_regenerate|i:1633651785;', '1633651785'),
('mpk22u108eq8hhb5ul13rb84cgdijje3', '::1', '__ci_last_regenerate|i:1633684741;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633684846'),
('jsvneuto1moo0h9jhq2ot67mguqbpkq2', '::1', '__ci_last_regenerate|i:1633870963;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633870963'),
('6cv2m78p465t8g8hieopu7cpg60uoedr', '::1', '__ci_last_regenerate|i:1633872543;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633872543'),
('6chga7pga40jcfnc761ki37akuuletek', '::1', '__ci_last_regenerate|i:1633872877;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633872877'),
('vhtc42f1c6mq5ufi3srh2kf8828iql21', '::1', '__ci_last_regenerate|i:1633873254;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633873254'),
('r6r3ae5ct8gb1rsvjn9jj9858n4f27hc', '::1', '__ci_last_regenerate|i:1633873579;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633873579'),
('g91f23hp3lnghgt7teekib2rg1u1nrre', '::1', '__ci_last_regenerate|i:1633873899;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633873899'),
('qtp4rsqssgc5v2e9r2rh09hf33rps0il', '::1', '__ci_last_regenerate|i:1633873899;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633874002'),
('ujtsjktie4ckems6ijtpq2o2ias3rkc0', '::1', '__ci_last_regenerate|i:1633933318;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:500000;s:11:\"total_items\";d:1;s:32:\"1fd4b53ab52567910776a399095d4d61\";a:11:{s:2:\"id\";s:14:\"20211011131916\";s:10:\"id_product\";s:2:\"70\";s:3:\"qty\";d:1;s:4:\"slug\";s:13:\"burung_kenari\";s:5:\"price\";d:500000;s:5:\"berat\";i:200;s:4:\"name\";s:13:\"Burung Kenari\";s:11:\"information\";s:33:\"[Jumlah : 1] &rarr; <b>dd</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-10-20-33-17.png\";s:5:\"rowid\";s:32:\"1fd4b53ab52567910776a399095d4d61\";s:8:\"subtotal\";d:500000;}}', '1633933318'),
('nobf2491ppubda3hps9q24taep4lqm8j', '::1', '__ci_last_regenerate|i:1633933896;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:500000;s:11:\"total_items\";d:1;s:32:\"1fd4b53ab52567910776a399095d4d61\";a:11:{s:2:\"id\";s:14:\"20211011131916\";s:10:\"id_product\";s:2:\"70\";s:3:\"qty\";d:1;s:4:\"slug\";s:13:\"burung_kenari\";s:5:\"price\";d:500000;s:5:\"berat\";i:200;s:4:\"name\";s:13:\"Burung Kenari\";s:11:\"information\";s:33:\"[Jumlah : 1] &rarr; <b>dd</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-10-20-33-17.png\";s:5:\"rowid\";s:32:\"1fd4b53ab52567910776a399095d4d61\";s:8:\"subtotal\";d:500000;}}', '1633933896'),
('jdp5u1sok7mpve96rrs6abvoif3o4t6t', '::1', '__ci_last_regenerate|i:1633934269;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:500000;s:11:\"total_items\";d:1;s:32:\"1fd4b53ab52567910776a399095d4d61\";a:11:{s:2:\"id\";s:14:\"20211011131916\";s:10:\"id_product\";s:2:\"70\";s:3:\"qty\";d:1;s:4:\"slug\";s:13:\"burung_kenari\";s:5:\"price\";d:500000;s:5:\"berat\";i:200;s:4:\"name\";s:13:\"Burung Kenari\";s:11:\"information\";s:33:\"[Jumlah : 1] &rarr; <b>dd</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-10-20-33-17.png\";s:5:\"rowid\";s:32:\"1fd4b53ab52567910776a399095d4d61\";s:8:\"subtotal\";d:500000;}}', '1633934269'),
('0qr88ous625hn41o38f8vgd710a5kjtk', '::1', '__ci_last_regenerate|i:1633934269;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:500000;s:11:\"total_items\";d:1;s:32:\"1fd4b53ab52567910776a399095d4d61\";a:11:{s:2:\"id\";s:14:\"20211011131916\";s:10:\"id_product\";s:2:\"70\";s:3:\"qty\";d:1;s:4:\"slug\";s:13:\"burung_kenari\";s:5:\"price\";d:500000;s:5:\"berat\";i:200;s:4:\"name\";s:13:\"Burung Kenari\";s:11:\"information\";s:33:\"[Jumlah : 1] &rarr; <b>dd</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-10-20-33-17.png\";s:5:\"rowid\";s:32:\"1fd4b53ab52567910776a399095d4d61\";s:8:\"subtotal\";d:500000;}}', '1633934272'),
('r7mj9pi63624qb0t6dsjk2t8b48q749v', '::1', '__ci_last_regenerate|i:1634031060;cart_contents|a:3:{s:10:\"cart_total\";d:1250000;s:11:\"total_items\";d:1;s:32:\"0ecbc24ae7b587cd48e1152ce30e3926\";a:11:{s:2:\"id\";s:14:\"20211012162933\";s:10:\"id_product\";s:2:\"69\";s:3:\"qty\";d:1;s:4:\"slug\";s:10:\"burung_beo\";s:5:\"price\";d:1250000;s:5:\"berat\";i:400;s:4:\"name\";s:10:\"Burung Beo\";s:11:\"information\";s:39:\"[Jumlah : 1] &rarr; <b>Beo Jawa</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-10-20-31-53.png\";s:5:\"rowid\";s:32:\"0ecbc24ae7b587cd48e1152ce30e3926\";s:8:\"subtotal\";d:1250000;}}', '1634031060'),
('vvc49r33jt4qqebvnoksa1afo9ci9hm7', '::1', '__ci_last_regenerate|i:1634031387;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1634031387'),
('il1ekaitmhqc7qlpme1l8ndu4d0kvgpo', '::1', '__ci_last_regenerate|i:1634032787;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1634032787'),
('sqp347v786v8ntstpdl06j0ifsnkc45b', '::1', '__ci_last_regenerate|i:1634032787;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1634032905'),
('8cms987jqirpce6rvvmor4h26mnbkdnm', '::1', '__ci_last_regenerate|i:1634204721;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1634204721'),
('vpedva3ggr93q0bjv5gl94ngb5mrhh4r', '::1', '__ci_last_regenerate|i:1634204721;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1634204850'),
('7kqipjultrsbecr0sla33vn51icbkhg3', '::1', '__ci_last_regenerate|i:1634224758;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:1:\"1\";', '1634224758'),
('e9tjrp7gjre642a611l374ujbsdoo7s1', '::1', '__ci_last_regenerate|i:1634224758;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:1:\"1\";', '1634224829');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_setting`
--

CREATE TABLE `shop_setting` (
  `shortname_shop` varchar(20) NOT NULL,
  `longname_shop` varchar(100) NOT NULL,
  `motto_shop` varchar(100) NOT NULL,
  `location_shop` varchar(120) NOT NULL,
  `name_manage` varchar(100) NOT NULL,
  `wa_contact` varchar(20) NOT NULL,
  `phone_contact` varchar(20) NOT NULL,
  `email_shop` varchar(30) NOT NULL,
  `propinsi_shop` varchar(20) NOT NULL,
  `kabupaten_shop` varchar(20) NOT NULL,
  `logo_shop` varchar(50) NOT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `google` varchar(300) DEFAULT NULL,
  `instagram` varchar(300) DEFAULT NULL,
  `youtube` varchar(300) DEFAULT NULL,
  `pos` int(1) DEFAULT NULL,
  `jne` int(1) DEFAULT NULL,
  `tiki` int(1) DEFAULT NULL,
  `gratis_ongkir_wilayah` int(1) DEFAULT NULL,
  `cod_wilayah` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `shop_setting`
--

INSERT INTO `shop_setting` (`shortname_shop`, `longname_shop`, `motto_shop`, `location_shop`, `name_manage`, `wa_contact`, `phone_contact`, `email_shop`, `propinsi_shop`, `kabupaten_shop`, `logo_shop`, `facebook`, `twitter`, `google`, `instagram`, `youtube`, `pos`, `jne`, `tiki`, `gratis_ongkir_wilayah`, `cod_wilayah`) VALUES
('ANET', 'ANIMALS PLANET', 'KHUALITAS TERJAMIN', 'Bojonegoro', 'PYOYEK III', '08515654007', '08515654007', 'gusalim04@gmail.com', '11', '80', 'Logo2021-09-13-00-01-05.png', 'https://www.facebook.com/RianP01/', 'https://twitter.com/Rian', '', 'https://instagram.com/Rian', '', 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_skin`
--

CREATE TABLE `shop_skin` (
  `id_skin` int(3) NOT NULL,
  `skin` varchar(15) NOT NULL,
  `example` varchar(50) NOT NULL,
  `skin_status` int(2) NOT NULL,
  `ket` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `shop_skin`
--

INSERT INTO `shop_skin` (`id_skin`, `skin`, `example`, `skin_status`, `ket`) VALUES
(1, 'style-1', 'style-1.png', 0, 'tema 1'),
(2, 'style-2', 'style-2.png', 0, 'tema 2'),
(3, 'style-3', 'style-3.png', 0, 'tema 3'),
(4, 'style-4', 'style-4.png', 1, 'tema 4'),
(5, 'style-5', 'style-5.png', 0, 'tema 5'),
(6, 'style-6', 'style-6.png', 0, 'tema 6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_slider`
--

CREATE TABLE `shop_slider` (
  `id_slider` int(11) NOT NULL,
  `slider` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `shop_slider`
--

INSERT INTO `shop_slider` (`id_slider`, `slider`) VALUES
(7, 'Slider2021-09-13-03-28-24.png'),
(8, 'Slider2021-09-13-03-29-01.png'),
(9, 'Slider2021-09-13-03-31-43.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_testimoni`
--

CREATE TABLE `shop_testimoni` (
  `id_testimony` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `time` datetime DEFAULT current_timestamp(),
  `testimony` text DEFAULT NULL,
  `state` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `shop_testimoni`
--

INSERT INTO `shop_testimoni` (`id_testimony`, `email`, `name`, `time`, `testimony`, `state`) VALUES
(1, 'RianBtk@gmail.com', 'RianBtk', '2020-03-26 16:22:30', 'BTK', 1),
(2, 'pandu@gmail.com', 'PANDU', '2021-09-17 14:52:26', 'Good', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_transaction`
--

CREATE TABLE `shop_transaction` (
  `id_transaction` varchar(100) NOT NULL,
  `no_invoice` varchar(40) NOT NULL,
  `kode_pembelian` varchar(40) NOT NULL,
  `name_customer` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `courier` varchar(5) NOT NULL,
  `packet` varchar(30) DEFAULT NULL,
  `to_customer` varchar(3) DEFAULT NULL,
  `price_ongkir` int(11) NOT NULL,
  `time_transaction` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_transaction` int(11) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `payment_transaction` int(11) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `bukti` varchar(50) DEFAULT NULL,
  `no_resi` varchar(50) DEFAULT NULL,
  `state` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `shop_transaction`
--

INSERT INTO `shop_transaction` (`id_transaction`, `no_invoice`, `kode_pembelian`, `name_customer`, `email`, `province`, `city`, `address`, `courier`, `packet`, `to_customer`, `price_ongkir`, `time_transaction`, `total_transaction`, `bank`, `payment_transaction`, `phone`, `bukti`, `no_resi`, `state`) VALUES
('20211014164029', 'INV-000000001', 'l6i5B3uY93', 'RIAN', 'gusalim04@gmail.com', 10, 348, 'Jl bungan n0 21', 'jne', 'OKE', '3-6', 12000, '2021-10-14 09:40:29', 1012000, '1', 1, '081333817060', 'Bukti2021-10-14-16-42-07.png', '6789279665768', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_transaction_details`
--

CREATE TABLE `shop_transaction_details` (
  `id_transaction` varchar(100) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty_transaction` int(11) NOT NULL,
  `information` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `shop_transaction_details`
--

INSERT INTO `shop_transaction_details` (`id_transaction`, `id_product`, `qty_transaction`, `information`) VALUES
('20210923212055', 66, 1, '[Jumlah : 1] &rarr; <b>asa</b><br>'),
('20211014164029', 70, 2, '[Jumlah : 2] &rarr; <b>Kenari Jawa</b><br>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_user`
--

CREATE TABLE `shop_user` (
  `id_user` int(11) NOT NULL,
  `name_user` varchar(100) NOT NULL,
  `username_user` varchar(30) NOT NULL,
  `password_user` text NOT NULL,
  `access_user` int(1) NOT NULL,
  `state_user` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `shop_user`
--

INSERT INTO `shop_user` (`id_user`, `name_user`, `username_user`, `password_user`, `access_user`, `state_user`) VALUES
(1, 'RIAN', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1),
(2, 'AGUS', 'admin1', '827ccb0eea8a706c4c34a16891f84e7b', 2, 1),
(3, 'EKO', 'admin2', '827ccb0eea8a706c4c34a16891f84e7b', 3, 1),
(15, 'FERRY', 'bigboss', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `shop_bank`
--
ALTER TABLE `shop_bank`
  ADD PRIMARY KEY (`id_bank`) USING BTREE;

--
-- Indeks untuk tabel `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id_category`) USING BTREE;

--
-- Indeks untuk tabel `shop_image_product`
--
ALTER TABLE `shop_image_product`
  ADD PRIMARY KEY (`id_image_product`) USING BTREE;

--
-- Indeks untuk tabel `shop_options`
--
ALTER TABLE `shop_options`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `shop_payment`
--
ALTER TABLE `shop_payment`
  ADD PRIMARY KEY (`id_payment`) USING BTREE;

--
-- Indeks untuk tabel `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id_product`) USING BTREE;

--
-- Indeks untuk tabel `shop_skin`
--
ALTER TABLE `shop_skin`
  ADD PRIMARY KEY (`id_skin`) USING BTREE;

--
-- Indeks untuk tabel `shop_slider`
--
ALTER TABLE `shop_slider`
  ADD PRIMARY KEY (`id_slider`) USING BTREE;

--
-- Indeks untuk tabel `shop_testimoni`
--
ALTER TABLE `shop_testimoni`
  ADD PRIMARY KEY (`id_testimony`) USING BTREE;

--
-- Indeks untuk tabel `shop_transaction`
--
ALTER TABLE `shop_transaction`
  ADD PRIMARY KEY (`id_transaction`) USING BTREE;

--
-- Indeks untuk tabel `shop_user`
--
ALTER TABLE `shop_user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `shop_bank`
--
ALTER TABLE `shop_bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `shop_image_product`
--
ALTER TABLE `shop_image_product`
  MODIFY `id_image_product` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `shop_options`
--
ALTER TABLE `shop_options`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `shop_payment`
--
ALTER TABLE `shop_payment`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `shop_skin`
--
ALTER TABLE `shop_skin`
  MODIFY `id_skin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `shop_slider`
--
ALTER TABLE `shop_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `shop_testimoni`
--
ALTER TABLE `shop_testimoni`
  MODIFY `id_testimony` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `shop_user`
--
ALTER TABLE `shop_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
