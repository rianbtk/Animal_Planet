-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2021 at 10:02 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

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
-- Table structure for table `shop_product`
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
-- Dumping data for table `shop_product`
--

INSERT INTO `shop_product` (`id_product`, `name_product`, `information_product`, `price_product`, `discount_product`, `weight_product`, `category_product`, `stock_product`, `image_product`, `slug_product`, `state_product`, `state_discount`) VALUES
(73, 'Burung Murai Air Dewasa', 'Murai air atau dunia internasional mengenalnya dengan nama “Heteropahasia Picaoides” merupakan jenis burung pengicau yang sering dijadikan sebagai pelatih atau masteran bagi burung kicau bakalan yang sedang dipersiapkan sebagai petarung atua burung lomba', 250000, 210000, 70, 11, 10, 'Produk2021-11-07-15-50-50.png', 'burung_murai_air_dewasa', 1, 1),
(74, 'Burung Murai Air Kecil', 'Murai air atau dunia internasional mengenalnya dengan nama “Heteropahasia Picaoides” merupakan jenis burung pengicau yang sering dijadikan sebagai pelatih atau masteran bagi burung kicau bakalan yang sedang dipersiapkan sebagai petarung atua burung lomba', 75000, 50000, 30, 11, 20, 'Produk2021-11-07-15-53-16.png', 'burung_murai_air_kecil', 1, 1),
(75, 'Murai Air Dewasa kor Panjang', 'Murai air atau dunia internasional mengenalnya dengan nama “Heteropahasia Picaoides” merupakan jenis burung pengicau yang sering dijadikan sebagai pelatih atau masteran bagi burung kicau bakalan yang sedang dipersiapkan sebagai petarung atua burung lomba', 350000, 300000, 60, 11, 7, 'Produk2021-11-07-16-02-13.png', 'murai_air_dewasa_kor_panjang', 1, 1),
(76, 'Murai Air Kecil Ekor Panjang', 'Murai air atau dunia internasional mengenalnya dengan nama “Heteropahasia Picaoides” merupakan jenis burung pengicau yang sering dijadikan sebagai pelatih atau masteran bagi burung kicau bakalan yang sedang dipersiapkan sebagai petarung atua burung lomba', 120000, 100000, 30, 11, 10, 'Produk2021-11-08-14-42-52.png', 'murai_air_kecilkor_panjang', 1, 1),
(78, 'Burung Kenari Lizard', 'Tersedia warna :<br />\r\nMerah<br />\r\nPerak<br />\r\nBiru Emas', 1299999, 999999, 50, 11, 5, 'Produk2021-11-08-07-08-39.png', 'burung_kenari_lizard', 1, 1),
(79, 'Burung Kacer Jawa', 'Sudah Jadi <br />\r\nTermasuk jenis kacer yang terkenal di kalangan penggemar Jawa Timur dan Jawa Barat. Suara yang dihasilkan biasanya tergolong jernih, lantang, dan merdu. Selain menjadi hewan favorit untuk dilombakan, ternyata kacer jawa juga cocok dijadikan burung hias', 1600000, 1100000, 50, 11, 2, 'Produk2021-11-08-14-35-17.png', 'burung_kacer_jawa', 1, 1),
(80, 'Kacer banjar anakan', 'Anakan burung kacer banjar usia 2 bulan', 300000, 0, 40, 11, 15, 'Produk2021-11-08-14-45-36.png', 'kacer_banjar_anakan', 1, 0),
(81, 'Cendet Raja', 'Cendet raja siap gacor<br />\r\nSumber : https://www.grumsa.com/harga-burung-cendet/', 400000, 350000, 40, 11, 3, 'Produk2021-11-08-14-50-10.png', 'cendet_raja', 1, 1),
(82, 'Cendet Jawa', 'Siap Kicau', 350000, 0, 50, 11, 5, 'Produk2021-11-08-14-53-42.png', 'cendet_jawa', 1, 0),
(83, 'Beo Jawa Jadi', 'Siap Kicau', 2700999, 1999999, 70, 11, 5, 'Produk2021-11-08-14-58-53.png', 'beo_jawa_jadi', 1, 1),
(84, 'Love Bird Batman Sepasang', 'Kualitas bulu terjamin<br />\r\nwarna ceah', 400000, 0, 80, 11, 9, 'Produk2021-11-08-15-18-33.png', 'love_bird_batman_sepasang', 1, 0),
(85, 'British Shorthair Dewasa', 'British Shorthair adalah kucing berukuran sedang dengan bulu khas yang halus. Mereka kucing yang santai dan mudah untuk dirawat, dan juga mereka adalah salah satu ras kucing yang sangat mandiri. Orang-orang akan sangat menyukainya karena tampilan mereka sangat menggemaskan, namun British Shorthairs sebenarnya memiliki tubuh yang gagah dan kuat', 17000000, 0, 4000, 14, 2, 'Produk2021-11-08-15-34-32.png', 'british_shorthair_dewasa', 1, 0),
(86, 'British Shorthair Kitten', 'British Shorthair adalah kucing berukuran sedang dengan bulu khas yang halus. Mereka kucing yang santai dan mudah untuk dirawat, dan juga mereka adalah salah satu ras kucing yang sangat mandiri. Orang-orang akan sangat menyukainya karena tampilan mereka sangat menggemaskan, namun British Shorthairs sebenarnya memiliki tubuh yang gagah dan kuat', 7400000, 6900000, 1200, 14, 3, 'Produk2021-11-08-15-35-16.png', 'british_shorthair_kitten', 1, 1),
(87, 'Scottish Fold Dewasa', 'Scottish Fold adalah kucing berukuran sedang dengan bentuk badan yang bulat. Scottish Fold disebut juga “Lop -eared” atau “Lops” karena telinganya mulai terlipat saat bulan pertama nya. Scottish Fold juga sangat penuh kasih sayang dan kucing dengan kualitas yang tinggi', 15000000, 14000000, 4200, 14, 1, 'Produk2021-11-08-15-37-22.png', 'scottish_fold_dewasa', 1, 1),
(88, 'Scottish Fold Kitten', 'Scottish Fold adalah kucing berukuran sedang dengan bentuk badan yang bulat. Scottish Fold disebut juga “Lop -eared” atau “Lops” karena telinganya mulai terlipat saat bulan pertama nya. Scottish Fold juga sangat penuh kasih sayang dan kucing dengan kualitas yang tinggi', 3300000, 3000000, 1300, 14, 1, 'Produk2021-11-08-15-37-58.png', 'scottish_fold_kitten', 1, 1),
(89, 'Caracal Dewasa', 'Caracal adalah kucing liar yang tidak mudah dijinakkan, karena sifatnya yang menyendiri dan agresi wilayah. Undang-undang di berbagai negara dan keselamatan publik menjadi perhatian bagi mereka yang memiliki kucing ini, tetapi kepemilikan tidak sepenuhnya tidak pernah terdengar.', 150000000, 125000000, 10000, 14, 1, 'Produk2021-11-08-15-41-05.png', 'caracal_dewasa', 1, 1),
(90, 'Caracal Kitten', 'Caracal adalah kucing liar yang tidak mudah dijinakkan, karena sifatnya yang menyendiri dan agresi wilayah. Undang-undang di berbagai negara dan keselamatan publik menjadi perhatian bagi mereka yang memiliki kucing ini, tetapi kepemilikan tidak sepenuhnya tidak pernah terdengar.', 55000000, 40000000, 4000, 14, 4, 'Produk2021-11-08-15-41-48.png', 'caracal_kitten', 1, 1),
(91, 'Anggora Dewasa(Odd eye)', 'Kucing Anggora atau Turkish Angora berasal dari kota Ankara di Turki yang dulu disebut Angora.<br />\r\n<br />\r\nRas kucing ini termasuk salah satu ras kucing yang tertua dan murni yang tidak dengan sengaja dibiakkan oleh manusia.', 3000000, 0, 3300, 14, 1, 'Produk2021-11-08-15-44-04.png', 'anggora_dewasa_odd_eye_', 1, 0),
(92, 'Persia Dewasa', 'Kucing persia adalah ras kucing domestik berbulu panjang dengan karakter wajah bulat dan moncong pendek. Namanya mengacu pada Persia, nama lama Iran, di mana kucing serupa ditemukan.', 5000000, 4700000, 4000, 14, 1, 'Produk2021-11-08-15-45-48.png', 'persia_dewasa', 1, 1),
(93, 'Persia Kitten', 'Kucing persia adalah ras kucing domestik berbulu panjang dengan karakter wajah bulat dan moncong pendek. Namanya mengacu pada Persia, nama lama Iran, di mana kucing serupa ditemukan.', 700000, 600000, 1000, 14, 5, 'Produk2021-11-08-15-46-29.png', 'persia_kitten', 1, 1),
(94, 'Sphynx Dewasa', 'Kucing sphynx (dahulu bernama Canadian hairless) adalah salah satu ras kucing yang memiliki bulu sangat pendek dan sedikit sekali. Jika dilihat sekilas, kucing sphynx tampak tidak memiliki bulu sama sekali, tetapi jika diamati lebih saksama tubuh kucing ini ditumbuhi rambut halus di beberapa bagian, seperti telinga, kaki, ekor, dan didekat organ kelamin. Kucing sphynx berasal dari Kanada. Namun, penyebarannya dapat ditemukan di beberapa tempat seperti Kanada, Prancis, Maroko, Meksiko, Rusia, Australia dan Amerika Serikat. Kucing ras sphynx merupakan salah satu jenis kucing hasil rekayasa genetik', 25000000, 23000000, 3800, 14, 1, 'Produk2021-11-08-15-50-20.png', 'sphynx_dewasa', 1, 1),
(95, 'Sphynx Kitten', 'Kucing sphynx (dahulu bernama Canadian hairless) adalah salah satu ras kucing yang memiliki bulu sangat pendek dan sedikit sekali. Jika dilihat sekilas, kucing sphynx tampak tidak memiliki bulu sama sekali, tetapi jika diamati lebih saksama tubuh kucing ini ditumbuhi rambut halus di beberapa bagian, seperti telinga, kaki, ekor, dan didekat organ kelamin. Kucing sphynx berasal dari Kanada. Namun, penyebarannya dapat ditemukan di beberapa tempat seperti Kanada, Prancis, Maroko, Meksiko, Rusia, Australia dan Amerika Serikat. Kucing ras sphynx merupakan salah satu jenis kucing hasil rekayasa genetik', 7000000, 0, 1100, 14, 1, 'Produk2021-11-08-15-50-08.png', 'sphynx_kitten', 1, 0),
(96, 'Bengal Kitten', 'Kucing bengal adalah keturunan keempat dari hasil persilangan antara kucing american shorthair dengan kucing asian leopard. Kucing ini berasal dari California, Amerika Serikat. Meskipun tergolong kucing hutan, tetapi ras bengal termasuk hewan yang banyak digemari dan dijadikan hewan peliharaan. Kucing ini memiliki ukuran badan yang panjang dengan otot-otot pada tubuhnya yang kuat. Ia memiliki tulang yang besar dan tebal, serta bulu yang tebal, rapat dan halus. Dalam proses pemeliharaannya, kucing ini memerlukan perawatan khusus pada bulunya, yaitu dengan digosok secara lembut menggunakan sikat yang halus', 3000000, 2900000, 1200, 14, 2, 'Produk2021-11-08-15-52-05.png', 'bengal_kitten', 1, 1),
(97, 'Bengal Dewasa', 'Kucing bengal adalah keturunan keempat dari hasil persilangan antara kucing american shorthair dengan kucing asian leopard. Kucing ini berasal dari California, Amerika Serikat. Meskipun tergolong kucing hutan, tetapi ras bengal termasuk hewan yang banyak digemari dan dijadikan hewan peliharaan. Kucing ini memiliki ukuran badan yang panjang dengan otot-otot pada tubuhnya yang kuat. Ia memiliki tulang yang besar dan tebal, serta bulu yang tebal, rapat dan halus. Dalam proses pemeliharaannya, kucing ini memerlukan perawatan khusus pada bulunya, yaitu dengan digosok secara lembut menggunakan sikat yang halus', 12000000, 10000000, 3800, 14, 1, 'Produk2021-11-08-15-53-00.png', 'bengal_dewasa', 1, 1),
(98, 'American Shorthair', 'Kucing bulu pendek amerika (bahasa Inggris: American Shorthair cat) adalah salah satu ras kucing dari Amerika Utara yang masih merupakan keturunan dari ras kucing bulu pendek eropa dan kucing bulu pendek britania raya.', 2500000, 2300000, 4000, 14, 1, 'Produk2021-11-08-15-54-37.png', 'american_shorthair', 1, 1),
(99, 'Maine coon Kitten', 'Maine coon adalah salah satu ras kucing tertua dan alami yang berasal dari Maine, Amerika Serikat. Ras ini dipercayai nenek moyangnya berasal dari ras anggora dan kucing hutan norwegia', 1200000, 0, 2000, 14, 2, 'Produk2021-11-08-15-55-56.png', 'maine_coon_kitten', 1, 0),
(100, 'Maine coon Dewasa', 'Maine coon adalah salah satu ras kucing tertua dan alami yang berasal dari Maine, Amerika Serikat. Ras ini dipercayai nenek moyangnya berasal dari ras anggora dan kucing hutan norwegia', 5500000, 5000000, 6000, 14, 1, 'Produk2021-11-08-15-56-40.png', 'maine_coon_dewasa', 1, 1),
(101, 'Gold British Shorthair Dewasa', 'British Shorthair adalah kucing berukuran sedang dengan bulu khas yang halus. Mereka kucing yang santai dan mudah untuk dirawat, dan juga mereka adalah salah satu ras kucing yang sangat mandiri. Orang-orang akan sangat menyukainya karena tampilan mereka sangat menggemaskan, namun British Shorthairs sebenarnya memiliki tubuh yang gagah dan kuat', 22000000, 20000000, 4000, 14, 1, 'Produk2021-11-08-16-00-07.png', 'gold_british_shorthair_dewasa', 1, 1),
(102, 'Gold British Shorthair Kitten', 'British Shorthair adalah kucing berukuran sedang dengan bulu khas yang halus. Mereka kucing yang santai dan mudah untuk dirawat, dan juga mereka adalah salah satu ras kucing yang sangat mandiri. Orang-orang akan sangat menyukainya karena tampilan mereka sangat menggemaskan, namun British Shorthairs sebenarnya memiliki tubuh yang gagah dan kuat', 8000000, 0, 1400, 14, 1, 'Produk2021-11-08-16-00-59.png', 'gold_british_shorthair_kitten', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id_product`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
