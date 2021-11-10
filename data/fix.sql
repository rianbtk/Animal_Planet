-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Nov 2021 pada 03.53
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
(13, 'Kategori Reptil', 1),
(12, 'Kategori Ikan', 1),
(11, 'Kategori Burung', 1),
(14, 'Kategori Kucing', 1),
(15, 'Kategori Aksesoris', 1),
(16, 'Kategori Makanan', 1);

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
  `how_to_join` text NOT NULL,
  `about_us` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `shop_page`
--

INSERT INTO `shop_page` (`how_to_buy`, `how_to_join`, `about_us`) VALUES
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
(5, 6, '0887654776543', 'Rizal Anhari', 1);

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
(1, 'Burung Murai Air Dewasa', 'Murai air atau dunia internasional mengenalnya dengan nama ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œHeteropahasia PicaoidesÃƒÂ¢Ã¢â€šÂ¬Ã‚Â merupakan jenis burung pengicau yang sering dijadikan sebagai pelatih atau masteran bagi burung kicau bakalan yang sedang dipersiapkan sebagai petarung atua burung lomba', 250000, 210000, 70, 11, 15, 'Produk2021-11-07-15-50-50.png', 'burung_murai_air_dewasa', 1, 1),
(2, 'Burung Murai Air Kecil', 'Murai air atau dunia internasional mengenalnya dengan nama ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œHeteropahasia PicaoidesÃƒÂ¢Ã¢â€šÂ¬Ã‚Â merupakan jenis burung pengicau yang sering dijadikan sebagai pelatih atau masteran bagi burung kicau bakalan yang sedang dipersiapkan sebagai petarung atua burung lomba', 75000, 50000, 30, 11, 20, 'Produk2021-11-07-15-53-16.png', 'burung_murai_air_kecil', 1, 1),
(3, 'Murai Air Dewasa kor Panjang', 'Murai air atau dunia internasional mengenalnya dengan nama ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œHeteropahasia PicaoidesÃƒÂ¢Ã¢â€šÂ¬Ã‚Â merupakan jenis burung pengicau yang sering dijadikan sebagai pelatih atau masteran bagi burung kicau bakalan yang sedang dipersiapkan sebagai petarung atua burung lomba', 350000, 300000, 60, 11, 7, 'Produk2021-11-07-16-02-13.png', 'murai_air_dewasa_kor_panjang', 1, 1),
(4, 'Murai Air Kecil Ekor Panjang', 'Murai air atau dunia internasional mengenalnya dengan nama ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œHeteropahasia PicaoidesÃƒÂ¢Ã¢â€šÂ¬Ã‚Â merupakan jenis burung pengicau yang sering dijadikan sebagai pelatih atau masteran bagi burung kicau bakalan yang sedang dipersiapkan sebagai petarung atua burung lomba', 120000, 100000, 30, 11, 15, 'Produk2021-11-08-14-42-52.png', 'murai_air_kecilkor_panjang', 1, 1),
(5, 'Burung Kenari Lizard', 'Tersedia warna :<br />\r\nMerah<br />\r\nPerak<br />\r\nBiru Emas', 1299999, 999999, 50, 11, 5, 'Produk2021-11-08-07-08-39.png', 'burung_kenari_lizard', 1, 1),
(6, 'Burung Kacer Jawa', 'Sudah Jadi <br />\r\nTermasuk jenis kacer yang terkenal di kalangan penggemar Jawa Timur dan Jawa Barat. Suara yang dihasilkan biasanya tergolong jernih, lantang, dan merdu. Selain menjadi hewan favorit untuk dilombakan, ternyata kacer jawa juga cocok dijadikan burung hias', 1600000, 1100000, 50, 11, 2, 'Produk2021-11-08-14-35-17.png', 'burung_kacer_jawa', 1, 1),
(7, 'Kacer banjar anakan', 'Anakan burung kacer banjar usia 2 bulan', 300000, 0, 40, 11, 15, 'Produk2021-11-08-14-45-36.png', 'kacer_banjar_anakan', 1, 0),
(8, 'Cendet Raja', 'Cendet raja siap gacor<br />\r\nSumber : https://www.grumsa.com/harga-burung-cendet/', 400000, 350000, 40, 11, 3, 'Produk2021-11-08-14-50-10.png', 'cendet_raja', 1, 1),
(9, 'Cendet Jawa', 'Siap Kicau', 350000, 0, 50, 11, 5, 'Produk2021-11-08-14-53-42.png', 'cendet_jawa', 1, 0),
(10, 'Beo Jawa Jadi', 'Siap Kicau', 2700999, 1999999, 70, 11, 5, 'Produk2021-11-08-14-58-53.png', 'beo_jawa_jadi', 1, 1),
(11, 'Love Bird Batman Sepasang', 'Kualitas bulu terjamin<br />\r\nwarna ceah', 400000, 0, 80, 11, 9, 'Produk2021-11-08-15-18-33.png', 'love_bird_batman_sepasang', 1, 0),
(12, 'British Shorthair Dewasa', 'British Shorthair adalah kucing berukuran sedang dengan bulu khas yang halus. Mereka kucing yang santai dan mudah untuk dirawat, dan juga mereka adalah salah satu ras kucing yang sangat mandiri. Orang-orang akan sangat menyukainya karena tampilan mereka sangat menggemaskan, namun British Shorthairs sebenarnya memiliki tubuh yang gagah dan kuat', 17000000, 0, 4000, 14, 2, 'Produk2021-11-08-16-06-07.png', 'british_shorthair_dewasa', 1, 0),
(13, 'British Shorthair Kitten', 'British Shorthair adalah kucing berukuran sedang dengan bulu khas yang halus. Mereka kucing yang santai dan mudah untuk dirawat, dan juga mereka adalah salah satu ras kucing yang sangat mandiri. Orang-orang akan sangat menyukainya karena tampilan mereka sangat menggemaskan, namun British Shorthairs sebenarnya memiliki tubuh yang gagah dan kuat', 7400000, 6900000, 1200, 14, 3, 'Produk2021-11-08-16-06-30.png', 'british_shorthair_kitten', 1, 1),
(14, 'Scottish Fold Dewasa', 'Scottish Fold adalah kucing berukuran sedang dengan bentuk badan yang bulat. Scottish Fold disebut juga ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œLop -earedÃƒÂ¢Ã¢â€šÂ¬Ã‚Â atau ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œLopsÃƒÂ¢Ã¢â€šÂ¬Ã‚Â karena telinganya mulai terlipat saat bulan pertama nya. Scottish Fold juga sangat penuh kasih sayang dan kucing dengan kualitas yang tinggi', 15000000, 14000000, 4200, 14, 12, 'Produk2021-11-08-15-37-22.png', 'scottish_fold_dewasa', 1, 1),
(15, 'Scottish Fold Kitten', 'Scottish Fold adalah kucing berukuran sedang dengan bentuk badan yang bulat. Scottish Fold disebut juga ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œLop -earedÃƒÂ¢Ã¢â€šÂ¬Ã‚Â atau ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œLopsÃƒÂ¢Ã¢â€šÂ¬Ã‚Â karena telinganya mulai terlipat saat bulan pertama nya. Scottish Fold juga sangat penuh kasih sayang dan kucing dengan kualitas yang tinggi', 3300000, 3000000, 1300, 14, 12, 'Produk2021-11-08-15-37-58.png', 'scottish_fold_kitten', 1, 1),
(16, 'Caracal Dewasa', 'Caracal adalah kucing liar yang tidak mudah dijinakkan, karena sifatnya yang menyendiri dan agresi wilayah. Undang-undang di berbagai negara dan keselamatan publik menjadi perhatian bagi mereka yang memiliki kucing ini, tetapi kepemilikan tidak sepenuhnya tidak pernah terdengar.', 150000000, 125000000, 10000, 14, 12, 'Produk2021-11-08-15-41-05.png', 'caracal_dewasa', 1, 1),
(17, 'Caracal Kitten', 'Caracal adalah kucing liar yang tidak mudah dijinakkan, karena sifatnya yang menyendiri dan agresi wilayah. Undang-undang di berbagai negara dan keselamatan publik menjadi perhatian bagi mereka yang memiliki kucing ini, tetapi kepemilikan tidak sepenuhnya tidak pernah terdengar.', 55000000, 40000000, 4000, 14, 4, 'Produk2021-11-08-15-41-48.png', 'caracal_kitten', 1, 1),
(18, 'Anggora Dewasa(Odd eye)', 'Kucing Anggora atau Turkish Angora berasal dari kota Ankara di Turki yang dulu disebut Angora.<br />\r\n<br />\r\nRas kucing ini termasuk salah satu ras kucing yang tertua dan murni yang tidak dengan sengaja dibiakkan oleh manusia.', 3000000, 0, 3300, 14, 12, 'Produk2021-11-08-15-44-04.png', 'anggora_dewasa_odd_eye_', 1, 0),
(19, 'Persia Dewasa', 'Kucing persia adalah ras kucing domestik berbulu panjang dengan karakter wajah bulat dan moncong pendek. Namanya mengacu pada Persia, nama lama Iran, di mana kucing serupa ditemukan.', 5000000, 4700000, 4000, 14, 12, 'Produk2021-11-08-15-45-48.png', 'persia_dewasa', 1, 1),
(20, 'Persia Kitten', 'Kucing persia adalah ras kucing domestik berbulu panjang dengan karakter wajah bulat dan moncong pendek. Namanya mengacu pada Persia, nama lama Iran, di mana kucing serupa ditemukan.', 700000, 600000, 1000, 14, 5, 'Produk2021-11-08-15-46-29.png', 'persia_kitten', 1, 1),
(21, 'Sphynx Dewasa', 'Kucing sphynx (dahulu bernama Canadian hairless) adalah salah satu ras kucing yang memiliki bulu sangat pendek dan sedikit sekali. Jika dilihat sekilas, kucing sphynx tampak tidak memiliki bulu sama sekali, tetapi jika diamati lebih saksama tubuh kucing ini ditumbuhi rambut halus di beberapa bagian, seperti telinga, kaki, ekor, dan didekat organ kelamin. Kucing sphynx berasal dari Kanada. Namun, penyebarannya dapat ditemukan di beberapa tempat seperti Kanada, Prancis, Maroko, Meksiko, Rusia, Australia dan Amerika Serikat. Kucing ras sphynx merupakan salah satu jenis kucing hasil rekayasa genetik', 25000000, 23000000, 3800, 14, 12, 'Produk2021-11-08-15-50-20.png', 'sphynx_dewasa', 1, 1),
(22, 'Sphynx Kitten', 'Kucing sphynx (dahulu bernama Canadian hairless) adalah salah satu ras kucing yang memiliki bulu sangat pendek dan sedikit sekali. Jika dilihat sekilas, kucing sphynx tampak tidak memiliki bulu sama sekali, tetapi jika diamati lebih saksama tubuh kucing ini ditumbuhi rambut halus di beberapa bagian, seperti telinga, kaki, ekor, dan didekat organ kelamin. Kucing sphynx berasal dari Kanada. Namun, penyebarannya dapat ditemukan di beberapa tempat seperti Kanada, Prancis, Maroko, Meksiko, Rusia, Australia dan Amerika Serikat. Kucing ras sphynx merupakan salah satu jenis kucing hasil rekayasa genetik', 7000000, 0, 1100, 14, 12, 'Produk2021-11-08-15-50-08.png', 'sphynx_kitten', 1, 0),
(23, 'Bengal Kitten', 'Kucing bengal adalah keturunan keempat dari hasil persilangan antara kucing american shorthair dengan kucing asian leopard. Kucing ini berasal dari California, Amerika Serikat. Meskipun tergolong kucing hutan, tetapi ras bengal termasuk hewan yang banyak digemari dan dijadikan hewan peliharaan. Kucing ini memiliki ukuran badan yang panjang dengan otot-otot pada tubuhnya yang kuat. Ia memiliki tulang yang besar dan tebal, serta bulu yang tebal, rapat dan halus. Dalam proses pemeliharaannya, kucing ini memerlukan perawatan khusus pada bulunya, yaitu dengan digosok secara lembut menggunakan sikat yang halus', 3000000, 2900000, 1200, 14, 2, 'Produk2021-11-08-15-52-05.png', 'bengal_kitten', 1, 1),
(24, 'Bengal Dewasa', 'Kucing bengal adalah keturunan keempat dari hasil persilangan antara kucing american shorthair dengan kucing asian leopard. Kucing ini berasal dari California, Amerika Serikat. Meskipun tergolong kucing hutan, tetapi ras bengal termasuk hewan yang banyak digemari dan dijadikan hewan peliharaan. Kucing ini memiliki ukuran badan yang panjang dengan otot-otot pada tubuhnya yang kuat. Ia memiliki tulang yang besar dan tebal, serta bulu yang tebal, rapat dan halus. Dalam proses pemeliharaannya, kucing ini memerlukan perawatan khusus pada bulunya, yaitu dengan digosok secara lembut menggunakan sikat yang halus', 12000000, 10000000, 3800, 14, 12, 'Produk2021-11-08-15-53-00.png', 'bengal_dewasa', 1, 1),
(25, 'American Shorthair', 'Kucing bulu pendek amerika (bahasa Inggris: American Shorthair cat) adalah salah satu ras kucing dari Amerika Utara yang masih merupakan keturunan dari ras kucing bulu pendek eropa dan kucing bulu pendek britania raya.', 2500000, 2300000, 4000, 14, 12, 'Produk2021-11-08-15-54-37.png', 'american_shorthair', 1, 1),
(26, 'Maine coon Kitten', 'Maine coon adalah salah satu ras kucing tertua dan alami yang berasal dari Maine, Amerika Serikat. Ras ini dipercayai nenek moyangnya berasal dari ras anggora dan kucing hutan norwegia', 1200000, 0, 2000, 14, 2, 'Produk2021-11-08-15-55-56.png', 'maine_coon_kitten', 1, 0),
(27, 'Maine coon Dewasa', 'Maine coon adalah salah satu ras kucing tertua dan alami yang berasal dari Maine, Amerika Serikat. Ras ini dipercayai nenek moyangnya berasal dari ras anggora dan kucing hutan norwegia', 5500000, 5000000, 6000, 14, 12, 'Produk2021-11-08-15-56-40.png', 'maine_coon_dewasa', 1, 1),
(28, 'Gold British Shorthair Dewasa', 'British Shorthair adalah kucing berukuran sedang dengan bulu khas yang halus. Mereka kucing yang santai dan mudah untuk dirawat, dan juga mereka adalah salah satu ras kucing yang sangat mandiri. Orang-orang akan sangat menyukainya karena tampilan mereka sangat menggemaskan, namun British Shorthairs sebenarnya memiliki tubuh yang gagah dan kuat', 22000000, 20000000, 4000, 14, 12, 'Produk2021-11-08-16-00-07.png', 'gold_british_shorthair_dewasa', 1, 1),
(29, 'Gold British Shorthair Kitten', 'British Shorthair adalah kucing berukuran sedang dengan bulu khas yang halus. Mereka kucing yang santai dan mudah untuk dirawat, dan juga mereka adalah salah satu ras kucing yang sangat mandiri. Orang-orang akan sangat menyukainya karena tampilan mereka sangat menggemaskan, namun British Shorthairs sebenarnya memiliki tubuh yang gagah dan kuat', 8000000, 0, 1400, 14, 12, 'Produk2021-11-08-16-00-59.png', 'gold_british_shorthair_kitten', 1, 0),
(30, 'Arwana Brazil', 'umur 2 tahun', 2200000, 2100000, 2000, 12, 10, 'Produk2021-11-08-16-08-50.png', 'arwana_brazil', 1, 1),
(31, 'Arwana Banjar', 'anakan', 600000, 0, 1000, 12, 3, 'Produk2021-11-08-16-09-59.png', 'arwana_banjar', 1, 0),
(32, 'Arwana Red Tail Golden', 'umur 1 tahun', 5000000, 4750000, 3000, 12, 10, 'Produk2021-11-08-16-10-53.png', 'arwana_red_tail_golden', 1, 1),
(33, 'Cupang Halfmoon', 'ciri khas ikan cupang yang satu ini memiliki sirip dan ekor yang seolah-olah menyatu dan <br />\r\nmembentuk setengah lingkaran', 80000, 0, 300, 12, 10, 'Produk2021-11-08-16-13-04.png', 'cupang_halfmoon', 1, 0),
(34, 'Cupang Crown Tail', 'Dinamakan Crown Tail atau ÃƒÂ¢Ã¢â€šÂ¬Ã‹Å“ekor mahkotaÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ karena ekornya yang akan membentuk seperti mahkota ketika dibalik', 300000, 0, 250, 12, 2, 'Produk2021-11-08-16-14-21.png', 'cupang_crown_tail', 1, 0),
(35, 'Cupang Double Tail', 'Cupang Double Tail yang ekornya bercabang dua ini sangat indah karena siripnya yang lebar', 150000, 0, 200, 12, 10, 'Produk2021-11-08-16-15-21.png', 'cupang_double_tail', 1, 0),
(36, 'Cupang HMPK', 'Nama ikan cupang ini sendiri berasal dari singkatan hasil perkembangbiakan antara cupang Halfmoon dan Plakat', 300000, 189000, 225, 12, 10, 'Produk2021-11-08-16-16-19.png', 'cupang_hmpk', 1, 1),
(37, 'Louhan Cencu', 'Yang pertama ada jenis ikan Louhan Cencu. Ikan ini merupakan salah satu jenis ikan louhan lokal, lho. Karakteristiknya yaitu memiliki pola bintik pada tubuhnya. Louhan Cencu juga cenderung memiliki warna merah pada bagian tubuh hingga tengah badannya, lalu berwarna kuning keemasan dari tengah tubuh hingga ekornya.', 700000, 0, 600, 12, 10, 'Produk2021-11-08-16-17-30.png', 'louhan_cencu', 1, 0),
(38, 'Louhan SRD', 'Ikan Louhan SRD atau yang memiliki nama panjang Super Red Dragon ini memiliki jenong yang besar, bahkan bisa dikatakan paling besar diantara yang lain. Ciri-cirinya yaitu memiliki warna merah pada bagian kepalanya dan cenderung berwarna perak dari bagian tengah tubuh hingga ekor.', 500000, 475000, 400, 12, 10, 'Produk2021-11-08-16-18-18.png', 'louhan_srd', 1, 1),
(39, 'Louhan Super Red Magma', 'ouhan SRM atau Super Red Magma ini memiliki kualitas yang lebih unggul dari SRD. Jenong ikan louhan ini lebih besar dan mutiara pada tubuhnya lebih baik jika dibandingkan dengan Louhan SRD.', 800000, 600000, 425, 12, 10, 'Produk2021-11-08-16-19-21.png', 'louhan_super_red_magma', 1, 1),
(40, 'Koi Tancho', 'Ikan koi Tanco biasanya memiliki warna dasar putih dan terdapat buletan jingga pada kepalanya', 800000, 0, 500, 12, 10, 'Produk2021-11-08-16-20-25.png', 'ikan_koi_tancho', 1, 0),
(41, 'Koi Shiro Utsuri', 'Dari warnanya saja sudah terlihat ciri khas dari ikan koi ini adalah warna dasar putih pada badannya dan terdapat bercak ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“ bercak hitam', 700000, 0, 400, 12, 10, 'Produk2021-11-08-16-21-24.png', 'koi_shiro_utsuri', 1, 0),
(42, 'Koi Ki Utsuri', 'Ikan koi jenis ini memiliki ciri khas warna dasar tubuh yang jingga kekuningan dan terdapat bercak hitam', 500000, 0, 300, 12, 10, 'Produk2021-11-08-16-22-11.png', 'koi_ki_utsuri', 1, 0),
(43, 'Channa Barca', 'Jenis ikan channa ini dikenal karena memiliki corak yang khas. Selain itu, sirip yang melebar ke atas menjadi daya tarik ikan ini', 1000000, 0, 500, 12, 10, 'Produk2021-11-08-16-23-22.png', 'channa_barca', 1, 0),
(44, 'Channa Diplogramma', 'Sekilas, jenis ikan gabus ini mirip dengan micropletes, hanya memiliki motif yang berbeda dan warna yang sedikit lebih gelap.', 700000, 0, 400, 12, 10, 'Produk2021-11-08-16-25-15.png', 'channa_diplogramma', 1, 0),
(45, 'Bolt Tuna 1 Kg', 'Makanan Kucing - Merek Bolt<br />\r\n<br />\r\nKemasan Repack 1 Kg Bentuk Ikan Rasa Tuna<br />\r\n<br />\r\nIngredients (Kandungan):<br />\r\nJagung, Tepung Daging Unggas, Tepung Gandum, Protein Kedelai Isolate, Tepung Tuna, Lemak Unggas, Hati Ayam Digest, Vitamin dan Mineral (Vitamin A Palmitate, D3, E, L-Ascorbyl-2-polyphospate, Thiamin, Riboflavin, Pantothenic Acid, Pyridoxine, Biotin, Choline Chloride, Ferrous Sulfate, Zinc Sulfate, Copper Sulfate, Mangane Sulfate, Sodium Selenite, Calcium Iodate) Taurine, Antioksidan.<br />\r\n<br />\r\nCrude Protein 28%<br />\r\nCrude Fat 9%<br />\r\nCrude Fiber 4%<br />\r\nMoisture 10%', 24000, 0, 1000, 16, 10, 'Produk2021-11-08-16-33-16.png', 'bolt_tuna_1_kg', 1, 0),
(46, 'Bolt Donut 1 Kg', 'Makanan Kucing - Merek Bolt<br />\r\n<br />\r\nKemasan Repack 1 Kg Bentuk Ikan Ras Tuna berbentuk donut<br />\r\n<br />\r\nIngredients (Kandungan):<br />\r\nJagung, Tepung Daging Unggas, Tepung Gandum, Protein Kedelai Isolate, Tepung Tuna, Lemak Unggas, Hati Ayam Digest, Vitamin dan Mineral (Vitamin A Palmitate, D3, E, L-Ascorbyl-2-polyphospate, Thiamin, Riboflavin, Pantothenic Acid, Pyridoxine, Biotin, Choline Chloride, Ferrous Sulfate, Zinc Sulfate, Copper Sulfate, Mangane Sulfate, Sodium Selenite, Calcium Iodate) Taurine, Antioksidan.<br />\r\n<br />\r\nCrude Protein 28%<br />\r\nCrude Fat 9%<br />\r\nCrude Fiber 4%<br />\r\nMoisture 10%', 24000, 0, 1000, 16, 12, 'Produk2021-11-08-16-34-16.png', 'bolt_donut_1_kg', 1, 0),
(47, 'Royal Canin Kitten', 'Royal Canin Kitten Second Age Repack 1kg RC Kitten Repack 1 kg', 108000, 0, 1000, 16, 10, 'Produk2021-11-08-16-36-07.png', 'royal_canin_kitten', 1, 0),
(48, 'Meo Kitten 1 Kg', 'Meo KITTEN 1000 g kemasan Repack.<br />\r\n<br />\r\n<br />\r\nKandungan vitamin dan mineral untuk mencegah kerontokon bulu.<br />\r\n<br />\r\nMengandung asam amino omega 3 dan omega 6 untuk merangsang kilauan dan kehalusan pada bulu kucing.<br />\r\n<br />\r\nAsam amino penting seperti Taurine untuk ketajaman penglihatan.<br />\r\n<br />\r\nMengandung fiber alami untuk kesehatan sistem pencernaan yang membantu mengeluarkan hairball melalui feses<br />\r\n<br />\r\nMengurangi resiko penyakit saluran kencing FLUTD (Feline Lower Urinary Tract Disease).<br />\r\n<br />\r\nBahan-Bahan :<br />\r\n<br />\r\nCorn, Poultry by-product meal, Stabilized animal fats, Corn gluten meal, Soybean meal, Fish meal, Vegetable fiber, Beet pulp, Stabilized Fish Oil, Flax Seed, Lecithin, Palatans, DL methionine, Taurine, Antioxidant, Choline chloride, Vitamins (Vit A, Vit D, Nicotinic acid, Vit E, Vit B1, Pantohenic acid, Vit B2, Vit B6, Folic acid, Vit K, Biotin, Vit B12), Mineral (Monocalcium phosphate, Pottasium chloride, Sodium chloride, Ferrous sulfate, Zinc sulfate, Copper sulfate, Manganous oxide, Potassium iodide, Sodium selenite).', 65000, 0, 1000, 16, 8, 'Produk2021-11-08-16-38-00.png', 'meo_kitten_1_kg', 1, 0),
(49, 'Growssy Kitten Milk', 'Susu anak kucing GROWSSY 20gr<br />\r\n<br />\r\nGrowssy milk adalah susu lengkap dan mudah dicerna serta rendah laktosa. Cocok diberikan sebagai susu pengganti untuk anak kucing dan suplemen untuk indukan menyusui, kucing yg sudah tua maupun kucing sakit.<br />\r\nMengandung antioksidan komplex termasuk Vit.E dan C, lutein, taurin dan oligosakarida mannam mendukung sistem kekebalan tubuh pada perkembangan anak kucing.<br />\r\n<br />\r\nCara membuat :<br />\r\nCampurkan 1sachet (20gr) dengan 40ml air hangat matang(bukan mendidih), aduk hingga larut. Biarkan dingin sampai suhu sekitar 38 C dan siap di sajikan.<br />\r\n<br />\r\nSaran Penyimpanan :<br />\r\nKemasan yang belum dibuka harus ditaruh di tempat yang dingin dan kering.<br />\r\n<br />\r\nKemasan yang sudah dibuka harus di taruh di kulkas dan dapat bertahan 3 bulan, atau di taruh di freezer dan dapat bertahan 6 bulan.<br />\r\n<br />\r\nSusu yang sudah di seduh harus segera di habiskan atau dapat disimpan di kulkas dan dihabiskan sebelum 24 jam.', 5000, 0, 20, 16, 25, 'Produk2021-11-08-16-39-26.png', 'growssy_kitten_milk', 1, 0),
(50, 'Litter Box Sedang', 'Bak pasir<br />\r\nUkuran :<br />\r\nPanjang 35<br />\r\nLebar 25<br />\r\nTinggi 11', 18000, 0, 1000, 15, 10, 'Produk2021-11-08-16-41-03.png', 'litter_box_sedang', 1, 0),
(51, 'Litter Box Besar', 'Litter Box Besar (Bak Pasir Kucing)<br />\r\nUkuran:<br />\r\ntinggi 12 cm<br />\r\nPanjang 43 cm<br />\r\nLebar 31cm', 23000, 0, 1500, 15, 10, 'Produk2021-11-08-16-42-18.png', 'litter_box_besar', 1, 0),
(52, 'Shampoo Kucing anti Kutu', 'Shampoo Benzoyl Peroxide Shampo Anti Kutu Untuk Anjing dan Kucing 200ml<br />\r\n<br />\r\nShampoo yang diformulasikan khusus untuk membunuh bakteri ( benzoyl peroxide adalah agen anti bakteri yang bagus ). Mampu mengatasi masalah pada kulit yang disebabkan oleh bakteri serta mengatasi sheborrhea, mengandung uv screen, anti iritasi.<br />\r\nDengan hilangnya bakteri akan mengurangi iritasi kulit, bau badan<br />\r\nMengandung active ingredient : benzoil peroxide, TTO, Triclosan, zink PCA', 37000, 0, 1000, 15, 15, 'Produk2021-11-08-16-43-58.png', 'shampoo_kucing_anti_kutu', 1, 0),
(53, 'Shampoo Kucing anti Jamur', 'Shampoo Miconazole (Anti Fungal) - 200ml<br />\r\nShampoo yang diformulasikan untuk mengatasi masalah kulit dan bulu dengan bahan yang efektif . Mampu mengatasi masalah pada kulit yang disebabkan oleh fungus dan mengandung anti bakteri serta anti sheborrhea, uv screen, anti iritasi. Dapat membunuh jamur (miconazole nitrat adalah agen anti fungal yang lebih kuat) dan mengurangi iritasi kulit karena jamur.<br />\r\n<br />\r\nKomposisi:<br />\r\n2% Miconazole<br />\r\n2% Salicilic Acid<br />\r\n<br />\r\nFragrance:<br />\r\nPeppermint Oil', 37000, 0, 1000, 15, 15, 'Produk2021-11-08-16-45-16.png', 'shampoo_kucing_anti_jamur', 1, 0),
(54, 'Shampoo Kucing anti Bakteri', '?? Shampo Kucing Shampoo Anjing Raid All Raidall / Anti Bakteri / Anti ketombe / Anti Jamur Hewan 200ml ??<br />\r\n<br />\r\nSHAMPOO ini tidak terlalu wangi, namun sangat direkomendasikan untuk kondisi kulit / bulu yg sedang bermasalah', 37000, 0, 1000, 15, 15, 'Produk2021-11-08-16-46-10.png', 'shampoo_kucing_anti_bakteri', 1, 0),
(55, 'Vita Gel Kucing/Anjing', 'VITAGEL adalah pilihan alternatif yang lebih murah dibanding NUTRIPLUS GEL<br />\r\n<br />\r\nVitamin ini diproduksi olehsalah satu dokter senior terpandang di dunia hewan di indonesia (silahkan digoogling)<br />\r\n<br />\r\nWalaupun produk lokal, Vitamin hewan ini juga sudah lama dan terkenal namanya, silahkan saja googling \"nutriplus gel vs vitagel\"<br />\r\n<br />\r\nVITAGEL adalah suplemen yang mengandung vitamin, mineral, dan energy yang dapat membatu pertumbuhan dan meningkatkan stamina, khususnya pada hewan muda (anakan). Vita-Gel cocok diberikan kepada anjing, kucing, burung, hamster, iguana, guinea pigs, kelinci, dan hewan kecil lainnya. Suplemen Vita-Gel ini juga dapat merangsang nafsu makan hewan, khususnya untuk yang mengalami susah makan atau terlalu kurus.<br />\r\n<br />\r\nIndikasi :<br />\r\nMembantu pertumbuhan pada hewan muda (anakan).<br />\r\nMeningkatkan daya tahan tubuh hewan dari serangan penyakit.<br />\r\nMerangsang nafsu makan.<br />\r\nSebagai sumber Vitamin dan Mineral.<br />\r\n<br />\r\nCara Pemakaian : Hewan Sehat, Berikan 1-3cm Vita-Gel 2-3 kali sehari.<br />\r\nHewan Sakit, Dalam keadaan tidak mau makan bisa diberikan lebih sering, sampai 5-6 sehari.', 33500, 0, 1000, 16, 10, 'Produk2021-11-08-16-48-04.png', 'vita_gel_kucing_anjing_', 1, 0),
(56, 'Nutri Plus Gel Anjing/Kucing', 'Nutri plus Gel Suplemen Vitamin Kucing Anjing', 135000, 0, 1000, 16, 10, 'Produk2021-11-08-16-49-03.png', 'nutri_plus_gel_anjing_kucing', 1, 0),
(57, 'Serok Kotoran Kucing', 'Sekop kecil berlubang untuk mengambil kotoran kucing', 12000, 0, 1000, 15, 20, 'Produk2021-11-08-16-50-04.png', 'serok_kotoran_kucing', 1, 0),
(58, 'Tas Kucing Astronaut', 'Tas kucing berbentuk helm astronaut yang sangat menarik dan nyamamn untuk kucing<br />\r\n<br />\r\nDilengkapi lubang - lubang untuk sirkulasi udara', 198000, 0, 2000, 15, 5, 'Produk2021-11-08-16-51-28.png', 'tas_kucing_astronaut', 1, 0),
(59, 'Fish Oil Kucing/Anjing', 'Fish Oil \"Pet Shop by Oleo\" adalah minyak ikan yang sehat dan bermanfaat untuk anjing / kucing peliharaan anda. Fish Oil kami terbuat dari bahan alami dan berkualitas tinggi yang juga aman dikonsumsi untuk manusia (Human Grade).<br />\r\n<br />\r\nManfaat Fish Oil Bagi Anjing / Kucing :<br />\r\n<br />\r\n1. Merawat Kesehatan Kulit dan Bulu<br />\r\n2. Mengurangi Kerontokan Bulu<br />\r\n3. Mendukung Kesehatan Jantung dan Tulang<br />\r\n4. Mengurangai Alergi<br />\r\n5. Meningkatkan Sistem Imun<br />\r\n6. Meningkatkan Daya Tahan Tubuh<br />\r\n7. Menambah Nafsu Makan<br />\r\n<br />\r\nKandungan Fish Oil :<br />\r\n1. Fish Oil 250 mg<br />\r\n2. Vitamin A 620 IU<br />\r\n3. Vitamin D 62 IU<br />\r\n<br />\r\nPetunjuk Pemberikan Fish Oil<br />\r\n<br />\r\n1 - 7 Kg : 1 Butir Sehari<br />\r\n8 - 15 Kg : 2 Butir Sehari<br />\r\n15+ Kg : 3 Butir Sehari<br />\r\n<br />\r\n1. Keluarkan minyak ikan dari kapsul dengan cara dibuat lubang dan dicampurkan ke makanan anabul.<br />\r\n2. Berikan fish oil bersamaan dengan treats / snacks<br />\r\n3. Memberikan kapsul fish oil langsung ke anabul', 35000, 0, 1000, 16, 10, 'Produk2021-11-08-16-53-06.png', 'fish_oil_kucing_anjing', 1, 0),
(60, 'Branjangan Jawa', 'Siap Kicau', 1750000, 0, 30, 11, 2, 'Produk2021-11-08-21-04-39.png', 'branjangan_jawa', 1, 0),
(61, 'Cucak hijau', 'umur 1 tahun<br />\r\nsiap kicau', 700000, 399999, 40, 11, 20, 'Produk2021-11-08-21-06-01.png', 'cucak_hijau', 1, 1),
(62, 'Cucakrawa breeder', 'Langka', 6799999, 6299999, 40, 11, 2, 'Produk2021-11-08-21-07-29.png', 'cucakrawa_breeder', 1, 1),
(63, 'Green Iguana', 'morph : green het blue<br /><br />\r\nsize : ±120cm<br /><br />\r\nsex : betina (proven)', 600000, 0, 5000, 13, 5, 'Produk2021-11-10-16-22-00.png', 'green_iguana', 1, 0),
(64, 'Super Red Iguana Het Albino', 'Super Red Iguana Het Albino warna asli lebih merah, 40 cm', 450000, 410000, 500, 13, 5, 'Produk2021-11-10-16-08-43.png', 'super_red_iguana_het_albino', 1, 1),
(65, 'Snow Common Iguana', 'Size baby up +/- 35 cm<br />\r\nJinak, cocok untuk peliharaan pemula dan anak-anak<br />\r\nJenkel UNSEX<br />\r\nMakan lancar sawi hijau, tauge, pepaya serut, wortel serut', 11000000, 0, 2000, 13, 3, 'Produk2021-11-10-16-10-41.png', 'snow_common_iguana', 1, 0),
(66, 'Varanus Salvator', 'Motif Joss siap kontes siap di Bawa jalan jalan kemanapun.<br />\r\nSudah terlatih tidak berak sembarangan. sudah sering di bawa Gathering<br />\r\nukuran 80 Cm+<br />\r\naman untuk semua umur termasuk anak anak.', 250000, 0, 500, 13, 10, 'Produk2021-11-10-16-12-46.png', 'varanus_salvator', 1, 0),
(67, 'Corn Snake', 'Female Proven 1.2meter<br />\r\nKarakter Jinak<br />\r\nFeeding lancar<br />\r\nSehat Mulus<br />\r\ninak dan tidak berbisa, sangat cantik aman untuk semua kalangan', 950000, 900000, 500, 13, 10, 'Produk2021-11-10-16-14-26.png', 'corn_snake', 1, 1),
(68, 'Boa Pastel', 'Indukan= Pastel X Hypo<br />\r\nSehat, Mulus, Rakus, anteng handle tapi deff Kandang<br />\r\nHasil breeding Sendiri', 1200000, 0, 1000, 13, 10, 'Produk2021-11-10-16-24-42.png', 'boa_pastel', 1, 0),
(69, 'Madagascar Tree Boa', 'aman tak berbisa', 3500000, 0, 1000, 13, 5, 'Produk2021-11-10-16-26-26.png', 'madagascar_tree_boa', 1, 0),
(70, 'Ball Python Albino', 'Jenis Kelamin male<br />\r\nSize baby<br />\r\nJINAK TOTAL! sangat cocok untuk pemula', 5000000, 0, 1000, 13, 2, 'Produk2021-11-10-16-29-03.png', 'ball_python_albino', 1, 0),
(71, 'Albino Nelsons Milksnake', 'ready Albino Nelson’s Milksnake<br /><br />\r\n85cm up<br /><br />\r\nJinak total', 5500000, 5400000, 500, 13, 2, 'Produk2021-11-10-16-36-41.png', 'albino_nelsons_milksnake', 1, 1),
(72, 'Reticulatus Python Tiger', 'RETICULATUS TIGER<br />\r\nUK kurang lebih 170cm<br />\r\nUnsex', 680000, 650000, 500, 13, 13, 'Produk2021-11-10-16-40-06.png', 'reticulatus_python_tiger', 1, 1),
(73, 'Red Eared Slider', 'Kura-Kura Brazil<br />\r\nJenis Hewan ( Red Eared Slider Turtle )<br />\r\nUsia/Ukuran Hewan ( 4-5 Cm )<br />\r\nJenis Kelamin (Unsex)', 95000, 77000, 500, 13, 20, 'Produk2021-11-10-16-43-41.png', 'red_eared_slider', 1, 1),
(74, 'Red Eye Crocodile Skink', 'Mulus dan sehat<br />\r\nMakan ulet hongkong<br />\r\nTempat agak lembab', 350000, 0, 1000, 13, 12, 'Produk2021-11-10-16-46-19.png', 'red_eye_crocodile_skink', 1, 0),
(75, 'Kura-Kura Air Stinkpot', 'Jenis Hewan ( Stinkpot Turtle )<br />\r\nUsia/Ukuran Hewan ( 3-4 Cm )<br />\r\nJenis Kelamin (Unsex)', 728000, 0, 500, 13, 7, 'Produk2021-11-10-16-49-05.png', 'stinkpot', 1, 0),
(76, 'Kura Kura Ambon Ceper', 'Kura Kura Ambon Ceper Baby ukuran 6-7 cm<br />\r\nMakanan : Pelet, Udang Kering, Cacing Kering, Daging', 75000, 0, 150, 13, 10, 'Produk2021-11-10-16-50-43.png', 'kura_ambon_ceper', 1, 0),
(77, 'Soa Layar', 'Jenis Hewan ( Soa Layar)<br />\r\nUsia/Ukuran Hewan ( ±30 Cm )<br />\r\nJenis Kelamin ( Unsex )<br />\r\nKeterangan ( Jinak )', 1680000, 0, 2000, 13, 4, 'Produk2021-11-10-16-53-07.png', 'soa_layar', 1, 0),
(78, 'Leopard Gecko', 'Leopard Gecko Baby<br />\r\n1-2 Bulan', 75000, 0, 100, 13, 4, 'Produk2021-11-10-16-55-01.png', 'leopard_gecko', 1, 0),
(79, 'Veiled Chameleon', 'Jenis Veiled<br />\r\n- sex: jantan<br />\r\n- size: Juve<br />\r\n- makan: jangkrik, uler Jerman, uler Hongkong<br />\r\n- overal mulusss<br />\r\n- rawatan full outdor<br />\r\n- karakter: lucu, menggemaskan', 3500000, 0, 500, 13, 2, 'Produk2021-11-10-17-06-17.png', 'veiled_chameleon', 1, 0),
(80, 'Bearded Dragon', 'Bearded dragon Juvenile female<br />\r\n- morp: Hypo het trans<br />\r\n- sex : female<br />\r\n- size : 30cm up<br />\r\n- kondisi: mulus<br />\r\n- makan lancar, full dubia dan seling sayur!!', 1700000, 0, 500, 13, 2, 'Produk2021-11-10-17-08-41.png', 'bearded_dragon', 1, 0);

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
('aulfno200v1pah4qah4d75cd1fq1me03', '::1', '__ci_last_regenerate|i:1636275674;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1636275674'),
('t2tmdrnafr8lpplr099gaqcg1ufsv2oh', '::1', '__ci_last_regenerate|i:1636275998;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1636275998'),
('8t3u1aesb1d1sacr9rhdrr1hjlme1qs8', '::1', '__ci_last_regenerate|i:1636276395;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1636276395'),
('ic0lnrvhcuogc53abv5vh8i6jij4sej2', '::1', '__ci_last_regenerate|i:1636276395;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1636276417'),
('ba0spq2395h47om79e5nvqb1v7qc13is', '::1', '__ci_last_regenerate|i:1636323694;', '1636323729'),
('tfvms2cscfkb815cae348nfkfgam929e', '::1', '__ci_last_regenerate|i:1636434805;cart_contents|a:3:{s:10:\"cart_total\";d:399999;s:11:\"total_items\";d:1;s:32:\"7799e6fdfb8c3b6ec33232bd7204b036\";a:11:{s:2:\"id\";s:14:\"20211109120639\";s:10:\"id_product\";s:3:\"134\";s:3:\"qty\";d:1;s:4:\"slug\";s:11:\"cucak_hijau\";s:5:\"price\";d:399999;s:5:\"berat\";i:40;s:4:\"name\";s:11:\"Cucak hijau\";s:11:\"information\";s:37:\"[Jumlah : 1] &rarr; <b>yuyukh</b><br>\";s:7:\"picture\";s:29:\"Produk2021-11-08-21-06-01.png\";s:5:\"rowid\";s:32:\"7799e6fdfb8c3b6ec33232bd7204b036\";s:8:\"subtotal\";d:399999;}}', '1636434805'),
('73b2g3ffu2ajj12i59a0t7v28l8jcq1k', '::1', '__ci_last_regenerate|i:1636440276;cart_contents|a:3:{s:10:\"cart_total\";d:399999;s:11:\"total_items\";d:1;s:32:\"7799e6fdfb8c3b6ec33232bd7204b036\";a:11:{s:2:\"id\";s:14:\"20211109120639\";s:10:\"id_product\";s:3:\"134\";s:3:\"qty\";d:1;s:4:\"slug\";s:11:\"cucak_hijau\";s:5:\"price\";d:399999;s:5:\"berat\";i:40;s:4:\"name\";s:11:\"Cucak hijau\";s:11:\"information\";s:37:\"[Jumlah : 1] &rarr; <b>yuyukh</b><br>\";s:7:\"picture\";s:29:\"Produk2021-11-08-21-06-01.png\";s:5:\"rowid\";s:32:\"7799e6fdfb8c3b6ec33232bd7204b036\";s:8:\"subtotal\";d:399999;}}', '1636440276'),
('cb6755gkhlei0fdkd63ec2f0p4oba4qn', '::1', '__ci_last_regenerate|i:1636440594;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:2300000;s:11:\"total_items\";d:1;s:32:\"5308daf492f893097e7eb38dc083a984\";a:11:{s:2:\"id\";s:14:\"20211109134919\";s:10:\"id_product\";s:2:\"98\";s:3:\"qty\";d:1;s:4:\"slug\";s:18:\"american_shorthair\";s:5:\"price\";d:2300000;s:5:\"berat\";i:4000;s:4:\"name\";s:18:\"American Shorthair\";s:11:\"information\";s:33:\"[Jumlah : 1] &rarr; <b>gg</b><br>\";s:7:\"picture\";s:29:\"Produk2021-11-08-15-54-37.png\";s:5:\"rowid\";s:32:\"5308daf492f893097e7eb38dc083a984\";s:8:\"subtotal\";d:2300000;}}', '1636440594'),
('255b22f7boj0mdh57ecnk172vk0aha1v', '::1', '__ci_last_regenerate|i:1636440940;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1636440940'),
('u74hiaa3o1rsjc9qdt3koraht9lrhvti', '::1', '__ci_last_regenerate|i:1636440940;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:98:\"Data Pesanan Berhasil Dilakukan, Cek Email Untuk Melihat Detail Pembelian dan Kode Pembelian Anda.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}', '1636441225'),
('82g1qetf2ipfdj6aekj7jp8r1fh49ahf', '::1', '__ci_last_regenerate|i:1636506373;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1636506373'),
('27hgqs5siph0sin2oq4oojfjlu4pts7v', '::1', '__ci_last_regenerate|i:1636506806;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:98:\"Data Pesanan Berhasil Dilakukan, Cek Email Untuk Melihat Detail Pembelian dan Kode Pembelian Anda.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}', '1636506806'),
('0kv4u38a57g7rk29l042gimdljtj97ck', '::1', '__ci_last_regenerate|i:1636506806;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:12000;s:11:\"total_items\";d:1;s:32:\"a1fa8427c1f10a0eb82d8d328e36b0cf\";a:11:{s:2:\"id\";s:14:\"20211110081624\";s:10:\"id_product\";s:3:\"130\";s:3:\"qty\";d:1;s:4:\"slug\";s:20:\"serok_kotoran_kucing\";s:5:\"price\";d:12000;s:5:\"berat\";i:1000;s:4:\"name\";s:20:\"Serok Kotoran Kucing\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2021-11-08-16-50-04.png\";s:5:\"rowid\";s:32:\"a1fa8427c1f10a0eb82d8d328e36b0cf\";s:8:\"subtotal\";d:12000;}}', '1636506984'),
('g4osrjlegeam5tfs03q7r34430sn79fm', '::1', '__ci_last_regenerate|i:1636508283;', '1636508283'),
('svogfpr7an15hq7adob4rmdfteje38sl', '::1', '__ci_last_regenerate|i:1636509559;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1636509559'),
('0m3gbhfmfrvkdt0upoaq3rjstje7f0p3', '::1', '__ci_last_regenerate|i:1636509992;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1636509992'),
('7mslm86amuv78jpp5d2hpe1nal2kgrp2', '::1', '__ci_last_regenerate|i:1636510301;KCFINDER|a:0:{}CIPTASHOP|a:0:{}', '1636510301'),
('80ldqnh64sib8llb4ingg9lauqrv2bmm', '::1', '__ci_last_regenerate|i:1636510611;KCFINDER|a:0:{}CIPTASHOP|a:0:{}cart_contents|a:5:{s:10:\"cart_total\";d:684000;s:11:\"total_items\";d:8;s:32:\"e911ea5212117af841ac3f57533695f3\";a:11:{s:2:\"id\";s:14:\"20211110091534\";s:10:\"id_product\";s:2:\"76\";s:3:\"qty\";d:1;s:4:\"slug\";s:26:\"murai_air_kecilkor_panjang\";s:5:\"price\";d:100000;s:5:\"berat\";i:30;s:4:\"name\";s:28:\"Murai Air Kecil Ekor Panjang\";s:11:\"information\";s:37:\"[Jumlah : 1] &rarr; <b>tryuty</b><br>\";s:7:\"picture\";s:29:\"Produk2021-11-08-14-42-52.png\";s:5:\"rowid\";s:32:\"e911ea5212117af841ac3f57533695f3\";s:8:\"subtotal\";d:100000;}s:32:\"eff07408c6c41cdd9509da188a3ca42f\";a:11:{s:2:\"id\";s:14:\"20211110091630\";s:10:\"id_product\";s:3:\"124\";s:3:\"qty\";d:4;s:4:\"slug\";s:16:\"litter_box_besar\";s:5:\"price\";d:92000;s:5:\"berat\";i:6000;s:4:\"name\";s:16:\"Litter Box Besar\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2021-11-08-16-42-18.png\";s:5:\"rowid\";s:32:\"eff07408c6c41cdd9509da188a3ca42f\";s:8:\"subtotal\";d:368000;}s:32:\"e8c328eeb2f4610ac4f952d6841113fa\";a:11:{s:2:\"id\";s:14:\"20211110091649\";s:10:\"id_product\";s:3:\"118\";s:3:\"qty\";d:3;s:4:\"slug\";s:14:\"bolt_tuna_1_kg\";s:5:\"price\";d:72000;s:5:\"berat\";i:3000;s:4:\"name\";s:14:\"Bolt Tuna 1 Kg\";s:11:\"information\";s:38:\"[Jumlah : 3] &rarr; <b>7687jgv</b><br>\";s:7:\"picture\";s:29:\"Produk2021-11-08-16-33-16.png\";s:5:\"rowid\";s:32:\"e8c328eeb2f4610ac4f952d6841113fa\";s:8:\"subtotal\";d:216000;}}', '1636510611'),
('ciaei2ptateli5c6mfmnjb5r58opas3e', '::1', '__ci_last_regenerate|i:1636511207;KCFINDER|a:0:{}CIPTASHOP|a:0:{}cart_contents|a:5:{s:10:\"cart_total\";d:684000;s:11:\"total_items\";d:8;s:32:\"e911ea5212117af841ac3f57533695f3\";a:11:{s:2:\"id\";s:14:\"20211110091534\";s:10:\"id_product\";s:2:\"76\";s:3:\"qty\";d:1;s:4:\"slug\";s:26:\"murai_air_kecilkor_panjang\";s:5:\"price\";d:100000;s:5:\"berat\";i:30;s:4:\"name\";s:28:\"Murai Air Kecil Ekor Panjang\";s:11:\"information\";s:37:\"[Jumlah : 1] &rarr; <b>tryuty</b><br>\";s:7:\"picture\";s:29:\"Produk2021-11-08-14-42-52.png\";s:5:\"rowid\";s:32:\"e911ea5212117af841ac3f57533695f3\";s:8:\"subtotal\";d:100000;}s:32:\"eff07408c6c41cdd9509da188a3ca42f\";a:11:{s:2:\"id\";s:14:\"20211110091630\";s:10:\"id_product\";s:3:\"124\";s:3:\"qty\";d:4;s:4:\"slug\";s:16:\"litter_box_besar\";s:5:\"price\";d:92000;s:5:\"berat\";i:6000;s:4:\"name\";s:16:\"Litter Box Besar\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2021-11-08-16-42-18.png\";s:5:\"rowid\";s:32:\"eff07408c6c41cdd9509da188a3ca42f\";s:8:\"subtotal\";d:368000;}s:32:\"e8c328eeb2f4610ac4f952d6841113fa\";a:11:{s:2:\"id\";s:14:\"20211110091649\";s:10:\"id_product\";s:3:\"118\";s:3:\"qty\";d:3;s:4:\"slug\";s:14:\"bolt_tuna_1_kg\";s:5:\"price\";d:72000;s:5:\"berat\";i:3000;s:4:\"name\";s:14:\"Bolt Tuna 1 Kg\";s:11:\"information\";s:38:\"[Jumlah : 3] &rarr; <b>7687jgv</b><br>\";s:7:\"picture\";s:29:\"Produk2021-11-08-16-33-16.png\";s:5:\"rowid\";s:32:\"e8c328eeb2f4610ac4f952d6841113fa\";s:8:\"subtotal\";d:216000;}}', '1636511207'),
('i1spcoerv27h6snbrq2l6h96kprpb5pv', '::1', '__ci_last_regenerate|i:1636511660;KCFINDER|a:0:{}CIPTASHOP|a:0:{}cart_contents|a:5:{s:10:\"cart_total\";d:684000;s:11:\"total_items\";d:8;s:32:\"e911ea5212117af841ac3f57533695f3\";a:11:{s:2:\"id\";s:14:\"20211110091534\";s:10:\"id_product\";s:2:\"76\";s:3:\"qty\";d:1;s:4:\"slug\";s:26:\"murai_air_kecilkor_panjang\";s:5:\"price\";d:100000;s:5:\"berat\";i:30;s:4:\"name\";s:28:\"Murai Air Kecil Ekor Panjang\";s:11:\"information\";s:37:\"[Jumlah : 1] &rarr; <b>tryuty</b><br>\";s:7:\"picture\";s:29:\"Produk2021-11-08-14-42-52.png\";s:5:\"rowid\";s:32:\"e911ea5212117af841ac3f57533695f3\";s:8:\"subtotal\";d:100000;}s:32:\"eff07408c6c41cdd9509da188a3ca42f\";a:11:{s:2:\"id\";s:14:\"20211110091630\";s:10:\"id_product\";s:3:\"124\";s:3:\"qty\";d:4;s:4:\"slug\";s:16:\"litter_box_besar\";s:5:\"price\";d:92000;s:5:\"berat\";i:6000;s:4:\"name\";s:16:\"Litter Box Besar\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2021-11-08-16-42-18.png\";s:5:\"rowid\";s:32:\"eff07408c6c41cdd9509da188a3ca42f\";s:8:\"subtotal\";d:368000;}s:32:\"e8c328eeb2f4610ac4f952d6841113fa\";a:11:{s:2:\"id\";s:14:\"20211110091649\";s:10:\"id_product\";s:3:\"118\";s:3:\"qty\";d:3;s:4:\"slug\";s:14:\"bolt_tuna_1_kg\";s:5:\"price\";d:72000;s:5:\"berat\";i:3000;s:4:\"name\";s:14:\"Bolt Tuna 1 Kg\";s:11:\"information\";s:38:\"[Jumlah : 3] &rarr; <b>7687jgv</b><br>\";s:7:\"picture\";s:29:\"Produk2021-11-08-16-33-16.png\";s:5:\"rowid\";s:32:\"e8c328eeb2f4610ac4f952d6841113fa\";s:8:\"subtotal\";d:216000;}}', '1636511660'),
('42pjcroaok34rqbuvds91tgqqu95kbfi', '::1', '__ci_last_regenerate|i:1636511660;KCFINDER|a:0:{}CIPTASHOP|a:0:{}cart_contents|a:5:{s:10:\"cart_total\";d:684000;s:11:\"total_items\";d:8;s:32:\"e911ea5212117af841ac3f57533695f3\";a:11:{s:2:\"id\";s:14:\"20211110091534\";s:10:\"id_product\";s:2:\"76\";s:3:\"qty\";d:1;s:4:\"slug\";s:26:\"murai_air_kecilkor_panjang\";s:5:\"price\";d:100000;s:5:\"berat\";i:30;s:4:\"name\";s:28:\"Murai Air Kecil Ekor Panjang\";s:11:\"information\";s:37:\"[Jumlah : 1] &rarr; <b>tryuty</b><br>\";s:7:\"picture\";s:29:\"Produk2021-11-08-14-42-52.png\";s:5:\"rowid\";s:32:\"e911ea5212117af841ac3f57533695f3\";s:8:\"subtotal\";d:100000;}s:32:\"eff07408c6c41cdd9509da188a3ca42f\";a:11:{s:2:\"id\";s:14:\"20211110091630\";s:10:\"id_product\";s:3:\"124\";s:3:\"qty\";d:4;s:4:\"slug\";s:16:\"litter_box_besar\";s:5:\"price\";d:92000;s:5:\"berat\";i:6000;s:4:\"name\";s:16:\"Litter Box Besar\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2021-11-08-16-42-18.png\";s:5:\"rowid\";s:32:\"eff07408c6c41cdd9509da188a3ca42f\";s:8:\"subtotal\";d:368000;}s:32:\"e8c328eeb2f4610ac4f952d6841113fa\";a:11:{s:2:\"id\";s:14:\"20211110091649\";s:10:\"id_product\";s:3:\"118\";s:3:\"qty\";d:3;s:4:\"slug\";s:14:\"bolt_tuna_1_kg\";s:5:\"price\";d:72000;s:5:\"berat\";i:3000;s:4:\"name\";s:14:\"Bolt Tuna 1 Kg\";s:11:\"information\";s:38:\"[Jumlah : 3] &rarr; <b>7687jgv</b><br>\";s:7:\"picture\";s:29:\"Produk2021-11-08-16-33-16.png\";s:5:\"rowid\";s:32:\"e8c328eeb2f4610ac4f952d6841113fa\";s:8:\"subtotal\";d:216000;}}', '1636511867');

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
('20211110080745', 'INV-000000001', '0o1684K6Eg', 'JOKO', 'mrprosurabaya@gmail.com', 6, 151, 'fd', 'jne', 'REG', '1-2', 18000, '2021-11-10 01:07:45', 68000, '2', 1, '09876543', '', '', 0),
('20211110081427', 'INV-000000001', '60eQDh1N0t', 'ALEX', 'mrprosurabaya@gmail.com', 5, 419, 'hj', 'jne', 'REG', '1-2', 26000, '2021-11-10 01:14:27', 49000, '1', 1, '081333817060', '', '', 0);

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
('20211110080745', 74, 1, ''),
('20211110081427', 124, 1, '');

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
  ADD PRIMARY KEY (`id_product`);

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
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
