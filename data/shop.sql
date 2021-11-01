-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Nov 2021 pada 07.50
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

--
-- Dumping data untuk tabel `shop_options`
--

INSERT INTO `shop_options` (`id`, `id_provinsi`, `id_kab`, `state`) VALUES
(1, 11, 80, '1'),
(2, 11, 80, '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_page`
--

CREATE TABLE `shop_page` (
  `how_to_buy` text NOT NULL,
  `about_us` text NOT NULL,
  `how_to_join` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `shop_page`
--

INSERT INTO `shop_page` (`how_to_buy`, `about_us`, `how_to_join`) VALUES
('<h3 style=\"text-align: center;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\"><strong>Beli Lewat Toko Online</strong></span></span></h3>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\">Pelanggan dapat melakukan pembelian dengan cara memilih produk lalu menambahkan kekeranjang. Setelah selesai pelanggan dapat melakukan pemesanan dengan cara memasukkan biodata diri pelanggan serta memilih kurir dan metode apa yang digunakan. Setelah selesai, pelanggan dapat melakukan pemesanan dengan klik tombol lakukan pemesanan. Setelah itu pelanggan akan mendapatkan kode pembelian anda melalui konfirmasi email. Anda dapat memantau pesanan anda di menu<strong> Cek Pesanan</strong>. Halaman ini juga digunakan untuk upload bukti transaksi yang dilakukan pelanggan (Bila melakukan pembayaran dari bank). Bila bukti transaksi bank telah benar maka pihak toko akan segera mengirim pesanan anda, anda dapat melihatnya melalui menu<strong> Cek Pesanan</strong>, setelah barang sampai pelanggan harus melakukan konfirmasi barang yang pihak toko kirim sudah sampai. Silahkan berbelanja.....</span></span></p>\r\n\r\n<h3 style=\"text-align: center;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\"><strong>Beli Lewat Kontak Tersedia</strong></span></span></h3>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\">Selain menggunakan toko online kami juga melayani pembelian melewati kontak. Pelanggan perlu menyebutkan produk apa saja yang mau di beli, keterngannya apa, jumlah berapa, pembayarannya lewat apa. Dan setelah pelanggan selesai. Pelanggan harus melakukan konfirmasi bukti transfer melalui kontak kami. Bila sudah fix maka pihak toko akan segera mengirim pesanan pelanggan. Namun segala &nbsp;transaksi ini tidak bisa pelanggan cek dari toko online kami. Karena toko online hanya khusus untuk pelanggan dengan cara pembelian ke toko online kami. Berbelanja yuk</span></span><span style=\"font-family: arial, helvetica, sans-serif;\">.....</span></p>\r\n', '', '');

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
(68, 'Kucing Anggura', 'Umur 7 bulan kawin silang jawa', 500000, 280000, 400, 1, 1, 'Produk2021-10-04-12-45-54.png', 'kucing', 1, 1),
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
('har0hbgdkhikq6de61kqdtnmggo61tv4', '::1', '__ci_last_regenerate|i:1634870119;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1634870119'),
('redukha2dm7cce4vc4lus66t4l4asjr7', '::1', '__ci_last_regenerate|i:1634870421;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1634870421'),
('jfud1fb167ca446452ks61ggadktlpne', '::1', '__ci_last_regenerate|i:1634870938;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1634870938'),
('nkr0r2erq6a10bimn2l0cfikpmafdjml', '::1', '__ci_last_regenerate|i:1634871251;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1634871251'),
('h9i0qah86h9h8vleude3a18btjp3rt64', '::1', '__ci_last_regenerate|i:1634871780;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1634871780'),
('endfj7e46vlatnfsjsqio7l61od542jc', '::1', '__ci_last_regenerate|i:1634871780;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1634871901'),
('ldntfofps27g0t1deuc1i45k81bvbp6s', '::1', '__ci_last_regenerate|i:1635082061;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635082061'),
('9vc8jpj03mtp4eo91aomv989jg0koull', '::1', '__ci_last_regenerate|i:1635083318;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635083318'),
('1a3ev823p26hjta5lmg0e68sicq2o9u1', '::1', '__ci_last_regenerate|i:1635083318;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635083559'),
('e1bfjh7kt18j76v27dnt53o9bq8a7ldq', '::1', '__ci_last_regenerate|i:1635140626;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635140655'),
('subtf0ade1ti67dqforg9v178b7tmsb4', '::1', '__ci_last_regenerate|i:1635487332;cart_contents|a:3:{s:10:\"cart_total\";d:500000;s:11:\"total_items\";d:1;s:32:\"dd1bf46e4051f2809792415ab7605897\";a:11:{s:2:\"id\";s:14:\"20211029125544\";s:10:\"id_product\";s:2:\"70\";s:3:\"qty\";d:1;s:4:\"slug\";s:13:\"burung_kenari\";s:5:\"price\";d:500000;s:5:\"berat\";i:200;s:4:\"name\";s:13:\"Burung Kenari\";s:11:\"information\";s:32:\"[Jumlah : 1] &rarr; <b>v</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-10-20-33-17.png\";s:5:\"rowid\";s:32:\"dd1bf46e4051f2809792415ab7605897\";s:8:\"subtotal\";d:500000;}}KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635487332'),
('m62eolvs76b3t0gs7ul61vvh30tkcusr', '::1', '__ci_last_regenerate|i:1635487774;cart_contents|a:3:{s:10:\"cart_total\";d:500000;s:11:\"total_items\";d:1;s:32:\"dd1bf46e4051f2809792415ab7605897\";a:11:{s:2:\"id\";s:14:\"20211029125544\";s:10:\"id_product\";s:2:\"70\";s:3:\"qty\";d:1;s:4:\"slug\";s:13:\"burung_kenari\";s:5:\"price\";d:500000;s:5:\"berat\";i:200;s:4:\"name\";s:13:\"Burung Kenari\";s:11:\"information\";s:32:\"[Jumlah : 1] &rarr; <b>v</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-10-20-33-17.png\";s:5:\"rowid\";s:32:\"dd1bf46e4051f2809792415ab7605897\";s:8:\"subtotal\";d:500000;}}KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635487774'),
('1kjdn27qaco8g7nfqjm8rkuvtcfvsdvb', '::1', '__ci_last_regenerate|i:1635489020;cart_contents|a:3:{s:10:\"cart_total\";d:500000;s:11:\"total_items\";d:1;s:32:\"dd1bf46e4051f2809792415ab7605897\";a:11:{s:2:\"id\";s:14:\"20211029125544\";s:10:\"id_product\";s:2:\"70\";s:3:\"qty\";d:1;s:4:\"slug\";s:13:\"burung_kenari\";s:5:\"price\";d:500000;s:5:\"berat\";i:200;s:4:\"name\";s:13:\"Burung Kenari\";s:11:\"information\";s:32:\"[Jumlah : 1] &rarr; <b>v</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-10-20-33-17.png\";s:5:\"rowid\";s:32:\"dd1bf46e4051f2809792415ab7605897\";s:8:\"subtotal\";d:500000;}}KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635489020'),
('nsmg6k7gk5ds1h77om001abl0lk49u7o', '::1', '__ci_last_regenerate|i:1635489020;cart_contents|a:3:{s:10:\"cart_total\";d:500000;s:11:\"total_items\";d:1;s:32:\"dd1bf46e4051f2809792415ab7605897\";a:11:{s:2:\"id\";s:14:\"20211029125544\";s:10:\"id_product\";s:2:\"70\";s:3:\"qty\";d:1;s:4:\"slug\";s:13:\"burung_kenari\";s:5:\"price\";d:500000;s:5:\"berat\";i:200;s:4:\"name\";s:13:\"Burung Kenari\";s:11:\"information\";s:32:\"[Jumlah : 1] &rarr; <b>v</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-10-20-33-17.png\";s:5:\"rowid\";s:32:\"dd1bf46e4051f2809792415ab7605897\";s:8:\"subtotal\";d:500000;}}KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635489023'),
('h1vgona5gvdqk8ss3enefq6ovrhqsst9', '::1', '__ci_last_regenerate|i:1635659403;', '1635659432'),
('gfkhvm341e1dnn3gr3r7njh57g7b87oa', '::1', '__ci_last_regenerate|i:1635643566;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635643897'),
('0rieeret522k4fpaic0rhcluv5fj0gv2', '::1', '__ci_last_regenerate|i:1635660245;', '1635660246'),
('uc7tejmq4d3pkt3tednue6j76rrvivhd', '::1', '__ci_last_regenerate|i:1635660255;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635660372'),
('1bcf0kvfogpmhqdg12tb131o4aok1rf1', '::1', '__ci_last_regenerate|i:1635687885;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635687885'),
('eihk2jte4j8oe2petk8v4ioaihf57teq', '::1', '__ci_last_regenerate|i:1635688190;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635688190'),
('b4nqhjt6noe3e9jpr8bg9d29o1t7ncn4', '::1', '__ci_last_regenerate|i:1635688710;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}product|s:3:\"beo\";price|N;filter-dis|N;stock|N;weight|N;category|N;', '1635688710'),
('p3nfq4vr4nr0h1jmst7f6q098icpiqtc', '::1', '__ci_last_regenerate|i:1635689882;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}product|s:3:\"beo\";price|N;filter-dis|N;stock|N;weight|N;category|N;', '1635689882'),
('c9qh67q165l2ta5p69oqlaf3bncp01tp', '::1', '__ci_last_regenerate|i:1635690831;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}product|s:3:\"beo\";price|N;filter-dis|N;stock|N;weight|N;category|N;', '1635690831'),
('s1bke5c1bcs782m6035kid4l92rahaqm', '::1', '__ci_last_regenerate|i:1635690831;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}product|s:3:\"beo\";price|N;filter-dis|N;stock|N;weight|N;category|N;', '1635690969'),
('n8en31qun9m4343o75ghshgsc0icqnrk', '::1', '__ci_last_regenerate|i:1635746431;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635746431'),
('705rhkitjvf672unnddmtqeqb8vcmh13', '::1', '__ci_last_regenerate|i:1635747262;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635747262'),
('h2pe37os1ug5ptkof4u3jt3nf82d632g', '::1', '__ci_last_regenerate|i:1635747810;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635747810'),
('vv7s94ann2m44tijub2cevebc1593ui2', '::1', '__ci_last_regenerate|i:1635748191;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635748191'),
('7obfmegtqsrglrtes2e87531cm35li2q', '::1', '__ci_last_regenerate|i:1635748514;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635748514'),
('khmhd1gjl0f41dac64kbvuoftkr87vi0', '::1', '__ci_last_regenerate|i:1635748816;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635748816'),
('te5p173d5ma548hrle3l6avmhddihocd', '::1', '__ci_last_regenerate|i:1635749117;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635749117'),
('loa4jbtfi87oee5uremk2hpql70nhkol', '::1', '__ci_last_regenerate|i:1635749117;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1635749406');

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
('ANET', 'ANIMALS PLANET', 'KHUALITAS TERJAMIN AMAN', 'Bojonegoro', 'PYOYEK III', '08515654007', '08515654007', 'gusalim04@gmail.com', '11', '80', 'Logo2021-09-13-00-01-05.png', 'https://www.facebook.com/RianP01/', 'https://twitter.com/Rian', '', 'https://instagram.com/Rian', '', 1, 1, 1, NULL, NULL);

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
(9, 'Slider2021-09-13-03-31-43.png'),
(10, 'Slider2021-10-24-20-52-00.png');

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
(2, 'pandu@gmail.com', 'PANDU', '2021-09-17 14:52:26', 'Good', 1),
(5, 'tipolinema4@gmail.com', 'RIZAL ANHARI', '2021-10-31 21:35:27', 'GOOD BAGUS MANTAP', 1);

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
('20211014164029', 'INV-000000001', 'l6i5B3uY93', 'RIAN', 'gusalim04@gmail.com', 10, 348, 'Jl bungan n0 21', 'jne', 'OKE', '3-6', 12000, '2021-10-14 09:40:29', 1012000, '1', 1, '081333817060', 'Bukti2021-10-14-16-42-07.png', '6789279665768', 2),
('20211015221552', 'INV-000000001', 'q4Wm162Q1n', 'RIANBTK', 'rianp1@outlook.co.id', 6, 154, 'jl kenangan', 'jne', 'YES', '1-1', 36000, '2021-10-15 15:15:52', 316000, '3', 1, '081333817060', 'Bukti2021-11-01-13-48-19.png', '', 2);

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
('20211014164029', 70, 2, '[Jumlah : 2] &rarr; <b>Kenari Jawa</b><br>'),
('20211015221552', 68, 1, '[Jumlah : 1] &rarr; <b>ss</b><br>');

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `shop_testimoni`
--
ALTER TABLE `shop_testimoni`
  MODIFY `id_testimony` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `shop_user`
--
ALTER TABLE `shop_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
