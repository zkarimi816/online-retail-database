-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2023 at 12:30 PM
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
-- Database: `ordatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `Address_ID` char(10) NOT NULL,
  `Apartment_Number` int(11) NOT NULL,
  `Street` varchar(20) NOT NULL,
  `Apartment_Name` varchar(20) NOT NULL,
  `Customer_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`Address_ID`, `Apartment_Number`, `Street`, `Apartment_Name`, `Customer_ID`) VALUES
('01', 11, 'Aaly Tokombaev', 'Avangard', '1000'),
('02', 14, 'Aaly Tokombaev 9/11', 'Avangard', '1001'),
('03', 13, 'Aaly Tokombaev 6/7', 'Avangard', '1002'),
('04', 5, 'Macroryan', '5B', '1003'),
('05', 20, 'Macroryan', 'Almas', '1004'),
('06', 19, 'Macroryan', '5A', '1005'),
('07', 5, '11th Macroryan', '5B', '1006'),
('08', 15, 'Aaly Tokombaev', 'Tolo', '1007'),
('09', 18, '11th Macroryan', '5B', '1008'),
('11', 18, '11th Macroryan', '5B', '1009'),
('12', 15, 'Aaly Tokombaev 20/10', 'Avnagard', '1010');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Billing_ID` char(10) NOT NULL,
  `Billing_Date` date NOT NULL,
  `Amount_Paid` double NOT NULL,
  `Voucher_ID` varchar(10) DEFAULT NULL,
  `Payment_ID` char(10) NOT NULL,
  `Order_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Billing_ID`, `Billing_Date`, `Amount_Paid`, `Voucher_ID`, `Payment_ID`, `Order_ID`) VALUES
('B100', '0000-00-00', 2000, 'V1', 'P100', 'OR100'),
('B101', '0000-00-00', 2000, 'V2', 'P101', 'OR101'),
('B102', '0000-00-00', 1700, 'V3', 'P102', 'OR102'),
('B103', '0000-00-00', 1800, 'V3', 'P103', 'OR103'),
('B104', '0000-00-00', 3200, 'V4', 'P104', 'OR104'),
('B105', '0000-00-00', 1200, 'V5', 'P105', 'OR105'),
('B106', '0000-00-00', 700, 'V4', 'P106', 'OR106'),
('B107', '0000-00-00', 110, 'V5', 'P107', 'OR107'),
('B108', '0000-00-00', 2300, 'V1', 'P108', 'OR108'),
('B109', '0000-00-00', 3400, 'V2', 'P109', 'OR109'),
('B110', '0000-00-00', 230, 'V2', 'P110', 'OR110');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` char(10) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Phone_Number` int(10) NOT NULL,
  `Email_Address` varchar(20) NOT NULL,
  `Customer_Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `First_Name`, `Last_Name`, `Phone_Number`, `Email_Address`, `Customer_Type`) VALUES
