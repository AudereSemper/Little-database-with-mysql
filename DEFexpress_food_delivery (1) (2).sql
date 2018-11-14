-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Lug 07, 2018 alle 15:05
-- Versione del server: 10.1.32-MariaDB
-- Versione PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express food delivery`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `addresses`
--

CREATE TABLE `addresses` (
  `ID` int(11) NOT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `Address2` varchar(255) DEFAULT NULL,
  `postalCode` varchar(30) DEFAULT NULL,
  `house` varchar(255) DEFAULT NULL,
  `pays` varchar(150) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `addresses`
--

INSERT INTO `addresses` (`ID`, `address1`, `Address2`, `postalCode`, `house`, `pays`, `description`, `latitude`, `longitude`) VALUES
(1, 'Via Etna, 30', 'Via Regina Margherita, 8', '95020', '3b', '30€', 'Allergic to strawberry', 2.2328, 1.2328),
(2, 'Via Re Martino, 214', 'Via Vittorio Emanuele, 4', '95021', '4d', '40€', 'nothing special', 3.432, 3.474),
(3, 'Via A. Spampinato, 28', '', '95020', 'second floor', '50€', 'nothing special', 8.3822, 2.4857),
(4, 'Via A. Spedalieri, 40', '', '95020', '1a', '', 'nothing special', 2.3736, 2.2321);

-- --------------------------------------------------------

--
-- Struttura della tabella `customer`
--

CREATE TABLE `customer` (
  `ID` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `cellphone` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `addin_date` datetime DEFAULT NULL,
  `modification_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `customer`
--

