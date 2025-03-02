-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 11:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sb_tokosepatu`
--

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `id_cashier` char(8) NOT NULL,
  `nama_cashier` char(50) NOT NULL,
  `alamat` char(100) NOT NULL,
  `telp` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`id_cashier`, `nama_cashier`, `alamat`, `telp`) VALUES
('03082301', 'Nahda Astrella', 'Jl. Rebang Tinggi, Way Kanan, Lampung', '081128473829'),
('23072299', 'Anita', 'Jl. Raya Bogor No. 2, Depok', '082145678901'),
('23072399', 'Andi', 'Jl. Pahlawan No. 3, Bandung', '83856789012'),
('23072499', 'Ayu', 'Jl. Merdeka No. 4, Surabaya', '85767890123'),
('23072599', 'Caca', 'Jl. Gajah Mada No. 5, Semarang', '87878901234'),
('23072699', 'Doni', 'Jl. Imam Bonjol No. 6, Yogyakarta', '89989012345'),
('23072799', 'Ega', 'Jl. Diponegoro No. 7, Malang', '81234567891'),
('23072899', 'Fajar', 'Jl. Gatot Subroto No. 8, Denpasar', '82145678902'),
('23072999', 'Gita', 'Jl. Hasanudin No. 9, Makassar', '83856789013'),
('23073099', 'Hari', 'Jl. Sudirman No. 10, Jayapura', '85767890124'),
('23073199', 'Ira', 'Jl. Soekarno Hatta No. 11, Sorong', '87878901235');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_cust` char(10) NOT NULL,
  `nama_cust` char(15) NOT NULL,
  `alamat_cust` char(100) NOT NULL,
  `telp_cust` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_cust`, `nama_cust`, `alamat_cust`, `telp_cust`) VALUES
('C00001', 'Nahda Astrella', 'Taman Royal 3', '081112783647'),
('C00002', 'Anita', 'Jl. Raya Bogor No. 2, Depok', '082145678901'),
('C00003', 'Andi', 'Jl. Pahlawan No. 3, Bandung', '083856789012'),
('C00004', 'Ayu', 'Jl. Merdeka No. 4, Surabaya', '085767890123'),
('C00005', 'Caca', 'Jl. Gajah Mada No. 5, Semarang', '087878901234'),
('C00006', 'Doni', 'Jl. Imam Bonjol No. 6, Yogyakarta', '089989012345'),
('C00007', 'Ega', 'Jl. Diponegoro No. 7, Malang', '081234567891'),
('C00008', 'Fajar', 'Jl. Gatot Subroto No. 8, Denpasar', '82145678902'),
('C00009', 'Gita', 'Jl. Hasanudin No. 9, Makassar', '083856789013'),
('C00010', 'Hari', 'Jl. Sudirman No. 10, Jayapura', '085767890124'),
('C00011', 'Ira', 'Jl. Soekarno Hatta No. 11, Sorong', '087878901235'),
('C00012', 'Joko', 'Jl. Ahmad Yani No. 12, Ambon', '089989012346'),
('C00013', 'Karina', 'Jl. Pattimura No. 13, Kupang', '081234567892'),
('C00014', 'Laras', 'Jl. Sam Ratulangi No. 14, Manado', '082145678903'),
('C00015', 'Mamat', 'Jl. Cendrawasih No. 15, Manokwari', '083856789014');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id_purchase` char(8) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `id_supplier` char(5) NOT NULL,
  `id_staff` char(8) NOT NULL,
  `kuantitas` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id_purchase`, `tgl_pembelian`, `id_supplier`, `id_staff`, `kuantitas`) VALUES
('PB000001', '2023-12-04', 'SP002', '23072899', 2),
('PB000002', '2023-12-04', 'SP003', '23072399', 1),
('PB000003', '2023-12-05', 'SP001', '23072599', 1),
('PB000004', '2023-12-05', 'SP004', '23072299', 2),
('PB000005', '2023-12-05', 'SP005', '23072699', 2),
('PB000006', '2023-12-06', 'SP006', '23072799', 1),
('PB000008', '2023-12-07', 'SP007', '23072999', 2),
('PB000009', '2023-12-08', 'SP009', '23073099', 3),
('PB000010', '2023-12-09', 'SP010', '23073199', 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchasedetails`
--