('1000', 'Azamat', 'Kibekbaev', 500165501, 'Kibekbaev_A@auca.kg', 'professor'),
('1001', 'Nurbek', 'Madmarov', 500175501, 'madmarov_n@auca.kg', 'professor'),
('1002', 'Kadyrbek', 'Sultakeev', 500185501, 'sultakeev_k@auca.kg', 'professor'),
('1003', 'Sediqa', 'Safa', 500145501, 'ssafa@gmail.com', 'student'),
('1004', 'Nik', 'Ahmadi', 500195501, 'k_ahmadi@gmail.com', 'student'),
('1005', 'Fatema', 'Qambary', 500245501, 'qambaryfatima@gmail.', 'instructor'),
('1006', 'Seayar', 'Sorosh', 500235501, 'soroshseayar@gmail.c', 'employee'),
('1007', 'Emal', 'Ismail', 500295501, 'emalismail@gmail.com', 'business'),
('1008', 'Manshoor', 'Sadat', 500225501, 'ssadat33@gmail.com', 'employee'),
('1009', 'Abid', 'Ebady', 500215501, 'ebadyabid21@gmail.co', 'employee'),
('1010', 'Roein', 'Saba', 500205501, 'sabaroe1n@gmail.com', 'business');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Employee_ID` char(10) NOT NULL,
  `Employee_Name` varchar(20) NOT NULL,
  `SSN` int(9) NOT NULL,
  `Designation` varchar(10) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `Join_Date` date NOT NULL,
  `Employee_Type` varchar(20) NOT NULL,
  `Salary` varchar(20) NOT NULL,
  `Payment_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Employee_ID`, `Employee_Name`, `SSN`, `Designation`, `Department`, `Join_Date`, `Employee_Type`, `Salary`, `Payment_ID`) VALUES
('EM100', 'Seayar Sorosh', 501965640, 'IT Special', 'Infromation Technolo', '0000-00-00', 'Full time', '30000', 'P106'),
('EM101', 'Manshoor Sadat', 501965841, 'Technical ', 'Infromation Technolo', '0000-00-00', 'Full time', '35000', 'P108'),
('EM102', 'Abid Ebady', 501965111, 'Accountant', 'Finance', '0000-00-00', 'Part time', '28000', 'P109'),
('EM103', 'Tahmina Sadat', 2147483647, 'IT Special', 'Infromation Technolo', '0000-00-00', 'Part time', '15000', 'P111'),
('EM104', 'Ali rahman Waziri', 501925640, 'Marketer', 'Marketing', '0000-00-00', 'Full time', '28000', 'P113'),
('EM105', 'Moqadam Nikkwah', 501925640, 'Accoutant', 'Finance', '0000-00-00', 'Full time', '28000', 'P110'),
('EM106', 'Mia Marty', 501015640, 'PC Assista', 'Billing', '0000-00-00', 'Full time', '16000', 'P114'),
('EM107', 'Tahmina Shadab', 500012640, 'PC Assista', 'Billing', '0000-00-00', 'Full time', '16000', 'P101'),
('EM108', 'Tahmina Hail', 2147483647, 'PC Assista', 'Billing', '0000-00-00', 'Part time', '8000', 'P102'),
('EM109', 'Beheshta Rasekh', 501914640, 'Marketer', 'Marketing', '0000-00-00', 'Part time', '8000', 'P103'),
('EM110', 'Beheshta Abed', 501925540, 'Business A', 'Finance', '0000-00-00', 'Full time', '30000', 'P104'),
('EM111', 'Humaira Fariwar', 501111640, 'Financial ', 'Finance', '0000-00-00', 'Part time', '20000', 'P105'),
('EM112', 'Humaira Abed', 500015640, 'PC Assista', 'Billing', '0000-00-00', 'Part time', '8000', 'P112'),
('EM113', 'Mahdi Bayat', 501029990, 'Sales Pers', 'Sales', '0000-00-00', 'Full time', '30000', 'P115'),
('EM114', 'Amin Faizy', 500874531, 'Sales Advi', 'Sales', '0000-00-00', 'Full time', '28000', 'P107');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` char(10) NOT NULL,
  `Order_Date` date NOT NULL,
  `Status` char(20) DEFAULT NULL,
  `Shippment_Duration` varchar(20) NOT NULL,
  `Payment_ID` char(10) NOT NULL,
  `Customer_ID` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Order_Date`, `Status`, `Shippment_Duration`, `Payment_ID`, `Customer_ID`) VALUES
('OR100', '2023-03-01', 'In Progress', 'Immediate', 'P100', '1000'),
('OR101', '2023-03-02', 'In Progress', 'Within 4 days', 'P101', '1001'),
('OR102', '2023-03-02', 'Partially Shipped', 'Immediate', 'P102', '1002'),
('OR103', '2023-03-04', 'Partially Shipped', 'Immediate', 'P103', '1003'),
('OR104', '2023-03-07', 'Shipped', 'Within 3 days', 'P104', '1004'),
('OR105', '2023-03-15', 'In Progress', 'Within 3 days', 'P105', '1005'),
('OR106', '2023-03-14', 'In Progress', 'Immediate', 'P106', '1006'),
('OR107', '2023-03-13', 'In Progress', 'Within 3 days', 'P107', '1007'),
('OR108', '2023-03-13', 'Partially Shipped', 'Immediate', 'P108', '1008'),
('OR109', '2023-03-13', 'In Progress', 'Within 3 days', 'P109', '1009'),
('OR110', '2023-03-17', 'In Progress', 'Immediate', 'P110', '1010'),
('OR111', '2022-08-10', 'Shipped', 'Within 2 days', 'P116', '1003'),
('OR112', '2022-06-16', 'Shipped', 'Within 5 days', 'P114', '1000'),
('OR113', '2023-01-18', 'Shipped', 'Within one day', 'P114', '1000'),
('OR114', '2023-01-18', 'Shipped', 'Immediate', 'P116', '1003');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `Quantity` int(200) DEFAULT NULL,
  `Product_ID` char(10) NOT NULL,
  `Order_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`Quantity`, `Product_ID`, `Order_ID`) VALUES
