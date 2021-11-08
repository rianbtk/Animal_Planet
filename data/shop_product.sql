-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2021 at 10:58 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

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
(85, 'Bolt Tuna 1 Kg', 'Makanan Kucing - Merek Bolt<br />\r\n<br />\r\nKemasan Repack 1 Kg Bentuk Ikan Rasa Tuna<br />\r\n<br />\r\nIngredients (Kandungan):<br />\r\nJagung, Tepung Daging Unggas, Tepung Gandum, Protein Kedelai Isolate, Tepung Tuna, Lemak Unggas, Hati Ayam Digest, Vitamin dan Mineral (Vitamin A Palmitate, D3, E, L-Ascorbyl-2-polyphospate, Thiamin, Riboflavin, Pantothenic Acid, Pyridoxine, Biotin, Choline Chloride, Ferrous Sulfate, Zinc Sulfate, Copper Sulfate, Mangane Sulfate, Sodium Selenite, Calcium Iodate) Taurine, Antioksidan.<br />\r\n<br />\r\nCrude Protein 28%<br />\r\nCrude Fat 9%<br />\r\nCrude Fiber 4%<br />\r\nMoisture 10%', 24000, 0, 1000, 16, 10, 'Produk2021-11-08-16-33-16.png', 'bolt_tuna_1_kg', 1, 0),
(86, 'Bolt Donut 1 Kg', 'Makanan Kucing - Merek Bolt<br />\r\n<br />\r\nKemasan Repack 1 Kg Bentuk Ikan Ras Tuna berbentuk donut<br />\r\n<br />\r\nIngredients (Kandungan):<br />\r\nJagung, Tepung Daging Unggas, Tepung Gandum, Protein Kedelai Isolate, Tepung Tuna, Lemak Unggas, Hati Ayam Digest, Vitamin dan Mineral (Vitamin A Palmitate, D3, E, L-Ascorbyl-2-polyphospate, Thiamin, Riboflavin, Pantothenic Acid, Pyridoxine, Biotin, Choline Chloride, Ferrous Sulfate, Zinc Sulfate, Copper Sulfate, Mangane Sulfate, Sodium Selenite, Calcium Iodate) Taurine, Antioksidan.<br />\r\n<br />\r\nCrude Protein 28%<br />\r\nCrude Fat 9%<br />\r\nCrude Fiber 4%<br />\r\nMoisture 10%', 24000, 0, 1000, 16, 12, 'Produk2021-11-08-16-34-16.png', 'bolt_donut_1_kg', 1, 0),
(87, 'Royal Canin Kitten', 'Royal Canin Kitten Second Age Repack 1kg RC Kitten Repack 1 kg', 108000, 0, 1000, 16, 10, 'Produk2021-11-08-16-36-07.png', 'royal_canin_kitten', 1, 0),
(88, 'Meo Kitten 1 Kg', 'Meo KITTEN 1000 g kemasan Repack.<br />\r\n<br />\r\n<br />\r\nKandungan vitamin dan mineral untuk mencegah kerontokon bulu.<br />\r\n<br />\r\nMengandung asam amino omega 3 dan omega 6 untuk merangsang kilauan dan kehalusan pada bulu kucing.<br />\r\n<br />\r\nAsam amino penting seperti Taurine untuk ketajaman penglihatan.<br />\r\n<br />\r\nMengandung fiber alami untuk kesehatan sistem pencernaan yang membantu mengeluarkan hairball melalui feses<br />\r\n<br />\r\nMengurangi resiko penyakit saluran kencing FLUTD (Feline Lower Urinary Tract Disease).<br />\r\n<br />\r\nBahan-Bahan :<br />\r\n<br />\r\nCorn, Poultry by-product meal, Stabilized animal fats, Corn gluten meal, Soybean meal, Fish meal, Vegetable fiber, Beet pulp, Stabilized Fish Oil, Flax Seed, Lecithin, Palatans, DL methionine, Taurine, Antioxidant, Choline chloride, Vitamins (Vit A, Vit D, Nicotinic acid, Vit E, Vit B1, Pantohenic acid, Vit B2, Vit B6, Folic acid, Vit K, Biotin, Vit B12), Mineral (Monocalcium phosphate, Pottasium chloride, Sodium chloride, Ferrous sulfate, Zinc sulfate, Copper sulfate, Manganous oxide, Potassium iodide, Sodium selenite).', 65000, 0, 1000, 16, 8, 'Produk2021-11-08-16-38-00.png', 'meo_kitten_1_kg', 1, 0),
(89, 'Growssy Kitten Milk', 'Susu anak kucing GROWSSY 20gr<br />\r\n<br />\r\nGrowssy milk adalah susu lengkap dan mudah dicerna serta rendah laktosa. Cocok diberikan sebagai susu pengganti untuk anak kucing dan suplemen untuk indukan menyusui, kucing yg sudah tua maupun kucing sakit.<br />\r\nMengandung antioksidan komplex termasuk Vit.E dan C, lutein, taurin dan oligosakarida mannam mendukung sistem kekebalan tubuh pada perkembangan anak kucing.<br />\r\n<br />\r\nCara membuat :<br />\r\nCampurkan 1sachet (20gr) dengan 40ml air hangat matang(bukan mendidih), aduk hingga larut. Biarkan dingin sampai suhu sekitar 38 C dan siap di sajikan.<br />\r\n<br />\r\nSaran Penyimpanan :<br />\r\nKemasan yang belum dibuka harus ditaruh di tempat yang dingin dan kering.<br />\r\n<br />\r\nKemasan yang sudah dibuka harus di taruh di kulkas dan dapat bertahan 3 bulan, atau di taruh di freezer dan dapat bertahan 6 bulan.<br />\r\n<br />\r\nSusu yang sudah di seduh harus segera di habiskan atau dapat disimpan di kulkas dan dihabiskan sebelum 24 jam.', 5000, 0, 20, 16, 25, 'Produk2021-11-08-16-39-26.png', 'growssy_kitten_milk', 1, 0),
(90, 'Litter Box Sedang', 'Bak pasir<br />\r\nUkuran :<br />\r\nPanjang 35<br />\r\nLebar 25<br />\r\nTinggi 11', 18000, 0, 1000, 15, 10, 'Produk2021-11-08-16-41-03.png', 'litter_box_sedang', 1, 0),
(91, 'Litter Box Besar', 'Litter Box Besar (Bak Pasir Kucing)<br />\r\nUkuran:<br />\r\ntinggi 12 cm<br />\r\nPanjang 43 cm<br />\r\nLebar 31cm', 23000, 0, 1500, 15, 10, 'Produk2021-11-08-16-42-18.png', 'litter_box_besar', 1, 0),
(92, 'Shampoo Kucing anti Kutu', 'Shampoo Benzoyl Peroxide Shampo Anti Kutu Untuk Anjing dan Kucing 200ml<br />\r\n<br />\r\nShampoo yang diformulasikan khusus untuk membunuh bakteri ( benzoyl peroxide adalah agen anti bakteri yang bagus ). Mampu mengatasi masalah pada kulit yang disebabkan oleh bakteri serta mengatasi sheborrhea, mengandung uv screen, anti iritasi.<br />\r\nDengan hilangnya bakteri akan mengurangi iritasi kulit, bau badan<br />\r\nMengandung active ingredient : benzoil peroxide, TTO, Triclosan, zink PCA', 37000, 0, 1000, 15, 15, 'Produk2021-11-08-16-43-58.png', 'shampoo_kucing_anti_kutu', 1, 0),
(93, 'Shampoo Kucing anti Jamur', 'Shampoo Miconazole (Anti Fungal) - 200ml<br />\r\nShampoo yang diformulasikan untuk mengatasi masalah kulit dan bulu dengan bahan yang efektif . Mampu mengatasi masalah pada kulit yang disebabkan oleh fungus dan mengandung anti bakteri serta anti sheborrhea, uv screen, anti iritasi. Dapat membunuh jamur (miconazole nitrat adalah agen anti fungal yang lebih kuat) dan mengurangi iritasi kulit karena jamur.<br />\r\n<br />\r\nKomposisi:<br />\r\n2% Miconazole<br />\r\n2% Salicilic Acid<br />\r\n<br />\r\nFragrance:<br />\r\nPeppermint Oil', 37000, 0, 1000, 15, 15, 'Produk2021-11-08-16-45-16.png', 'shampoo_kucing_anti_jamur', 1, 0),
(94, 'Shampoo Kucing anti Bakteri', '?? Shampo Kucing Shampoo Anjing Raid All Raidall / Anti Bakteri / Anti ketombe / Anti Jamur Hewan 200ml ??<br />\r\n<br />\r\nSHAMPOO ini tidak terlalu wangi, namun sangat direkomendasikan untuk kondisi kulit / bulu yg sedang bermasalah', 37000, 0, 1000, 15, 15, 'Produk2021-11-08-16-46-10.png', 'shampoo_kucing_anti_bakteri', 1, 0),
(95, 'Vita Gel Kucing/Anjing', 'VITAGEL adalah pilihan alternatif yang lebih murah dibanding NUTRIPLUS GEL<br />\r\n<br />\r\nVitamin ini diproduksi olehsalah satu dokter senior terpandang di dunia hewan di indonesia (silahkan digoogling)<br />\r\n<br />\r\nWalaupun produk lokal, Vitamin hewan ini juga sudah lama dan terkenal namanya, silahkan saja googling \"nutriplus gel vs vitagel\"<br />\r\n<br />\r\nVITAGEL adalah suplemen yang mengandung vitamin, mineral, dan energy yang dapat membatu pertumbuhan dan meningkatkan stamina, khususnya pada hewan muda (anakan). Vita-Gel cocok diberikan kepada anjing, kucing, burung, hamster, iguana, guinea pigs, kelinci, dan hewan kecil lainnya. Suplemen Vita-Gel ini juga dapat merangsang nafsu makan hewan, khususnya untuk yang mengalami susah makan atau terlalu kurus.<br />\r\n<br />\r\nIndikasi :<br />\r\nMembantu pertumbuhan pada hewan muda (anakan).<br />\r\nMeningkatkan daya tahan tubuh hewan dari serangan penyakit.<br />\r\nMerangsang nafsu makan.<br />\r\nSebagai sumber Vitamin dan Mineral.<br />\r\n<br />\r\nCara Pemakaian : Hewan Sehat, Berikan 1-3cm Vita-Gel 2-3 kali sehari.<br />\r\nHewan Sakit, Dalam keadaan tidak mau makan bisa diberikan lebih sering, sampai 5-6 sehari.', 33500, 0, 1000, 16, 10, 'Produk2021-11-08-16-48-04.png', 'vita_gel_kucing_anjing_', 1, 0),
(96, 'Nutri Plus Gel Anjing/Kucing', 'Nutri plus Gel Suplemen Vitamin Kucing Anjing', 135000, 0, 1000, 16, 10, 'Produk2021-11-08-16-49-03.png', 'nutri_plus_gel_anjing_kucing', 1, 0),
(97, 'Serok Kotoran Kucing', 'Sekop kecil berlubang untuk mengambil kotoran kucing', 12000, 0, 1000, 15, 20, 'Produk2021-11-08-16-50-04.png', 'serok_kotoran_kucing', 1, 0),
(98, 'Tas Kucing Astronaut', 'Tas kucing berbentuk helm astronaut yang sangat menarik dan nyamamn untuk kucing<br />\r\n<br />\r\nDilengkapi lubang - lubang untuk sirkulasi udara', 198000, 0, 2000, 15, 5, 'Produk2021-11-08-16-51-28.png', 'tas_kucing_astronaut', 1, 0),
(99, 'Fish Oil Kucing/Anjing', 'Fish Oil \"Pet Shop by Oleo\" adalah minyak ikan yang sehat dan bermanfaat untuk anjing / kucing peliharaan anda. Fish Oil kami terbuat dari bahan alami dan berkualitas tinggi yang juga aman dikonsumsi untuk manusia (Human Grade).<br />\r\n<br />\r\nManfaat Fish Oil Bagi Anjing / Kucing :<br />\r\n<br />\r\n1. Merawat Kesehatan Kulit dan Bulu<br />\r\n2. Mengurangi Kerontokan Bulu<br />\r\n3. Mendukung Kesehatan Jantung dan Tulang<br />\r\n4. Mengurangai Alergi<br />\r\n5. Meningkatkan Sistem Imun<br />\r\n6. Meningkatkan Daya Tahan Tubuh<br />\r\n7. Menambah Nafsu Makan<br />\r\n<br />\r\nKandungan Fish Oil :<br />\r\n1. Fish Oil 250 mg<br />\r\n2. Vitamin A 620 IU<br />\r\n3. Vitamin D 62 IU<br />\r\n<br />\r\nPetunjuk Pemberikan Fish Oil<br />\r\n<br />\r\n1 - 7 Kg : 1 Butir Sehari<br />\r\n8 - 15 Kg : 2 Butir Sehari<br />\r\n15+ Kg : 3 Butir Sehari<br />\r\n<br />\r\n1. Keluarkan minyak ikan dari kapsul dengan cara dibuat lubang dan dicampurkan ke makanan anabul.<br />\r\n2. Berikan fish oil bersamaan dengan treats / snacks<br />\r\n3. Memberikan kapsul fish oil langsung ke anabul', 35000, 0, 1000, 16, 10, 'Produk2021-11-08-16-53-06.png', 'fish_oil_kucing_anjing', 1, 0);

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
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