INSERT INTO `customer` (`ID`, `email`, `name`, `surname`, `cellphone`, `password`, `addin_date`, `modification_date`) VALUES
(1, 'info@yahoo.it', 'Alessandra', 'Rossi', '+398732838223', 'vfmiovd2d2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'exced@gmail.com', 'Federico', 'Baraldi', '+393923454563', 'mcdocvwdi32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'alba@hotmail.it', 'Jhon', 'Goodman', '+32982389237', 'd32d232d32d32x', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'prova@gmail.com', 'Andrea', 'Leroix', '+39328237282', '32t2r2332', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `customer_address`
--

CREATE TABLE `customer_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `customer_address`
--

INSERT INTO `customer_address` (`address_id`, `customer_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `delivery`
--

CREATE TABLE `delivery` (
  `Id` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `delivery`
--

INSERT INTO `delivery` (`Id`, `customer_ID`, `longitude`, `latitude`, `status`) VALUES
(1, 1, 2.3432, 2.8574, 1),
(2, 2, 4.39273, 4.58574, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `employer`
--

CREATE TABLE `employer` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `employ_number` int(11) DEFAULT NULL,
  `id_delivery` int(11) DEFAULT NULL,
  `id_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `employer`
--

INSERT INTO `employer` (`id`, `name`, `surname`, `employ_number`, `id_delivery`, `id_order`) VALUES
(1, 'Alex', 'Bouregard', 1, 1, 2),
(2, 'Jack', 'London', 2, 1, 2),
(3, 'Montgomery', 'Burns', 3, 1, 3),
(4, 'jhon', 'Doe', 4, 1, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `food_menu`
--

CREATE TABLE `food_menu` (
  `ID` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `date_adding` datetime DEFAULT NULL,
  `Date_modification` datetime DEFAULT NULL,
  `date_public` datetime DEFAULT NULL,
  `Categories_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `food_menu`
--

INSERT INTO `food_menu` (`ID`, `Title`, `Description`, `Image`, `price`, `date_adding`, `Date_modification`, `date_public`, `Categories_ID`) VALUES
(1, 'Cheesy Salsa Mac', 'Delicious gooey comfort food with a spicy kick. homemade salsa/pico de gallo and substituted Nacho Cheese Sauce in place of the Velveeta.', 'https://dish-environment-prod-contentbucket-10u8bszryovz3.s3.amazonaws.com/assets/s3fs-public/styles/content_image_x_large/public/2377169-Cheesy-Salsa-Mac-Photo-by-bd.weld-resized.jpg?itok=vmHLimfB', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'main course'),
(2, 'Rosemary Olive Steak Skewers', 'with California Ripe Olives to make you these awesome Rosemary Olive Steak Skewers. Tender grilled sirloin', 'https://www.simplyrecipes.com/wp-content/uploads/2018/06/SR-CalOlive-Steak-Skewers-3.jpg', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'main course'),
(3, 'Red, White, and Blue Layer Cake', 'This layer cake is easy to assemble and will make the day feel extra-special. The Swiss meringue frosting also holds up exceptionally well on a hot day.', 'https://www.simplyrecipes.com/wp-content/uploads/2018/06/Red-White-Blue-Cake-LEAD-VERTICAL-1.jpg', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'dessert'),
(4, 'Sweet Cherry Cobbler', 'Bubbling with sweet summer cherries and covered with a soft biscuity topping, this homey cobbler just begs for a scoop of vanilla ice cream!', 'https://www.simplyrecipes.com/wp-content/uploads/2018/06/Cherry-Cobbler-LEAD-VERTICAL.jpg', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'dessert');

-- --------------------------------------------------------

--
-- Struttura della tabella `inventory`
--

CREATE TABLE `inventory` (
  `ID` int(11) NOT NULL,
  `ID_Delivery` int(11) NOT NULL,
  `Id_product` int(11) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `remaining_Amount` int(11) DEFAULT NULL,
  `takingCharge` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `inventory`
--

INSERT INTO `inventory` (`ID`, `ID_Delivery`, `Id_product`, `Amount`, `remaining_Amount`, `takingCharge`) VALUES
(5, 1, 1, 3, 4, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `order`
--

CREATE TABLE `order` (
  `ID` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `total_price` float DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` tinyint(4) DEFAULT NULL,
  `detail_service_customer` text,
  `adding_date` datetime DEFAULT NULL,
  `date_modification` datetime DEFAULT NULL,
  `date_payment` datetime DEFAULT NULL,
  `date_taking_charge` datetime DEFAULT NULL,
  `date_success_delivery` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `order`
--

INSERT INTO `order` (`ID`, `customer_id`, `address_id`, `delivery_id`, `total_price`, `payment_status`, `delivery_status`, `detail_service_customer`, `adding_date`, `date_modification`, `date_payment`, `date_taking_charge`, `date_success_delivery`) VALUES
(2, 1, 1, 1, 40, 'no debit', 1, 'he is a good customer', '2018-07-06 19:00:00', '2018-07-06 19:00:00', '2018-07-06 19:00:00', '2018-07-06 19:10:30', '2018-07-06 19:19:00'),
(3, 2, 2, 2, 50, 'no debit', 1, 'he is a good customer', '2018-07-06 20:00:00', '2018-07-06 20:00:00', '2018-07-06 20:00:00', '2018-07-06 20:10:00', '2018-07-06 20:19:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `product_order`
--

CREATE TABLE `product_order` (
  `ID` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` smallint(6) DEFAULT NULL,
  `adding_date` datetime DEFAULT NULL,
  `Modification_Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `product_order`
--

INSERT INTO `product_order` (`ID`, `product_id`, `order_id`, `quantity`, `adding_date`, `Modification_Date`) VALUES
(3, 1, 2, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`address_id`,`customer_id`),
  ADD KEY `customer_id_idx` (`customer_id`);

--
-- Indici per le tabelle `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_idx` (`customer_ID`);

--
-- Indici per le tabelle `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_delivery1_idx` (`id_delivery`),
  ADD KEY `id_order1_idx` (`id_order`);

--
-- Indici per le tabelle `food_menu`
--
ALTER TABLE `food_menu`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`ID`,`ID_Delivery`),
  ADD KEY `Id_product_idx` (`Id_product`),
  ADD KEY `ID_delivery_idx` (`ID_Delivery`);

--
-- Indici per le tabelle `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`ID`,`customer_id`,`address_id`),
  ADD KEY `customer_id_idx` (`customer_id`),
  ADD KEY `address_id_idx` (`address_id`),
  ADD KEY `delivery_id_idx` (`delivery_id`);

--
-- Indici per le tabelle `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`ID`,`product_id`,`order_id`),
  ADD KEY `order_id_idx` (`order_id`),
  ADD KEY `product_id_idx` (`product_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `addresses`
--
ALTER TABLE `addresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `customer`
--
ALTER TABLE `customer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `delivery`
--
ALTER TABLE `delivery`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `employer`
--
ALTER TABLE `employer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `food_menu`
--
ALTER TABLE `food_menu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `inventory`
--
ALTER TABLE `inventory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `order`
--
ALTER TABLE `order`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `product_order`
--
ALTER TABLE `product_order`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `customer_address`
--
ALTER TABLE `customer_address`
  ADD CONSTRAINT `address_id` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `Id` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `employer`
--
ALTER TABLE `employer`
  ADD CONSTRAINT `id_delivery1` FOREIGN KEY (`id_delivery`) REFERENCES `delivery` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_order1` FOREIGN KEY (`id_order`) REFERENCES `order` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `ID_delivery2` FOREIGN KEY (`ID_Delivery`) REFERENCES `delivery` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Id_product2` FOREIGN KEY (`Id_product`) REFERENCES `food_menu` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `address_id0` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `customer_id0` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `delivery_id0` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`customer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `food_menu` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