(2, 'PR01', 'OR100'),
(2, 'PR01', 'OR101'),
(1, 'PR01', 'OR102'),
(4, 'PR01', 'OR105'),
(2, 'PR01', 'OR106'),
(5, 'PR01', 'OR107'),
(5, 'PR01', 'OR109'),
(4, 'PR02', 'OR100'),
(1, 'PR02', 'OR101'),
(2, 'PR02', 'OR102'),
(3, 'PR02', 'OR105'),
(4, 'PR02', 'OR106'),
(1, 'PR02', 'OR107'),
(1, 'PR02', 'OR109'),
(2, 'PR03', 'OR101'),
(2, 'PR03', 'OR104'),
(3, 'PR04', 'OR100'),
(3, 'PR05', 'OR107');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` char(10) NOT NULL,
  `Payment_Mode` varchar(20) NOT NULL,
  `Card_Type` varchar(20) NOT NULL,
  `Card_Number` int(12) NOT NULL,
  `CVV` int(11) NOT NULL,
  `Name_On_Card` varchar(20) NOT NULL,
  `Customer_ID` char(10) NOT NULL,
  `Visit_Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_ID`, `Payment_Mode`, `Card_Type`, `Card_Number`, `CVV`, `Name_On_Card`, `Customer_ID`, `Visit_Number`) VALUES
('P100', 'Online', 'credit', 2147483647, 259, 'Azamat Kibekbaev', '1000', 1),
('P101', 'Online', 'credit', 2147073647, 628, 'Nurbek Madmarov', '1001', 1),
('P102', 'Online', 'credit', 2140093647, 750, 'Kadyrbek Sultakeev', '1002', 2),
('P103', 'direct', 'debit', 2001455500, 643, 'Sediqa Safa', '1003', 3),
('P104', 'direct', 'debit', 1924770950, 348, 'Nik Ahmadi', '1004', 4),
('P105', 'direct', 'debit', 2147483647, 372, 'Fatema Qambary', '1005', 5),
('P106', 'direct', 'debit', 1760861438, 821, 'Seayar Sorosh', '1006', 6),
('P107', 'online', 'credit', 2147483647, 822, 'Emal Ismail', '1007', 7),
('P108', 'direct', 'credit', 2026172246, 824, 'Manshoor Sadat', '1008', 8),
('P109', 'online', 'credit', 1652325458, 331, 'Abid Ebady', '1009', 9),
('P110', 'online', 'credit', 1593155579, 497, 'Roein Saba', '1010', 10),
('P111', 'online', 'credit', 1593155579, 497, 'Roein Saba', '1010', 1),
('P112', 'online', 'credit', 1652325458, 331, 'Abid Ebady', '1009', 1),
('P113', 'online', 'credit', 2147483647, 259, 'Azamat Kibekbaev', '1000', 1),
('P114', 'online', 'credit', 2147483647, 259, 'Azamat Kibekbaev', '1000', 1),
('P115', 'online', 'credit', 2147073647, 628, 'Nurbek Madmarov', '1001', 3),
('P116', 'direct', 'debit', 2001455500, 643, 'Sediqa Safa', '1003', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` char(10) NOT NULL,
  `Product_Name` varchar(20) NOT NULL,
  `Available_Number` int(200) DEFAULT NULL,
  `Group_ID` int(10) NOT NULL,
  `Supplier_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Product_Name`, `Available_Number`, `Group_ID`, `Supplier_ID`) VALUES
