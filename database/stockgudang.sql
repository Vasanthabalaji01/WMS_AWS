-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2023 at 11:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sp_stockgudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_item`
--

CREATE TABLE `m_item` (
  `item_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `workshop_name` varchar(50) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_satuan` varchar(55) NOT NULL,
  `item_date` date NOT NULL DEFAULT curdate(),
  `item_price` int(11) NOT NULL,
  `information` varchar(50) NOT NULL,
  `item_supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `m_item`
--

INSERT INTO `m_item` (`item_id`, `item_code`, `workshop_name`, `item_name`, `item_quantity`, `item_satuan`, `item_date`, `item_price`, `information`, `item_supplier_id`) VALUES
(20, 'MC-811242', 'PAK UJANG', 'SELANG POWER STEERING PS190', 5, 'kg', '2023-08-10', 150000000, 'SERVIS', 0),
(24, 'HKB003', 'AUTO2000', 'SELANG POWER STEERING PS190', 4, 'kg', '2023-08-10', 99000000, 'SERVIS', 0),
(25, '018051', 'KASDI', 'FILTER OLI O-18051', 4, 'liter', '2023-08-14', 880000, 'SERVIS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `m_mutasi`
--

CREATE TABLE `m_mutasi` (
  `mutasi_id` int(11) NOT NULL,
  `mutasi_item_id` int(11) NOT NULL,
  `mutasi_item_code` varchar(50) NOT NULL,
  `mutasi_bengkel` varchar(50) NOT NULL,
  `mutasi_barang` varchar(50) NOT NULL,
  `mutasi_date` date NOT NULL,
  `mutasi_quantity` int(11) NOT NULL,
  `mutasi_satuan` varchar(55) NOT NULL,
  `mutasi_price` int(11) NOT NULL,
  `mutasi_keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `m_mutasi`
--

INSERT INTO `m_mutasi` (`mutasi_id`, `mutasi_item_id`, `mutasi_item_code`, `mutasi_bengkel`, `mutasi_barang`, `mutasi_date`, `mutasi_quantity`, `mutasi_satuan`, `mutasi_price`, `mutasi_keterangan`) VALUES
(28, 24, 'HKB003', 'AUTO2000', 'SELANG POWER STEERING', '2023-08-15', 1, 'kg', 99000000, 'SERVIS'),
(29, 24, 'HKB003', 'AUTO2000', 'SELANG POWER STEERING', '2023-08-15', 1, 'kg', 99000000, 'SERVIS'),
(30, 25, '018051', 'KASDI', 'FILTER OLI O-18051', '2023-08-15', 1, 'kg', 880000, 'SERVIS');

-- --------------------------------------------------------

--
-- Table structure for table `m_supplier`
--

CREATE TABLE `m_supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(30) NOT NULL,
  `supplier_contact` varchar(100) NOT NULL,
  `supplier_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `m_supplier`
--

INSERT INTO `m_supplier` (`supplier_id`, `supplier_name`, `supplier_contact`, `supplier_address`) VALUES
(6, 'PAK UJANG', 'WA: 008123456789', 'JALAN YANG LURUS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_item`
--
ALTER TABLE `m_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `m_mutasi`
--
ALTER TABLE `m_mutasi`
  ADD PRIMARY KEY (`mutasi_id`);

--
-- Indexes for table `m_supplier`
--
ALTER TABLE `m_supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_item`
--
ALTER TABLE `m_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `m_mutasi`
--
ALTER TABLE `m_mutasi`
  MODIFY `mutasi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `m_supplier`
--
ALTER TABLE `m_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
