-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 08, 2022 at 05:57 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_elektronik`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'infinix', 'INFINIX laptop X1 Pro core I7 16GB+512GB - Grey', 'komputer', 3500000, 13, 'infinix.jpg'),
(2, 'apple', 'Apple Macbook M1 PRO MAX 2021 14 16 Inch 16GB 32GB RAM 512GB 1TB SSD - PRO 16\" 16/512, Silver', 'komputer', 3500000, 9, 'apple.jpg'),
(3, 'asus', 'ASUS VIVOBOOK 14 M415DAO RYZEN 3 3250U 8GB 512GB 14\" FHD IPS OHS W11 - FULL HD', 'komputer', 3000000, 10, 'asus.jpg'),
(4, 'lenovo', 'Lenovo ThinkBook 14 G2 Ryzen 3 4300U 8 GB 512 SSD Win10 OHS - 8 gb', 'komputer', 7000000, 11, 'lenovo.jpg'),
(11, 'Samsung', 'Samsung Galaxy M32 8/128GB 6/128GB Garansi Resmi SEIN 6 GB 128 GB - Disc 6/128 Blac, Non Bundle', 'handphone', 2999000, 25, '1f9d679a-a758-41ab-aee6-a59c7211c63c.jpeg'),
(12, 'realme', 'Realme Narzo 50i 4/64GB Realme 50i i Garansi Resmi 4 GB 64 GB - Mint Green, Non Bundle', 'handphone', 1490000, 10, 'f5bba72f-fdbf-4125-a65c-fb38580bf74e.jpeg'),
(13, 'xiaomi', 'Xiaomi Redmi 9A 2/32GB / 32 GB Black Green Blue Garansi Resmi 1 Tahun - 2GB 32GB GREY, Non Bundle', 'handphone', 1100000, 29, '20a8f826-07d8-410d-b705-efac63489cf2.jpeg'),
(14, 'apple', 'Apple iPhone 14 Pro Max Garansi Resmi - 128GB 256GB 512GB 1TB Promax - 256GB, Silver', 'handphone', 24999000, 9, 'c794ac48-2061-49a6-8cf9-e633d0d7d834.jpeg'),
(15, 'charger', 'Apple iPhone 14 Pro Max Garansi Resmi - 128GB 256GB 512GB 1TB Promax - 256GB, Silver', 'aksessoris', 159000, 42, '7297e19b-d8f4-4a80-9455-6c40c2b885b3.jpeg'),
(16, 'poptok', 'Poptok Phone Grip & Phone Stand Griptok Phone Holder Click On Grip Tok - PTK-08', 'aksessoris', 9000, 100, '272d9676-625c-4d96-b60d-19c72a9ecb07.jpeg'),
(17, 'dompet hp', 'Dompet Sarung Hp Pinggang Kulit Asli - Cklat Tua Kncng', 'aksessoris', 50000, 40, 'a63bf638-b80f-48aa-97d0-2d630ffc96c7.jpeg'),
(18, 'tali gantungan', 'Tali Gantungan HP Multi Fungsi Kamera Kunci USB Paracord - Army Green, Pendek', 'aksessoris', 7000, 120, '252a8a31-39cb-4aae-8c14-ee1bc51b61de.jpeg'),
(19, 'ac portable', 'COOLZY-GO PORTABLE AC', 'elektronik', 3100000, 23, '27f6e2fb-b63f-42f6-9111-f530762ce4a3.jpeg'),
(20, 'braket projektor', 'BRACKET PROJECTOR PROJEKTOR PROYEKTOR INFOCUS UNIVERSAL - Hitam', 'elektronik', 67500, 87, '66954fe6-6334-4a70-9525-98cad36f7024.jpeg'),
(21, 'printer', 'HP Ink Tank Wireless 415(Z4B53A)', 'elektronik', 4987000, 28, 'e5f278da-67b3-49e5-a676-17769d38fbbe.jpeg'),
(22, 'changhong', 'Changhong 32 Inch Newest Android 11 Smart TV Digital LED TV L32G7N', 'elektronik', 1849000, 39, '62ea3fee-a45c-408b-831e-aeff9029d7ee.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(10, 'Ahmad Zainullah', 'Mangaran-mangaran- Situbondo', '2022-10-31 10:57:27', '2022-11-01 10:57:27'),
(11, 'wahid', 'Mangaran-mangaran- Situbondo', '2022-10-31 10:59:38', '2022-11-01 10:59:38'),
(12, '', '', '2022-11-02 09:29:11', '2022-11-03 09:29:11'),
(13, '', '', '2022-11-02 09:30:18', '2022-11-03 09:30:18'),
(14, '', '', '2022-11-02 03:44:39', '2022-11-03 03:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 7, 1, 'infinix', 3, 3500000, ''),
(2, 8, 9, 'pc asus', 1, 14500000, ''),
(3, 10, 1, 'infinix', 1, 3500000, ''),
(4, 10, 2, 'apple', 1, 3500000, ''),
(5, 10, 3, 'asus', 1, 3000000, ''),
(6, 10, 4, 'lenovo', 1, 7000000, ''),
(7, 11, 2, 'apple', 2, 3500000, ''),
(8, 11, 1, 'infinix', 1, 3500000, ''),
(9, 11, 3, 'asus', 1, 3000000, ''),
(10, 12, 1, 'infinix', 1, 3500000, ''),
(11, 13, 2, 'apple', 1, 3500000, ''),
(12, 13, 13, 'xiaomi', 1, 1100000, ''),
(13, 14, 1, 'infinix', 1, 3500000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