('PR01', 'Вода Aqua Pamir лимо', 100, 400, 'SP01'),
('PR010', 'Zara Women Frocks', 25, 103, 'SP15'),
('PR011', 'Zara Sweat Shirts', 26, 103, 'SP15'),
('PR012', 'Zara Trousers', 30, 103, 'SP15'),
('PR013', 'Zara T-shirt', 32, 103, 'SP15'),
('PR014', 'Zara Hood Shirt', 32, 103, 'SP15'),
('PR015', 'Lenevo Flex', 14, 100, 'SP16'),
('PR016', 'Lenevo Think Pad', 32, 100, 'SP16'),
('PR02', 'Agar-Agar Kotanyi 10', 100, 400, 'SP01'),
('PR03', 'БАТОНЧИК KINDER 4ШТ ', 67, 600, 'SP02'),
('PR04', 'БАТОНЧИК JETS ПЕЧЕНЬ', 29, 600, 'SP01'),
('PR05', 'Бутылочка BabyNova п', 219, 800, 'SP02'),
('PR06', 'Аккумулятор внешний ', 30, 100, 'SP06'),
('PR07', 'Анти-степлер', 49, 800, 'SP06'),
('PR08', 'Гантеля 1кг', 200, 101, 'SP06'),
('PR09', 'Айран Турецкий Низам', 84, 600, 'SP07');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `Product_ID` char(10) NOT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Weight` varchar(20) DEFAULT NULL,
  `Product Description` text DEFAULT NULL,
  `Color` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`Product_ID`, `Price`, `Weight`, `Product Description`, `Color`) VALUES
('PR01', '30.00', '10', 'Water bottle containing fresh water for you to drink. Made of clean and processed Mineral Water.', 'White'),
('PR010', '1800.00', '2', 'This is an amazing Zara Women Frocks you would not want to miss!', 'Black'),
('PR011', '2000.00', '2', 'Look at this amazing Zara Sweat Shirts. Tailored for you cause you deserve it. Trust meee!', 'Black'),
('PR012', '2500.00', '2', 'Look at this uniquely designed Zara Trousers. Get them before they are out of stock!', 'Blue'),
('PR013', '3000.00', '3', 'Look at this uniquely designed Zara T-shirt. Get them before they are out of stock, we mean it :)', 'Yellow'),
('PR014', '3800.00', '2', 'Look at this cool Zara Hood Shirt. Wanna have it ? Then definitely go for it!', 'Black'),
('PR015', '100000.00', '13', 'Wanna get this Lenevo Flex? We suggest you get it for an amazing experience!', 'Silver'),
('PR016', '98000.00', '14', 'Wanna get this Lenevo Think Pad? We suggest you get it for an amazing experience!', 'Silver'),
('PR02', '76.00', '10', 'Wanna Bake cake? We suggest you definately go for this!Caramel flavor for bakers.', 'Yellow'),
('PR03', '67.00', '10', 'Craving for some sweet tasty chocolate? we have Kinder for you right here. White and red packaged with delicious chocolate', 'Dark chocolate'),
('PR04', '29.00', '10', 'Look we have got Jots for you. Delicious heavy chocolate iwth cream and nuts.', 'Dark chocolate'),
('PR05', '219.00', '10', 'Lookign for something unique and amazing? We suggest you definately go fot this product', 'Pink'),
('PR06', '519.00', '50', 'Tired of carrying your charger with you everywhere? No worries, we have got you this incredible power bank N3 20000 Mah.', 'White and silver'),
('PR07', '49.00', '5', 'Look at this beautiful stapler. Easy to carry that includes pins too.', 'Blue'),
('PR08', '529.00', '6000', 'If you are a fitness freak then this BMS Sports 6kg dumbbell set is the perfect tool in your arsenal.', 'Blue'),
('PR09', '84.00', '200', 'Want some Yogurt? Try this delicious one from Arapa.', 'White');

-- --------------------------------------------------------

--
-- Table structure for table `product_group`
--

CREATE TABLE `product_group` (
  `Group_ID` int(10) NOT NULL,
  `Group_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_group`
--

INSERT INTO `product_group` (`Group_ID`, `Group_Name`) VALUES
(100, 'electronics'),
(101, 'Sports'),
(102, 'Goods for Pets'),
(103, 'Clothes'),
(200, 'Costmetics'),
(300, 'Grocery'),
(400, 'Beverages'),
(500, 'Frozen Semi-finished'),
(600, 'Dairy Products'),
(700, 'Confectionary'),
(800, 'Chidlren Toys'),
(900, 'Souvenirs');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `Quality_Rating` int(1) NOT NULL,
  `Defect` int(2) NOT NULL,
  `Review_ID` varchar(10) NOT NULL,
  `Review_Date` date DEFAULT NULL,
  `Product_ID` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`Quality_Rating`, `Defect`, `Review_ID`, `Review_Date`, `Product_ID`) VALUES
(10, 10, 'RV02', '2023-03-02', 'PR01'),
(8, 10, 'RV03', '2023-03-01', 'PR02'),
(7, 10, 'RV04', '2023-03-01', 'PR03'),
(6, 10, 'RV05', '2023-03-03', 'PR01'),
(9, 10, 'RV06', '2023-03-04', 'PR02'),
(9, 0, 'RV07', '2023-03-04', 'PR02'),
(10, 0, 'RV08', '2023-03-04', 'PR04'),
(8, 0, 'RV09', '2023-03-05', 'PR04'),
(7, 0, 'RV10', '2023-03-05', 'PR05'),
(6, 0, 'RV11', '2023-03-06', 'PR06'),
(9, 10, 'RV12', '2023-03-02', 'PR07'),
(8, 7, 'RV13', '2022-03-17', 'PR016'),
(9, 9, 'RV14', '2022-03-31', 'PR016');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Supplier_ID` char(10) NOT NULL,
  `Supplier_Name` varchar(20) NOT NULL,
  `Supply_Quantity` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Supplier_ID`, `Supplier_Name`, `Supply_Quantity`) VALUES
('SP01', 'Mono', '10000'),
('SP02', 'Mikado', '50000'),
('SP03', 'Heinz', '10000'),
('SP04', 'Bonduella', '9000'),
('SP05', 'Parsun', '15000'),
('SP06', 'Muesli', '20000'),
('SP07', 'Dove', '30000'),
('SP08', 'Head & Shoulder', '11000'),
('SP09', 'Nivea', '13000'),
('SP10', 'Nestle', '15000'),
('SP11', 'Ariel', '4000'),
('SP12', 'Arbella', '18000'),
('SP13', 'Coca Cola', '19000'),
('SP14', 'Red Bull', '20000'),
('SP15', 'Zara', '1000'),
('SP16', 'Lenovo', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `Voucher_ID` varchar(10) NOT NULL,
  `Discount` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`Voucher_ID`, `Discount`) VALUES
('V1', 5),
('V2', 10),
('V3', 15),
('V4', 25),
('V5', 40),
('V6', 50);

-- --------------------------------------------------------

--
-- Table structure for table `zip_code`
--

CREATE TABLE `zip_code` (
  `Region` varchar(20) NOT NULL,
  `Zipcode_ID` char(10) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Address_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zip_code`