CREATE TABLE `purchasedetails` (
  `id_det_purchase` char(9) NOT NULL,
  `id_purchase` char(8) NOT NULL,
  `total_harga` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchasedetails`
--

INSERT INTO `purchasedetails` (`id_det_purchase`, `id_purchase`, `total_harga`) VALUES
('DPB000001', 'PB000001', 250000),
('DPB000002', 'PB000002', 230000),
('DPB000003', 'PB000003', 170000),
('DPB000004', 'PB000004', 225000),
('DPB000005', 'PB000005', 250000),
('DPB000006', 'PB000006', 125000),
('DPB000008', 'PB000008', 170000),
('DPB000009', 'PB000009', 300000),
('DPB000010', 'PB000010', 170000);

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `id_po` char(9) NOT NULL,
  `id_supplier` char(6) NOT NULL,
  `id_sepatu` char(5) NOT NULL,
  `harga_satuan` mediumint(3) NOT NULL,
  `id_staff` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchaseorder`
--

INSERT INTO `purchaseorder` (`id_po`, `id_supplier`, `id_sepatu`, `harga_satuan`, `id_staff`) VALUES
('PO2312001', 'SPR001', 'SP001', 250000, '230501'),
('PO2312002', 'SPR002', 'SP002', 200000, '230502'),
('PO2312003', 'SPR003', 'SP003', 200000, '230503'),
('PO2312004', 'SPR004', 'SP004', 200000, '230504'),
('PO2312005', 'SPR005', 'SP005', 200000, '230505'),
('PO2312006', 'SPR006', 'SP006', 175000, '230506'),
('PO2312007', 'SPR007', 'SP007', 175000, '230507'),
('PO2312008', 'SPR008', 'SP008', 250000, '230508'),
('PO2312009', 'SPR009', 'SP009', 160000, '230509'),
('PO2312010', 'SPR010', 'SP010', 100000, '230510');

-- --------------------------------------------------------

--
-- Table structure for table `returpurchase`
--

CREATE TABLE `returpurchase` (
  `id_returPurchase` char(5) NOT NULL,
  `id_po` char(10) NOT NULL,
  `id_sepatu` char(5) NOT NULL,
  `id_staff` char(5) NOT NULL,
  `jumlah_returPurchase` smallint(2) NOT NULL,
  `tgl_returPurchase` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `returpurchase`
--

INSERT INTO `returpurchase` (`id_returPurchase`, `id_po`, `id_sepatu`, `id_staff`, `jumlah_returPurchase`, `tgl_returPurchase`) VALUES
('PB123', 'PO12120300', 'SP003', '23053', 2, '2023-12-26'),
('RP112', 'PO2312021', 'SP004', '23052', 2, '2023-12-27'),
('RP231', 'PO23110001', 'SP001', '23120', 1, '2023-12-01'),
('RP311', 'PO23129999', 'SP002', '23050', 2, '2023-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `retursales`
--

CREATE TABLE `retursales` (
  `id_retursales` char(11) NOT NULL,
  `id_sepatu` char(5) NOT NULL,
  `jumlah_retursales` smallint(2) NOT NULL,
  `tgl_retursales` date NOT NULL,
  `id_sales` char(8) NOT NULL,
  `id_cashier` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id_sales` char(8) NOT NULL,
  `id_cashier` char(8) NOT NULL,
  `id_cust` char(10) NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id_sales`, `id_cashier`, `id_cust`, `total_harga`) VALUES
('23120001', '03082301', 'C00001', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `salesdetails`
--

CREATE TABLE `salesdetails` (
  `id_det_sales` char(11) NOT NULL,
  `id_sales` char(8) NOT NULL,
  `id_sepatu` char(5) NOT NULL,
  `kuantitas` int(10) NOT NULL,
  `harga_satuan` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salesdetails`
--

INSERT INTO `salesdetails` (`id_det_sales`, `id_sales`, `id_sepatu`, `kuantitas`, `harga_satuan`) VALUES
('DET23120001', '23120001', 'SH001', 1, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `salesorder`
--

CREATE TABLE `salesorder` (
  `id_sepatu` char(5) NOT NULL,
  `Harga_satuan` mediumint(3) NOT NULL,
  `kuantitas` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoes`
--

CREATE TABLE `shoes` (
  `id_sepatu` char(5) NOT NULL,
  `id_merk` char(6) NOT NULL,
  `id_warna` char(4) NOT NULL,
  `id_jenisSepatu` char(5) NOT NULL,
  `ukuran_Sepatu` tinyint(3) NOT NULL,
  `stok` smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoes`
--

INSERT INTO `shoes` (`id_sepatu`, `id_merk`, `id_warna`, `id_jenisSepatu`, `ukuran_Sepatu`, `stok`) VALUES
('SH001', 'NKE', 'GR01', 'CS111', 44, 100);

-- --------------------------------------------------------

--
-- Table structure for table `shoesjenis`
--

CREATE TABLE `shoesjenis` (
  `id_shoesJenis` char(5) NOT NULL,
  `nama_jenis` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoesjenis`
--

INSERT INTO `shoesjenis` (`id_shoesJenis`, `nama_jenis`) VALUES
('CS111', 'casual'),
('FS111', 'futsal');

-- --------------------------------------------------------

--
-- Table structure for table `shoesmerk`
--

CREATE TABLE `shoesmerk` (
  `id_merk` char(3) NOT NULL,
  `nama_merk` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoesmerk`
--

INSERT INTO `shoesmerk` (`id_merk`, `nama_merk`) VALUES
('ADS', 'Adidas'),
('ASK', 'Asics'),
('CON', 'Converse'),
('NBA', 'New Balanc'),
('NEW', 'New Balance'),
('NKE', 'Nike'),
('PUR', 'Puma'),
('REE', 'Reebok'),
('SKS', 'Skechers'),
('VAN', 'Vans');

-- --------------------------------------------------------

--
-- Table structure for table `shoes_warna`
--

CREATE TABLE `shoes_warna` (
  `id_warna` char(4) NOT NULL,
  `warna` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoes_warna`
--

INSERT INTO `shoes_warna` (`id_warna`, `warna`) VALUES
('GR01', 'Hijau Tua'),
('GR02', 'Hijau Muda');

-- --------------------------------------------------------

--
-- Table structure for table `staffpengadaan`
--

CREATE TABLE `staffpengadaan` (
  `id_staff` char(8) NOT NULL,
  `nama_staff` char(50) NOT NULL,
  `alamat` char(100) NOT NULL,
  `Telp` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffpengadaan`
--

INSERT INTO `staffpengadaan` (`id_staff`, `nama_staff`, `alamat`, `Telp`) VALUES
('23072299', 'Anita', 'Jl. Raya Bogor No. 2, Depok', '082145678901'),
('23072399', 'Andi', 'Jl. Pahlawan No. 3, Bandung', '83856789012'),
('23072499', 'Ayu', 'Jl. Merdeka No. 4, Surabaya', '85767890123'),
('23072599', 'Caca', 'Jl. Gajah Mada No. 5, Semarang', '87878901234'),
('23072699', 'Doni', 'Jl. Imam Bonjol No. 6, Yogyakarta', '89989012345'),
('23072799', 'Ega', 'Jl. Diponegoro No. 7, Malang', '81234567891'),
('23072899', 'Fajar', 'Jl. Gatot Subroto No. 8, Denpasar', '82145678902'),
('23072999', 'Gita', 'Jl. Hasanudin No. 9, Makassar', '83856789013'),
('23073099', 'Hari', 'Jl. Sudirman No. 10, Jayapura', '85767890124'),
('23073199', 'Ira', 'Jl. Soekarno Hatta No. 11, Sorong', '87878901235');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` char(5) NOT NULL,
  `nama_supplier` char(50) NOT NULL,
  `telp_supplier` char(12) NOT NULL,
  `alamat_supplier` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `telp_supplier`, `alamat_supplier`) VALUES
('SP001', 'PT. Cahaya Permai', '021-555-1234', 'Jl. Merdeka No.123, Jakarta Pusat, DKI Jakarta'),
('SP002', 'UD. Sinar Abadi', '0812-345-678', 'Jl. Sudirman No.456, Bandung, Jawa Barat'),
('SP003', 'CV. Sumber Rejeki', '0857-987-654', 'Jl. Gatot Subroto No.789, Semarang, Jawa Tengah'),
('SP004', 'PT. Maju Bersama', '0821-456-789', 'Jl. Thamrin No.1011, Surabaya, Jawa Timur'),
('SP005', 'CV. Cahaya Baru', '0899-890-123', 'Jl. Veteran No.1213, Yogyakarta, Daerah Istimewa Yogyakarta'),
('SP006', 'PD. Bahagia', '0812-567-890', 'Jl. Raya Denpasar No.1415, Denpasar, Bali'),
('SP007', 'PT. Jaya Abadi', '0838-789-012', 'Jl. Hasanuddin No.1617, Makassar, Sulawesi Selatan'),
('SP008', 'CV. Berkah Bersaudara', '0857-901-234', 'Jl. Sudirman No.1819, Jayapura, Papua'),
('SP009', 'UD. Rejeki Mantap', '0821-012-345', 'Jl. Sisingamangaraja No.2021, Medan, Sumatera Utara'),
('SP010', 'PT. Harapan Mulya', '0878-123-456', 'Jl. Soekarno Hatta No.2223, Palembang, Sumatera Selatan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`id_cashier`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_cust`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id_purchase`),
  ADD UNIQUE KEY `id_supplier` (`id_supplier`),
  ADD UNIQUE KEY `id_staff` (`id_staff`);

--
-- Indexes for table `purchasedetails`
--
ALTER TABLE `purchasedetails`
  ADD PRIMARY KEY (`id_det_purchase`),
  ADD UNIQUE KEY `id_purchase` (`id_purchase`);

--
-- Indexes for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`id_po`),
  ADD UNIQUE KEY `id_supplier` (`id_supplier`),
  ADD UNIQUE KEY `id_sepatu` (`id_sepatu`),
  ADD UNIQUE KEY `id_staff` (`id_staff`);

--
-- Indexes for table `returpurchase`
--
ALTER TABLE `returpurchase`
  ADD PRIMARY KEY (`id_returPurchase`),
  ADD UNIQUE KEY `id_po` (`id_po`),
  ADD UNIQUE KEY `id_sepatu` (`id_sepatu`),
  ADD UNIQUE KEY `id_staff` (`id_staff`);

--
-- Indexes for table `retursales`
--
ALTER TABLE `retursales`
  ADD PRIMARY KEY (`id_retursales`),
  ADD UNIQUE KEY `id_sepatu` (`id_sepatu`),
  ADD UNIQUE KEY `id_sales` (`id_sales`),
  ADD UNIQUE KEY `id_cashier` (`id_cashier`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id_sales`),
  ADD KEY `id_cashier` (`id_cashier`),
  ADD KEY `id_cust` (`id_cust`);

--
-- Indexes for table `salesdetails`
--
ALTER TABLE `salesdetails`
  ADD PRIMARY KEY (`id_det_sales`),
  ADD UNIQUE KEY `id_sales` (`id_sales`),
  ADD UNIQUE KEY `id_sepatu` (`id_sepatu`);

--
-- Indexes for table `salesorder`
--
ALTER TABLE `salesorder`
  ADD UNIQUE KEY `id_sepatu` (`id_sepatu`);

--
-- Indexes for table `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`id_sepatu`),
  ADD UNIQUE KEY `id_merk` (`id_merk`),
  ADD UNIQUE KEY `id_warna` (`id_warna`),
  ADD UNIQUE KEY `id_jenisSepatu` (`id_jenisSepatu`);

--
-- Indexes for table `shoesjenis`
--
ALTER TABLE `shoesjenis`
  ADD PRIMARY KEY (`id_shoesJenis`);

--
-- Indexes for table `shoesmerk`
--
ALTER TABLE `shoesmerk`
  ADD PRIMARY KEY (`id_merk`);

--
-- Indexes for table `shoes_warna`
--
ALTER TABLE `shoes_warna`
  ADD PRIMARY KEY (`id_warna`);

--
-- Indexes for table `staffpengadaan`
--
ALTER TABLE `staffpengadaan`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `fk_staff` FOREIGN KEY (`id_staff`) REFERENCES `staffpengadaan` (`id_staff`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchasedetails`
--
ALTER TABLE `purchasedetails`
  ADD CONSTRAINT `fk_purchase` FOREIGN KEY (`id_purchase`) REFERENCES `purchase` (`id_purchase`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `fk_cashier` FOREIGN KEY (`id_cashier`) REFERENCES `cashier` (`id_cashier`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cust` FOREIGN KEY (`id_cust`) REFERENCES `customer` (`id_cust`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salesdetails`
--
ALTER TABLE `salesdetails`
  ADD CONSTRAINT `fk_sales` FOREIGN KEY (`id_sales`) REFERENCES `sales` (`id_sales`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sepatu` FOREIGN KEY (`id_sepatu`) REFERENCES `shoes` (`id_sepatu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shoes`
--
ALTER TABLE `shoes`
  ADD CONSTRAINT `fk_jenis` FOREIGN KEY (`id_jenisSepatu`) REFERENCES `shoesjenis` (`id_shoesJenis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_merk` FOREIGN KEY (`id_merk`) REFERENCES `shoesmerk` (`id_merk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_warna` FOREIGN KEY (`id_warna`) REFERENCES `shoes_warna` (`id_warna`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
