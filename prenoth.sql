-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 26, 2026 alle 19:29
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prenoth`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `hotel`
--

CREATE TABLE `hotel` (
  `IdHotel` int(11) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Comune` varchar(20) NOT NULL,
  `Cap` varchar(5) NOT NULL,
  `Via` varchar(20) NOT NULL,
  `Civico` varchar(4) NOT NULL,
  `Tipo` varchar(5) NOT NULL,
  `Descrizione` varchar(250) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Stelle` int(11) NOT NULL,
  `Img` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `hotel`
--

INSERT INTO `hotel` (`IdHotel`, `Nome`, `Comune`, `Cap`, `Via`, `Civico`, `Tipo`, `Descrizione`, `Telefono`, `Stelle`, `Img`) VALUES
(1, 'Grand Hotel', 'Roma', '00100', 'Via Veneto', '10', 'HOTEL', 'Lussuoso hotel nel centro storico', '0612345678', 3, 'hotel_1.jpg'),
(2, 'Hotel Mare', 'Rimini', '47921', 'Lungomare', '5', 'HOTEL', 'Vista mare e spiaggia privata', '0541123456', 4, 'hotel_2.jpg'),
(3, 'Albergo Reale', 'Torino', '10121', 'Corso Re', '22', 'HOTEL', 'Eleganza sabauda e comfort moderno', '0119876543', 5, 'hotel_3.jpg'),
(4, 'Hotel Alpino', 'Cortina', '32043', 'Via Monti', '45', 'HOTEL', 'Atmosfera accogliente di montagna', '0436123456', 1, 'hotel_4.jpg'),
(5, 'Hotel Stella', 'Milano', '20121', 'Via Duomo', '1', 'HOTEL', 'A due passi dal centro', '0245678901', 3, 'hotel_5.jpg'),
(6, 'Hotel Luna', 'Venezia', '30100', 'Calle Lunga', '102', 'HOTEL', 'Affacciato sui canali', '0412233445', 3, 'hotel_6.jpg'),
(7, 'Principe G.', 'Napoli', '80100', 'Via Toledo', '88', 'HOTEL', 'Storico palazzo nobiliare', '0815566778', 5, 'hotel_7.jpg'),
(8, 'Hotel Fiori', 'Firenze', '50123', 'Via Arno', '12', 'HOTEL', 'Giardino interno incantevole', '0559988776', 4, 'hotel_8.jpg'),
(9, 'Hotel Garda', 'Garda', '37016', 'Piazza Lago', '3', 'HOTEL', 'Relax totale sulle rive del lago', '0451234567', 4, 'hotel_9.jpg'),
(10, 'Solar Hotel', 'Palermo', '90100', 'Via Roma', '200', 'HOTEL', 'Calore e ospitalità siciliana', '0916655443', 5, 'hotel_10.jpg'),
(11, 'Hotel Miramare', 'Genova', '16100', 'Via Porto', '9', 'HOTEL', 'Vicinissimo all acquario', '0103344556', 5, 'hotel_11.jpg'),
(12, 'Modern Hotel', 'Bari', '70100', 'Via Sparano', '15', 'HOTEL', 'Design contemporaneo in centro', '0807788990', 5, 'hotel_12.jpg'),
(13, 'Hotel Palace', 'Bologna', '40121', 'Via Indipend.', '40', 'HOTEL', 'Servizi esclusivi per business', '0513322110', 3, 'hotel_13.jpg'),
(14, 'Hotel Etrusco', 'Siena', '53100', 'Via Senese', '7', 'HOTEL', 'Stile rustico toscano', '0577112233', 3, 'hotel_14.jpg'),
(15, 'Vittoria H.', 'Verona', '37121', 'Via Arena', '50', 'HOTEL', 'Accanto all Arena di Verona', '0459988771', 2, 'hotel_15.jpg'),
(16, 'Hotel Pineta', 'Trento', '38121', 'Via Boschi', '2', 'HOTEL', 'Immerso nel verde', '0461223344', 2, 'hotel_16.jpg'),
(17, 'Hotel Sole', 'Cagliari', '09121', 'Via Sardegna', '34', 'HOTEL', 'Pochi passi dal porto', '0706677889', 3, 'hotel_17.jpg'),
(18, 'Hotel Ducale', 'Urbino', '61029', 'Via Raffaello', '11', 'HOTEL', 'Arte e cultura rinascimentale', '0722334455', 3, 'hotel_18.jpg'),
(19, 'Hotel Terme', 'Ischia', '80077', 'Via Bagni', '101', 'HOTEL', 'Piscine termali incluse', '0812233446', 4, 'hotel_19.jpg'),
(20, 'City Hotel', 'Trieste', '34121', 'Corso Italia', '25', 'HOTEL', 'Perfetto per viaggiatori', '0405566778', 4, 'hotel_20.jpg'),
(21, 'Da Maria', 'Roma', '00152', 'Via Trastevere', '14', 'B&B', 'Atmosfera familiare a Roma', '0699887766', 3, 'hotel_21.jpg'),
(22, 'B&B Relax', 'Rimini', '47922', 'Via Pascoli', '3', 'B&B', 'Colazione con torte fatte in casa', '0541998877', 3, 'hotel_22.jpg'),
(23, 'Il Nido', 'Firenze', '50125', 'Via dei Bardi', '19', 'B&B', 'Piccolo e romantico', '0551212121', 3, 'hotel_23.jpg'),
(24, 'Zio Tom', 'Napoli', '80121', 'Via Chiaia', '2', 'B&B', 'Ospitalità verace napoletana', '0813344551', 5, 'hotel_24.jpg'),
(25, 'La Sosta', 'Milano', '20131', 'Via Loreto', '44', 'B&B', 'Comodo per la metropolitana', '0233445566', 5, 'hotel_25.jpg'),
(26, 'B&B Canal', 'Venezia', '30121', 'Fondamenta', '10', 'B&B', 'Vivere come un veneziano', '0415566771', 3, 'hotel_26.jpg'),
(27, 'Bella Vista', 'Positano', '84017', 'Via Rupe', '21', 'B&B', 'Terrazza mozzafiato', '0891122334', 4, 'hotel_27.jpg'),
(28, 'Sweet Home', 'Torino', '10141', 'Via Nizza', '56', 'B&B', 'Ambiente moderno e pulito', '0112233445', 2, 'hotel_28.jpg'),
(29, 'Casale Blu', 'Perugia', '06121', 'Via Campagna', '1', 'B&B', 'Soggiorno rurale in Umbria', '0755566778', 5, 'hotel_29.jpg'),
(30, 'A Casa Mia', 'Lecce', '73100', 'Via Barocco', '8', 'B&B', 'Nel cuore del Salento', '0832112233', 5, 'hotel_30.jpg'),
(31, 'B&B del Corso', 'Pisa', '56121', 'Corso Italia', '99', 'B&B', 'Vicino alla Torre Pendente', '0504455667', 5, 'hotel_31.jpg'),
(32, 'Al Vecchio Faro', 'Ancona', '60121', 'Via Porto', '30', 'B&B', 'Sentire il profumo del mare', '0718899001', 1, 'hotel_32.jpg'),
(33, 'Il Glicine', 'Lucca', '55100', 'Via Mura', '4', 'B&B', 'Bici disponibili per gli ospiti', '0583112233', 5, 'hotel_33.jpg'),
(34, 'Oasi Felice', 'Catania', '95100', 'Via Etnea', '150', 'B&B', 'Ai piedi dell Etna', '0956677889', 3, 'hotel_34.jpg'),
(35, 'B&B Portico', 'Bologna', '40122', 'Via Pratello', '12', 'B&B', 'Sotto i famosi portici', '0514455661', 5, 'hotel_35.jpg'),
(36, 'Corte Antica', 'Mantova', '46100', 'Piazza Erbe', '6', 'B&B', 'Storia e comfort', '0376112233', 1, 'hotel_36.jpg'),
(37, 'Mare Verde', 'Alghero', '07041', 'Via Lido', '77', 'B&B', 'Spiaggia raggiungibile a piedi', '0791122334', 5, 'hotel_37.jpg'),
(38, 'Il Rifugio', 'Aosta', '11100', 'Via Neve', '5', 'B&B', 'Perfetto per sciare', '0165112233', 2, 'hotel_38.jpg'),
(39, 'B&B Libery', 'Messina', '98100', 'Via Marina', '31', 'B&B', 'Vista sullo stretto', '0901122334', 2, 'hotel_39.jpg'),
(40, 'Poggio Sole', 'Arezzo', '52100', 'Via Colli', '20', 'B&B', 'Splendida vista collinare', '0575112233', 2, 'hotel_40.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `preferiti`
--

CREATE TABLE `preferiti` (
  `IdPreferito` int(11) NOT NULL,
  `IdUtente` int(11) NOT NULL,
  `IdHotel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `preferiti`