--

INSERT INTO `zip_code` (`Region`, `Zipcode_ID`, `City`, `Address_ID`) VALUES
('Bishkek', '720000', 'Bishkek', '01'),
('Bishkek', '720060', 'Bishkek', '02'),
('Chuy', '720005', 'Bishkek', '03'),
('Chuy', '720050', 'Bishkek', '04'),
('Bishkek', '720015', 'Bishkek', '05'),
('Jalal-Abad', '720040', 'Jalal-Abad', '06'),
('Jalal-Abad', '720025', 'Bishkek', '07'),
('Osh', '720030', 'Osh', '08'),
('Osh', '720045', 'Osh', '09'),
('Bishkek', '720160', 'Bishkek', '11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`Address_ID`),
  ADD KEY `IX_Relationship5` (`Customer_ID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Billing_ID`),
  ADD KEY `IX_Relationship4` (`Voucher_ID`),
  ADD KEY `IX_Relationship9` (`Payment_ID`),
  ADD KEY `IX_Relationship16` (`Order_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Employee_ID`),
  ADD KEY `IX_Relationship8` (`Payment_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `IX_Relationship15` (`Payment_ID`),
  ADD KEY `fk_orders_customer_id` (`Customer_ID`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`Product_ID`,`Order_ID`),
  ADD KEY `IX_Relationship12` (`Product_ID`),
  ADD KEY `IX_Relationship13` (`Order_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `IX_Relationship11` (`Customer_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `IX_Relationship1` (`Group_ID`),
  ADD KEY `IX_Relationship2` (`Supplier_ID`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `product_group`
--
ALTER TABLE `product_group`
  ADD PRIMARY KEY (`Group_ID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`Review_ID`),
  ADD KEY `Product_ID_fk` (`Product_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Supplier_ID`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`Voucher_ID`);

--
-- Indexes for table `zip_code`
--
ALTER TABLE `zip_code`
  ADD KEY `will zip` (`Address_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `will have` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `Generates` FOREIGN KEY (`Payment_ID`) REFERENCES `payment` (`Payment_ID`),
  ADD CONSTRAINT `is included` FOREIGN KEY (`Voucher_ID`) REFERENCES `voucher` (`Voucher_ID`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `monitors` FOREIGN KEY (`Payment_ID`) REFERENCES `payment` (`Payment_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_customer_id` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `contains` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`),
  ADD CONSTRAINT `product order relation` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `belongs to` FOREIGN KEY (`Group_ID`) REFERENCES `product_group` (`Group_ID`),
  ADD CONSTRAINT `supplies` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`);

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `has details` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `Product_ID_fk` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`);

--
-- Constraints for table `zip_code`
--
ALTER TABLE `zip_code`
  ADD CONSTRAINT `will zip` FOREIGN KEY (`Address_ID`) REFERENCES `address` (`Address_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
