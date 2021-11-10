-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Nov 2021 pada 04.26
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
(62, 'Cucakrawa breeder', 'Langka', 6799999, 6299999, 40, 11, 2, 'Produk2021-11-08-21-07-29.png', 'cucakrawa_breeder', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id_product`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