--

INSERT INTO `preferiti` (`IdPreferito`, `IdUtente`, `IdHotel`) VALUES
(4, 3, 30),
(5, 3, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `prenota`
--

CREATE TABLE `prenota` (
  `IdPrenotazione` int(11) NOT NULL,
  `DataInizio` date NOT NULL,
  `DataFine` date NOT NULL,
  `IdUtente` int(11) NOT NULL,
  `IdStanza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `prenota`
--

INSERT INTO `prenota` (`IdPrenotazione`, `DataInizio`, `DataFine`, `IdUtente`, `IdStanza`) VALUES
(1, '2026-08-12', '2026-08-20', 3, 52),
(2, '2026-12-20', '2026-12-30', 3, 35),
(3, '2027-01-15', '2027-01-17', 3, 189),
(4, '2026-08-15', '2026-08-20', 3, 150);

-- --------------------------------------------------------

--
-- Struttura della tabella `recensione`
--

CREATE TABLE `recensione` (
  `IdRecensione` int(11) NOT NULL,
  `Testo` varchar(250) DEFAULT NULL,
  `Voto` int(11) DEFAULT NULL,
  `IdUtente` int(11) NOT NULL,
  `IdHotel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `recensione`
--

INSERT INTO `recensione` (`IdRecensione`, `Testo`, `Voto`, `IdUtente`, `IdHotel`) VALUES
(4, 'Recensione di prova. 1', 5, 3, 3),
(5, 'Recensione di prova. 2\r\n', 4, 3, 3),
(6, 'Recensione di prova. 3', 3, 3, 3),
(7, 'Recensione di prova. 4', 2, 3, 3),
(8, 'Recensione di prova. 5', 1, 3, 3),
(9, 'Non  vedo l\'ora', 4, 3, 30);

-- --------------------------------------------------------

--
-- Struttura della tabella `stanza`
--

CREATE TABLE `stanza` (
  `IdStanza` int(11) NOT NULL,
  `Tipo` varchar(15) NOT NULL,
  `Piano` int(11) NOT NULL,
  `Letti` int(11) NOT NULL,
  `IdHotel` int(11) NOT NULL,
  `Stato` varchar(15) NOT NULL,
  `Prezzo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `stanza`
--

INSERT INTO `stanza` (`IdStanza`, `Tipo`, `Piano`, `Letti`, `IdHotel`, `Stato`, `Prezzo`) VALUES
(1, 'Singola', 1, 1, 1, 'Libera', 50),
(2, 'Doppia', 1, 2, 1, 'Libera', 70),
(3, 'Matrimoniale', 2, 1, 1, 'Libera', 90),
(4, 'Tripla', 2, 3, 1, 'Non disponibile', 110),
(5, 'Suite', 3, 2, 1, 'Libera', 30),
(6, 'Singola', 1, 1, 2, 'Libera', 50),
(7, 'Doppia', 1, 2, 2, 'Non disponibile', 70),
(8, 'Matrimoniale', 2, 1, 2, 'Libera', 90),
(9, 'Tripla', 2, 3, 2, 'Libera', 110),
(10, 'Suite', 3, 2, 2, 'Libera', 30),
(11, 'Singola', 1, 1, 3, 'Non disponibile', 50),
(12, 'Doppia', 1, 2, 3, 'Libera', 70),
(13, 'Matrimoniale', 2, 1, 3, 'Libera', 90),
(14, 'Tripla', 2, 3, 3, 'Libera', 110),
(15, 'Suite', 3, 2, 3, 'Libera', 30),
(16, 'Singola', 1, 1, 4, 'Libera', 50),
(17, 'Doppia', 1, 2, 4, 'Libera', 70),
(18, 'Matrimoniale', 2, 1, 4, 'Libera', 90),
(19, 'Tripla', 2, 3, 4, 'Libera', 110),
(20, 'Suite', 3, 2, 4, 'Non disponibile', 30),
(21, 'Singola', 1, 1, 5, 'Libera', 50),
(22, 'Doppia', 1, 2, 5, 'Libera', 70),
(23, 'Matrimoniale', 2, 1, 5, 'Non disponibile', 90),
(24, 'Tripla', 2, 3, 5, 'Libera', 110),
(25, 'Suite', 3, 2, 5, 'Libera', 30),
(26, 'Singola', 1, 1, 6, 'Libera', 50),
(27, 'Doppia', 1, 2, 6, 'Libera', 70),
(28, 'Matrimoniale', 2, 1, 6, 'Libera', 90),
(29, 'Tripla', 2, 3, 6, 'Libera', 110),
(30, 'Suite', 3, 2, 6, 'Libera', 30),
(31, 'Singola', 1, 1, 7, 'Libera', 50),
(32, 'Doppia', 1, 2, 7, 'Libera', 70),
(33, 'Matrimoniale', 2, 1, 7, 'Libera', 90),
(34, 'Tripla', 2, 3, 7, 'Non disponibile', 110),
(35, 'Suite', 3, 2, 7, 'Libera', 30),
(36, 'Singola', 1, 1, 8, 'Libera', 50),
(37, 'Doppia', 1, 2, 8, 'Non disponibile', 70),
(38, 'Matrimoniale', 2, 1, 8, 'Libera', 90),
(39, 'Tripla', 2, 3, 8, 'Libera', 110),
(40, 'Suite', 3, 2, 8, 'Libera', 30),
(41, 'Singola', 1, 1, 9, 'Libera', 50),
(42, 'Doppia', 1, 2, 9, 'Libera', 70),
(43, 'Matrimoniale', 2, 1, 9, 'Libera', 90),
(44, 'Tripla', 2, 3, 9, 'Libera', 110),
(45, 'Suite', 3, 2, 9, 'Libera', 30),
(46, 'Singola', 1, 1, 10, 'Libera', 50),
(47, 'Doppia', 1, 2, 10, 'Libera', 70),
(48, 'Matrimoniale', 2, 1, 10, 'Libera', 90),
(49, 'Tripla', 2, 3, 10, 'Libera', 110),
(50, 'Suite', 3, 2, 10, 'Non disponibile', 30),
(51, 'Singola', 1, 1, 11, 'Libera', 50),
(52, 'Doppia', 1, 2, 11, 'Libera', 70),
(53, 'Matrimoniale', 2, 1, 11, 'Non disponibile', 90),
(54, 'Tripla', 2, 3, 11, 'Libera', 110),
(55, 'Suite', 3, 2, 11, 'Libera', 30),
(56, 'Singola', 1, 1, 12, 'Libera', 50),
(57, 'Doppia', 1, 2, 12, 'Libera', 70),
(58, 'Matrimoniale', 2, 1, 12, 'Libera', 90),
(59, 'Tripla', 2, 3, 12, 'Libera', 110),
(60, 'Suite', 3, 2, 12, 'Libera', 30),
(61, 'Singola', 1, 1, 13, 'Libera', 50),
(62, 'Doppia', 1, 2, 13, 'Libera', 70),
(63, 'Matrimoniale', 2, 1, 13, 'Libera', 90),
(64, 'Tripla', 2, 3, 13, 'Non disponibile', 110),
(65, 'Suite', 3, 2, 13, 'Libera', 30),
(66, 'Singola', 1, 1, 14, 'Libera', 50),
(67, 'Doppia', 1, 2, 14, 'Non disponibile', 70),
(68, 'Matrimoniale', 2, 1, 14, 'Libera', 90),
(69, 'Tripla', 2, 3, 14, 'Libera', 110),
(70, 'Suite', 3, 2, 14, 'Libera', 30),
(71, 'Singola', 1, 1, 15, 'Libera', 50),
(72, 'Doppia', 1, 2, 15, 'Libera', 70),
(73, 'Matrimoniale', 2, 1, 15, 'Libera', 90),
(74, 'Tripla', 2, 3, 15, 'Libera', 110),
(75, 'Suite', 3, 2, 15, 'Libera', 30),
(76, 'Singola', 1, 1, 16, 'Libera', 50),
(77, 'Doppia', 1, 2, 16, 'Libera', 70),
(78, 'Matrimoniale', 2, 1, 16, 'Libera', 90),
(79, 'Tripla', 2, 3, 16, 'Libera', 110),
(80, 'Suite', 3, 2, 16, 'Non disponibile', 30),
(81, 'Singola', 1, 1, 17, 'Libera', 50),
(82, 'Doppia', 1, 2, 17, 'Libera', 70),
(83, 'Matrimoniale', 2, 1, 17, 'Non disponibile', 90),
(84, 'Tripla', 2, 3, 17, 'Libera', 110),
(85, 'Suite', 3, 2, 17, 'Libera', 30),
(86, 'Singola', 1, 1, 18, 'Libera', 50),
(87, 'Doppia', 1, 2, 18, 'Libera', 70),
(88, 'Matrimoniale', 2, 1, 18, 'Libera', 90),
(89, 'Tripla', 2, 3, 18, 'Libera', 110),
(90, 'Suite', 3, 2, 18, 'Libera', 30),
(91, 'Singola', 1, 1, 19, 'Libera', 50),
(92, 'Doppia', 1, 2, 19, 'Libera', 70),
(93, 'Matrimoniale', 2, 1, 19, 'Libera', 90),
(94, 'Tripla', 2, 3, 19, 'Non disponibile', 110),
(95, 'Suite', 3, 2, 19, 'Libera', 30),
(96, 'Singola', 1, 1, 20, 'Libera', 50),
(97, 'Doppia', 1, 2, 20, 'Non disponibile', 70),
(98, 'Matrimoniale', 2, 1, 20, 'Libera', 90),
(99, 'Tripla', 2, 3, 20, 'Libera', 110),
(100, 'Suite', 3, 2, 20, 'Libera', 30),
(101, 'Singola', 1, 1, 21, 'Libera', 50),
(102, 'Doppia', 1, 2, 21, 'Libera', 70),
(103, 'Matrimoniale', 2, 1, 21, 'Libera', 90),
(104, 'Tripla', 2, 3, 21, 'Libera', 110),
(105, 'Suite', 3, 2, 21, 'Libera', 30),
(106, 'Singola', 1, 1, 22, 'Libera', 50),
(107, 'Doppia', 1, 2, 22, 'Libera', 70),
(108, 'Matrimoniale', 2, 1, 22, 'Libera', 90),
(109, 'Tripla', 2, 3, 22, 'Libera', 110),
(110, 'Suite', 3, 2, 22, 'Non disponibile', 30),
(111, 'Singola', 1, 1, 23, 'Libera', 50),
(112, 'Doppia', 1, 2, 23, 'Libera', 70),
(113, 'Matrimoniale', 2, 1, 23, 'Non disponibile', 90),
(114, 'Tripla', 2, 3, 23, 'Libera', 110),
(115, 'Suite', 3, 2, 23, 'Libera', 30),
(116, 'Singola', 1, 1, 24, 'Libera', 50),
(117, 'Doppia', 1, 2, 24, 'Libera', 70),
(118, 'Matrimoniale', 2, 1, 24, 'Libera', 90),
(119, 'Tripla', 2, 3, 24, 'Libera', 110),
(120, 'Suite', 3, 2, 24, 'Libera', 30),
(121, 'Singola', 1, 1, 25, 'Libera', 50),
(122, 'Doppia', 1, 2, 25, 'Libera', 70),
(123, 'Matrimoniale', 2, 1, 25, 'Libera', 90),
(124, 'Tripla', 2, 3, 25, 'Non disponibile', 110),
(125, 'Suite', 3, 2, 25, 'Libera', 30),
(126, 'Singola', 1, 1, 26, 'Libera', 50),
(127, 'Doppia', 1, 2, 26, 'Non disponibile', 70),
(128, 'Matrimoniale', 2, 1, 26, 'Libera', 90),
(129, 'Tripla', 2, 3, 26, 'Libera', 110),
(130, 'Suite', 3, 2, 26, 'Libera', 30),
(131, 'Singola', 1, 1, 27, 'Libera', 50),
(132, 'Doppia', 1, 2, 27, 'Libera', 70),
(133, 'Matrimoniale', 2, 1, 27, 'Libera', 90),
(134, 'Tripla', 2, 3, 27, 'Libera', 110),
(135, 'Suite', 3, 2, 27, 'Libera', 30),
(136, 'Singola', 1, 1, 28, 'Libera', 50),
(137, 'Doppia', 1, 2, 28, 'Libera', 70),
(138, 'Matrimoniale', 2, 1, 28, 'Libera', 90),
(139, 'Tripla', 2, 3, 28, 'Libera', 110),
(140, 'Suite', 3, 2, 28, 'Non disponibile', 30),
(141, 'Singola', 1, 1, 29, 'Libera', 50),
(142, 'Doppia', 1, 2, 29, 'Libera', 70),
(143, 'Matrimoniale', 2, 1, 29, 'Non disponibile', 90),
(144, 'Tripla', 2, 3, 29, 'Libera', 110),
(145, 'Suite', 3, 2, 29, 'Libera', 30),
(146, 'Singola', 1, 1, 30, 'Libera', 50),
(147, 'Doppia', 1, 2, 30, 'Libera', 70),
(148, 'Matrimoniale', 2, 1, 30, 'Libera', 90),
(149, 'Tripla', 2, 3, 30, 'Libera', 110),
(150, 'Suite', 3, 2, 30, 'Libera', 30),
(151, 'Singola', 1, 1, 31, 'Libera', 50),
(152, 'Doppia', 1, 2, 31, 'Libera', 70),
(153, 'Matrimoniale', 2, 1, 31, 'Libera', 90),
(154, 'Tripla', 2, 3, 31, 'Non disponibile', 110),
(155, 'Suite', 3, 2, 31, 'Libera', 30),
(156, 'Singola', 1, 1, 32, 'Libera', 50),
(157, 'Doppia', 1, 2, 32, 'Non disponibile', 70),
(158, 'Matrimoniale', 2, 1, 32, 'Libera', 90),
(159, 'Tripla', 2, 3, 32, 'Libera', 110),
(160, 'Suite', 3, 2, 32, 'Libera', 30),
(161, 'Singola', 1, 1, 33, 'Libera', 50),
(162, 'Doppia', 1, 2, 33, 'Libera', 70),
(163, 'Matrimoniale', 2, 1, 33, 'Libera', 90),
(164, 'Tripla', 2, 3, 33, 'Libera', 110),
(165, 'Suite', 3, 2, 33, 'Libera', 30),
(166, 'Singola', 1, 1, 34, 'Libera', 50),
(167, 'Doppia', 1, 2, 34, 'Libera', 70),
(168, 'Matrimoniale', 2, 1, 34, 'Libera', 90),
(169, 'Tripla', 2, 3, 34, 'Libera', 110),
(170, 'Suite', 3, 2, 34, 'Non disponibile', 30),
(171, 'Singola', 1, 1, 35, 'Libera', 50),
(172, 'Doppia', 1, 2, 35, 'Libera', 70),
(173, 'Matrimoniale', 2, 1, 35, 'Non disponibile', 90),
(174, 'Tripla', 2, 3, 35, 'Libera', 110),
(175, 'Suite', 3, 2, 35, 'Libera', 30),
(176, 'Singola', 1, 1, 36, 'Libera', 50),
(177, 'Doppia', 1, 2, 36, 'Libera', 70),
(178, 'Matrimoniale', 2, 1, 36, 'Libera', 90),
(179, 'Tripla', 2, 3, 36, 'Libera', 110),
(180, 'Suite', 3, 2, 36, 'Libera', 30),
(181, 'Singola', 1, 1, 37, 'Libera', 50),
(182, 'Doppia', 1, 2, 37, 'Libera', 70),
(183, 'Matrimoniale', 2, 1, 37, 'Libera', 90),
(184, 'Tripla', 2, 3, 37, 'Non disponibile', 110),
(185, 'Suite', 3, 2, 37, 'Libera', 30),
(186, 'Singola', 1, 1, 38, 'Libera', 50),
(187, 'Doppia', 1, 2, 38, 'Non disponibile', 70),
(188, 'Matrimoniale', 2, 1, 38, 'Libera', 90),
(189, 'Tripla', 2, 3, 38, 'Libera', 110),
(190, 'Suite', 3, 2, 38, 'Libera', 30),
(191, 'Singola', 1, 1, 39, 'Libera', 50),
(192, 'Doppia', 1, 2, 39, 'Libera', 70),
(193, 'Matrimoniale', 2, 1, 39, 'Libera', 90),
(194, 'Tripla', 2, 3, 39, 'Libera', 110),
(195, 'Suite', 3, 2, 39, 'Libera', 30),
(196, 'Singola', 1, 1, 40, 'Libera', 50),
(197, 'Doppia', 1, 2, 40, 'Libera', 70),
(198, 'Matrimoniale', 2, 1, 40, 'Libera', 90),
(199, 'Tripla', 2, 3, 40, 'Libera', 110),
(200, 'Suite', 3, 2, 40, 'Non disponibile', 30);

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `IdUtente` int(11) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `Anno` date NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`IdUtente`, `Nome`, `Cognome`, `Anno`, `Email`, `Password`) VALUES
(3, 'admin', 'admin', '2000-01-01', 'admin@dev.it', '$2y$10$vPNRiMvlp6WcWHcllksN/eDHuMUb2vf7MDYbYOEscAKY4iWm.Ax0K');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`IdHotel`);

--
-- Indici per le tabelle `preferiti`
--
ALTER TABLE `preferiti`
  ADD PRIMARY KEY (`IdPreferito`),
  ADD KEY `IdUtente` (`IdUtente`),
  ADD KEY `IdHotel` (`IdHotel`);

--
-- Indici per le tabelle `prenota`
--
ALTER TABLE `prenota`
  ADD PRIMARY KEY (`IdPrenotazione`),
  ADD KEY `IdUtente` (`IdUtente`),
  ADD KEY `IdStanza` (`IdStanza`);

--
-- Indici per le tabelle `recensione`
--
ALTER TABLE `recensione`
  ADD PRIMARY KEY (`IdRecensione`),
  ADD KEY `IdUtente` (`IdUtente`),
  ADD KEY `IdHotel` (`IdHotel`);

--
-- Indici per le tabelle `stanza`
--
ALTER TABLE `stanza`
  ADD PRIMARY KEY (`IdStanza`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`IdUtente`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `hotel`
--
ALTER TABLE `hotel`
  MODIFY `IdHotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT per la tabella `preferiti`
--
ALTER TABLE `preferiti`
  MODIFY `IdPreferito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `prenota`
--
ALTER TABLE `prenota`
  MODIFY `IdPrenotazione` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `recensione`
--
ALTER TABLE `recensione`
  MODIFY `IdRecensione` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `stanza`
--
ALTER TABLE `stanza`
  MODIFY `IdStanza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT per la tabella `utente`
--
ALTER TABLE `utente`
  MODIFY `IdUtente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `preferiti`
--
ALTER TABLE `preferiti`
  ADD CONSTRAINT `preferiti_ibfk_1` FOREIGN KEY (`IdUtente`) REFERENCES `utente` (`IdUtente`),
  ADD CONSTRAINT `preferiti_ibfk_2` FOREIGN KEY (`IdHotel`) REFERENCES `hotel` (`IdHotel`);

--
-- Limiti per la tabella `prenota`
--
ALTER TABLE `prenota`
  ADD CONSTRAINT `prenota_ibfk_1` FOREIGN KEY (`IdUtente`) REFERENCES `utente` (`IdUtente`),
  ADD CONSTRAINT `prenota_ibfk_2` FOREIGN KEY (`IdStanza`) REFERENCES `stanza` (`IdStanza`);

--
-- Limiti per la tabella `recensione`
--
ALTER TABLE `recensione`
  ADD CONSTRAINT `recensione_ibfk_1` FOREIGN KEY (`IdUtente`) REFERENCES `utente` (`IdUtente`),
  ADD CONSTRAINT `recensione_ibfk_2` FOREIGN KEY (`IdHotel`) REFERENCES `hotel` (`IdHotel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
